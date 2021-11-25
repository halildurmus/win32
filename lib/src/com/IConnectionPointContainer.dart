// IConnectionPointContainer.dart

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

import '../system/com/IUnknown.dart';

/// @nodoc
const IID_IConnectionPointContainer = '{B196B284-BAB4-101A-B69C-00AA00341D07}';

/// {@category Interface}
/// {@category com}
class IConnectionPointContainer extends IUnknown {
  // vtable begins at 3, ends at 4
  IConnectionPointContainer(Pointer<COMObject> ptr) : super(ptr);

  int EnumConnectionPoints(Pointer<Pointer<COMObject>> ppEnum) =>
      ptr.ref.lpVtbl.value
              .elementAt(3)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer, Pointer<Pointer<COMObject>> ppEnum)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<Pointer<COMObject>> ppEnum)>()(
          ptr.ref.lpVtbl, ppEnum);

  int FindConnectionPoint(
          Pointer<GUID> riid, Pointer<Pointer<COMObject>> ppCP) =>
      ptr.ref.lpVtbl.value
              .elementAt(4)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<GUID> riid,
                              Pointer<Pointer<COMObject>> ppCP)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<GUID> riid,
                      Pointer<Pointer<COMObject>> ppCP)>()(
          ptr.ref.lpVtbl, riid, ppCP);
}
