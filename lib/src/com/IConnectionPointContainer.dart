// IConnectionPointContainer.dart

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
const IID_IConnectionPointContainer = '{B196B284-BAB4-101A-B69C-00AA00341D07}';

typedef _EnumConnectionPoints_Native = Int32 Function(
    Pointer obj, Pointer<Pointer> ppEnum);
typedef _EnumConnectionPoints_Dart = int Function(
    Pointer obj, Pointer<Pointer> ppEnum);

typedef _FindConnectionPoint_Native = Int32 Function(
    Pointer obj, Pointer<GUID> riid, Pointer<Pointer> ppCP);
typedef _FindConnectionPoint_Dart = int Function(
    Pointer obj, Pointer<GUID> riid, Pointer<Pointer> ppCP);

/// {@category Interface}
/// {@category com}
class IConnectionPointContainer extends IUnknown {
  // vtable begins at 3, ends at 4

  IConnectionPointContainer(Pointer<COMObject> ptr) : super(ptr);

  int EnumConnectionPoints(Pointer<Pointer> ppEnum) =>
      Pointer<NativeFunction<_EnumConnectionPoints_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(3).value)
          .asFunction<_EnumConnectionPoints_Dart>()(ptr.ref.lpVtbl, ppEnum);

  int FindConnectionPoint(Pointer<GUID> riid, Pointer<Pointer> ppCP) =>
      Pointer<NativeFunction<_FindConnectionPoint_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(4).value)
          .asFunction<_FindConnectionPoint_Dart>()(ptr.ref.lpVtbl, riid, ppCP);
}
