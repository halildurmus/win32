// INamedPropertyStore.dart

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
import '../../../foundation/structs.g.dart';
import '../../../specialTypes.dart';

/// @nodoc
const IID_INamedPropertyStore = '{71604B0F-97B0-4764-8577-2F13E98A1422}';

/// {@category Interface}
/// {@category com}
class INamedPropertyStore extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  INamedPropertyStore(Pointer<COMObject> ptr) : super(ptr);

  int GetNamedValue(
    Pointer<Utf16> pszName,
    Pointer<PROPVARIANT> ppropvar,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszName,
            Pointer<PROPVARIANT> ppropvar,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszName,
            Pointer<PROPVARIANT> ppropvar,
          )>()(
        ptr.ref.lpVtbl,
        pszName,
        ppropvar,
      );

  int SetNamedValue(
    Pointer<Utf16> pszName,
    Pointer<PROPVARIANT> propvar,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszName,
            Pointer<PROPVARIANT> propvar,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszName,
            Pointer<PROPVARIANT> propvar,
          )>()(
        ptr.ref.lpVtbl,
        pszName,
        propvar,
      );

  int GetNameCount(
    Pointer<Uint32> pdwCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwCount,
          )>()(
        ptr.ref.lpVtbl,
        pdwCount,
      );

  int GetNameAt(
    int iProp,
    Pointer<Pointer<Utf16>> pbstrName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 iProp,
            Pointer<Pointer<Utf16>> pbstrName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iProp,
            Pointer<Pointer<Utf16>> pbstrName,
          )>()(
        ptr.ref.lpVtbl,
        iProp,
        pbstrName,
      );
}
