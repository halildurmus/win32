// IPropertyStoreCache.dart

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

import '../../../ui/shell/propertiessystem/IPropertyStore.dart';
import '../../../ui/shell/propertiessystem/structs.g.dart';
import '../../../foundation/structs.g.dart';
import '../../../specialTypes.dart';

/// @nodoc
const IID_IPropertyStoreCache = '{3017056D-9A91-4E90-937D-746C72ABBF4F}';

/// {@category Interface}
/// {@category com}
class IPropertyStoreCache extends IPropertyStore {
  // vtable begins at 8, is 4 entries long.
  IPropertyStoreCache(Pointer<COMObject> ptr) : super(ptr);

  int GetState(
    Pointer<PROPERTYKEY> key,
    Pointer<Int32> pstate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<Int32> pstate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<Int32> pstate,
          )>()(
        ptr.ref.lpVtbl,
        key,
        pstate,
      );

  int GetValueAndState(
    Pointer<PROPERTYKEY> key,
    Pointer<PROPVARIANT> ppropvar,
    Pointer<Int32> pstate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<PROPVARIANT> ppropvar,
            Pointer<Int32> pstate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<PROPVARIANT> ppropvar,
            Pointer<Int32> pstate,
          )>()(
        ptr.ref.lpVtbl,
        key,
        ppropvar,
        pstate,
      );

  int SetState(
    Pointer<PROPERTYKEY> key,
    int state,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Int32 state,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            int state,
          )>()(
        ptr.ref.lpVtbl,
        key,
        state,
      );

  int SetValueAndState(
    Pointer<PROPERTYKEY> key,
    Pointer<PROPVARIANT> ppropvar,
    int state,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<PROPVARIANT> ppropvar,
            Int32 state,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<PROPVARIANT> ppropvar,
            int state,
          )>()(
        ptr.ref.lpVtbl,
        key,
        ppropvar,
        state,
      );
}
