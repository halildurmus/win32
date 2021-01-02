# Hide console window
When you run a GUI application written and compiled with dart, a console appears that can be hidden with this tutorial.
## How to
1. First build your program

```cmd
cd win32
dart compile exe .\example\hello.dart -o .\example\bin\your_app.exe
```

2. Then run the patch

```cmd
dart .\tool\hide_console\switch_subsystem.dart GUI .\example\bin\your_app.exe
```
3. Run your application and enjoy
```cmd
call .\example\bin\your_app.exe
```
## Return the console back
```cmd
dart .\tool\hide_console\switch_subsystem.dart CONSOLE .\example\bin\your_app.exe
```

## How it works
The dart script `switch_subsystem.dart` replaces bytes in the PE header (your_app.exe). This changes the system flag from `WINDOWS:CONSOLE` to `WINDOWS:GUI`.

```dart
final IMAGE_SUBSYSTEM_WINDOWS_GUI = [98, 52, 68, 0, 2];
final file = File('your_app.exe').openSync(mode: FileMode.append);
file.setPositionSync(START_PE + SUBSYSTEM_PE);
file.writeFromSync(IMAGE_SUBSYSTEM_WINDOWS_GUI);
```
