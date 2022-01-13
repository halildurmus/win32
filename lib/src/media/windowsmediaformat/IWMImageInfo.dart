// IWMImageInfo.dart

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

/// @nodoc
const IID_IWMImageInfo = '{9F0AA3B6-7267-4D89-88F2-BA915AA5C4C6}';

/// {@category Interface}
/// {@category com}
class IWMImageInfo extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IWMImageInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetImageCount(
    Pointer<Uint32> pcImages,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcImages,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcImages,
          )>()(
        ptr.ref.lpVtbl,
        pcImages,
      );

  int GetImage(
    int wIndex,
    Pointer<Uint16> pcchMIMEType,
    Pointer<Utf16> pwszMIMEType,
    Pointer<Uint16> pcchDescription,
    Pointer<Utf16> pwszDescription,
    Pointer<Uint16> pImageType,
    Pointer<Uint32> pcbImageData,
    Pointer<Uint8> pbImageData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 wIndex,
            Pointer<Uint16> pcchMIMEType,
            Pointer<Utf16> pwszMIMEType,
            Pointer<Uint16> pcchDescription,
            Pointer<Utf16> pwszDescription,
            Pointer<Uint16> pImageType,
            Pointer<Uint32> pcbImageData,
            Pointer<Uint8> pbImageData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wIndex,
            Pointer<Uint16> pcchMIMEType,
            Pointer<Utf16> pwszMIMEType,
            Pointer<Uint16> pcchDescription,
            Pointer<Utf16> pwszDescription,
            Pointer<Uint16> pImageType,
            Pointer<Uint32> pcbImageData,
            Pointer<Uint8> pbImageData,
          )>()(
        ptr.ref.lpVtbl,
        wIndex,
        pcchMIMEType,
        pwszMIMEType,
        pcchDescription,
        pwszDescription,
        pImageType,
        pcbImageData,
        pbImageData,
      );
}
