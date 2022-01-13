// IPortableDeviceCapabilities.dart

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
import '../../devices/portabledevices/IPortableDeviceKeyCollection.dart';
import '../../foundation/structs.g.dart';
import '../../ui/shell/propertiessystem/structs.g.dart';
import '../../devices/portabledevices/IPortableDeviceValues.dart';
import '../../devices/portabledevices/IPortableDevicePropVariantCollection.dart';

/// @nodoc
const IID_IPortableDeviceCapabilities =
    '{2C8C6DBF-E3DC-4061-BECC-8542E810D126}';

/// {@category Interface}
/// {@category com}
class IPortableDeviceCapabilities extends IUnknown {
  // vtable begins at 3, is 11 entries long.
  IPortableDeviceCapabilities(Pointer<COMObject> ptr) : super(ptr);

  int GetSupportedCommands(
    Pointer<Pointer<COMObject>> ppCommands,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppCommands,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppCommands,
          )>()(
        ptr.ref.lpVtbl,
        ppCommands,
      );

  int GetCommandOptions(
    Pointer<PROPERTYKEY> Command,
    Pointer<Pointer<COMObject>> ppOptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> Command,
            Pointer<Pointer<COMObject>> ppOptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> Command,
            Pointer<Pointer<COMObject>> ppOptions,
          )>()(
        ptr.ref.lpVtbl,
        Command,
        ppOptions,
      );

  int GetFunctionalCategories(
    Pointer<Pointer<COMObject>> ppCategories,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppCategories,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppCategories,
          )>()(
        ptr.ref.lpVtbl,
        ppCategories,
      );

  int GetFunctionalObjects(
    Pointer<GUID> Category,
    Pointer<Pointer<COMObject>> ppObjectIDs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> Category,
            Pointer<Pointer<COMObject>> ppObjectIDs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> Category,
            Pointer<Pointer<COMObject>> ppObjectIDs,
          )>()(
        ptr.ref.lpVtbl,
        Category,
        ppObjectIDs,
      );

  int GetSupportedContentTypes(
    Pointer<GUID> Category,
    Pointer<Pointer<COMObject>> ppContentTypes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> Category,
            Pointer<Pointer<COMObject>> ppContentTypes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> Category,
            Pointer<Pointer<COMObject>> ppContentTypes,
          )>()(
        ptr.ref.lpVtbl,
        Category,
        ppContentTypes,
      );

  int GetSupportedFormats(
    Pointer<GUID> ContentType,
    Pointer<Pointer<COMObject>> ppFormats,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> ContentType,
            Pointer<Pointer<COMObject>> ppFormats,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> ContentType,
            Pointer<Pointer<COMObject>> ppFormats,
          )>()(
        ptr.ref.lpVtbl,
        ContentType,
        ppFormats,
      );

  int GetSupportedFormatProperties(
    Pointer<GUID> Format,
    Pointer<Pointer<COMObject>> ppKeys,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> Format,
            Pointer<Pointer<COMObject>> ppKeys,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> Format,
            Pointer<Pointer<COMObject>> ppKeys,
          )>()(
        ptr.ref.lpVtbl,
        Format,
        ppKeys,
      );

  int GetFixedPropertyAttributes(
    Pointer<GUID> Format,
    Pointer<PROPERTYKEY> Key,
    Pointer<Pointer<COMObject>> ppAttributes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> Format,
            Pointer<PROPERTYKEY> Key,
            Pointer<Pointer<COMObject>> ppAttributes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> Format,
            Pointer<PROPERTYKEY> Key,
            Pointer<Pointer<COMObject>> ppAttributes,
          )>()(
        ptr.ref.lpVtbl,
        Format,
        Key,
        ppAttributes,
      );

  int Cancel() => ptr.ref.lpVtbl.value
          .elementAt(11)
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

  int GetSupportedEvents(
    Pointer<Pointer<COMObject>> ppEvents,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEvents,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEvents,
          )>()(
        ptr.ref.lpVtbl,
        ppEvents,
      );

  int GetEventOptions(
    Pointer<GUID> Event,
    Pointer<Pointer<COMObject>> ppOptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> Event,
            Pointer<Pointer<COMObject>> ppOptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> Event,
            Pointer<Pointer<COMObject>> ppOptions,
          )>()(
        ptr.ref.lpVtbl,
        Event,
        ppOptions,
      );
}
