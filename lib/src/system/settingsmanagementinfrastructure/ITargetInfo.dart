// ITargetInfo.dart

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
import '../../system/settingsmanagementinfrastructure/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../system/settingsmanagementinfrastructure/IItemEnumerator.dart';

/// @nodoc
const IID_ITargetInfo = '{9F7D7BB8-20B3-11DA-81A5-0030F1642E3C}';

/// {@category Interface}
/// {@category com}
class ITargetInfo extends IUnknown {
  // vtable begins at 3, is 21 entries long.
  ITargetInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetTargetMode(
    Pointer<Int32> TargetMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> TargetMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> TargetMode,
          )>()(
        ptr.ref.lpVtbl,
        TargetMode,
      );

  int SetTargetMode(
    int TargetMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 TargetMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int TargetMode,
          )>()(
        ptr.ref.lpVtbl,
        TargetMode,
      );

  int GetTemporaryStoreLocation(
    Pointer<Pointer<Utf16>> TemporaryStoreLocation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> TemporaryStoreLocation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> TemporaryStoreLocation,
          )>()(
        ptr.ref.lpVtbl,
        TemporaryStoreLocation,
      );

  int SetTemporaryStoreLocation(
    Pointer<Utf16> TemporaryStoreLocation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> TemporaryStoreLocation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> TemporaryStoreLocation,
          )>()(
        ptr.ref.lpVtbl,
        TemporaryStoreLocation,
      );

  int GetTargetID(
    Pointer<Pointer<Utf16>> TargetID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> TargetID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> TargetID,
          )>()(
        ptr.ref.lpVtbl,
        TargetID,
      );

  int SetTargetID(
    GUID TargetID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID TargetID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID TargetID,
          )>()(
        ptr.ref.lpVtbl,
        TargetID,
      );

  int GetTargetProcessorArchitecture(
    Pointer<Pointer<Utf16>> ProcessorArchitecture,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ProcessorArchitecture,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ProcessorArchitecture,
          )>()(
        ptr.ref.lpVtbl,
        ProcessorArchitecture,
      );

  int SetTargetProcessorArchitecture(
    Pointer<Utf16> ProcessorArchitecture,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> ProcessorArchitecture,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> ProcessorArchitecture,
          )>()(
        ptr.ref.lpVtbl,
        ProcessorArchitecture,
      );

  int GetProperty(
    int Offline,
    Pointer<Utf16> Property,
    Pointer<Pointer<Utf16>> Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Offline,
            Pointer<Utf16> Property,
            Pointer<Pointer<Utf16>> Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Offline,
            Pointer<Utf16> Property,
            Pointer<Pointer<Utf16>> Value,
          )>()(
        ptr.ref.lpVtbl,
        Offline,
        Property,
        Value,
      );

  int SetProperty(
    int Offline,
    Pointer<Utf16> Property,
    Pointer<Utf16> Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Offline,
            Pointer<Utf16> Property,
            Pointer<Utf16> Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Offline,
            Pointer<Utf16> Property,
            Pointer<Utf16> Value,
          )>()(
        ptr.ref.lpVtbl,
        Offline,
        Property,
        Value,
      );

  int GetEnumerator(
    Pointer<Pointer<COMObject>> Enumerator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> Enumerator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> Enumerator,
          )>()(
        ptr.ref.lpVtbl,
        Enumerator,
      );

  int ExpandTarget(
    int Offline,
    Pointer<Utf16> Location,
    Pointer<Pointer<Utf16>> ExpandedLocation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Offline,
            Pointer<Utf16> Location,
            Pointer<Pointer<Utf16>> ExpandedLocation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Offline,
            Pointer<Utf16> Location,
            Pointer<Pointer<Utf16>> ExpandedLocation,
          )>()(
        ptr.ref.lpVtbl,
        Offline,
        Location,
        ExpandedLocation,
      );

  int ExpandTargetPath(
    int Offline,
    Pointer<Utf16> Location,
    Pointer<Pointer<Utf16>> ExpandedLocation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Offline,
            Pointer<Utf16> Location,
            Pointer<Pointer<Utf16>> ExpandedLocation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Offline,
            Pointer<Utf16> Location,
            Pointer<Pointer<Utf16>> ExpandedLocation,
          )>()(
        ptr.ref.lpVtbl,
        Offline,
        Location,
        ExpandedLocation,
      );

  int SetModulePath(
    Pointer<Utf16> Module,
    Pointer<Utf16> Path,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Module,
            Pointer<Utf16> Path,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Module,
            Pointer<Utf16> Path,
          )>()(
        ptr.ref.lpVtbl,
        Module,
        Path,
      );

  int LoadModule(
    Pointer<Utf16> Module,
    Pointer<IntPtr> ModuleHandle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Module,
            Pointer<IntPtr> ModuleHandle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Module,
            Pointer<IntPtr> ModuleHandle,
          )>()(
        ptr.ref.lpVtbl,
        Module,
        ModuleHandle,
      );

  int SetWow64Context(
    Pointer<Utf16> InstallerModule,
    Pointer<Uint8> Wow64Context,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> InstallerModule,
            Pointer<Uint8> Wow64Context,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> InstallerModule,
            Pointer<Uint8> Wow64Context,
          )>()(
        ptr.ref.lpVtbl,
        InstallerModule,
        Wow64Context,
      );

  int TranslateWow64(
    Pointer<Utf16> ClientArchitecture,
    Pointer<Utf16> Value,
    Pointer<Pointer<Utf16>> TranslatedValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> ClientArchitecture,
            Pointer<Utf16> Value,
            Pointer<Pointer<Utf16>> TranslatedValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> ClientArchitecture,
            Pointer<Utf16> Value,
            Pointer<Pointer<Utf16>> TranslatedValue,
          )>()(
        ptr.ref.lpVtbl,
        ClientArchitecture,
        Value,
        TranslatedValue,
      );

  int SetSchemaHiveLocation(
    Pointer<Utf16> pwzHiveDir,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwzHiveDir,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwzHiveDir,
          )>()(
        ptr.ref.lpVtbl,
        pwzHiveDir,
      );

  int GetSchemaHiveLocation(
    Pointer<Pointer<Utf16>> pHiveLocation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pHiveLocation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pHiveLocation,
          )>()(
        ptr.ref.lpVtbl,
        pHiveLocation,
      );

  int SetSchemaHiveMountName(
    Pointer<Utf16> pwzMountName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwzMountName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwzMountName,
          )>()(
        ptr.ref.lpVtbl,
        pwzMountName,
      );

  int GetSchemaHiveMountName(
    Pointer<Pointer<Utf16>> pMountName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pMountName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pMountName,
          )>()(
        ptr.ref.lpVtbl,
        pMountName,
      );
}
