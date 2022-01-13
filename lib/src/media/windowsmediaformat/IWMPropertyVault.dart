// IWMPropertyVault.dart

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
import '../../media/windowsmediaformat/structs.g.dart';
import '../../media/windowsmediaformat/IWMPropertyVault.dart';

/// @nodoc
const IID_IWMPropertyVault = '{72995A79-5090-42A4-9C8C-D9D0B6D34BE5}';

/// {@category Interface}
/// {@category com}
class IWMPropertyVault extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IWMPropertyVault(Pointer<COMObject> ptr) : super(ptr);

  int GetPropertyCount(
    Pointer<Uint32> pdwCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwCount,
          )>()(
        ptr.ref.lpVtbl,
        pdwCount,
      );

  int GetPropertyByName(
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
            Pointer<Utf16> pszName,
            Pointer<Int32> pType,
            Pointer<Uint8> pValue,
            Pointer<Uint32> pdwSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszName,
            Pointer<Int32> pType,
            Pointer<Uint8> pValue,
            Pointer<Uint32> pdwSize,
          )>()(
        ptr.ref.lpVtbl,
        pszName,
        pType,
        pValue,
        pdwSize,
      );

  int SetProperty(
    Pointer<Utf16> pszName,
    int pType,
    Pointer<Uint8> pValue,
    int dwSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszName,
            Int32 pType,
            Pointer<Uint8> pValue,
            Uint32 dwSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszName,
            int pType,
            Pointer<Uint8> pValue,
            int dwSize,
          )>()(
        ptr.ref.lpVtbl,
        pszName,
        pType,
        pValue,
        dwSize,
      );

  int GetPropertyByIndex(
    int dwIndex,
    Pointer<Utf16> pszName,
    Pointer<Uint32> pdwNameLen,
    Pointer<Int32> pType,
    Pointer<Uint8> pValue,
    Pointer<Uint32> pdwSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwIndex,
            Pointer<Utf16> pszName,
            Pointer<Uint32> pdwNameLen,
            Pointer<Int32> pType,
            Pointer<Uint8> pValue,
            Pointer<Uint32> pdwSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwIndex,
            Pointer<Utf16> pszName,
            Pointer<Uint32> pdwNameLen,
            Pointer<Int32> pType,
            Pointer<Uint8> pValue,
            Pointer<Uint32> pdwSize,
          )>()(
        ptr.ref.lpVtbl,
        dwIndex,
        pszName,
        pdwNameLen,
        pType,
        pValue,
        pdwSize,
      );

  int CopyPropertiesFrom(
    Pointer<COMObject> pIWMPropertyVault,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIWMPropertyVault,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIWMPropertyVault,
          )>()(
        ptr.ref.lpVtbl,
        pIWMPropertyVault,
      );

  int Clear() => ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
