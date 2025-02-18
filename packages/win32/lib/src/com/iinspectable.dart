// iinspectable.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../callbacks.dart';
import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../propertykey.dart';
import '../structs.g.dart';
import '../utils.dart';
import '../variant.dart';
import '../win32/ole32.g.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IInspectable = '{af86e2e0-b12d-4c6a-9c5a-d7aa65101e90}';

/// Provides functionality required for all Windows Runtime classes.
///
/// {@category com}
class IInspectable extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IInspectable(super.ptr);

  factory IInspectable.from(IUnknown interface) =>
      IInspectable(interface.toInterface(IID_IInspectable));

  int getIids(Pointer<Uint32> iidCount, Pointer<Pointer<GUID>> iids) =>
      (ptr.ref.vtable + 3)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(
                  Pointer,
                  Pointer<Uint32> iidCount,
                  Pointer<Pointer<GUID>> iids,
                )
              >
            >
          >()
          .value
          .asFunction<
            int Function(
              Pointer,
              Pointer<Uint32> iidCount,
              Pointer<Pointer<GUID>> iids,
            )
          >()(ptr.ref.lpVtbl, iidCount, iids);

  int getRuntimeClassName(Pointer<IntPtr> className) => (ptr.ref.vtable + 4)
      .cast<
        Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<IntPtr> className)>
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<IntPtr> className)>()(
    ptr.ref.lpVtbl,
    className,
  );

  int getTrustLevel(Pointer<Int32> trustLevel) => (ptr.ref.vtable + 5)
      .cast<
        Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> trustLevel)>
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Int32> trustLevel)>()(
    ptr.ref.lpVtbl,
    trustLevel,
  );
}
