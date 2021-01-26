1. `SHITEMID` -- example of where two Uint8s work differently than one Uint16.
   Also see `DLGTEMPLATE`.

1. `Pointer<String>` pain after allocation change. See `OSVERSIONINFO`, for
   example.

1. Is my `calloc<>` implementation right? Is there more coming prior to 2.0?

1. I guess this is no longer acceptable now?

   ```dart
       final wc = calloc<WNDCLASS>()
       ..ref.style = CS_HREDRAW | CS_VREDRAW
       ..ref.lpfnWndProc = Pointer.fromFunction<WindowProc>(MainWindowProc, 0)
       ..ref.hInstance = hInstance
       ..ref.lpszClassName = CLASS_NAME
       ..ref.hCursor = LoadCursor(NULL, IDC_ARROW)
       ..ref.hbrBackground = GetStockObject(WHITE_BRUSH);
   ```

1. Will ffi be updated?

   ```txt
   C:/Users/tim/AppData/Local/Pub/Cache/hosted/pub.dartlang.org/ffi-0.2.0-nullsafety.1/lib/src/utf8.dart:23:7: Info: Struct 'Utf8' is empty. Support for empty structs is deprecated and will be removed in the next stable version of Dart. Use Opaque instead.
   class Utf8 extends Struct {
         ^
   C:/Users/tim/AppData/Local/Pub/Cache/hosted/pub.dartlang.org/ffi-0.2.0-nullsafety.1/lib/src/utf16.dart:16:7: Info: Struct 'Utf16' is empty. Support for empty structs is deprecated and will be removed in the next stable version of Dart. Use Opaque instead.
   class Utf16 extends Struct {
         ^
   C:/Users/tim/AppData/Local/Pub/Cache/hosted/pub.dartlang.org/ffi-0.2.0-nullsafety.1/lib/src/allocation.dart:47:33: Info: Support for using non-constant type arguments 'T' in this FFI API is deprecated and will be removed in the next stable version of Dart. Rewrite the code to ensure that type arguments are compile time constants referring to a valid native type.
     final int totalSize = count * sizeOf<T>();
   ```
