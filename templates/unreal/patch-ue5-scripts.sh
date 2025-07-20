#!/usr/bin/env bash
# Patch UE5 scripts for NixOS compatibility

set -e

UE_DIR="/home/vitalyr/projects/dev/cpp/UnrealEngine"

if [ ! -d "$UE_DIR" ]; then
    echo "Error: UE5 directory not found at $UE_DIR"
    exit 1
fi

cd "$UE_DIR"
echo "Patching shell scripts in $UE_DIR..."

# Make all shell scripts executable
echo "Making shell scripts executable..."
find . -name "*.sh" -type f -exec chmod +x {} \;

# Get bash path from nix environment
BASH_PATH=$(which bash)
echo "Using bash path: $BASH_PATH"

# Patch shell script shebangs to use correct bash path
echo "Patching shell script shebangs..."
find . -name "*.sh" -type f -exec sed -i "1s|#!/bin/bash|#!$BASH_PATH|" {} \;
find . -name "*.sh" -type f -exec sed -i "1s|#!/usr/bin/env bash|#!$BASH_PATH|" {} \;

echo "Patching ELF binaries..."
# Patch ELF binaries to use correct dynamic linker and add library paths
if command -v patchelf >/dev/null 2>&1; then
    DYNAMIC_LINKER=$(cat $NIX_CC/nix-support/dynamic-linker 2>/dev/null || echo "/lib64/ld-linux-x86-64.so.2")
    echo "Using dynamic linker: $DYNAMIC_LINKER"
    
    # Get library paths from current environment
    ICU_LIB=$(dirname "$(find /nix/store -name "libicuuc.so*" 2>/dev/null | head -1)" 2>/dev/null || echo "/usr/lib")
    OPENSSL_LIB=$(dirname "$(find /nix/store -name "libssl.so*" 2>/dev/null | head -1)" 2>/dev/null || echo "/usr/lib")
    ZLIB_LIB=$(dirname "$(find /nix/store -name "libz.so*" 2>/dev/null | head -1)" 2>/dev/null || echo "/usr/lib")
    echo "ICU library path: $ICU_LIB"
    echo "OpenSSL library path: $OPENSSL_LIB"
    echo "Zlib library path: $ZLIB_LIB"
    
    # Build comprehensive rpath including glibc paths
    RPATH_DIRS="$ICU_LIB:$OPENSSL_LIB:$ZLIB_LIB"
    if [ -n "$LD_LIBRARY_PATH" ]; then
        RPATH_DIRS="$RPATH_DIRS:$LD_LIBRARY_PATH"
    fi
    
    # Specifically patch GitDependencies binaries (critical for Setup.sh)
    echo "Patching GitDependencies binaries..."
    find ./Engine/Binaries/DotNET/GitDependencies -name "GitDependencies" -type f | while read -r binary; do
        echo "Patching critical binary: $binary"
        patchelf --set-interpreter "$DYNAMIC_LINKER" "$binary" 2>/dev/null || true
        patchelf --set-rpath "$RPATH_DIRS" "$binary" 2>/dev/null || true
    done
    
    # Patch other ELF binaries
    find . -path "./Engine/Binaries/DotNET/GitDependencies" -prune -o -type f -executable -exec file {} \; | grep "ELF.*dynamically linked" | cut -d: -f1 | while read -r binary; do
        echo "Patching $binary"
        # Set interpreter
        patchelf --set-interpreter "$DYNAMIC_LINKER" "$binary" 2>/dev/null || true
        # Add rpath for all necessary libraries
        patchelf --set-rpath "$RPATH_DIRS" "$binary" 2>/dev/null || true
    done
else
    echo "Warning: patchelf not found, skipping ELF binary patching"
fi

echo "UE5 scripts successfully patched for NixOS!"
echo ""
echo "Now you can run:"
echo "cd $UE_DIR"
echo "./Setup.sh"