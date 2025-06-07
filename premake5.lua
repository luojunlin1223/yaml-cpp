project "yaml_cpp"
	kind "StaticLib"
	language "C++"
    staticruntime "on"
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"src/**.h",
		"src/**.cpp",
		
		"include/**.h"
	}

	includedirs
	{
		"include"
	}

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"
		

	filter "system:linux"
		pic "On"
		systemversion "latest"
		cppdialect "C++17"
	

	filter "configurations:Debug"
        defines "YAML_CPP_STATIC_DEFINE"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
        defines "YAML_CPP_STATIC_DEFINE"
		runtime "Release"
		optimize "on"