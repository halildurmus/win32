// IMDSPObjectInfo.dart

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
import '../../media/audio/structs.g.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IMDSPObjectInfo = '{1DCB3A19-33ED-11D3-8470-00C04F79DBC0}';

/// {@category Interface}
/// {@category com}
class IMDSPObjectInfo extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IMDSPObjectInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetPlayLength(
    Pointer<Uint32> pdwLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwLength,
          )>()(
        ptr.ref.lpVtbl,
        pdwLength,
      );

  int SetPlayLength(
    int dwLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwLength,
          )>()(
        ptr.ref.lpVtbl,
        dwLength,
      );

  int GetPlayOffset(
    Pointer<Uint32> pdwOffset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwOffset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwOffset,
          )>()(
        ptr.ref.lpVtbl,
        pdwOffset,
      );

  int SetPlayOffset(
    int dwOffset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOffset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOffset,
          )>()(
        ptr.ref.lpVtbl,
        dwOffset,
      );

  int GetTotalLength(
    Pointer<Uint32> pdwLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwLength,
          )>()(
        ptr.ref.lpVtbl,
        pdwLength,
      );

  int GetLastPlayPosition(
    Pointer<Uint32> pdwLastPos,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwLastPos,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwLastPos,
          )>()(
        ptr.ref.lpVtbl,
        pdwLastPos,
      );

  int GetLongestPlayPosition(
    Pointer<Uint32> pdwLongestPos,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwLongestPos,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwLongestPos,
          )>()(
        ptr.ref.lpVtbl,
        pdwLongestPos,
      );
}
