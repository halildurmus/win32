// IShellFolderViewDual2.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../guid.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../utils.dart';

import '../../ui/shell/IShellFolderViewDual.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IShellFolderViewDual2 = '{31C147B6-0ADE-4A3C-B514-DDF932EF6D17}';

/// {@category Interface}
/// {@category com}
class IShellFolderViewDual2 extends IShellFolderViewDual {
  // vtable begins at 16, is 3 entries long.
  IShellFolderViewDual2(Pointer<COMObject> ptr) : super(ptr);

  int get CurrentViewMode {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pViewMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pViewMode,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set CurrentViewMode(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(17)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Uint32 ViewMode,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int ViewMode,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int SelectItemRelative(
    int iRelative,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 iRelative,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iRelative,
          )>()(
        ptr.ref.lpVtbl,
        iRelative,
      );
}
