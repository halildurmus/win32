// IWMBackupRestoreProps.dart

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

/// @nodoc
const IID_IWMBackupRestoreProps = '{3C8E0DA6-996F-4FF3-A1AF-4838F9377E2E}';

/// {@category Interface}
/// {@category com}
class IWMBackupRestoreProps extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IWMBackupRestoreProps(Pointer<COMObject> ptr) : super(ptr);

  int GetPropCount(
    Pointer<Uint16> pcProps,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> pcProps,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> pcProps,
          )>()(
        ptr.ref.lpVtbl,
        pcProps,
      );

  int GetPropByIndex(
    int wIndex,
    Pointer<Utf16> pwszName,
    Pointer<Uint16> pcchNameLen,
    Pointer<Int32> pType,
    Pointer<Uint8> pValue,
    Pointer<Uint16> pcbLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wIndex,
            Pointer<Utf16> pwszName,
            Pointer<Uint16> pcchNameLen,
            Pointer<Int32> pType,
            Pointer<Uint8> pValue,
            Pointer<Uint16> pcbLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wIndex,
            Pointer<Utf16> pwszName,
            Pointer<Uint16> pcchNameLen,
            Pointer<Int32> pType,
            Pointer<Uint8> pValue,
            Pointer<Uint16> pcbLength,
          )>()(
        ptr.ref.lpVtbl,
        wIndex,
        pwszName,
        pcchNameLen,
        pType,
        pValue,
        pcbLength,
      );

  int GetPropByName(
    Pointer<Utf16> pszName,
    Pointer<Int32> pType,
    Pointer<Uint8> pValue,
    Pointer<Uint16> pcbLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszName,
            Pointer<Int32> pType,
            Pointer<Uint8> pValue,
            Pointer<Uint16> pcbLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszName,
            Pointer<Int32> pType,
            Pointer<Uint8> pValue,
            Pointer<Uint16> pcbLength,
          )>()(
        ptr.ref.lpVtbl,
        pszName,
        pType,
        pValue,
        pcbLength,
      );

  int SetProp(
    Pointer<Utf16> pszName,
    int Type,
    Pointer<Uint8> pValue,
    int cbLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszName,
            Int32 Type,
            Pointer<Uint8> pValue,
            Uint16 cbLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszName,
            int Type,
            Pointer<Uint8> pValue,
            int cbLength,
          )>()(
        ptr.ref.lpVtbl,
        pszName,
        Type,
        pValue,
        cbLength,
      );

  int RemoveProp(
    Pointer<Utf16> pcwszName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pcwszName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pcwszName,
          )>()(
        ptr.ref.lpVtbl,
        pcwszName,
      );

  int RemoveAllProps() => ptr.ref.lpVtbl.value
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
