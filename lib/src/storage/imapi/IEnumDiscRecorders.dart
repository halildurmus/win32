// IEnumDiscRecorders.dart

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
import '../../storage/imapi/IDiscRecorder.dart';
import '../../foundation/structs.g.dart';
import '../../storage/imapi/IEnumDiscRecorders.dart';

/// @nodoc
const IID_IEnumDiscRecorders = '{9B1921E1-54AC-11D3-9144-00104BA11C5E}';

/// {@category Interface}
/// {@category com}
class IEnumDiscRecorders extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IEnumDiscRecorders(Pointer<COMObject> ptr) : super(ptr);

  int Next(
    int cRecorders,
    Pointer<Pointer<COMObject>> ppRecorder,
    Pointer<Uint32> pcFetched,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cRecorders,
            Pointer<Pointer<COMObject>> ppRecorder,
            Pointer<Uint32> pcFetched,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cRecorders,
            Pointer<Pointer<COMObject>> ppRecorder,
            Pointer<Uint32> pcFetched,
          )>()(
        ptr.ref.lpVtbl,
        cRecorders,
        ppRecorder,
        pcFetched,
      );

  int Skip(
    int cRecorders,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cRecorders,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cRecorders,
          )>()(
        ptr.ref.lpVtbl,
        cRecorders,
      );

  int Reset() => ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int Clone(
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        ppEnum,
      );
}
