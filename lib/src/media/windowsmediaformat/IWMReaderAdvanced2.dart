// IWMReaderAdvanced2.dart

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

import '../../media/windowsmediaformat/IWMReaderAdvanced.dart';
import '../../media/windowsmediaformat/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../system/com/IStream.dart';
import '../../media/windowsmediaformat/IWMReaderCallback.dart';

/// @nodoc
const IID_IWMReaderAdvanced2 = '{AE14A945-B90C-4D0D-9127-80D665F7D73E}';

/// {@category Interface}
/// {@category com}
class IWMReaderAdvanced2 extends IWMReaderAdvanced {
  // vtable begins at 23, is 15 entries long.
  IWMReaderAdvanced2(Pointer<COMObject> ptr) : super(ptr);

  int SetPlayMode(
    int Mode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Mode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Mode,
          )>()(
        ptr.ref.lpVtbl,
        Mode,
      );

  int GetPlayMode(
    Pointer<Int32> pMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pMode,
          )>()(
        ptr.ref.lpVtbl,
        pMode,
      );

  int GetBufferProgress(
    Pointer<Uint32> pdwPercent,
    Pointer<Uint64> pcnsBuffering,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwPercent,
            Pointer<Uint64> pcnsBuffering,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwPercent,
            Pointer<Uint64> pcnsBuffering,
          )>()(
        ptr.ref.lpVtbl,
        pdwPercent,
        pcnsBuffering,
      );

  int GetDownloadProgress(
    Pointer<Uint32> pdwPercent,
    Pointer<Uint64> pqwBytesDownloaded,
    Pointer<Uint64> pcnsDownload,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwPercent,
            Pointer<Uint64> pqwBytesDownloaded,
            Pointer<Uint64> pcnsDownload,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwPercent,
            Pointer<Uint64> pqwBytesDownloaded,
            Pointer<Uint64> pcnsDownload,
          )>()(
        ptr.ref.lpVtbl,
        pdwPercent,
        pqwBytesDownloaded,
        pcnsDownload,
      );

  int GetSaveAsProgress(
    Pointer<Uint32> pdwPercent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwPercent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwPercent,
          )>()(
        ptr.ref.lpVtbl,
        pdwPercent,
      );

  int SaveFileAs(
    Pointer<Utf16> pwszFilename,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
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

  int GetProtocolName(
    Pointer<Utf16> pwszProtocol,
    Pointer<Uint32> pcchProtocol,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszProtocol,
            Pointer<Uint32> pcchProtocol,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszProtocol,
            Pointer<Uint32> pcchProtocol,
          )>()(
        ptr.ref.lpVtbl,
        pwszProtocol,
        pcchProtocol,
      );

  int StartAtMarker(
    int wMarkerIndex,
    int cnsDuration,
    double fRate,
    Pointer pvContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wMarkerIndex,
            Uint64 cnsDuration,
            Float fRate,
            Pointer pvContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wMarkerIndex,
            int cnsDuration,
            double fRate,
            Pointer pvContext,
          )>()(
        ptr.ref.lpVtbl,
        wMarkerIndex,
        cnsDuration,
        fRate,
        pvContext,
      );

  int GetOutputSetting(
    int dwOutputNum,
    Pointer<Utf16> pszName,
    Pointer<Int32> pType,
    Pointer<Uint8> pValue,
    Pointer<Uint16> pcbLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
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
          .elementAt(32)
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

  int Preroll(
    int cnsStart,
    int cnsDuration,
    double fRate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 cnsStart,
            Uint64 cnsDuration,
            Float fRate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cnsStart,
            int cnsDuration,
            double fRate,
          )>()(
        ptr.ref.lpVtbl,
        cnsStart,
        cnsDuration,
        fRate,
      );

  int SetLogClientID(
    int fLogClientID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fLogClientID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fLogClientID,
          )>()(
        ptr.ref.lpVtbl,
        fLogClientID,
      );

  int GetLogClientID(
    Pointer<Int32> pfLogClientID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfLogClientID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfLogClientID,
          )>()(
        ptr.ref.lpVtbl,
        pfLogClientID,
      );

  int StopBuffering() => ptr.ref.lpVtbl.value
          .elementAt(36)
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

  int OpenStream(
    Pointer<COMObject> pStream,
    Pointer<COMObject> pCallback,
    Pointer pvContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pStream,
            Pointer<COMObject> pCallback,
            Pointer pvContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pStream,
            Pointer<COMObject> pCallback,
            Pointer pvContext,
          )>()(
        ptr.ref.lpVtbl,
        pStream,
        pCallback,
        pvContext,
      );
}
