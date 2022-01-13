// IFunctionDiscoveryProviderQuery.dart

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
import '../../devices/functiondiscovery/IProviderQueryConstraintCollection.dart';
import '../../devices/functiondiscovery/IProviderPropertyConstraintCollection.dart';

/// @nodoc
const IID_IFunctionDiscoveryProviderQuery =
    '{6876EA98-BAEC-46DB-BC20-75A76E267A3A}';

/// {@category Interface}
/// {@category com}
class IFunctionDiscoveryProviderQuery extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IFunctionDiscoveryProviderQuery(Pointer<COMObject> ptr) : super(ptr);

  int IsInstanceQuery(
    Pointer<Int32> pisInstanceQuery,
    Pointer<Pointer<Uint16>> ppszConstraintValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pisInstanceQuery,
            Pointer<Pointer<Uint16>> ppszConstraintValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pisInstanceQuery,
            Pointer<Pointer<Uint16>> ppszConstraintValue,
          )>()(
        ptr.ref.lpVtbl,
        pisInstanceQuery,
        ppszConstraintValue,
      );

  int IsSubcategoryQuery(
    Pointer<Int32> pisSubcategoryQuery,
    Pointer<Pointer<Uint16>> ppszConstraintValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pisSubcategoryQuery,
            Pointer<Pointer<Uint16>> ppszConstraintValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pisSubcategoryQuery,
            Pointer<Pointer<Uint16>> ppszConstraintValue,
          )>()(
        ptr.ref.lpVtbl,
        pisSubcategoryQuery,
        ppszConstraintValue,
      );

  int GetQueryConstraints(
    Pointer<Pointer<COMObject>> ppIProviderQueryConstraints,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIProviderQueryConstraints,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIProviderQueryConstraints,
          )>()(
        ptr.ref.lpVtbl,
        ppIProviderQueryConstraints,
      );

  int GetPropertyConstraints(
    Pointer<Pointer<COMObject>> ppIProviderPropertyConstraints,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIProviderPropertyConstraints,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIProviderPropertyConstraints,
          )>()(
        ptr.ref.lpVtbl,
        ppIProviderPropertyConstraints,
      );
}
