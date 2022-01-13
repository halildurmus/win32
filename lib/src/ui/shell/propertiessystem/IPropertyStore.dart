// IPropertyStore.dart

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
import '../../../ui/shell/propertiessystem/structs.g.dart';
import '../../../specialTypes.dart';

/// @nodoc
const IID_IPropertyStore = '{886D8EEB-8CF2-4446-8D02-CDBA1DBDCF99}';

/// {@category Interface}
/// {@category com}
class IPropertyStore extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IPropertyStore(Pointer<COMObject> ptr) : super(ptr);

  int GetCount(
    Pointer<Uint32> cProps,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> cProps,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> cProps,
          )>()(
        ptr.ref.lpVtbl,
        cProps,
      );

  int GetAt(
    int iProp,
    Pointer<PROPERTYKEY> pkey,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 iProp,
            Pointer<PROPERTYKEY> pkey,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iProp,
            Pointer<PROPERTYKEY> pkey,
          )>()(
        ptr.ref.lpVtbl,
        iProp,
        pkey,
      );

  int GetValue(
    Pointer<PROPERTYKEY> key,
    Pointer<PROPVARIANT> pv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<PROPVARIANT> pv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<PROPVARIANT> pv,
          )>()(
        ptr.ref.lpVtbl,
        key,
        pv,
      );

  int SetValue(
    Pointer<PROPERTYKEY> key,
    Pointer<PROPVARIANT> propvar,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<PROPVARIANT> propvar,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<PROPVARIANT> propvar,
          )>()(
        ptr.ref.lpVtbl,
        key,
        propvar,
      );

  int Commit() => ptr.ref.lpVtbl.value
          .elementAt(7)
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
