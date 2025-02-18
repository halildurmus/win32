// iconnectionpoint.dart

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
const IID_IConnectionPoint = '{b196b286-bab4-101a-b69c-00aa00341d07}';

/// Supports connection points for connectable objects.
///
/// {@category com}
class IConnectionPoint extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IConnectionPoint(super.ptr);

  factory IConnectionPoint.from(IUnknown interface) =>
      IConnectionPoint(interface.toInterface(IID_IConnectionPoint));

  int getConnectionInterface(Pointer<GUID> pIID) => (ptr.ref.vtable + 3)
      .cast<
        Pointer<NativeFunction<Int32 Function(Pointer, Pointer<GUID> pIID)>>
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<GUID> pIID)>()(
    ptr.ref.lpVtbl,
    pIID,
  );

  int getConnectionPointContainer(
    Pointer<Pointer<COMObject>> ppCPC,
  ) => (ptr.ref.vtable + 4)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(Pointer, Pointer<Pointer<COMObject>> ppCPC)
          >
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Pointer<COMObject>> ppCPC)>()(
    ptr.ref.lpVtbl,
    ppCPC,
  );

  int advise(Pointer<COMObject> pUnkSink, Pointer<Uint32> pdwCookie) =>
      (ptr.ref.vtable + 5)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(
                  Pointer,
                  Pointer<COMObject> pUnkSink,
                  Pointer<Uint32> pdwCookie,
                )
              >
            >
          >()
          .value
          .asFunction<
            int Function(
              Pointer,
              Pointer<COMObject> pUnkSink,
              Pointer<Uint32> pdwCookie,
            )
          >()(ptr.ref.lpVtbl, pUnkSink, pdwCookie);

  int unadvise(int dwCookie) => (ptr.ref.vtable + 6)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer, Uint32 dwCookie)>>>()
      .value
      .asFunction<int Function(Pointer, int dwCookie)>()(
    ptr.ref.lpVtbl,
    dwCookie,
  );

  int enumConnections(Pointer<Pointer<COMObject>> ppEnum) => (ptr.ref.vtable +
          7)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(Pointer, Pointer<Pointer<COMObject>> ppEnum)
          >
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Pointer<COMObject>> ppEnum)>()(
    ptr.ref.lpVtbl,
    ppEnum,
  );
}
