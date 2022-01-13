// IWorkspaceResTypeRegistry.dart

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
import '../../system/com/structs.g.dart';

/// @nodoc
const IID_IWorkspaceResTypeRegistry = '{1D428C79-6E2E-4351-A361-C0401A03A0BA}';

/// {@category Interface}
/// {@category com}
class IWorkspaceResTypeRegistry extends IDispatch {
  // vtable begins at 7, is 5 entries long.
  IWorkspaceResTypeRegistry(Pointer<COMObject> ptr) : super(ptr);

  int AddResourceType(
    int fMachineWide,
    Pointer<Utf16> bstrFileExtension,
    Pointer<Utf16> bstrLauncher,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 fMachineWide,
            Pointer<Utf16> bstrFileExtension,
            Pointer<Utf16> bstrLauncher,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fMachineWide,
            Pointer<Utf16> bstrFileExtension,
            Pointer<Utf16> bstrLauncher,
          )>()(
        ptr.ref.lpVtbl,
        fMachineWide,
        bstrFileExtension,
        bstrLauncher,
      );

  int DeleteResourceType(
    int fMachineWide,
    Pointer<Utf16> bstrFileExtension,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 fMachineWide,
            Pointer<Utf16> bstrFileExtension,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fMachineWide,
            Pointer<Utf16> bstrFileExtension,
          )>()(
        ptr.ref.lpVtbl,
        fMachineWide,
        bstrFileExtension,
      );

  int GetRegisteredFileExtensions(
    int fMachineWide,
    Pointer<Pointer<SAFEARRAY>> psaFileExtensions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 fMachineWide,
            Pointer<Pointer<SAFEARRAY>> psaFileExtensions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fMachineWide,
            Pointer<Pointer<SAFEARRAY>> psaFileExtensions,
          )>()(
        ptr.ref.lpVtbl,
        fMachineWide,
        psaFileExtensions,
      );

  int GetResourceTypeInfo(
    int fMachineWide,
    Pointer<Utf16> bstrFileExtension,
    Pointer<Pointer<Utf16>> pbstrLauncher,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 fMachineWide,
            Pointer<Utf16> bstrFileExtension,
            Pointer<Pointer<Utf16>> pbstrLauncher,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fMachineWide,
            Pointer<Utf16> bstrFileExtension,
            Pointer<Pointer<Utf16>> pbstrLauncher,
          )>()(
        ptr.ref.lpVtbl,
        fMachineWide,
        bstrFileExtension,
        pbstrLauncher,
      );

  int ModifyResourceType(
    int fMachineWide,
    Pointer<Utf16> bstrFileExtension,
    Pointer<Utf16> bstrLauncher,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 fMachineWide,
            Pointer<Utf16> bstrFileExtension,
            Pointer<Utf16> bstrLauncher,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fMachineWide,
            Pointer<Utf16> bstrFileExtension,
            Pointer<Utf16> bstrLauncher,
          )>()(
        ptr.ref.lpVtbl,
        fMachineWide,
        bstrFileExtension,
        bstrLauncher,
      );
}
