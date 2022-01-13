// IWMHeaderInfo3.dart

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

import '../../media/windowsmediaformat/IWMHeaderInfo2.dart';
import '../../foundation/structs.g.dart';
import '../../media/windowsmediaformat/structs.g.dart';

/// @nodoc
const IID_IWMHeaderInfo3 = '{15CC68E3-27CC-4ECD-B222-3F5D02D80BD5}';

/// {@category Interface}
/// {@category com}
class IWMHeaderInfo3 extends IWMHeaderInfo2 {
  // vtable begins at 17, is 7 entries long.
  IWMHeaderInfo3(Pointer<COMObject> ptr) : super(ptr);

  int GetAttributeCountEx(
    int wStreamNum,
    Pointer<Uint16> pcAttributes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wStreamNum,
            Pointer<Uint16> pcAttributes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wStreamNum,
            Pointer<Uint16> pcAttributes,
          )>()(
        ptr.ref.lpVtbl,
        wStreamNum,
        pcAttributes,
      );

  int GetAttributeIndices(
    int wStreamNum,
    Pointer<Utf16> pwszName,
    Pointer<Uint16> pwLangIndex,
    Pointer<Uint16> pwIndices,
    Pointer<Uint16> pwCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wStreamNum,
            Pointer<Utf16> pwszName,
            Pointer<Uint16> pwLangIndex,
            Pointer<Uint16> pwIndices,
            Pointer<Uint16> pwCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wStreamNum,
            Pointer<Utf16> pwszName,
            Pointer<Uint16> pwLangIndex,
            Pointer<Uint16> pwIndices,
            Pointer<Uint16> pwCount,
          )>()(
        ptr.ref.lpVtbl,
        wStreamNum,
        pwszName,
        pwLangIndex,
        pwIndices,
        pwCount,
      );

  int GetAttributeByIndexEx(
    int wStreamNum,
    int wIndex,
    Pointer<Utf16> pwszName,
    Pointer<Uint16> pwNameLen,
    Pointer<Int32> pType,
    Pointer<Uint16> pwLangIndex,
    Pointer<Uint8> pValue,
    Pointer<Uint32> pdwDataLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wStreamNum,
            Uint16 wIndex,
            Pointer<Utf16> pwszName,
            Pointer<Uint16> pwNameLen,
            Pointer<Int32> pType,
            Pointer<Uint16> pwLangIndex,
            Pointer<Uint8> pValue,
            Pointer<Uint32> pdwDataLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wStreamNum,
            int wIndex,
            Pointer<Utf16> pwszName,
            Pointer<Uint16> pwNameLen,
            Pointer<Int32> pType,
            Pointer<Uint16> pwLangIndex,
            Pointer<Uint8> pValue,
            Pointer<Uint32> pdwDataLength,
          )>()(
        ptr.ref.lpVtbl,
        wStreamNum,
        wIndex,
        pwszName,
        pwNameLen,
        pType,
        pwLangIndex,
        pValue,
        pdwDataLength,
      );

  int ModifyAttribute(
    int wStreamNum,
    int wIndex,
    int Type,
    int wLangIndex,
    Pointer<Uint8> pValue,
    int dwLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wStreamNum,
            Uint16 wIndex,
            Int32 Type,
            Uint16 wLangIndex,
            Pointer<Uint8> pValue,
            Uint32 dwLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wStreamNum,
            int wIndex,
            int Type,
            int wLangIndex,
            Pointer<Uint8> pValue,
            int dwLength,
          )>()(
        ptr.ref.lpVtbl,
        wStreamNum,
        wIndex,
        Type,
        wLangIndex,
        pValue,
        dwLength,
      );

  int AddAttribute(
    int wStreamNum,
    Pointer<Utf16> pszName,
    Pointer<Uint16> pwIndex,
    int Type,
    int wLangIndex,
    Pointer<Uint8> pValue,
    int dwLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wStreamNum,
            Pointer<Utf16> pszName,
            Pointer<Uint16> pwIndex,
            Int32 Type,
            Uint16 wLangIndex,
            Pointer<Uint8> pValue,
            Uint32 dwLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wStreamNum,
            Pointer<Utf16> pszName,
            Pointer<Uint16> pwIndex,
            int Type,
            int wLangIndex,
            Pointer<Uint8> pValue,
            int dwLength,
          )>()(
        ptr.ref.lpVtbl,
        wStreamNum,
        pszName,
        pwIndex,
        Type,
        wLangIndex,
        pValue,
        dwLength,
      );

  int DeleteAttribute(
    int wStreamNum,
    int wIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wStreamNum,
            Uint16 wIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wStreamNum,
            int wIndex,
          )>()(
        ptr.ref.lpVtbl,
        wStreamNum,
        wIndex,
      );

  int AddCodecInfo(
    Pointer<Utf16> pwszName,
    Pointer<Utf16> pwszDescription,
    int codecType,
    int cbCodecInfo,
    Pointer<Uint8> pbCodecInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszName,
            Pointer<Utf16> pwszDescription,
            Int32 codecType,
            Uint16 cbCodecInfo,
            Pointer<Uint8> pbCodecInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszName,
            Pointer<Utf16> pwszDescription,
            int codecType,
            int cbCodecInfo,
            Pointer<Uint8> pbCodecInfo,
          )>()(
        ptr.ref.lpVtbl,
        pwszName,
        pwszDescription,
        codecType,
        cbCodecInfo,
        pbCodecInfo,
      );
}
