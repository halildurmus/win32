// IObjectWithPropertyKey.dart

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

/// @nodoc
const IID_IObjectWithPropertyKey = '{FC0CA0A7-C316-4FD2-9031-3E628E6D4F23}';

/// {@category Interface}
/// {@category com}
class IObjectWithPropertyKey extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IObjectWithPropertyKey(Pointer<COMObject> ptr) : super(ptr);

  int SetPropertyKey(
    Pointer<PROPERTYKEY> key,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
          )>()(
        ptr.ref.lpVtbl,
        key,
      );

  int GetPropertyKey(
    Pointer<PROPERTYKEY> pkey,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> pkey,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> pkey,
          )>()(
        ptr.ref.lpVtbl,
        pkey,
      );
}
