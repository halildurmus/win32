// ICoreFrameworkInputViewInterop.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/winrt/IInspectable.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_ICoreFrameworkInputViewInterop =
    '{0E3DA342-B11C-484B-9C1C-BE0D61C2F6C5}';

/// {@category Interface}
/// {@category com}
class ICoreFrameworkInputViewInterop extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  ICoreFrameworkInputViewInterop(Pointer<COMObject> ptr) : super(ptr);

  int GetForWindow(
    int appWindow,
    Pointer<GUID> riid,
    Pointer<Pointer> coreFrameworkInputView,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr appWindow,
            Pointer<GUID> riid,
            Pointer<Pointer> coreFrameworkInputView,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int appWindow,
            Pointer<GUID> riid,
            Pointer<Pointer> coreFrameworkInputView,
          )>()(
        ptr.ref.lpVtbl,
        appWindow,
        riid,
        coreFrameworkInputView,
      );
}
