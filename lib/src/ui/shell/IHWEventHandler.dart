// IHWEventHandler.dart

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
import '../../system/com/IDataObject.dart';

/// @nodoc
const IID_IHWEventHandler = '{C1FB73D0-EC3A-4BA2-B512-8CDB9187B6D1}';

/// {@category Interface}
/// {@category com}
class IHWEventHandler extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IHWEventHandler(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<Utf16> pszParams,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszParams,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszParams,
          )>()(
        ptr.ref.lpVtbl,
        pszParams,
      );

  int HandleEvent(
    Pointer<Utf16> pszDeviceID,
    Pointer<Utf16> pszAltDeviceID,
    Pointer<Utf16> pszEventType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszDeviceID,
            Pointer<Utf16> pszAltDeviceID,
            Pointer<Utf16> pszEventType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszDeviceID,
            Pointer<Utf16> pszAltDeviceID,
            Pointer<Utf16> pszEventType,
          )>()(
        ptr.ref.lpVtbl,
        pszDeviceID,
        pszAltDeviceID,
        pszEventType,
      );

  int HandleEventWithContent(
    Pointer<Utf16> pszDeviceID,
    Pointer<Utf16> pszAltDeviceID,
    Pointer<Utf16> pszEventType,
    Pointer<Utf16> pszContentTypeHandler,
    Pointer<COMObject> pdataobject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszDeviceID,
            Pointer<Utf16> pszAltDeviceID,
            Pointer<Utf16> pszEventType,
            Pointer<Utf16> pszContentTypeHandler,
            Pointer<COMObject> pdataobject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszDeviceID,
            Pointer<Utf16> pszAltDeviceID,
            Pointer<Utf16> pszEventType,
            Pointer<Utf16> pszContentTypeHandler,
            Pointer<COMObject> pdataobject,
          )>()(
        ptr.ref.lpVtbl,
        pszDeviceID,
        pszAltDeviceID,
        pszEventType,
        pszContentTypeHandler,
        pdataobject,
      );
}
