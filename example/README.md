## Dart samples

The package includes several examples in the `example` subdirectory. These
examples use the Win32 API for all UI display and do not require Flutter.

| Example            | Description                                               |
| ------------------ | --------------------------------------------------------- |
| `hello.dart`       | Basic Petzoldian "hello world" Win32 app                  |
| `paint.dart`       | Demonstrates simple GDI drawing and min/max window sizing |
| `scroll.dart`      | Example of horizontal and vertical scrolling text window  |
| `console.dart`     | Shows usage of console APIs                               |
| `msgbox.dart`      | Demonstrates a MessageBox from the console                |
| `sendinput.dart`   | Sends keyboard and mouse input to another window          |
| `knownfolder.dart` | Shows usage of shell APIs to retrieve user's home dir     |
| `devices.dart`     | Uses volume management APIs to list all disk devices      |
| `tetris\main.dart` | Port of an open-source Tetris game to Dart                |

The Tetris example listed above is a fuller worked example of a reasonably
complete program that uses the Dart Win32 package. It is a port of a C version
of the game by Chang-Hung Liang. [More information...](tetris/README.md)

## Flutter samples

The `explorer\` subdirectory contains an example of a simple Flutter app that
uses the volume management Win32 APIs to find the disk drives connected to your
computer and their volume IDs and attached paths.