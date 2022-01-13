// IWMCodecProps.dart

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
import '../../media/dxmediaobjects/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/structs.g.dart';

/// @nodoc
const IID_IWMCodecProps = '{2573E11A-F01A-4FDD-A98D-63B8E0BA9589}';

/// {@category Interface}
/// {@category com}
class IWMCodecProps extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IWMCodecProps(Pointer<COMObject> ptr) : super(ptr);

  int GetFormatProp(
    Pointer<DMO_MEDIA_TYPE> pmt,
    Pointer<Utf16> pszName,
    Pointer<Int32> pType,
    Pointer<Uint8> pValue,
    Pointer<Uint32> pdwSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DMO_MEDIA_TYPE> pmt,
            Pointer<Utf16> pszName,
            Pointer<Int32> pType,
            Pointer<Uint8> pValue,
            Pointer<Uint32> pdwSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DMO_MEDIA_TYPE> pmt,
            Pointer<Utf16> pszName,
            Pointer<Int32> pType,
            Pointer<Uint8> pValue,
            Pointer<Uint32> pdwSize,
          )>()(
        ptr.ref.lpVtbl,
        pmt,
        pszName,
        pType,
        pValue,
        pdwSize,
      );

  int GetCodecProp(
    int dwFormat,
    Pointer<Utf16> pszName,
    Pointer<Int32> pType,
    Pointer<Uint8> pValue,
    Pointer<Uint32> pdwSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFormat,
            Pointer<Utf16> pszName,
            Pointer<Int32> pType,
            Pointer<Uint8> pValue,
            Pointer<Uint32> pdwSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFormat,
            Pointer<Utf16> pszName,
            Pointer<Int32> pType,
            Pointer<Uint8> pValue,
            Pointer<Uint32> pdwSize,
          )>()(
        ptr.ref.lpVtbl,
        dwFormat,
        pszName,
        pType,
        pValue,
        pdwSize,
      );
}
