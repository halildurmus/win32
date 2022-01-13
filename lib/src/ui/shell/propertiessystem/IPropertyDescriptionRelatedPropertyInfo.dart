// IPropertyDescriptionRelatedPropertyInfo.dart

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

import '../../../ui/shell/propertiessystem/IPropertyDescription.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IPropertyDescriptionRelatedPropertyInfo =
    '{507393F4-2A3D-4A60-B59E-D9C75716C2DD}';

/// {@category Interface}
/// {@category com}
class IPropertyDescriptionRelatedPropertyInfo extends IPropertyDescription {
  // vtable begins at 24, is 1 entries long.
  IPropertyDescriptionRelatedPropertyInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetRelatedProperty(
    Pointer<Utf16> pszRelationshipName,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszRelationshipName,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszRelationshipName,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        pszRelationshipName,
        riid,
        ppv,
      );
}
