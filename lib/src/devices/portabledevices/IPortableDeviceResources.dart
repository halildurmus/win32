// IPortableDeviceResources.dart

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
import '../../system/com/IStream.dart';

/// @nodoc
const IID_IPortableDeviceResources = '{FD8878AC-D841-4D17-891C-E6829CDB6934}';

/// {@category Interface}
/// {@category com}
class IPortableDeviceResources extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IPortableDeviceResources(Pointer<COMObject> ptr) : super(ptr);

  int GetSupportedResources(
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

  int GetResourceAttributes(
    Pointer<Utf16> pszObjectID,
    Pointer<PROPERTYKEY> Key,
    Pointer<Pointer<COMObject>> ppResourceAttributes,
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
            Pointer<Pointer<COMObject>> ppResourceAttributes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszObjectID,
            Pointer<PROPERTYKEY> Key,
            Pointer<Pointer<COMObject>> ppResourceAttributes,
          )>()(
        ptr.ref.lpVtbl,
        pszObjectID,
        Key,
        ppResourceAttributes,
      );

  int GetStream(
    Pointer<Utf16> pszObjectID,
    Pointer<PROPERTYKEY> Key,
    int dwMode,
    Pointer<Uint32> pdwOptimalBufferSize,
    Pointer<Pointer<COMObject>> ppStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszObjectID,
            Pointer<PROPERTYKEY> Key,
            Uint32 dwMode,
            Pointer<Uint32> pdwOptimalBufferSize,
            Pointer<Pointer<COMObject>> ppStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszObjectID,
            Pointer<PROPERTYKEY> Key,
            int dwMode,
            Pointer<Uint32> pdwOptimalBufferSize,
            Pointer<Pointer<COMObject>> ppStream,
          )>()(
        ptr.ref.lpVtbl,
        pszObjectID,
        Key,
        dwMode,
        pdwOptimalBufferSize,
        ppStream,
      );

  int Delete(
    Pointer<Utf16> pszObjectID,
    Pointer<COMObject> pKeys,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
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
          .elementAt(7)
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

  int CreateResource(
    Pointer<COMObject> pResourceAttributes,
    Pointer<Pointer<COMObject>> ppData,
    Pointer<Uint32> pdwOptimalWriteBufferSize,
    Pointer<Pointer<Utf16>> ppszCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pResourceAttributes,
            Pointer<Pointer<COMObject>> ppData,
            Pointer<Uint32> pdwOptimalWriteBufferSize,
            Pointer<Pointer<Utf16>> ppszCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pResourceAttributes,
            Pointer<Pointer<COMObject>> ppData,
            Pointer<Uint32> pdwOptimalWriteBufferSize,
            Pointer<Pointer<Utf16>> ppszCookie,
          )>()(
        ptr.ref.lpVtbl,
        pResourceAttributes,
        ppData,
        pdwOptimalWriteBufferSize,
        ppszCookie,
      );
}
