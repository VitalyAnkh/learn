# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Structure

This is a polyglot learning repository containing experimental code across multiple programming languages and domains:

- **AI/**: Machine learning projects using JAX, PyTorch, TensorFlow, and IREE
- **C++/**: C++ projects with modern C++20/23 features, CUDA programming, ray tracing
- **Rust/**: Various Rust projects including game development with Bevy, system programming
- **Python/**: Data science, automation scripts, neural networks  
- **Templates/**: Nix flake templates for C++, CUDA, and Bevy development environments
- **Language-specific directories**: Haskell, Scala, Java, Go, etc. for language exploration

## Build Systems & Commands

### Primary Build Tool
The repository uses `just` (justfile) as the primary task runner:

```bash
# Available tasks
just                    # List all available tasks
just all               # Build everything (config_apue, cuda_play, cpp23_book)
just ray_tracing       # Build ray tracing project with meson
just cpp23_book        # Build C++23 book examples with CMake
just cuda_play         # Build CUDA playground with CMake  
just config_apue       # Build APUE examples with CMake
just iree              # Configure and build IREE (machine learning compiler)
just automate_boring_stuff  # Run Python automation examples
```

### C++ Projects
Most C++ projects use either CMake or Meson:

**CMake projects:** Use Ninja generator with clang compiler
```bash
cmake -S . -B build -G "Ninja" \
  -DCMAKE_EXPORT_COMPILE_COMMANDS=ON \
  -DCMAKE_C_COMPILER=clang \
  -DCMAKE_CXX_COMPILER=clang++ \
  -DCMAKE_BUILD_TYPE=Debug \
  -DCMAKE_CXX_STANDARD=23
cmake --build build
```

**Meson projects:** Standard meson workflow
```bash
meson setup build --reconfigure
cd build && meson compile
```

### Rust Projects  
Standard Cargo workflow:
```bash
cargo build
cargo run
cargo test
```

### Python Projects
Uses `uv` package manager:
```bash
uv run main.py  # Run Python scripts
uv sync         # Install dependencies
```

## Development Environment

The repository is designed to work with Nix flakes for reproducible development environments:

- **templates/cpp/flake.nix**: C++ development with CUDA support, modern toolchain
- **templates/cuda/flake.nix**: CUDA-specific development environment  
- **templates/bevy/flake.nix**: Rust game development with Bevy engine

Key environment variables set by Nix:
- `LLVM_INSTALL_DIR`: Points to locally built LLVM installation
- `CUDA_PATH`: CUDA toolkit path
- `LD_LIBRARY_PATH`: Runtime library paths

## Architecture Notes

### AI/ML Projects
- **jax_play/**: JAX experiments with MLIR/IREE backend compilation
- **d2l-zh/**: Dive into Deep Learning examples across multiple frameworks
- **triton_play/**: GPU kernel development with Triton

### Systems Programming
- **C++/cuda_play/**: CUDA programming examples and GPU computing
- **OS/**: Operating system experiments including kernel development
- **Assembly/**: Low-level assembly programming with NASM/TASM

### Key Patterns
- Projects are typically self-contained with their own build configuration
- Use of modern C++ features (C++20/23 modules, concepts)
- GPU programming focus with CUDA integration
- Machine learning compiler exploration (IREE, MLIR)
- Nix-based reproducible environments

## Testing

No unified testing framework - each project handles testing individually:
- C++ projects: Some use basic assertions, no standardized test framework
- Rust projects: Standard `cargo test`
- Python projects: Script-based testing

## Common Workflows

1. **Adding new C++ experiment**: Use CMake template from existing projects
2. **CUDA development**: Use templates/cuda environment or cuda_play directory  
3. **ML experiments**: Work in AI/ directory with appropriate framework
4. **Cross-language prototyping**: Each language has dedicated playground directories

## NixOS-Specific Guidelines

**CRITICAL**: This repository runs on NixOS systems. When working with Nix flakes:
- **NEVER** add FHS (Filesystem Hierarchy Standard) paths like `/usr/lib`, `/usr/include`, `/lib`, etc. to shell hooks or environment variables
- NixOS does not use traditional FHS layout - all packages are in the Nix store
- Use only Nix store paths from `pkgs.*` expressions in flake.nix
- System libraries are accessed through Nix packages, not system paths
- For CUDA/NVIDIA drivers, rely on the system NixOS configuration, not FHS paths

## Notes

- This is a learning/experimental repository - code quality varies
- Many projects are incomplete explorations or tutorials
- Build configurations prioritize experimentation over production readiness
- Heavy use of bleeding-edge language features and toolchains