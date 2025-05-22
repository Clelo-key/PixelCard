OutputDir = "build/%{cfg.system}-%{cfg.architecture}/%{cfg.buildcfg}"

workspace "PixelCard"
  architecture "x86_64" --编译平台 只编64位--(x86,x86_64,ARM)
  configurations {
        "Debug",
        "Release",
  }

group "Math"
    include "src/math/premake5.lua"
group ""
project "PixelCard"
   kind "ConsoleApp"
   language "c++"
   targetdir (OutputDir .. "/%{prj.name}")
   objdir (OutputDir .. "/%{prj.name}")

   files { "**.h", "**.cpp" }


   filter "system:windows"--windows平台的配置
        staticruntime "On"
        systemversion "latest"
        defines{}
        postbuildcommands{}

   filter "configurations:Debug"
      defines { "DEBUG" }
      symbols "On"

   filter "configurations:Release"
      defines { "Release" }
      optimize "On"