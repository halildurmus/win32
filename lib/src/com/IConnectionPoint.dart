// IConnectionPoint.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../ole32.dart';
import '../structs.dart';
import '../structs.g.dart';
import '../utils.dart';

import 'IUnknown.dart';

/// @nodoc
const IID_IConnectionPoint = '{B196B286-BAB4-101A-B69C-00AA00341D07}';

typedef _GetConnectionInterface_Native = Int32 Function(
    Pointer obj, Pointer<GUID> pIID);
typedef _GetConnectionInterface_Dart = int Function(
    Pointer obj, Pointer<GUID> pIID);

typedef _GetConnectionPointContainer_Native = Int32 Function(
    Pointer obj, Pointer<Pointer<COMObject>> ppCPC);
typedef _GetConnectionPointContainer_Dart = int Function(
    Pointer obj, Pointer<Pointer<COMObject>> ppCPC);

typedef _Advise_Native = Int32 Function(
    Pointer obj, Pointer<COMObject> pUnkSink, Pointer<Uint32> pdwCookie);
typedef _Advise_Dart = int Function(
    Pointer obj, Pointer<COMObject> pUnkSink, Pointer<Uint32> pdwCookie);

typedef _Unadvise_Native = Int32 Function(Pointer obj, Uint32 dwCookie);
typedef _Unadvise_Dart = int Function(Pointer obj, int dwCookie);

typedef _EnumConnections_Native = Int32 Function(
    Pointer obj, Pointer<Pointer<COMObject>> ppEnum);
typedef _EnumConnections_Dart = int Function(
    Pointer obj, Pointer<Pointer<COMObject>> ppEnum);

/// {@category Interface}
/// {@category com}
class IConnectionPoint extends IUnknown {
  // vtable begins at 3, ends at 7

  IConnectionPoint(Pointer<COMObject> ptr) : super(ptr);

  int GetConnectionInterface(Pointer<GUID> pIID) => ptr.ref.lpVtbl.value
      .elementAt(3)
      .cast<Pointer<NativeFunction<_GetConnectionInterface_Native>>>()
      .value
      .asFunction<_GetConnectionInterface_Dart>()(ptr.ref.lpVtbl, pIID);

  int GetConnectionPointContainer(Pointer<Pointer<COMObject>> ppCPC) => ptr
      .ref.lpVtbl.value
      .elementAt(4)
      .cast<Pointer<NativeFunction<_GetConnectionPointContainer_Native>>>()
      .value
      .asFunction<_GetConnectionPointContainer_Dart>()(ptr.ref.lpVtbl, ppCPC);

  int Advise(Pointer<COMObject> pUnkSink, Pointer<Uint32> pdwCookie) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<Pointer<NativeFunction<_Advise_Native>>>()
          .value
          .asFunction<_Advise_Dart>()(ptr.ref.lpVtbl, pUnkSink, pdwCookie);

  int Unadvise(int dwCookie) => ptr.ref.lpVtbl.value
      .elementAt(6)
      .cast<Pointer<NativeFunction<_Unadvise_Native>>>()
      .value
      .asFunction<_Unadvise_Dart>()(ptr.ref.lpVtbl, dwCookie);

  int EnumConnections(Pointer<Pointer<COMObject>> ppEnum) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<Pointer<NativeFunction<_EnumConnections_Native>>>()
          .value
          .asFunction<_EnumConnections_Dart>()(ptr.ref.lpVtbl, ppEnum);
}
