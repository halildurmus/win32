// IFhReassociation.dart

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
import '../../storage/filehistory/structs.g.dart';

/// @nodoc
const IID_IFhReassociation = '{6544A28A-F68D-47AC-91EF-16B2B36AA3EE}';

/// {@category Interface}
/// {@category com}
class IFhReassociation extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IFhReassociation(Pointer<COMObject> ptr) : super(ptr);

  int ValidateTarget(
    Pointer<Utf16> TargetUrl,
    Pointer<Int32> ValidationResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> TargetUrl,
            Pointer<Int32> ValidationResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> TargetUrl,
            Pointer<Int32> ValidationResult,
          )>()(
        ptr.ref.lpVtbl,
        TargetUrl,
        ValidationResult,
      );

  int ScanTargetForConfigurations(
    Pointer<Utf16> TargetUrl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> TargetUrl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> TargetUrl,
          )>()(
        ptr.ref.lpVtbl,
        TargetUrl,
      );

  int GetConfigurationDetails(
    int Index,
    Pointer<Pointer<Utf16>> UserName,
    Pointer<Pointer<Utf16>> PcName,
    Pointer<FILETIME> BackupTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
            Pointer<Pointer<Utf16>> UserName,
            Pointer<Pointer<Utf16>> PcName,
            Pointer<FILETIME> BackupTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Pointer<Utf16>> UserName,
            Pointer<Pointer<Utf16>> PcName,
            Pointer<FILETIME> BackupTime,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        UserName,
        PcName,
        BackupTime,
      );

  int SelectConfiguration(
    int Index,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
          )>()(
        ptr.ref.lpVtbl,
        Index,
      );

  int PerformReassociation(
    int OverwriteIfExists,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 OverwriteIfExists,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int OverwriteIfExists,
          )>()(
        ptr.ref.lpVtbl,
        OverwriteIfExists,
      );
}

/// @nodoc
const CLSID_FhReassociation = '{4D728E35-16FA-4320-9E8B-BFD7100A8846}';

/// {@category com}
class FhReassociation extends IFhReassociation {
  FhReassociation(Pointer<COMObject> ptr) : super(ptr);

  factory FhReassociation.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_FhReassociation);
    final iid = calloc<GUID>()..ref.setGUID(IID_IFhReassociation);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return FhReassociation(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
