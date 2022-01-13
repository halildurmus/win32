// IWMReaderNetworkConfig.dart

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
import '../../media/windowsmediaformat/structs.g.dart';

/// @nodoc
const IID_IWMReaderNetworkConfig = '{96406BEC-2B2B-11D3-B36B-00C04F6108FF}';

/// {@category Interface}
/// {@category com}
class IWMReaderNetworkConfig extends IUnknown {
  // vtable begins at 3, is 33 entries long.
  IWMReaderNetworkConfig(Pointer<COMObject> ptr) : super(ptr);

  int GetBufferingTime(
    Pointer<Uint64> pcnsBufferingTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> pcnsBufferingTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> pcnsBufferingTime,
          )>()(
        ptr.ref.lpVtbl,
        pcnsBufferingTime,
      );

  int SetBufferingTime(
    int cnsBufferingTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 cnsBufferingTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cnsBufferingTime,
          )>()(
        ptr.ref.lpVtbl,
        cnsBufferingTime,
      );

  int GetUDPPortRanges(
    Pointer<WM_PORT_NUMBER_RANGE> pRangeArray,
    Pointer<Uint32> pcRanges,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WM_PORT_NUMBER_RANGE> pRangeArray,
            Pointer<Uint32> pcRanges,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WM_PORT_NUMBER_RANGE> pRangeArray,
            Pointer<Uint32> pcRanges,
          )>()(
        ptr.ref.lpVtbl,
        pRangeArray,
        pcRanges,
      );

  int SetUDPPortRanges(
    Pointer<WM_PORT_NUMBER_RANGE> pRangeArray,
    int cRanges,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WM_PORT_NUMBER_RANGE> pRangeArray,
            Uint32 cRanges,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WM_PORT_NUMBER_RANGE> pRangeArray,
            int cRanges,
          )>()(
        ptr.ref.lpVtbl,
        pRangeArray,
        cRanges,
      );

  int GetProxySettings(
    Pointer<Utf16> pwszProtocol,
    Pointer<Int32> pProxySetting,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszProtocol,
            Pointer<Int32> pProxySetting,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszProtocol,
            Pointer<Int32> pProxySetting,
          )>()(
        ptr.ref.lpVtbl,
        pwszProtocol,
        pProxySetting,
      );

  int SetProxySettings(
    Pointer<Utf16> pwszProtocol,
    int ProxySetting,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszProtocol,
            Int32 ProxySetting,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszProtocol,
            int ProxySetting,
          )>()(
        ptr.ref.lpVtbl,
        pwszProtocol,
        ProxySetting,
      );

  int GetProxyHostName(
    Pointer<Utf16> pwszProtocol,
    Pointer<Utf16> pwszHostName,
    Pointer<Uint32> pcchHostName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszProtocol,
            Pointer<Utf16> pwszHostName,
            Pointer<Uint32> pcchHostName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszProtocol,
            Pointer<Utf16> pwszHostName,
            Pointer<Uint32> pcchHostName,
          )>()(
        ptr.ref.lpVtbl,
        pwszProtocol,
        pwszHostName,
        pcchHostName,
      );

  int SetProxyHostName(
    Pointer<Utf16> pwszProtocol,
    Pointer<Utf16> pwszHostName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszProtocol,
            Pointer<Utf16> pwszHostName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszProtocol,
            Pointer<Utf16> pwszHostName,
          )>()(
        ptr.ref.lpVtbl,
        pwszProtocol,
        pwszHostName,
      );

  int GetProxyPort(
    Pointer<Utf16> pwszProtocol,
    Pointer<Uint32> pdwPort,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszProtocol,
            Pointer<Uint32> pdwPort,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszProtocol,
            Pointer<Uint32> pdwPort,
          )>()(
        ptr.ref.lpVtbl,
        pwszProtocol,
        pdwPort,
      );

  int SetProxyPort(
    Pointer<Utf16> pwszProtocol,
    int dwPort,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszProtocol,
            Uint32 dwPort,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszProtocol,
            int dwPort,
          )>()(
        ptr.ref.lpVtbl,
        pwszProtocol,
        dwPort,
      );

  int GetProxyExceptionList(
    Pointer<Utf16> pwszProtocol,
    Pointer<Utf16> pwszExceptionList,
    Pointer<Uint32> pcchExceptionList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszProtocol,
            Pointer<Utf16> pwszExceptionList,
            Pointer<Uint32> pcchExceptionList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszProtocol,
            Pointer<Utf16> pwszExceptionList,
            Pointer<Uint32> pcchExceptionList,
          )>()(
        ptr.ref.lpVtbl,
        pwszProtocol,
        pwszExceptionList,
        pcchExceptionList,
      );

  int SetProxyExceptionList(
    Pointer<Utf16> pwszProtocol,
    Pointer<Utf16> pwszExceptionList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszProtocol,
            Pointer<Utf16> pwszExceptionList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszProtocol,
            Pointer<Utf16> pwszExceptionList,
          )>()(
        ptr.ref.lpVtbl,
        pwszProtocol,
        pwszExceptionList,
      );

