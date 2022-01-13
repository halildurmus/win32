// IUnbufferedFileHandleProvider.dart

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

import '../../../system/com/IUnknown.dart';
import '../../../system/winrt/storage/IUnbufferedFileHandleOplockCallback.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IUnbufferedFileHandleProvider =
    '{A65C9109-42AB-4B94-A7B1-DD2E4E68515E}';

/// {@category Interface}
/// {@category com}
class IUnbufferedFileHandleProvider extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IUnbufferedFileHandleProvider(Pointer<COMObject> ptr) : super(ptr);

  int OpenUnbufferedFileHandle(
    Pointer<COMObject> oplockBreakCallback,
    Pointer<IntPtr> fileHandle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> oplockBreakCallback,
            Pointer<IntPtr> fileHandle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> oplockBreakCallback,
            Pointer<IntPtr> fileHandle,
          )>()(
        ptr.ref.lpVtbl,
        oplockBreakCallback,
        fileHandle,
      );

  int CloseUnbufferedFileHandle() => ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
