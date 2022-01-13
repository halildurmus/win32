// IWMWriterSink.dart

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
import '../../media/windowsmediaformat/INSSBuffer.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMWriterSink = '{96406BE4-2B2B-11D3-B36B-00C04F6108FF}';

/// {@category Interface}
/// {@category com}
class IWMWriterSink extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IWMWriterSink(Pointer<COMObject> ptr) : super(ptr);

  int OnHeader(
    Pointer<COMObject> pHeader,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pHeader,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pHeader,
          )>()(
        ptr.ref.lpVtbl,
        pHeader,
      );

  int IsRealTime(
    Pointer<Int32> pfRealTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfRealTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfRealTime,
          )>()(
        ptr.ref.lpVtbl,
        pfRealTime,
      );

  int AllocateDataUnit(
    int cbDataUnit,
    Pointer<Pointer<COMObject>> ppDataUnit,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cbDataUnit,
            Pointer<Pointer<COMObject>> ppDataUnit,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cbDataUnit,
            Pointer<Pointer<COMObject>> ppDataUnit,
          )>()(
        ptr.ref.lpVtbl,
        cbDataUnit,
        ppDataUnit,
      );

  int OnDataUnit(
    Pointer<COMObject> pDataUnit,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDataUnit,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDataUnit,
          )>()(
        ptr.ref.lpVtbl,
        pDataUnit,
      );

  int OnEndWriting() => ptr.ref.lpVtbl.value
          .elementAt(7)
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
