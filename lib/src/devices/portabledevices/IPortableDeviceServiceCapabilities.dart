// IPortableDeviceServiceCapabilities.dart

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
import '../../devices/portabledevices/IPortableDevicePropVariantCollection.dart';
import '../../foundation/structs.g.dart';
import '../../devices/portabledevices/IPortableDeviceValues.dart';
import '../../ui/shell/propertiessystem/structs.g.dart';
import '../../devices/portabledevices/IPortableDeviceKeyCollection.dart';
import '../../devices/portabledevices/IPortableDeviceValuesCollection.dart';

/// @nodoc
const IID_IPortableDeviceServiceCapabilities =
    '{24DBD89D-413E-43E0-BD5B-197F3C56C886}';

/// {@category Interface}
/// {@category com}
class IPortableDeviceServiceCapabilities extends IUnknown {
  // vtable begins at 3, is 16 entries long.
  IPortableDeviceServiceCapabilities(Pointer<COMObject> ptr) : super(ptr);

  int GetSupportedMethods(
    Pointer<Pointer<COMObject>> ppMethods,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppMethods,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppMethods,
          )>()(
        ptr.ref.lpVtbl,
        ppMethods,
      );

  int GetSupportedMethodsByFormat(
    Pointer<GUID> Format,
    Pointer<Pointer<COMObject>> ppMethods,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> Format,
            Pointer<Pointer<COMObject>> ppMethods,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> Format,
            Pointer<Pointer<COMObject>> ppMethods,
          )>()(
        ptr.ref.lpVtbl,
        Format,
        ppMethods,
      );

  int GetMethodAttributes(
    Pointer<GUID> Method,
    Pointer<Pointer<COMObject>> ppAttributes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> Method,
            Pointer<Pointer<COMObject>> ppAttributes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> Method,
            Pointer<Pointer<COMObject>> ppAttributes,
          )>()(
        ptr.ref.lpVtbl,
        Method,
        ppAttributes,
      );

  int GetMethodParameterAttributes(
    Pointer<GUID> Method,
    Pointer<PROPERTYKEY> Parameter,
    Pointer<Pointer<COMObject>> ppAttributes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> Method,
            Pointer<PROPERTYKEY> Parameter,
            Pointer<Pointer<COMObject>> ppAttributes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> Method,
            Pointer<PROPERTYKEY> Parameter,
            Pointer<Pointer<COMObject>> ppAttributes,
          )>()(
        ptr.ref.lpVtbl,
        Method,
        Parameter,
        ppAttributes,
      );

  int GetSupportedFormats(
    Pointer<Pointer<COMObject>> ppFormats,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppFormats,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppFormats,
          )>()(
        ptr.ref.lpVtbl,
        ppFormats,
      );

  int GetFormatAttributes(
    Pointer<GUID> Format,
    Pointer<Pointer<COMObject>> ppAttributes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> Format,
            Pointer<Pointer<COMObject>> ppAttributes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> Format,
            Pointer<Pointer<COMObject>> ppAttributes,
          )>()(
        ptr.ref.lpVtbl,
        Format,
        ppAttributes,
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

  int GetFormatPropertyAttributes(
    Pointer<GUID> Format,
    Pointer<PROPERTYKEY> Property,
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
            Pointer<PROPERTYKEY> Property,
            Pointer<Pointer<COMObject>> ppAttributes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> Format,
            Pointer<PROPERTYKEY> Property,
            Pointer<Pointer<COMObject>> ppAttributes,
          )>()(
        ptr.ref.lpVtbl,
        Format,
        Property,
        ppAttributes,
      );

  int GetSupportedEvents(
    Pointer<Pointer<COMObject>> ppEvents,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
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

  int GetEventAttributes(
    Pointer<GUID> Event,
    Pointer<Pointer<COMObject>> ppAttributes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> Event,
            Pointer<Pointer<COMObject>> ppAttributes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> Event,
            Pointer<Pointer<COMObject>> ppAttributes,
          )>()(
        ptr.ref.lpVtbl,
        Event,
        ppAttributes,
      );

  int GetEventParameterAttributes(
    Pointer<GUID> Event,
    Pointer<PROPERTYKEY> Parameter,
    Pointer<Pointer<COMObject>> ppAttributes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> Event,
            Pointer<PROPERTYKEY> Parameter,
            Pointer<Pointer<COMObject>> ppAttributes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> Event,
            Pointer<PROPERTYKEY> Parameter,
            Pointer<Pointer<COMObject>> ppAttributes,
          )>()(
        ptr.ref.lpVtbl,
        Event,
        Parameter,
        ppAttributes,
      );

  int GetInheritedServices(
    int dwInheritanceType,
    Pointer<Pointer<COMObject>> ppServices,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwInheritanceType,
            Pointer<Pointer<COMObject>> ppServices,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwInheritanceType,
            Pointer<Pointer<COMObject>> ppServices,
          )>()(
        ptr.ref.lpVtbl,
        dwInheritanceType,
        ppServices,
      );

  int GetFormatRenderingProfiles(
    Pointer<GUID> Format,
    Pointer<Pointer<COMObject>> ppRenderingProfiles,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> Format,
            Pointer<Pointer<COMObject>> ppRenderingProfiles,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> Format,
            Pointer<Pointer<COMObject>> ppRenderingProfiles,
          )>()(
        ptr.ref.lpVtbl,
        Format,
        ppRenderingProfiles,
      );

  int GetSupportedCommands(
    Pointer<Pointer<COMObject>> ppCommands,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
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
          .elementAt(17)
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

  int Cancel() => ptr.ref.lpVtbl.value
          .elementAt(18)
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
