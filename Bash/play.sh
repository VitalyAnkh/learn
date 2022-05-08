    if command -v ninja &> /dev/null; then
        CMAKE_ARG_BUILD_TOOL_TYPE_CONFIG="-G Ninja"
        echo "Ninja"
    else
        CMAKE_ARG_BUILD_TOOL_TYPE_CONFIG="-G Unix Makefiles"
        echo "Unix Makefiles"
    fi
