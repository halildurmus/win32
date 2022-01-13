// IAVIFile.dart

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
import '../../media/multimedia/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../media/multimedia/IAVIStream.dart';

/// @nodoc
const IID_IAVIFile = '{00020020-0000-0000-C000-000000000046}';

/// {@category Interface}
/// {@category com}
class IAVIFile extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IAVIFile(Pointer<COMObject> ptr) : super(ptr);

  int Info(
    Pointer<AVIFILEINFO> pfi,
    int lSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<AVIFILEINFO> pfi,
            Int32 lSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<AVIFILEINFO> pfi,
            int lSize,
          )>()(
        ptr.ref.lpVtbl,
        pfi,
        lSize,
      );

  int GetStream(
    Pointer<Pointer<COMObject>> ppStream,
    int fccType,
    int lParam,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppStream,
            Uint32 fccType,
            Int32 lParam,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppStream,
            int fccType,
            int lParam,
          )>()(
        ptr.ref.lpVtbl,
        ppStream,
        fccType,
        lParam,
      );

  int CreateStream(
    Pointer<Pointer<COMObject>> ppStream,
    Pointer<AVISTREAMINFO> psi,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppStream,
            Pointer<AVISTREAMINFO> psi,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppStream,
            Pointer<AVISTREAMINFO> psi,
          )>()(
        ptr.ref.lpVtbl,
        ppStream,
        psi,
      );

  int WriteData(
    int ckid,
    Pointer lpData,
    int cbData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ckid,
            Pointer lpData,
            Int32 cbData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ckid,
            Pointer lpData,
            int cbData,
          )>()(
        ptr.ref.lpVtbl,
        ckid,
        lpData,
        cbData,
      );

  int ReadData(
    int ckid,
    Pointer lpData,
    Pointer<Int32> lpcbData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ckid,
            Pointer lpData,
            Pointer<Int32> lpcbData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ckid,
            Pointer lpData,
            Pointer<Int32> lpcbData,
          )>()(
        ptr.ref.lpVtbl,
        ckid,
        lpData,
        lpcbData,
      );

  int EndRecord() => ptr.ref.lpVtbl.value
          .elementAt(8)
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

  int DeleteStream(
    int fccType,
    int lParam,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 fccType,
            Int32 lParam,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fccType,
            int lParam,
          )>()(
        ptr.ref.lpVtbl,
        fccType,
        lParam,
      );
}
