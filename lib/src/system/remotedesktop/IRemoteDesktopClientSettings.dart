// IRemoteDesktopClientSettings.dart

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

import '../../system/com/IDispatch.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IRemoteDesktopClientSettings =
    '{48A0F2A7-2713-431F-BBAC-6F4558E7D64D}';

/// {@category Interface}
/// {@category com}
class IRemoteDesktopClientSettings extends IDispatch {
  // vtable begins at 7, is 4 entries long.
  IRemoteDesktopClientSettings(Pointer<COMObject> ptr) : super(ptr);

  int ApplySettings(
    Pointer<Utf16> rdpFileContents,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> rdpFileContents,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> rdpFileContents,
          )>()(
        ptr.ref.lpVtbl,
        rdpFileContents,
      );

  int RetrieveSettings(
    Pointer<Pointer<Utf16>> rdpFileContents,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> rdpFileContents,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> rdpFileContents,
          )>()(
        ptr.ref.lpVtbl,
        rdpFileContents,
      );

  int GetRdpProperty(
    Pointer<Utf16> propertyName,
    Pointer<VARIANT> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> propertyName,
            Pointer<VARIANT> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> propertyName,
            Pointer<VARIANT> value,
          )>()(
        ptr.ref.lpVtbl,
        propertyName,
        value,
      );

  int SetRdpProperty(
    Pointer<Utf16> propertyName,
    VARIANT value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> propertyName,
            VARIANT value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> propertyName,
            VARIANT value,
          )>()(
        ptr.ref.lpVtbl,
        propertyName,
        value,
      );
}
