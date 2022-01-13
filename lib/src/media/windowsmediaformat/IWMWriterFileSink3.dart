// IWMWriterFileSink3.dart

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

import '../../media/windowsmediaformat/IWMWriterFileSink2.dart';
import '../../foundation/structs.g.dart';
import '../../media/windowsmediaformat/structs.g.dart';

/// @nodoc
const IID_IWMWriterFileSink3 = '{3FEA4FEB-2945-47A7-A1DD-C53A8FC4C45C}';

/// {@category Interface}
/// {@category com}
class IWMWriterFileSink3 extends IWMWriterFileSink2 {
  // vtable begins at 16, is 8 entries long.
  IWMWriterFileSink3(Pointer<COMObject> ptr) : super(ptr);

  int SetAutoIndexing(
    int fDoAutoIndexing,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fDoAutoIndexing,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fDoAutoIndexing,
          )>()(
        ptr.ref.lpVtbl,
        fDoAutoIndexing,
      );

  int GetAutoIndexing(
    Pointer<Int32> pfAutoIndexing,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfAutoIndexing,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfAutoIndexing,
          )>()(
        ptr.ref.lpVtbl,
        pfAutoIndexing,
      );

  int SetControlStream(
    int wStreamNumber,
    int fShouldControlStartAndStop,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wStreamNumber,
            Int32 fShouldControlStartAndStop,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wStreamNumber,
            int fShouldControlStartAndStop,
          )>()(
        ptr.ref.lpVtbl,
        wStreamNumber,
        fShouldControlStartAndStop,
      );

  int GetMode(
    Pointer<Uint32> pdwFileSinkMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwFileSinkMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwFileSinkMode,
          )>()(
        ptr.ref.lpVtbl,
        pdwFileSinkMode,
      );

  int OnDataUnitEx(
    Pointer<WMT_FILESINK_DATA_UNIT> pFileSinkDataUnit,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WMT_FILESINK_DATA_UNIT> pFileSinkDataUnit,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WMT_FILESINK_DATA_UNIT> pFileSinkDataUnit,
          )>()(
        ptr.ref.lpVtbl,
        pFileSinkDataUnit,
      );

  int SetUnbufferedIO(
    int fUnbufferedIO,
    int fRestrictMemUsage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fUnbufferedIO,
            Int32 fRestrictMemUsage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fUnbufferedIO,
            int fRestrictMemUsage,
          )>()(
        ptr.ref.lpVtbl,
        fUnbufferedIO,
        fRestrictMemUsage,
      );

  int GetUnbufferedIO(
    Pointer<Int32> pfUnbufferedIO,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfUnbufferedIO,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfUnbufferedIO,
          )>()(
        ptr.ref.lpVtbl,
        pfUnbufferedIO,
      );

  int CompleteOperations() => ptr.ref.lpVtbl.value
          .elementAt(23)
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
