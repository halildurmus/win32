// IWMCodecInfo3.dart

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

import '../../media/windowsmediaformat/IWMCodecInfo2.dart';
import '../../foundation/structs.g.dart';
import '../../media/windowsmediaformat/structs.g.dart';

/// @nodoc
const IID_IWMCodecInfo3 = '{7E51F487-4D93-4F98-8AB4-27D0565ADC51}';

/// {@category Interface}
/// {@category com}
class IWMCodecInfo3 extends IWMCodecInfo2 {
  // vtable begins at 8, is 4 entries long.
  IWMCodecInfo3(Pointer<COMObject> ptr) : super(ptr);

  int GetCodecFormatProp(
    Pointer<GUID> guidType,
    int dwCodecIndex,
    int dwFormatIndex,
    Pointer<Utf16> pszName,
    Pointer<Int32> pType,
    Pointer<Uint8> pValue,
    Pointer<Uint32> pdwSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidType,
            Uint32 dwCodecIndex,
            Uint32 dwFormatIndex,
            Pointer<Utf16> pszName,
            Pointer<Int32> pType,
            Pointer<Uint8> pValue,
            Pointer<Uint32> pdwSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidType,
            int dwCodecIndex,
            int dwFormatIndex,
            Pointer<Utf16> pszName,
            Pointer<Int32> pType,
            Pointer<Uint8> pValue,
            Pointer<Uint32> pdwSize,
          )>()(
        ptr.ref.lpVtbl,
        guidType,
        dwCodecIndex,
        dwFormatIndex,
        pszName,
        pType,
        pValue,
        pdwSize,
      );

  int GetCodecProp(
    Pointer<GUID> guidType,
    int dwCodecIndex,
    Pointer<Utf16> pszName,
    Pointer<Int32> pType,
    Pointer<Uint8> pValue,
    Pointer<Uint32> pdwSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidType,
            Uint32 dwCodecIndex,
            Pointer<Utf16> pszName,
            Pointer<Int32> pType,
            Pointer<Uint8> pValue,
            Pointer<Uint32> pdwSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidType,
            int dwCodecIndex,
            Pointer<Utf16> pszName,
            Pointer<Int32> pType,
            Pointer<Uint8> pValue,
            Pointer<Uint32> pdwSize,
          )>()(
        ptr.ref.lpVtbl,
        guidType,
        dwCodecIndex,
        pszName,
        pType,
        pValue,
        pdwSize,
      );

  int SetCodecEnumerationSetting(
    Pointer<GUID> guidType,
    int dwCodecIndex,
    Pointer<Utf16> pszName,
    int Type,
    Pointer<Uint8> pValue,
    int dwSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidType,
            Uint32 dwCodecIndex,
            Pointer<Utf16> pszName,
            Int32 Type,
            Pointer<Uint8> pValue,
            Uint32 dwSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidType,
            int dwCodecIndex,
            Pointer<Utf16> pszName,
            int Type,
            Pointer<Uint8> pValue,
            int dwSize,
          )>()(
        ptr.ref.lpVtbl,
        guidType,
        dwCodecIndex,
        pszName,
        Type,
        pValue,
        dwSize,
      );

  int GetCodecEnumerationSetting(
    Pointer<GUID> guidType,
    int dwCodecIndex,
    Pointer<Utf16> pszName,
    Pointer<Int32> pType,
    Pointer<Uint8> pValue,
    Pointer<Uint32> pdwSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidType,
            Uint32 dwCodecIndex,
            Pointer<Utf16> pszName,
            Pointer<Int32> pType,
            Pointer<Uint8> pValue,
            Pointer<Uint32> pdwSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidType,
            int dwCodecIndex,
            Pointer<Utf16> pszName,
            Pointer<Int32> pType,
            Pointer<Uint8> pValue,
            Pointer<Uint32> pdwSize,
          )>()(
        ptr.ref.lpVtbl,
        guidType,
        dwCodecIndex,
        pszName,
        pType,
        pValue,
        pdwSize,
      );
}
