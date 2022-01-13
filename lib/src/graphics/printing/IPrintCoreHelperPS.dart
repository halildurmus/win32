// IPrintCoreHelperPS.dart

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

import '../../graphics/printing/IPrintCoreHelper.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IPrintCoreHelperPS = '{C2C14F6F-95D3-4D63-96CF-6BD9E6C907C2}';

/// {@category Interface}
/// {@category com}
class IPrintCoreHelperPS extends IPrintCoreHelper {
  // vtable begins at 12, is 3 entries long.
  IPrintCoreHelperPS(Pointer<COMObject> ptr) : super(ptr);

  int GetGlobalAttribute(
    Pointer<Utf8> pszAttribute,
    Pointer<Uint32> pdwDataType,
    Pointer<Pointer<Uint8>> ppbData,
    Pointer<Uint32> pcbSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> pszAttribute,
            Pointer<Uint32> pdwDataType,
            Pointer<Pointer<Uint8>> ppbData,
            Pointer<Uint32> pcbSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> pszAttribute,
            Pointer<Uint32> pdwDataType,
            Pointer<Pointer<Uint8>> ppbData,
            Pointer<Uint32> pcbSize,
          )>()(
        ptr.ref.lpVtbl,
        pszAttribute,
        pdwDataType,
        ppbData,
        pcbSize,
      );

  int GetFeatureAttribute(
    Pointer<Utf8> pszFeatureKeyword,
    Pointer<Utf8> pszAttribute,
    Pointer<Uint32> pdwDataType,
    Pointer<Pointer<Uint8>> ppbData,
    Pointer<Uint32> pcbSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> pszFeatureKeyword,
            Pointer<Utf8> pszAttribute,
            Pointer<Uint32> pdwDataType,
            Pointer<Pointer<Uint8>> ppbData,
            Pointer<Uint32> pcbSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> pszFeatureKeyword,
            Pointer<Utf8> pszAttribute,
            Pointer<Uint32> pdwDataType,
            Pointer<Pointer<Uint8>> ppbData,
            Pointer<Uint32> pcbSize,
          )>()(
        ptr.ref.lpVtbl,
        pszFeatureKeyword,
        pszAttribute,
        pdwDataType,
        ppbData,
        pcbSize,
      );

  int GetOptionAttribute(
    Pointer<Utf8> pszFeatureKeyword,
    Pointer<Utf8> pszOptionKeyword,
    Pointer<Utf8> pszAttribute,
    Pointer<Uint32> pdwDataType,
    Pointer<Pointer<Uint8>> ppbData,
    Pointer<Uint32> pcbSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> pszFeatureKeyword,
            Pointer<Utf8> pszOptionKeyword,
            Pointer<Utf8> pszAttribute,
            Pointer<Uint32> pdwDataType,
            Pointer<Pointer<Uint8>> ppbData,
            Pointer<Uint32> pcbSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> pszFeatureKeyword,
            Pointer<Utf8> pszOptionKeyword,
            Pointer<Utf8> pszAttribute,
            Pointer<Uint32> pdwDataType,
            Pointer<Pointer<Uint8>> ppbData,
            Pointer<Uint32> pcbSize,
          )>()(
        ptr.ref.lpVtbl,
        pszFeatureKeyword,
        pszOptionKeyword,
        pszAttribute,
        pdwDataType,
        ppbData,
        pcbSize,
      );
}
