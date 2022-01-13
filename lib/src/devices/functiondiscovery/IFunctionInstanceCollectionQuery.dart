// IFunctionInstanceCollectionQuery.dart

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
import '../../devices/functiondiscovery/structs.g.dart';
import '../../devices/functiondiscovery/IFunctionInstanceCollection.dart';

/// @nodoc
const IID_IFunctionInstanceCollectionQuery =
    '{57CC6FD2-C09A-4289-BB72-25F04142058E}';

/// {@category Interface}
/// {@category com}
class IFunctionInstanceCollectionQuery extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IFunctionInstanceCollectionQuery(Pointer<COMObject> ptr) : super(ptr);

  int AddQueryConstraint(
    Pointer<Utf16> pszConstraintName,
    Pointer<Utf16> pszConstraintValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszConstraintName,
            Pointer<Utf16> pszConstraintValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszConstraintName,
            Pointer<Utf16> pszConstraintValue,
          )>()(
        ptr.ref.lpVtbl,
        pszConstraintName,
        pszConstraintValue,
      );

  int AddPropertyConstraint(
    Pointer<PROPERTYKEY> Key,
    Pointer<PROPVARIANT> pv,
    int enumPropertyConstraint,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> Key,
            Pointer<PROPVARIANT> pv,
            Int32 enumPropertyConstraint,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> Key,
            Pointer<PROPVARIANT> pv,
            int enumPropertyConstraint,
          )>()(
        ptr.ref.lpVtbl,
        Key,
        pv,
        enumPropertyConstraint,
      );

  int Execute(
    Pointer<Pointer<COMObject>> ppIFunctionInstanceCollection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIFunctionInstanceCollection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIFunctionInstanceCollection,
          )>()(
        ptr.ref.lpVtbl,
        ppIFunctionInstanceCollection,
      );
}
