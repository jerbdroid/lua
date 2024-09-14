project "LuaCore"
kind "StaticLib"
language "C++"
cppdialect "C++latest"
staticruntime "on"
exceptionhandling "Off"

targetdir("bin/" .. outputdir .. "/%{prj.name}")
objdir("bin-int/" .. outputdir .. "/%{prj.name}")

files
{
    "lapi.c",
    "lcode.c",
    "lctype.c",
    "ldebug.c",
    "ldo.c",
    "ldump.c",
    "lfunc.c",
    "lgc.c",
    "llex.c",
    "lmem.c",
    "lobject.c",
    "lopcodes.c",
    "lparser.c",
    "lstate.c",
    "lstring.c",
    "ltable.c",
    "ltests.c",
    "ltm.c",
    "lundump.c",
    "lvm.c",
    "lzio.c",
    "lapi.h",
    "lauxlib.h",
    "lcode.h",
    "lctype.h",
    "ldebug.h",
    "ldo.h",
    "lfunc.h",
    "lgc.h",
    "llex.h",
    "llimits.h",
    "lmem.h",
    "lobject.h",
    "lopcodes.h",
    "lopnames.h",
    "lparser.h",
    "lprefix.h",
    "lstate.h",
    "lstring.h",
    "ltable.h",
    "ltm.h",
    "lua.h",
    "luaconf.h",
    "lualib.h",
    "lundump.h",
    "lvm.h",
    "lzio.h",
}

filter "system:windows"
systemversion "latest"

filter "configurations:Debug"
defines { "DEBUG" }
runtime "Debug"
symbols "on"

filter "configurations:Release"
defines { "NDEBUG" }
runtime "Release"
optimize "on"

filter { "not action:vs*" }
-- Set the tools explicitly
toolset "clang"
group ""


project "LuaAux"
kind "StaticLib"
language "C++"
cppdialect "C++latest"
staticruntime "on"
exceptionhandling "Off"

targetdir("bin/" .. outputdir .. "/%{prj.name}")
objdir("bin-int/" .. outputdir .. "/%{prj.name}")

files
{
    "lauxlib.c",
    "lauxlib.h",
    "lprefix.h",
    "lua.h",
    "luaconf.h",
    "lualib.h",
}

filter "system:windows"
systemversion "latest"

filter "configurations:Debug"
defines { "DEBUG" }
runtime "Debug"
symbols "on"

filter "configurations:Release"
defines { "NDEBUG" }
runtime "Release"
optimize "on"

filter { "not action:vs*" }
-- Set the tools explicitly
toolset "clang"
group ""


project "LuaLib"
kind "StaticLib"
language "C++"
cppdialect "C++latest"
staticruntime "on"
exceptionhandling "Off"

targetdir("bin/" .. outputdir .. "/%{prj.name}")
objdir("bin-int/" .. outputdir .. "/%{prj.name}")

files
{
    "lbaselib.c",
    "lcorolib.c",
    "ldblib.c",
    "linit.c",
    "liolib.c",
    "lmathlib.c",
    "loadlib.c",
    "loslib.c",
    "lstrlib.c",
    "ltablib.c",
    "lutf8lib.c",
    "lauxlib.h",
    "lprefix.h",
    "lua.h",
    "luaconf.h",
    "lualib.h",
}

filter "system:windows"
systemversion "latest"

filter "configurations:Debug"
defines { "DEBUG" }
runtime "Debug"
symbols "on"

filter "configurations:Release"
defines { "NDEBUG" }
runtime "Release"
optimize "on"

filter { "not action:vs*" }
-- Set the tools explicitly
toolset "clang"
group ""
