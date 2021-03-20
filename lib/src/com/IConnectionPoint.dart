// IConnectionPoint.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
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
    Pointer obj, Pointer<Pointer> ppCPC);
typedef _GetConnectionPointContainer_Dart = int Function(
    Pointer obj, Pointer<Pointer> ppCPC);

typedef _Advise_Native = Int32 Function(
    Pointer obj, Pointer pUnkSink, Pointer<Uint32> pdwCookie);
typedef _Advise_Dart = int Function(
    Pointer obj, Pointer pUnkSink, Pointer<Uint32> pdwCookie);

typedef _Unadvise_Native = Int32 Function(Pointer obj, Uint32 dwCookie);
typedef _Unadvise_Dart = int Function(Pointer obj, int dwCookie);

typedef _EnumConnections_Native = Int32 Function(
    Pointer obj, Pointer<Pointer> ppEnum);
typedef _EnumConnections_Dart = int Function(
    Pointer obj, Pointer<Pointer> ppEnum);

/// {@category Interface}
/// {@category com}
class IConnectionPoint extends IUnknown {
  // vtable begins at 3, ends at 7

  IConnectionPoint(Pointer<COMObject> ptr) : super(ptr);

  int GetConnectionInterface(Pointer<GUID> pIID) =>
      Pointer<NativeFunction<_GetConnectionInterface_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(3).value)
          .asFunction<_GetConnectionInterface_Dart>()(ptr.ref.lpVtbl, pIID);

  int GetConnectionPointContainer(Pointer<Pointer> ppCPC) =>
      Pointer<NativeFunction<_GetConnectionPointContainer_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(4).value)
              .asFunction<_GetConnectionPointContainer_Dart>()(
          ptr.ref.lpVtbl, ppCPC);

  int Advise(Pointer pUnkSink, Pointer<Uint32> pdwCookie) =>
      Pointer<NativeFunction<_Advise_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(5).value)
          .asFunction<_Advise_Dart>()(ptr.ref.lpVtbl, pUnkSink, pdwCookie);

  int Unadvise(int dwCookie) =>
      Pointer<NativeFunction<_Unadvise_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(6).value)
          .asFunction<_Unadvise_Dart>()(ptr.ref.lpVtbl, dwCookie);

  int EnumConnections(Pointer<Pointer> ppEnum) =>
      Pointer<NativeFunction<_EnumConnections_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(7).value)
          .asFunction<_EnumConnections_Dart>()(ptr.ref.lpVtbl, ppEnum);
}
