project "Math"
   kind "StaticLib"
   files {
	   "./math.cpp",
	   "./math.h"
   }
   language "c++"
      -- Êä³öÄ¿Â¼
   targetdir (OutputDir .. "/%{prj.name}")
   objdir (OutputDir .. "/%{prj.name}")
   includedirs{
      "./*"
   }
   filter "configurations:Debug"
      defines { "DEBUG" }
      symbols "On"

   filter "configurations:Release"
      defines { "Release" }
      optimize "On"