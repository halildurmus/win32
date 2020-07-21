This folder contains helpers for developing the package.

# winmd\winmd.dart

Parsers for Windows Metadata format. Will eventually replace
`generate.dart`.

# generate\generate.dart

Used to automatically generate COM files from C++ fragments.
Use with something like the following:

```cmd
dart generate\generate.dart generate\com ..\lib\src\generated
```

# generate.cmd

Calls the above two utilities to generate the COM and Windows Runtime classes.

# deploy/deploy.sh

Used from a Bash shell to deploy the generated dartdoc documentation to the
`gh-pages` branch of the repo.

# build.cmd

Generates EXE files for some of the Dart samples

# constants.cpp

Helper file to confirm widths of structs across various architectures
