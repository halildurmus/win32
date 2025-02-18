// immdevice.dart

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
const IID_IMMDevice = '{d666063f-1587-4e43-81f1-b948e807363f}';

/// The IMMDevice interface encapsulates the generic features of a
/// multimedia device resource.
///
/// {@category com}
class IMMDevice extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IMMDevice(super.ptr);

  factory IMMDevice.from(IUnknown interface) =>
      IMMDevice(interface.toInterface(IID_IMMDevice));

  int activate(
    Pointer<GUID> iid,
    int dwClsCtx,
    Pointer<PROPVARIANT> pActivationParams,
    Pointer<Pointer> ppInterface,
  ) => (ptr.ref.vtable + 3)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<GUID> iid,
              Uint32 dwClsCtx,
              Pointer<PROPVARIANT> pActivationParams,
              Pointer<Pointer> ppInterface,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          Pointer<GUID> iid,
          int dwClsCtx,
          Pointer<PROPVARIANT> pActivationParams,
          Pointer<Pointer> ppInterface,
        )
      >()(ptr.ref.lpVtbl, iid, dwClsCtx, pActivationParams, ppInterface);

  int openPropertyStore(
    int stgmAccess,
    Pointer<Pointer<COMObject>> ppProperties,
  ) => (ptr.ref.vtable + 4)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Uint32 stgmAccess,
              Pointer<Pointer<COMObject>> ppProperties,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          int stgmAccess,
          Pointer<Pointer<COMObject>> ppProperties,
        )
      >()(ptr.ref.lpVtbl, stgmAccess, ppProperties);

  int getId(Pointer<Pointer<Utf16>> ppstrId) => (ptr.ref.vtable + 5)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(Pointer, Pointer<Pointer<Utf16>> ppstrId)
          >
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Pointer<Utf16>> ppstrId)>()(
    ptr.ref.lpVtbl,
    ppstrId,
  );

  int getState(Pointer<Uint32> pdwState) => (ptr.ref.vtable + 6)
      .cast<
        Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Uint32> pdwState)>
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Uint32> pdwState)>()(
    ptr.ref.lpVtbl,
    pdwState,
  );
}
