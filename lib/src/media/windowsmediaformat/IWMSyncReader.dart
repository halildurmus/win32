// IWMSyncReader.dart

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
import '../../media/windowsmediaformat/INSSBuffer.dart';
import '../../media/windowsmediaformat/structs.g.dart';
import '../../media/windowsmediaformat/IWMOutputMediaProps.dart';
import '../../system/com/IStream.dart';

/// @nodoc
const IID_IWMSyncReader = '{9397F121-7705-4DC9-B049-98B698188414}';

/// {@category Interface}
/// {@category com}
class IWMSyncReader extends IUnknown {
  // vtable begins at 3, is 21 entries long.
  IWMSyncReader(Pointer<COMObject> ptr) : super(ptr);

  int Open(
    Pointer<Utf16> pwszFilename,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int SetRange(
    int cnsStartTime,
    int cnsDuration,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 cnsStartTime,
            Int64 cnsDuration,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cnsStartTime,
            int cnsDuration,
          )>()(
        ptr.ref.lpVtbl,
        cnsStartTime,
        cnsDuration,
      );

  int SetRangeByFrame(
    int wStreamNum,
    int qwFrameNumber,
    int cFramesToRead,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wStreamNum,
            Uint64 qwFrameNumber,
            Int64 cFramesToRead,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wStreamNum,
            int qwFrameNumber,
            int cFramesToRead,
          )>()(
        ptr.ref.lpVtbl,
        wStreamNum,
        qwFrameNumber,
        cFramesToRead,
      );

  int GetNextSample(
    int wStreamNum,
    Pointer<Pointer<COMObject>> ppSample,
    Pointer<Uint64> pcnsSampleTime,
    Pointer<Uint64> pcnsDuration,
    Pointer<Uint32> pdwFlags,
    Pointer<Uint32> pdwOutputNum,
    Pointer<Uint16> pwStreamNum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wStreamNum,
            Pointer<Pointer<COMObject>> ppSample,
            Pointer<Uint64> pcnsSampleTime,
            Pointer<Uint64> pcnsDuration,
            Pointer<Uint32> pdwFlags,
            Pointer<Uint32> pdwOutputNum,
            Pointer<Uint16> pwStreamNum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wStreamNum,
            Pointer<Pointer<COMObject>> ppSample,
            Pointer<Uint64> pcnsSampleTime,
            Pointer<Uint64> pcnsDuration,
            Pointer<Uint32> pdwFlags,
            Pointer<Uint32> pdwOutputNum,
            Pointer<Uint16> pwStreamNum,
          )>()(
        ptr.ref.lpVtbl,
        wStreamNum,
        ppSample,
        pcnsSampleTime,
        pcnsDuration,
        pdwFlags,
        pdwOutputNum,
        pwStreamNum,
      );

  int SetStreamsSelected(
    int cStreamCount,
    Pointer<Uint16> pwStreamNumbers,
    Pointer<Int32> pSelections,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 cStreamCount,
            Pointer<Uint16> pwStreamNumbers,
            Pointer<Int32> pSelections,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cStreamCount,
            Pointer<Uint16> pwStreamNumbers,
            Pointer<Int32> pSelections,
          )>()(
        ptr.ref.lpVtbl,
        cStreamCount,
        pwStreamNumbers,
        pSelections,
      );

  int GetStreamSelected(
    int wStreamNum,
    Pointer<Int32> pSelection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wStreamNum,
            Pointer<Int32> pSelection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wStreamNum,
            Pointer<Int32> pSelection,
          )>()(
        ptr.ref.lpVtbl,
        wStreamNum,
        pSelection,
      );

  int SetReadStreamSamples(
    int wStreamNum,
    int fCompressed,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wStreamNum,
            Int32 fCompressed,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wStreamNum,
            int fCompressed,
          )>()(
        ptr.ref.lpVtbl,
        wStreamNum,
        fCompressed,
      );

  int GetReadStreamSamples(
    int wStreamNum,
    Pointer<Int32> pfCompressed,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wStreamNum,
            Pointer<Int32> pfCompressed,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wStreamNum,
            Pointer<Int32> pfCompressed,
          )>()(
        ptr.ref.lpVtbl,
        wStreamNum,
        pfCompressed,
      );

  int GetOutputSetting(
    int dwOutputNum,
    Pointer<Utf16> pszName,
    Pointer<Int32> pType,
    Pointer<Uint8> pValue,
    Pointer<Uint16> pcbLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOutputNum,
            Pointer<Utf16> pszName,
            Pointer<Int32> pType,
            Pointer<Uint8> pValue,
            Pointer<Uint16> pcbLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOutputNum,
            Pointer<Utf16> pszName,
            Pointer<Int32> pType,
            Pointer<Uint8> pValue,
            Pointer<Uint16> pcbLength,
          )>()(
        ptr.ref.lpVtbl,
        dwOutputNum,
        pszName,
        pType,
        pValue,
        pcbLength,
      );

  int SetOutputSetting(
    int dwOutputNum,
    Pointer<Utf16> pszName,
    int Type,
    Pointer<Uint8> pValue,
    int cbLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOutputNum,
            Pointer<Utf16> pszName,
            Int32 Type,
            Pointer<Uint8> pValue,
            Uint16 cbLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOutputNum,
            Pointer<Utf16> pszName,
            int Type,
            Pointer<Uint8> pValue,
            int cbLength,
          )>()(
        ptr.ref.lpVtbl,
        dwOutputNum,
        pszName,
        Type,
        pValue,
        cbLength,
      );

  int GetOutputCount(
    Pointer<Uint32> pcOutputs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
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
          .elementAt(15)
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
          .elementAt(16)
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
    int dwOutputNum,
    Pointer<Uint32> pcFormats,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOutputNum,
            Pointer<Uint32> pcFormats,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOutputNum,
            Pointer<Uint32> pcFormats,
          )>()(
        ptr.ref.lpVtbl,
        dwOutputNum,
        pcFormats,
      );

  int GetOutputFormat(
    int dwOutputNum,
    int dwFormatNum,
    Pointer<Pointer<COMObject>> ppProps,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOutputNum,
            Uint32 dwFormatNum,
            Pointer<Pointer<COMObject>> ppProps,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOutputNum,
            int dwFormatNum,
            Pointer<Pointer<COMObject>> ppProps,
          )>()(
        ptr.ref.lpVtbl,
        dwOutputNum,
        dwFormatNum,
        ppProps,
      );

  int GetOutputNumberForStream(
    int wStreamNum,
    Pointer<Uint32> pdwOutputNum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wStreamNum,
            Pointer<Uint32> pdwOutputNum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wStreamNum,
            Pointer<Uint32> pdwOutputNum,
          )>()(
        ptr.ref.lpVtbl,
        wStreamNum,
        pdwOutputNum,
      );

  int GetStreamNumberForOutput(
    int dwOutputNum,
    Pointer<Uint16> pwStreamNum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOutputNum,
            Pointer<Uint16> pwStreamNum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOutputNum,
            Pointer<Uint16> pwStreamNum,
          )>()(
        ptr.ref.lpVtbl,
        dwOutputNum,
        pwStreamNum,
      );

  int GetMaxOutputSampleSize(
    int dwOutput,
    Pointer<Uint32> pcbMax,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOutput,
            Pointer<Uint32> pcbMax,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOutput,
            Pointer<Uint32> pcbMax,
          )>()(
        ptr.ref.lpVtbl,
        dwOutput,
        pcbMax,
      );

  int GetMaxStreamSampleSize(
    int wStream,
    Pointer<Uint32> pcbMax,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wStream,
            Pointer<Uint32> pcbMax,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wStream,
            Pointer<Uint32> pcbMax,
          )>()(
        ptr.ref.lpVtbl,
        wStream,
        pcbMax,
      );

  int OpenStream(
    Pointer<COMObject> pStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pStream,
          )>()(
        ptr.ref.lpVtbl,
        pStream,
      );
}