  int GetProxyBypassForLocal(
    Pointer<Utf16> pwszProtocol,
    Pointer<Int32> pfBypassForLocal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszProtocol,
            Pointer<Int32> pfBypassForLocal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszProtocol,
            Pointer<Int32> pfBypassForLocal,
          )>()(
        ptr.ref.lpVtbl,
        pwszProtocol,
        pfBypassForLocal,
      );

  int SetProxyBypassForLocal(
    Pointer<Utf16> pwszProtocol,
    int fBypassForLocal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszProtocol,
            Int32 fBypassForLocal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszProtocol,
            int fBypassForLocal,
          )>()(
        ptr.ref.lpVtbl,
        pwszProtocol,
        fBypassForLocal,
      );

  int GetForceRerunAutoProxyDetection(
    Pointer<Int32> pfForceRerunDetection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfForceRerunDetection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfForceRerunDetection,
          )>()(
        ptr.ref.lpVtbl,
        pfForceRerunDetection,
      );

  int SetForceRerunAutoProxyDetection(
    int fForceRerunDetection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fForceRerunDetection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fForceRerunDetection,
          )>()(
        ptr.ref.lpVtbl,
        fForceRerunDetection,
      );

  int GetEnableMulticast(
    Pointer<Int32> pfEnableMulticast,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfEnableMulticast,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfEnableMulticast,
          )>()(
        ptr.ref.lpVtbl,
        pfEnableMulticast,
      );

  int SetEnableMulticast(
    int fEnableMulticast,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fEnableMulticast,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fEnableMulticast,
          )>()(
        ptr.ref.lpVtbl,
        fEnableMulticast,
      );

  int GetEnableHTTP(
    Pointer<Int32> pfEnableHTTP,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfEnableHTTP,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfEnableHTTP,
          )>()(
        ptr.ref.lpVtbl,
        pfEnableHTTP,
      );

  int SetEnableHTTP(
    int fEnableHTTP,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fEnableHTTP,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fEnableHTTP,
          )>()(
        ptr.ref.lpVtbl,
        fEnableHTTP,
      );

  int GetEnableUDP(
    Pointer<Int32> pfEnableUDP,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfEnableUDP,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfEnableUDP,
          )>()(
        ptr.ref.lpVtbl,
        pfEnableUDP,
      );

  int SetEnableUDP(
    int fEnableUDP,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fEnableUDP,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fEnableUDP,
          )>()(
        ptr.ref.lpVtbl,
        fEnableUDP,
      );

  int GetEnableTCP(
    Pointer<Int32> pfEnableTCP,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfEnableTCP,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfEnableTCP,
          )>()(
        ptr.ref.lpVtbl,
        pfEnableTCP,
      );

  int SetEnableTCP(
    int fEnableTCP,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fEnableTCP,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fEnableTCP,
          )>()(
        ptr.ref.lpVtbl,
        fEnableTCP,
      );

  int ResetProtocolRollover() => ptr.ref.lpVtbl.value
          .elementAt(27)
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

  int GetConnectionBandwidth(
    Pointer<Uint32> pdwConnectionBandwidth,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwConnectionBandwidth,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwConnectionBandwidth,
          )>()(
        ptr.ref.lpVtbl,
        pdwConnectionBandwidth,
      );

  int SetConnectionBandwidth(
    int dwConnectionBandwidth,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwConnectionBandwidth,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwConnectionBandwidth,
          )>()(
        ptr.ref.lpVtbl,
        dwConnectionBandwidth,
      );

  int GetNumProtocolsSupported(
    Pointer<Uint32> pcProtocols,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcProtocols,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcProtocols,
          )>()(
        ptr.ref.lpVtbl,
        pcProtocols,
      );

  int GetSupportedProtocolName(
    int dwProtocolNum,
    Pointer<Utf16> pwszProtocolName,
    Pointer<Uint32> pcchProtocolName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwProtocolNum,
            Pointer<Utf16> pwszProtocolName,
            Pointer<Uint32> pcchProtocolName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwProtocolNum,
            Pointer<Utf16> pwszProtocolName,
            Pointer<Uint32> pcchProtocolName,
          )>()(
        ptr.ref.lpVtbl,
        dwProtocolNum,
        pwszProtocolName,
        pcchProtocolName,
      );

  int AddLoggingUrl(
    Pointer<Utf16> pwszUrl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszUrl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszUrl,
          )>()(
        ptr.ref.lpVtbl,
        pwszUrl,
      );

  int GetLoggingUrl(
    int dwIndex,
    Pointer<Utf16> pwszUrl,
    Pointer<Uint32> pcchUrl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwIndex,
            Pointer<Utf16> pwszUrl,
            Pointer<Uint32> pcchUrl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwIndex,
            Pointer<Utf16> pwszUrl,
            Pointer<Uint32> pcchUrl,
          )>()(
        ptr.ref.lpVtbl,
        dwIndex,
        pwszUrl,
        pcchUrl,
      );

  int GetLoggingUrlCount(
    Pointer<Uint32> pdwUrlCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwUrlCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwUrlCount,
          )>()(
        ptr.ref.lpVtbl,
        pdwUrlCount,
      );

  int ResetLoggingUrlList() => ptr.ref.lpVtbl.value
          .elementAt(35)
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
