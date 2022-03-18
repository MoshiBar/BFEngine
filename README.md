# BFEngine
 
Work in progress game engine for Beef.

added a modified version of https://github.com/blat-blatnik/BeefWin32 for accessing some windows functions

the engine currently depends on some hardcoded assets. you'll need to copy the assets folder to your project folder and add a postbuild command like
`CopyFilesIfNewer("$(ProjectDir)/Assets/*", "$(TargetDir)/Assets/")` to copy the assets to the build target.
