// IFilterChain.dart

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
import '../../media/directshow/IBaseFilter.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IFilterChain = '{DCFBDCF6-0DC2-45F5-9AB2-7C330EA09C29}';

/// {@category Interface}
/// {@category com}
class IFilterChain extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IFilterChain(Pointer<COMObject> ptr) : super(ptr);

  int StartChain(
    Pointer<COMObject> pStartFilter,
    Pointer<COMObject> pEndFilter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pStartFilter,
            Pointer<COMObject> pEndFilter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pStartFilter,
            Pointer<COMObject> pEndFilter,
          )>()(
        ptr.ref.lpVtbl,
        pStartFilter,
        pEndFilter,
      );

  int PauseChain(
    Pointer<COMObject> pStartFilter,
    Pointer<COMObject> pEndFilter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pStartFilter,
            Pointer<COMObject> pEndFilter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pStartFilter,
            Pointer<COMObject> pEndFilter,
          )>()(
        ptr.ref.lpVtbl,
        pStartFilter,
        pEndFilter,
      );

  int StopChain(
    Pointer<COMObject> pStartFilter,
    Pointer<COMObject> pEndFilter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pStartFilter,
            Pointer<COMObject> pEndFilter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pStartFilter,
            Pointer<COMObject> pEndFilter,
          )>()(
        ptr.ref.lpVtbl,
        pStartFilter,
        pEndFilter,
      );

  int RemoveChain(
    Pointer<COMObject> pStartFilter,
    Pointer<COMObject> pEndFilter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pStartFilter,
            Pointer<COMObject> pEndFilter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pStartFilter,
            Pointer<COMObject> pEndFilter,
          )>()(
        ptr.ref.lpVtbl,
        pStartFilter,
        pEndFilter,
      );
}
