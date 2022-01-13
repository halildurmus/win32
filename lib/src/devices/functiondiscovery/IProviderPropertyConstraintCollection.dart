// IProviderPropertyConstraintCollection.dart

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
import '../../ui/shell/propertiessystem/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IProviderPropertyConstraintCollection =
    '{F4FAE42F-5778-4A13-8540-B5FD8C1398DD}';

/// {@category Interface}
/// {@category com}
class IProviderPropertyConstraintCollection extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IProviderPropertyConstraintCollection(Pointer<COMObject> ptr) : super(ptr);

  int GetCount(
    Pointer<Uint32> pdwCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int Get(
    Pointer<PROPERTYKEY> Key,
    Pointer<PROPVARIANT> pPropVar,
    Pointer<Uint32> pdwPropertyConstraint,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> Key,
            Pointer<PROPVARIANT> pPropVar,
            Pointer<Uint32> pdwPropertyConstraint,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> Key,
            Pointer<PROPVARIANT> pPropVar,
            Pointer<Uint32> pdwPropertyConstraint,
          )>()(
        ptr.ref.lpVtbl,
        Key,
        pPropVar,
        pdwPropertyConstraint,
      );

  int Item(
    int dwIndex,
    Pointer<PROPERTYKEY> pKey,
    Pointer<PROPVARIANT> pPropVar,
    Pointer<Uint32> pdwPropertyConstraint,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwIndex,
            Pointer<PROPERTYKEY> pKey,
            Pointer<PROPVARIANT> pPropVar,
            Pointer<Uint32> pdwPropertyConstraint,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwIndex,
            Pointer<PROPERTYKEY> pKey,
            Pointer<PROPVARIANT> pPropVar,
            Pointer<Uint32> pdwPropertyConstraint,
          )>()(
        ptr.ref.lpVtbl,
        dwIndex,
        pKey,
        pPropVar,
        pdwPropertyConstraint,
      );

  int Next(
    Pointer<PROPERTYKEY> pKey,
    Pointer<PROPVARIANT> pPropVar,
    Pointer<Uint32> pdwPropertyConstraint,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> pKey,
            Pointer<PROPVARIANT> pPropVar,
            Pointer<Uint32> pdwPropertyConstraint,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> pKey,
            Pointer<PROPVARIANT> pPropVar,
            Pointer<Uint32> pdwPropertyConstraint,
          )>()(
        ptr.ref.lpVtbl,
        pKey,
        pPropVar,
        pdwPropertyConstraint,
      );

  int Skip() => ptr.ref.lpVtbl.value
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

  int Reset() => ptr.ref.lpVtbl.value
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
