// IPortableDeviceContent.dart

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
import '../../devices/portabledevices/IPortableDeviceValues.dart';
import '../../devices/portabledevices/IEnumPortableDeviceObjectIDs.dart';
import '../../devices/portabledevices/IPortableDeviceProperties.dart';
import '../../devices/portabledevices/IPortableDeviceResources.dart';
import '../../system/com/IStream.dart';
import '../../devices/portabledevices/IPortableDevicePropVariantCollection.dart';

/// @nodoc
const IID_IPortableDeviceContent = '{6A96ED84-7C73-4480-9938-BF5AF477D426}';

/// {@category Interface}
/// {@category com}
class IPortableDeviceContent extends IUnknown {
  // vtable begins at 3, is 10 entries long.
  IPortableDeviceContent(Pointer<COMObject> ptr) : super(ptr);

  int EnumObjects(
    int dwFlags,
    Pointer<Utf16> pszParentObjectID,
    Pointer<COMObject> pFilter,
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<Utf16> pszParentObjectID,
            Pointer<COMObject> pFilter,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<Utf16> pszParentObjectID,
            Pointer<COMObject> pFilter,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        pszParentObjectID,
        pFilter,
        ppEnum,
      );

  int Properties(
    Pointer<Pointer<COMObject>> ppProperties,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppProperties,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppProperties,
          )>()(
        ptr.ref.lpVtbl,
        ppProperties,
      );

  int Transfer(
    Pointer<Pointer<COMObject>> ppResources,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppResources,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppResources,
          )>()(
        ptr.ref.lpVtbl,
        ppResources,
      );

  int CreateObjectWithPropertiesOnly(
    Pointer<COMObject> pValues,
    Pointer<Pointer<Utf16>> ppszObjectID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pValues,
            Pointer<Pointer<Utf16>> ppszObjectID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pValues,
            Pointer<Pointer<Utf16>> ppszObjectID,
          )>()(
        ptr.ref.lpVtbl,
        pValues,
        ppszObjectID,
      );

  int CreateObjectWithPropertiesAndData(
    Pointer<COMObject> pValues,
    Pointer<Pointer<COMObject>> ppData,
    Pointer<Uint32> pdwOptimalWriteBufferSize,
    Pointer<Pointer<Utf16>> ppszCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pValues,
            Pointer<Pointer<COMObject>> ppData,
            Pointer<Uint32> pdwOptimalWriteBufferSize,
            Pointer<Pointer<Utf16>> ppszCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pValues,
            Pointer<Pointer<COMObject>> ppData,
            Pointer<Uint32> pdwOptimalWriteBufferSize,
            Pointer<Pointer<Utf16>> ppszCookie,
          )>()(
        ptr.ref.lpVtbl,
        pValues,
        ppData,
        pdwOptimalWriteBufferSize,
        ppszCookie,
      );

  int Delete(
    int dwOptions,
    Pointer<COMObject> pObjectIDs,
    Pointer<Pointer<COMObject>> ppResults,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOptions,
            Pointer<COMObject> pObjectIDs,
            Pointer<Pointer<COMObject>> ppResults,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOptions,
            Pointer<COMObject> pObjectIDs,
            Pointer<Pointer<COMObject>> ppResults,
          )>()(
        ptr.ref.lpVtbl,
        dwOptions,
        pObjectIDs,
        ppResults,
      );

  int GetObjectIDsFromPersistentUniqueIDs(
    Pointer<COMObject> pPersistentUniqueIDs,
    Pointer<Pointer<COMObject>> ppObjectIDs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pPersistentUniqueIDs,
            Pointer<Pointer<COMObject>> ppObjectIDs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pPersistentUniqueIDs,
            Pointer<Pointer<COMObject>> ppObjectIDs,
          )>()(
        ptr.ref.lpVtbl,
        pPersistentUniqueIDs,
        ppObjectIDs,
      );

  int Cancel() => ptr.ref.lpVtbl.value
          .elementAt(10)
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

  int Move(
    Pointer<COMObject> pObjectIDs,
    Pointer<Utf16> pszDestinationFolderObjectID,
    Pointer<Pointer<COMObject>> ppResults,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pObjectIDs,
            Pointer<Utf16> pszDestinationFolderObjectID,
            Pointer<Pointer<COMObject>> ppResults,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pObjectIDs,
            Pointer<Utf16> pszDestinationFolderObjectID,
            Pointer<Pointer<COMObject>> ppResults,
          )>()(
        ptr.ref.lpVtbl,
        pObjectIDs,
        pszDestinationFolderObjectID,
        ppResults,
      );

  int Copy(
    Pointer<COMObject> pObjectIDs,
    Pointer<Utf16> pszDestinationFolderObjectID,
    Pointer<Pointer<COMObject>> ppResults,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pObjectIDs,
            Pointer<Utf16> pszDestinationFolderObjectID,
            Pointer<Pointer<COMObject>> ppResults,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pObjectIDs,
            Pointer<Utf16> pszDestinationFolderObjectID,
            Pointer<Pointer<COMObject>> ppResults,
          )>()(
        ptr.ref.lpVtbl,
        pObjectIDs,
        pszDestinationFolderObjectID,
        ppResults,
      );
}
