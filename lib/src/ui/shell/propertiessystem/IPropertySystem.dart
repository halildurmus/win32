// IPropertySystem.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../ui/shell/propertiessystem/structs.g.dart';
import '../../../foundation/structs.g.dart';
import '../../../specialTypes.dart';

/// @nodoc
const IID_IPropertySystem = '{CA724E8A-C3E6-442B-88A4-6FB0DB8035A3}';

/// {@category Interface}
/// {@category com}
class IPropertySystem extends IUnknown {
  // vtable begins at 3, is 9 entries long.
  IPropertySystem(Pointer<COMObject> ptr) : super(ptr);

  int GetPropertyDescription(
    Pointer<PROPERTYKEY> propkey,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> propkey,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> propkey,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        propkey,
        riid,
        ppv,
      );

  int GetPropertyDescriptionByName(
    Pointer<Utf16> pszCanonicalName,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszCanonicalName,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszCanonicalName,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        pszCanonicalName,
        riid,
        ppv,
      );

  int GetPropertyDescriptionListFromString(
    Pointer<Utf16> pszPropList,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPropList,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPropList,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        pszPropList,
        riid,
        ppv,
      );

  int EnumeratePropertyDescriptions(
    int filterOn,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 filterOn,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int filterOn,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        filterOn,
        riid,
        ppv,
      );

  int FormatForDisplay(
    Pointer<PROPERTYKEY> key,
    Pointer<PROPVARIANT> propvar,
    int pdff,
    Pointer<Utf16> pszText,
    int cchText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<PROPVARIANT> propvar,
            Uint32 pdff,
            Pointer<Utf16> pszText,
            Uint32 cchText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<PROPVARIANT> propvar,
            int pdff,
            Pointer<Utf16> pszText,
            int cchText,
          )>()(
        ptr.ref.lpVtbl,
        key,
        propvar,
        pdff,
        pszText,
        cchText,
      );

  int FormatForDisplayAlloc(
    Pointer<PROPERTYKEY> key,
    Pointer<PROPVARIANT> propvar,
    int pdff,
    Pointer<Pointer<Utf16>> ppszDisplay,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<PROPVARIANT> propvar,
            Uint32 pdff,
            Pointer<Pointer<Utf16>> ppszDisplay,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<PROPVARIANT> propvar,
            int pdff,
            Pointer<Pointer<Utf16>> ppszDisplay,
          )>()(
        ptr.ref.lpVtbl,
        key,
        propvar,
        pdff,
        ppszDisplay,
      );

  int RegisterPropertySchema(
    Pointer<Utf16> pszPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPath,
          )>()(
        ptr.ref.lpVtbl,
        pszPath,
      );

  int UnregisterPropertySchema(
    Pointer<Utf16> pszPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPath,
          )>()(
        ptr.ref.lpVtbl,
        pszPath,
      );

  int RefreshPropertySchema() => ptr.ref.lpVtbl.value
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
}

/// @nodoc
const CLSID_PropertySystem = '{B8967F85-58AE-4F46-9FB2-5D7904798F4B}';

/// {@category com}
class PropertySystem extends IPropertySystem {
  PropertySystem(Pointer<COMObject> ptr) : super(ptr);

  factory PropertySystem.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_PropertySystem);
    final iid = calloc<GUID>()..ref.setGUID(IID_IPropertySystem);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return PropertySystem(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
