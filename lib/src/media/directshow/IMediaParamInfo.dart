// IMediaParamInfo.dart

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
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IMediaParamInfo = '{6D6CBB60-A223-44AA-842F-A2F06750BE6D}';

/// {@category Interface}
/// {@category com}
class IMediaParamInfo extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IMediaParamInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetParamCount(
    Pointer<Uint32> pdwParams,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwParams,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwParams,
          )>()(
        ptr.ref.lpVtbl,
        pdwParams,
      );

  int GetParamInfo(
    int dwParamIndex,
    Pointer<MP_PARAMINFO> pInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwParamIndex,
            Pointer<MP_PARAMINFO> pInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwParamIndex,
            Pointer<MP_PARAMINFO> pInfo,
          )>()(
        ptr.ref.lpVtbl,
        dwParamIndex,
        pInfo,
      );

  int GetParamText(
    int dwParamIndex,
    Pointer<Pointer<Uint16>> ppwchText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwParamIndex,
            Pointer<Pointer<Uint16>> ppwchText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwParamIndex,
            Pointer<Pointer<Uint16>> ppwchText,
          )>()(
        ptr.ref.lpVtbl,
        dwParamIndex,
        ppwchText,
      );

  int GetNumTimeFormats(
    Pointer<Uint32> pdwNumTimeFormats,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwNumTimeFormats,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwNumTimeFormats,
          )>()(
        ptr.ref.lpVtbl,
        pdwNumTimeFormats,
      );

  int GetSupportedTimeFormat(
    int dwFormatIndex,
    Pointer<GUID> pguidTimeFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFormatIndex,
            Pointer<GUID> pguidTimeFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFormatIndex,
            Pointer<GUID> pguidTimeFormat,
          )>()(
        ptr.ref.lpVtbl,
        dwFormatIndex,
        pguidTimeFormat,
      );

  int GetCurrentTimeFormat(
    Pointer<GUID> pguidTimeFormat,
    Pointer<Uint32> pTimeData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidTimeFormat,
            Pointer<Uint32> pTimeData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidTimeFormat,
            Pointer<Uint32> pTimeData,
          )>()(
        ptr.ref.lpVtbl,
        pguidTimeFormat,
        pTimeData,
      );
}
