// IWMWriterAdvanced2.dart

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

import '../../media/windowsmediaformat/IWMWriterAdvanced.dart';
import '../../foundation/structs.g.dart';
import '../../media/windowsmediaformat/structs.g.dart';

/// @nodoc
const IID_IWMWriterAdvanced2 = '{962DC1EC-C046-4DB8-9CC7-26CEAE500817}';

/// {@category Interface}
/// {@category com}
class IWMWriterAdvanced2 extends IWMWriterAdvanced {
  // vtable begins at 14, is 2 entries long.
  IWMWriterAdvanced2(Pointer<COMObject> ptr) : super(ptr);

  int GetInputSetting(
    int dwInputNum,
    Pointer<Utf16> pszName,
    Pointer<Int32> pType,
    Pointer<Uint8> pValue,
    Pointer<Uint16> pcbLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwInputNum,
            Pointer<Utf16> pszName,
            Pointer<Int32> pType,
            Pointer<Uint8> pValue,
            Pointer<Uint16> pcbLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwInputNum,
            Pointer<Utf16> pszName,
            Pointer<Int32> pType,
            Pointer<Uint8> pValue,
            Pointer<Uint16> pcbLength,
          )>()(
        ptr.ref.lpVtbl,
        dwInputNum,
        pszName,
        pType,
        pValue,
        pcbLength,
      );

  int SetInputSetting(
    int dwInputNum,
    Pointer<Utf16> pszName,
    int Type,
    Pointer<Uint8> pValue,
    int cbLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwInputNum,
            Pointer<Utf16> pszName,
            Int32 Type,
            Pointer<Uint8> pValue,
            Uint16 cbLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwInputNum,
            Pointer<Utf16> pszName,
            int Type,
            Pointer<Uint8> pValue,
            int cbLength,
          )>()(
        ptr.ref.lpVtbl,
        dwInputNum,
        pszName,
        Type,
        pValue,
        cbLength,
      );
}
