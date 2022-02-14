The purpose of this directory is to separate out differences in code-generation
between win32 v2.x (hand-selected Win32 APIs) and v3.x (generate the full
namespace).

The only file that should ultimately be different between the v2 and v3
projection code is version.dart. Other files in this folder can be used to
provide different values depending on which version is being used.

The idea is that the projection\ directory in particular contains a common
implementation for projecting Win32 APIs.
