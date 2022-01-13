// ICertManageModule.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IDispatch.dart';
import '../../../foundation/structs.g.dart';
import '../../../specialTypes.dart';

/// @nodoc
const IID_ICertManageModule = '{E7D7AD42-BD3D-11D1-9A4D-00C04FC297EB}';

/// {@category Interface}
/// {@category com}
class ICertManageModule extends IDispatch {
  // vtable begins at 7, is 3 entries long.
  ICertManageModule(Pointer<COMObject> ptr) : super(ptr);

  int GetProperty(
    Pointer<Utf16> strConfig,
    Pointer<Utf16> strStorageLocation,
    Pointer<Utf16> strPropertyName,
    int Flags,
    Pointer<VARIANT> pvarProperty,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strConfig,
            Pointer<Utf16> strStorageLocation,
            Pointer<Utf16> strPropertyName,
            Int32 Flags,
            Pointer<VARIANT> pvarProperty,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strConfig,
            Pointer<Utf16> strStorageLocation,
            Pointer<Utf16> strPropertyName,
            int Flags,
            Pointer<VARIANT> pvarProperty,
          )>()(
        ptr.ref.lpVtbl,
        strConfig,
        strStorageLocation,
        strPropertyName,
        Flags,
        pvarProperty,
      );

  int SetProperty(
    Pointer<Utf16> strConfig,
    Pointer<Utf16> strStorageLocation,
    Pointer<Utf16> strPropertyName,
    int Flags,
    Pointer<VARIANT> pvarProperty,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strConfig,
            Pointer<Utf16> strStorageLocation,
            Pointer<Utf16> strPropertyName,
            Int32 Flags,
            Pointer<VARIANT> pvarProperty,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strConfig,
            Pointer<Utf16> strStorageLocation,
            Pointer<Utf16> strPropertyName,
            int Flags,
            Pointer<VARIANT> pvarProperty,
          )>()(
        ptr.ref.lpVtbl,
        strConfig,
        strStorageLocation,
        strPropertyName,
        Flags,
        pvarProperty,
      );

  int Configure(
    Pointer<Utf16> strConfig,
    Pointer<Utf16> strStorageLocation,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strConfig,
            Pointer<Utf16> strStorageLocation,
            Int32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strConfig,
            Pointer<Utf16> strStorageLocation,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        strConfig,
        strStorageLocation,
        Flags,
      );
}
