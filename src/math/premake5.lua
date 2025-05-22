project "Math"
   kind "StaticLib"
   files {
	   "./math.cpp",
	   "./math.h"
   }
   language "c++"
      -- ���Ŀ¼
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