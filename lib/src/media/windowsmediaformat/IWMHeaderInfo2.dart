// IWMHeaderInfo2.dart

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

import '../../media/windowsmediaformat/IWMHeaderInfo.dart';
import '../../foundation/structs.g.dart';
import '../../media/windowsmediaformat/structs.g.dart';

/// @nodoc
const IID_IWMHeaderInfo2 = '{15CF9781-454E-482E-B393-85FAE487A810}';

/// {@category Interface}
/// {@category com}
class IWMHeaderInfo2 extends IWMHeaderInfo {
  // vtable begins at 15, is 2 entries long.
  IWMHeaderInfo2(Pointer<COMObject> ptr) : super(ptr);

  int GetCodecInfoCount(
    Pointer<Uint32> pcCodecInfos,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcCodecInfos,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcCodecInfos,
          )>()(
        ptr.ref.lpVtbl,
        pcCodecInfos,
      );

  int GetCodecInfo(
    int wIndex,
    Pointer<Uint16> pcchName,
    Pointer<Utf16> pwszName,
    Pointer<Uint16> pcchDescription,
    Pointer<Utf16> pwszDescription,
    Pointer<Int32> pCodecType,
    Pointer<Uint16> pcbCodecInfo,
    Pointer<Uint8> pbCodecInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 wIndex,
            Pointer<Uint16> pcchName,
            Pointer<Utf16> pwszName,
            Pointer<Uint16> pcchDescription,
            Pointer<Utf16> pwszDescription,
            Pointer<Int32> pCodecType,
            Pointer<Uint16> pcbCodecInfo,
            Pointer<Uint8> pbCodecInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wIndex,
            Pointer<Uint16> pcchName,
            Pointer<Utf16> pwszName,
            Pointer<Uint16> pcchDescription,
            Pointer<Utf16> pwszDescription,
            Pointer<Int32> pCodecType,
            Pointer<Uint16> pcbCodecInfo,
            Pointer<Uint8> pbCodecInfo,
          )>()(
        ptr.ref.lpVtbl,
        wIndex,
        pcchName,
        pwszName,
        pcchDescription,
        pwszDescription,
        pCodecType,
        pcbCodecInfo,
        pbCodecInfo,
      );
}
