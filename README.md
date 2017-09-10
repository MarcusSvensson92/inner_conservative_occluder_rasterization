# Inner Conservative Occluder Rasterization

A novel technique for rendering convex occluders using inner conservative rasterization. Presented in [my master's thesis](http://bth.diva-portal.org/smash/record.jsf?pid=diva2%3A934562&dswid=6997) and featured in [GPU Zen](http://gpuzen.blogspot.se/). The application implements several techniques for GPU-based occlusion culling that were used in tests and comparisons.

![screenshot](https://user-images.githubusercontent.com/3328360/30248872-084bf304-9630-11e7-8a35-37daae6fb888.png)

## Requirements

* Windows 10 x64
* Visual Studio 2015 x64 or higher
* Graphics Tools must be installed to run Debug

## Externals

* [DirectX 12](https://msdn.microsoft.com/en-us/library/windows/desktop/dn903821(v=vs.85).aspx)
* [SDL 2](https://www.libsdl.org/)
* [AntTweakBar](http://anttweakbar.sourceforge.net/doc/) - Modified by [Kevin Örtegren](https://github.com/kevinortegren/ClusteredShadingConservative) to work with DirectX 12
* [Intel Software Occlusion Culling](https://github.com/GameTechDev/OcclusionCulling) - The sample scene is taken from this project 

## Notes

Do not use the code in this project as a reference for proper resource usage in DirectX 12. I would have done a lot of things differently if I had rewritten it.