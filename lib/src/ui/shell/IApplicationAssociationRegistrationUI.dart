// IApplicationAssociationRegistrationUI.dart

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

/// @nodoc
const IID_IApplicationAssociationRegistrationUI =
    '{1F76A169-F994-40AC-8FC8-0959E8874710}';

/// {@category Interface}
/// {@category com}
class IApplicationAssociationRegistrationUI extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IApplicationAssociationRegistrationUI(Pointer<COMObject> ptr) : super(ptr);

  int LaunchAdvancedAssociationUI(
    Pointer<Utf16> pszAppRegistryName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszAppRegistryName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszAppRegistryName,
          )>()(
        ptr.ref.lpVtbl,
        pszAppRegistryName,
      );
}

/// @nodoc
const CLSID_ApplicationAssociationRegistrationUI =
    '{1968106D-F3B5-44CF-890E-116FCB9ECEF1}';

/// {@category com}
class ApplicationAssociationRegistrationUI
    extends IApplicationAssociationRegistrationUI {
  ApplicationAssociationRegistrationUI(Pointer<COMObject> ptr) : super(ptr);

  factory ApplicationAssociationRegistrationUI.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()
      ..ref.setGUID(CLSID_ApplicationAssociationRegistrationUI);
    final iid = calloc<GUID>()
      ..ref.setGUID(IID_IApplicationAssociationRegistrationUI);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return ApplicationAssociationRegistrationUI(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
