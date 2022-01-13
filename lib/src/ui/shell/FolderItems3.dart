// FolderItems3.dart

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

import '../../ui/shell/FolderItems2.dart';
import '../../foundation/structs.g.dart';
import '../../ui/shell/FolderItemVerbs.dart';

/// @nodoc
const IID_FolderItems3 = '{EAA7C309-BBEC-49D5-821D-64D966CB667F}';

/// {@category Interface}
/// {@category com}
class FolderItems3 extends FolderItems2 {
  // vtable begins at 13, is 2 entries long.
  FolderItems3(Pointer<COMObject> ptr) : super(ptr);

  int Filter(
    int grfFlags,
    Pointer<Utf16> bstrFileSpec,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 grfFlags,
            Pointer<Utf16> bstrFileSpec,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int grfFlags,
            Pointer<Utf16> bstrFileSpec,
          )>()(
        ptr.ref.lpVtbl,
        grfFlags,
        bstrFileSpec,
      );

  Pointer<COMObject> get Verbs {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppfic,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppfic,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
