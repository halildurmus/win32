// IAVIEditStream.dart

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
import '../../media/multimedia/IAVIStream.dart';
import '../../foundation/structs.g.dart';
import '../../media/multimedia/structs.g.dart';

/// @nodoc
const IID_IAVIEditStream = '{00020024-0000-0000-C000-000000000046}';

/// {@category Interface}
/// {@category com}
class IAVIEditStream extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IAVIEditStream(Pointer<COMObject> ptr) : super(ptr);

  int Cut(
    Pointer<Int32> plStart,
    Pointer<Int32> plLength,
    Pointer<Pointer<COMObject>> ppResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plStart,
            Pointer<Int32> plLength,
            Pointer<Pointer<COMObject>> ppResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plStart,
            Pointer<Int32> plLength,
            Pointer<Pointer<COMObject>> ppResult,
          )>()(
        ptr.ref.lpVtbl,
        plStart,
        plLength,
        ppResult,
      );

  int Copy(
    Pointer<Int32> plStart,
    Pointer<Int32> plLength,
    Pointer<Pointer<COMObject>> ppResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plStart,
            Pointer<Int32> plLength,
            Pointer<Pointer<COMObject>> ppResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plStart,
            Pointer<Int32> plLength,
            Pointer<Pointer<COMObject>> ppResult,
          )>()(
        ptr.ref.lpVtbl,
        plStart,
        plLength,
        ppResult,
      );

  int Paste(
    Pointer<Int32> plPos,
    Pointer<Int32> plLength,
    Pointer<COMObject> pstream,
    int lStart,
    int lEnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plPos,
            Pointer<Int32> plLength,
            Pointer<COMObject> pstream,
            Int32 lStart,
            Int32 lEnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plPos,
            Pointer<Int32> plLength,
            Pointer<COMObject> pstream,
            int lStart,
            int lEnd,
          )>()(
        ptr.ref.lpVtbl,
        plPos,
        plLength,
        pstream,
        lStart,
        lEnd,
      );

  int Clone(
    Pointer<Pointer<COMObject>> ppResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppResult,
          )>()(
        ptr.ref.lpVtbl,
        ppResult,
      );

  int SetInfo(
    Pointer<AVISTREAMINFO> lpInfo,
    int cbInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<AVISTREAMINFO> lpInfo,
            Int32 cbInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<AVISTREAMINFO> lpInfo,
            int cbInfo,
          )>()(
        ptr.ref.lpVtbl,
        lpInfo,
        cbInfo,
      );
}
