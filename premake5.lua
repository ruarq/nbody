workspace "nbody"
    configurations { "debug", "release" }

project "nbody"
    kind "ConsoleApp"
    language "C++"
    cppdialect "C++17"
    warnings "Extra"

    targetdir "bin/%{cfg.buildcfg}"
    objdir "obj"

    files { "source/**.hpp", "source/**.cpp" }

    filter { "configurations:debug" }
        symbols "On"
        defines { "DEBUG" }

    filter { "configurations:release" }
        optimize "On"
