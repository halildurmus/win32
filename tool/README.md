This folder contains utilities to help with developing the win32 package.

# Code-generation tools

There are three different tools that assist with auto-generation of various Dart
files:

| Folder        | Description                                                 |
|---------------|-------------------------------------------------------------|
| win32         | Reads a CSV file containing metadata for classic C-style  
|               | APIs, and generates both the Dart files (kernel32.dart      |
|               | (etc.) and a set of basic verification tests for them.      |
|               |                                                             |
| generate      | Reads IDL or C header fragments for COM and Windows Runtime |
|               | types and generates Dart representations of them. This      |
|               | approach is fragile, but was an effective quick and dirty   |
|               | solution.                                                   |
|               |                                                             |
| winmd         | Reads the ECMA-335 metadata for Windows Runtime types and   |
|               | creates a Dart representation. Still very preliminary, but  |
|               | used for some basic Windows Runtime metadata.               |

All three techniques are used together along with some handcrafted code to
generate the final package.

During the build process, you should call `generate.cmd` to instantiate these
types and generate the classes from them.

# Other utilities

This folder also includes a few other small utilities of limited usefulness.

## build.cmd

Generates EXE files for some of the Dart samples.

## constants.cpp

Small helper app for confirm widths of various types and structs across 32-bit
and 64-bit architectures.
