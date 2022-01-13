// IWMCodecInfo.dart

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
import '../../media/windowsmediaformat/IWMStreamConfig.dart';

/// @nodoc
const IID_IWMCodecInfo = '{A970F41E-34DE-4A98-B3BA-E4B3CA7528F0}';

/// {@category Interface}
/// {@category com}
class IWMCodecInfo extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IWMCodecInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetCodecInfoCount(
    Pointer<GUID> guidType,
    Pointer<Uint32> pcCodecs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidType,
            Pointer<Uint32> pcCodecs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidType,
            Pointer<Uint32> pcCodecs,
          )>()(
        ptr.ref.lpVtbl,
        guidType,
        pcCodecs,
      );

  int GetCodecFormatCount(
    Pointer<GUID> guidType,
    int dwCodecIndex,
    Pointer<Uint32> pcFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidType,
            Uint32 dwCodecIndex,
            Pointer<Uint32> pcFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidType,
            int dwCodecIndex,
            Pointer<Uint32> pcFormat,
          )>()(
        ptr.ref.lpVtbl,
        guidType,
        dwCodecIndex,
        pcFormat,
      );

  int GetCodecFormat(
    Pointer<GUID> guidType,
    int dwCodecIndex,
    int dwFormatIndex,
    Pointer<Pointer<COMObject>> ppIStreamConfig,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidType,
            Uint32 dwCodecIndex,
            Uint32 dwFormatIndex,
            Pointer<Pointer<COMObject>> ppIStreamConfig,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidType,
            int dwCodecIndex,
            int dwFormatIndex,
            Pointer<Pointer<COMObject>> ppIStreamConfig,
          )>()(
        ptr.ref.lpVtbl,
        guidType,
        dwCodecIndex,
        dwFormatIndex,
        ppIStreamConfig,
      );
}
