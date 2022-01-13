// IPortableDeviceProperties.dart

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
import '../../devices/portabledevices/IPortableDeviceKeyCollection.dart';
import '../../ui/shell/propertiessystem/structs.g.dart';
import '../../devices/portabledevices/IPortableDeviceValues.dart';

/// @nodoc
const IID_IPortableDeviceProperties = '{7F6D695C-03DF-4439-A809-59266BEEE3A6}';

/// {@category Interface}
/// {@category com}
class IPortableDeviceProperties extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IPortableDeviceProperties(Pointer<COMObject> ptr) : super(ptr);

  int GetSupportedProperties(
    Pointer<Utf16> pszObjectID,
    Pointer<Pointer<COMObject>> ppKeys,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszObjectID,
            Pointer<Pointer<COMObject>> ppKeys,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszObjectID,
            Pointer<Pointer<COMObject>> ppKeys,
          )>()(
        ptr.ref.lpVtbl,
        pszObjectID,
        ppKeys,
      );

  int GetPropertyAttributes(
    Pointer<Utf16> pszObjectID,
    Pointer<PROPERTYKEY> Key,
    Pointer<Pointer<COMObject>> ppAttributes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszObjectID,
            Pointer<PROPERTYKEY> Key,
            Pointer<Pointer<COMObject>> ppAttributes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszObjectID,
            Pointer<PROPERTYKEY> Key,
            Pointer<Pointer<COMObject>> ppAttributes,
          )>()(
        ptr.ref.lpVtbl,
        pszObjectID,
        Key,
        ppAttributes,
      );

  int GetValues(
    Pointer<Utf16> pszObjectID,
    Pointer<COMObject> pKeys,
    Pointer<Pointer<COMObject>> ppValues,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszObjectID,
            Pointer<COMObject> pKeys,
            Pointer<Pointer<COMObject>> ppValues,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszObjectID,
            Pointer<COMObject> pKeys,
            Pointer<Pointer<COMObject>> ppValues,
          )>()(
        ptr.ref.lpVtbl,
        pszObjectID,
        pKeys,
        ppValues,
      );

  int SetValues(
    Pointer<Utf16> pszObjectID,
    Pointer<COMObject> pValues,
    Pointer<Pointer<COMObject>> ppResults,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszObjectID,
            Pointer<COMObject> pValues,
            Pointer<Pointer<COMObject>> ppResults,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszObjectID,
            Pointer<COMObject> pValues,
            Pointer<Pointer<COMObject>> ppResults,
          )>()(
        ptr.ref.lpVtbl,
        pszObjectID,
        pValues,
        ppResults,
      );

  int Delete(
    Pointer<Utf16> pszObjectID,
    Pointer<COMObject> pKeys,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszObjectID,
            Pointer<COMObject> pKeys,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszObjectID,
            Pointer<COMObject> pKeys,
          )>()(
        ptr.ref.lpVtbl,
        pszObjectID,
        pKeys,
      );

  int Cancel() => ptr.ref.lpVtbl.value
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
