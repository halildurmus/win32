// ITfProperty.dart

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

import '../../ui/textservices/ITfReadOnlyProperty.dart';
import '../../ui/textservices/ITfRange.dart';
import '../../ui/textservices/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../ui/textservices/ITfPropertyStore.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_ITfProperty = '{E2449660-9542-11D2-BF46-00105A2799B5}';

/// {@category Interface}
/// {@category com}
class ITfProperty extends ITfReadOnlyProperty {
  // vtable begins at 7, is 4 entries long.
  ITfProperty(Pointer<COMObject> ptr) : super(ptr);

  int FindRange(
    int ec,
    Pointer<COMObject> pRange,
    Pointer<Pointer<COMObject>> ppRange,
    int aPos,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ec,
            Pointer<COMObject> pRange,
            Pointer<Pointer<COMObject>> ppRange,
            Int32 aPos,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ec,
            Pointer<COMObject> pRange,
            Pointer<Pointer<COMObject>> ppRange,
            int aPos,
          )>()(
        ptr.ref.lpVtbl,
        ec,
        pRange,
        ppRange,
        aPos,
      );

  int SetValueStore(
    int ec,
    Pointer<COMObject> pRange,
    Pointer<COMObject> pPropStore,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ec,
            Pointer<COMObject> pRange,
            Pointer<COMObject> pPropStore,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ec,
            Pointer<COMObject> pRange,
            Pointer<COMObject> pPropStore,
          )>()(
        ptr.ref.lpVtbl,
        ec,
        pRange,
        pPropStore,
      );

  int SetValue(
    int ec,
    Pointer<COMObject> pRange,
    Pointer<VARIANT> pvarValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ec,
            Pointer<COMObject> pRange,
            Pointer<VARIANT> pvarValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ec,
            Pointer<COMObject> pRange,
            Pointer<VARIANT> pvarValue,
          )>()(
        ptr.ref.lpVtbl,
        ec,
        pRange,
        pvarValue,
      );

  int Clear(
    int ec,
    Pointer<COMObject> pRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ec,
            Pointer<COMObject> pRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ec,
            Pointer<COMObject> pRange,
          )>()(
        ptr.ref.lpVtbl,
        ec,
        pRange,
      );
}
