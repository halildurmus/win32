// IMpeg2TableFilter.dart

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

import '../../system/com/IUnknown.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMpeg2TableFilter = '{BDCDD913-9ECD-4FB2-81AE-ADF747EA75A5}';

/// {@category Interface}
/// {@category com}
class IMpeg2TableFilter extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IMpeg2TableFilter(Pointer<COMObject> ptr) : super(ptr);

  int AddPID(
    int p,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 p,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int p,
          )>()(
        ptr.ref.lpVtbl,
        p,
      );

  int AddTable(
    int p,
    int t,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 p,
            Uint8 t,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int p,
            int t,
          )>()(
        ptr.ref.lpVtbl,
        p,
        t,
      );

  int AddExtension(
    int p,
    int t,
    int e,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 p,
            Uint8 t,
            Uint16 e,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int p,
            int t,
            int e,
          )>()(
        ptr.ref.lpVtbl,
        p,
        t,
        e,
      );

  int RemovePID(
    int p,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 p,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int p,
          )>()(
        ptr.ref.lpVtbl,
        p,
      );

  int RemoveTable(
    int p,
    int t,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 p,
            Uint8 t,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int p,
            int t,
          )>()(
        ptr.ref.lpVtbl,
        p,
        t,
      );

  int RemoveExtension(
    int p,
    int t,
    int e,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 p,
            Uint8 t,
            Uint16 e,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int p,
            int t,
            int e,
          )>()(
        ptr.ref.lpVtbl,
        p,
        t,
        e,
      );
}
