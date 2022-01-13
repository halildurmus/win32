// IWMCodecInfo2.dart

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

import '../../media/windowsmediaformat/IWMCodecInfo.dart';
import '../../foundation/structs.g.dart';
import '../../media/windowsmediaformat/IWMStreamConfig.dart';

/// @nodoc
const IID_IWMCodecInfo2 = '{AA65E273-B686-4056-91EC-DD768D4DF710}';

/// {@category Interface}
/// {@category com}
class IWMCodecInfo2 extends IWMCodecInfo {
  // vtable begins at 6, is 2 entries long.
  IWMCodecInfo2(Pointer<COMObject> ptr) : super(ptr);

  int GetCodecName(
    Pointer<GUID> guidType,
    int dwCodecIndex,
    Pointer<Utf16> wszName,
    Pointer<Uint32> pcchName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidType,
            Uint32 dwCodecIndex,
            Pointer<Utf16> wszName,
            Pointer<Uint32> pcchName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidType,
            int dwCodecIndex,
            Pointer<Utf16> wszName,
            Pointer<Uint32> pcchName,
          )>()(
        ptr.ref.lpVtbl,
        guidType,
        dwCodecIndex,
        wszName,
        pcchName,
      );

  int GetCodecFormatDesc(
    Pointer<GUID> guidType,
    int dwCodecIndex,
    int dwFormatIndex,
    Pointer<Pointer<COMObject>> ppIStreamConfig,
    Pointer<Utf16> wszDesc,
    Pointer<Uint32> pcchDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidType,
            Uint32 dwCodecIndex,
            Uint32 dwFormatIndex,
            Pointer<Pointer<COMObject>> ppIStreamConfig,
            Pointer<Utf16> wszDesc,
            Pointer<Uint32> pcchDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidType,
            int dwCodecIndex,
            int dwFormatIndex,
            Pointer<Pointer<COMObject>> ppIStreamConfig,
            Pointer<Utf16> wszDesc,
            Pointer<Uint32> pcchDesc,
          )>()(
        ptr.ref.lpVtbl,
        guidType,
        dwCodecIndex,
        dwFormatIndex,
        ppIStreamConfig,
        wszDesc,
        pcchDesc,
      );
}
