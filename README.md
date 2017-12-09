# luatex-altlog

The traditional logging style of TeX engines, which LuaTeX has inherited, might not be the taste of everyone. Moreover, it is sometimes arguably cumbersome to understand, and not configurable enough. In LuaTeX, it is possible to customize the way information is reported by hooking into callbacks, and that is what this project does. The functions provided here are to be set as callbacks elsewhere; thus, it is possible to mix them and override only some of the default logging. At best, however, all methods are used, as they are consistent with each other, and they are set as callbacks early on, from an initialization script, so that every corner is covered.
