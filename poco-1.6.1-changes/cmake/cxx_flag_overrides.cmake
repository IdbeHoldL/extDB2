if(MSVC)
	set(CMAKE_CXX_FLAGS_DEBUG_INIT 			  "/MD /D _WINDLL /Zi /WX- /Oy- /EHsc /GS- /arch:SSE2 /fp:precise /Od /RTC1 /D_DEBUG")
	set(CMAKE_CXX_FLAGS_MINSIZEREL_INIT       "/MD /WX- /O1 /Oy- /EHsc /GS- /arch:SSE2 /fp:precise /D NDEBUG")
	set(CMAKE_CXX_FLAGS_RELEASE_INIT          "/MD /WX- /O2 /Oy- /EHsc /GS- /arch:SSE2 /fp:precise /D NDEBUG")
	set(CMAKE_CXX_FLAGS_RELWITHDEBINFO_INIT   "/MD /Zi /O2 /Oy- /EHsc /GS- /arch:SSE2 /fp:precise  /D_DEBUG")
else()
	set(CMAKE_CXX_FLAGS_DEBUG_INIT 			  "-march=i686 -msse2 -msse3 -fPIC -m32 -O2")
	set(CMAKE_CXX_FLAGS_MINSIZEREL_INIT       "-march=i686 -msse2 -msse3 -fPIC -m32 -Os")
	set(CMAKE_CXX_FLAGS_RELEASE_INIT          "-march=i686 -msse2 -msse3 -fPIC -m32 -O2")
	set(CMAKE_CXX_FLAGS_RELWITHDEBINFO_INIT   "-march=i686 -msse2 -msse3 -fPIC -m32 -O2")
endif()