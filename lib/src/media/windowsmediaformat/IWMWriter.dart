// IWMWriter.dart

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
import '../../media/windowsmediaformat/IWMProfile.dart';
import '../../media/windowsmediaformat/IWMInputMediaProps.dart';
import '../../media/windowsmediaformat/INSSBuffer.dart';

/// @nodoc
const IID_IWMWriter = '{96406BD4-2B2B-11D3-B36B-00C04F6108FF}';

/// {@category Interface}
/// {@category com}
class IWMWriter extends IUnknown {
  // vtable begins at 3, is 13 entries long.
  IWMWriter(Pointer<COMObject> ptr) : super(ptr);

  int SetProfileByID(
    Pointer<GUID> guidProfile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidProfile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidProfile,
          )>()(
        ptr.ref.lpVtbl,
        guidProfile,
      );

  int SetProfile(
    Pointer<COMObject> pProfile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pProfile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pProfile,
          )>()(
        ptr.ref.lpVtbl,
        pProfile,
      );

  int SetOutputFilename(
    Pointer<Utf16> pwszFilename,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszFilename,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszFilename,
          )>()(
        ptr.ref.lpVtbl,
        pwszFilename,
      );

  int GetInputCount(
    Pointer<Uint32> pcInputs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcInputs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcInputs,
          )>()(
        ptr.ref.lpVtbl,
        pcInputs,
      );

  int GetInputProps(
    int dwInputNum,
    Pointer<Pointer<COMObject>> ppInput,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwInputNum,
            Pointer<Pointer<COMObject>> ppInput,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwInputNum,
            Pointer<Pointer<COMObject>> ppInput,
          )>()(
        ptr.ref.lpVtbl,
        dwInputNum,
        ppInput,
      );

  int SetInputProps(
    int dwInputNum,
    Pointer<COMObject> pInput,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwInputNum,
            Pointer<COMObject> pInput,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwInputNum,
            Pointer<COMObject> pInput,
          )>()(
        ptr.ref.lpVtbl,
        dwInputNum,
        pInput,
      );

  int GetInputFormatCount(
    int dwInputNumber,
    Pointer<Uint32> pcFormats,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwInputNumber,
            Pointer<Uint32> pcFormats,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwInputNumber,
            Pointer<Uint32> pcFormats,
          )>()(
        ptr.ref.lpVtbl,
        dwInputNumber,
        pcFormats,
      );

  int GetInputFormat(
    int dwInputNumber,
    int dwFormatNumber,
    Pointer<Pointer<COMObject>> pProps,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwInputNumber,
            Uint32 dwFormatNumber,
            Pointer<Pointer<COMObject>> pProps,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwInputNumber,
            int dwFormatNumber,
            Pointer<Pointer<COMObject>> pProps,
          )>()(
        ptr.ref.lpVtbl,
        dwInputNumber,
        dwFormatNumber,
        pProps,
      );

  int BeginWriting() => ptr.ref.lpVtbl.value
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

  int EndWriting() => ptr.ref.lpVtbl.value
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

  int AllocateSample(
    int dwSampleSize,
    Pointer<Pointer<COMObject>> ppSample,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwSampleSize,
            Pointer<Pointer<COMObject>> ppSample,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwSampleSize,
            Pointer<Pointer<COMObject>> ppSample,
          )>()(
        ptr.ref.lpVtbl,
        dwSampleSize,
        ppSample,
      );

  int WriteSample(
    int dwInputNum,
    int cnsSampleTime,
    int dwFlags,
    Pointer<COMObject> pSample,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwInputNum,
            Uint64 cnsSampleTime,
            Uint32 dwFlags,
            Pointer<COMObject> pSample,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwInputNum,
            int cnsSampleTime,
            int dwFlags,
            Pointer<COMObject> pSample,
          )>()(
        ptr.ref.lpVtbl,
        dwInputNum,
        cnsSampleTime,
        dwFlags,
        pSample,
      );

  int Flush() => ptr.ref.lpVtbl.value
          .elementAt(15)
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
