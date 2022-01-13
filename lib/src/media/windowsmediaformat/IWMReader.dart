// IWMReader.dart

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
import '../../media/windowsmediaformat/IWMReaderCallback.dart';
import '../../media/windowsmediaformat/IWMOutputMediaProps.dart';

/// @nodoc
const IID_IWMReader = '{96406BD6-2B2B-11D3-B36B-00C04F6108FF}';

/// {@category Interface}
/// {@category com}
class IWMReader extends IUnknown {
  // vtable begins at 3, is 11 entries long.
  IWMReader(Pointer<COMObject> ptr) : super(ptr);

  int Open(
    Pointer<Utf16> pwszURL,
    Pointer<COMObject> pCallback,
    Pointer pvContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszURL,
            Pointer<COMObject> pCallback,
            Pointer pvContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszURL,
            Pointer<COMObject> pCallback,
            Pointer pvContext,
          )>()(
        ptr.ref.lpVtbl,
        pwszURL,
        pCallback,
        pvContext,
      );

  int Close() => ptr.ref.lpVtbl.value
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

  int GetOutputCount(
    Pointer<Uint32> pcOutputs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcOutputs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcOutputs,
          )>()(
        ptr.ref.lpVtbl,
        pcOutputs,
      );

  int GetOutputProps(
    int dwOutputNum,
    Pointer<Pointer<COMObject>> ppOutput,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOutputNum,
            Pointer<Pointer<COMObject>> ppOutput,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOutputNum,
            Pointer<Pointer<COMObject>> ppOutput,
          )>()(
        ptr.ref.lpVtbl,
        dwOutputNum,
        ppOutput,
      );

  int SetOutputProps(
    int dwOutputNum,
    Pointer<COMObject> pOutput,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOutputNum,
            Pointer<COMObject> pOutput,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOutputNum,
            Pointer<COMObject> pOutput,
          )>()(
        ptr.ref.lpVtbl,
        dwOutputNum,
        pOutput,
      );

  int GetOutputFormatCount(
    int dwOutputNumber,
    Pointer<Uint32> pcFormats,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOutputNumber,
            Pointer<Uint32> pcFormats,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOutputNumber,
            Pointer<Uint32> pcFormats,
          )>()(
        ptr.ref.lpVtbl,
        dwOutputNumber,
        pcFormats,
      );

  int GetOutputFormat(
    int dwOutputNumber,
    int dwFormatNumber,
    Pointer<Pointer<COMObject>> ppProps,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOutputNumber,
            Uint32 dwFormatNumber,
            Pointer<Pointer<COMObject>> ppProps,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOutputNumber,
            int dwFormatNumber,
            Pointer<Pointer<COMObject>> ppProps,
          )>()(
        ptr.ref.lpVtbl,
        dwOutputNumber,
        dwFormatNumber,
        ppProps,
      );

  int Start(
    int cnsStart,
    int cnsDuration,
    double fRate,
    Pointer pvContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 cnsStart,
            Uint64 cnsDuration,
            Float fRate,
            Pointer pvContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cnsStart,
            int cnsDuration,
            double fRate,
            Pointer pvContext,
          )>()(
        ptr.ref.lpVtbl,
        cnsStart,
        cnsDuration,
        fRate,
        pvContext,
      );

  int Stop() => ptr.ref.lpVtbl.value
          .elementAt(11)
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

  int Pause() => ptr.ref.lpVtbl.value
          .elementAt(12)
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

  int Resume() => ptr.ref.lpVtbl.value
          .elementAt(13)
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
