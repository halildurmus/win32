// IApplicationAssociationRegistration.dart

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
import '../../ui/shell/structs.g.dart';

/// @nodoc
const IID_IApplicationAssociationRegistration =
    '{4E530B0A-E611-4C77-A3AC-9031D022281B}';

/// {@category Interface}
/// {@category com}
class IApplicationAssociationRegistration extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IApplicationAssociationRegistration(Pointer<COMObject> ptr) : super(ptr);

  int QueryCurrentDefault(
    Pointer<Utf16> pszQuery,
    int atQueryType,
    int alQueryLevel,
    Pointer<Pointer<Utf16>> ppszAssociation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszQuery,
            Int32 atQueryType,
            Int32 alQueryLevel,
            Pointer<Pointer<Utf16>> ppszAssociation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszQuery,
            int atQueryType,
            int alQueryLevel,
            Pointer<Pointer<Utf16>> ppszAssociation,
          )>()(
        ptr.ref.lpVtbl,
        pszQuery,
        atQueryType,
        alQueryLevel,
        ppszAssociation,
      );

  int QueryAppIsDefault(
    Pointer<Utf16> pszQuery,
    int atQueryType,
    int alQueryLevel,
    Pointer<Utf16> pszAppRegistryName,
    Pointer<Int32> pfDefault,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszQuery,
            Int32 atQueryType,
            Int32 alQueryLevel,
            Pointer<Utf16> pszAppRegistryName,
            Pointer<Int32> pfDefault,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszQuery,
            int atQueryType,
            int alQueryLevel,
            Pointer<Utf16> pszAppRegistryName,
            Pointer<Int32> pfDefault,
          )>()(
        ptr.ref.lpVtbl,
        pszQuery,
        atQueryType,
        alQueryLevel,
        pszAppRegistryName,
        pfDefault,
      );

  int QueryAppIsDefaultAll(
    int alQueryLevel,
    Pointer<Utf16> pszAppRegistryName,
    Pointer<Int32> pfDefault,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 alQueryLevel,
            Pointer<Utf16> pszAppRegistryName,
            Pointer<Int32> pfDefault,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int alQueryLevel,
            Pointer<Utf16> pszAppRegistryName,
            Pointer<Int32> pfDefault,
          )>()(
        ptr.ref.lpVtbl,
        alQueryLevel,
        pszAppRegistryName,
        pfDefault,
      );

  int SetAppAsDefault(
    Pointer<Utf16> pszAppRegistryName,
    Pointer<Utf16> pszSet,
    int atSetType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszAppRegistryName,
            Pointer<Utf16> pszSet,
            Int32 atSetType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszAppRegistryName,
            Pointer<Utf16> pszSet,
            int atSetType,
          )>()(
        ptr.ref.lpVtbl,
        pszAppRegistryName,
        pszSet,
        atSetType,
      );

  int SetAppAsDefaultAll(
    Pointer<Utf16> pszAppRegistryName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
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

  int ClearUserAssociations() => ptr.ref.lpVtbl.value
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

/// @nodoc
const CLSID_ApplicationAssociationRegistration =
    '{591209C7-767B-42B2-9FBA-44EE4615F2C7}';

/// {@category com}
class ApplicationAssociationRegistration
    extends IApplicationAssociationRegistration {
  ApplicationAssociationRegistration(Pointer<COMObject> ptr) : super(ptr);

  factory ApplicationAssociationRegistration.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()
      ..ref.setGUID(CLSID_ApplicationAssociationRegistration);
    final iid = calloc<GUID>()
      ..ref.setGUID(IID_IApplicationAssociationRegistration);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return ApplicationAssociationRegistration(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
