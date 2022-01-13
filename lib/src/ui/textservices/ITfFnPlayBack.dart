// ITfFnPlayBack.dart

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

import '../../ui/textservices/ITfFunction.dart';
import '../../ui/textservices/ITfRange.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITfFnPlayBack = '{A3A416A4-0F64-11D3-B5B7-00C04FC324A1}';

/// {@category Interface}
/// {@category com}
class ITfFnPlayBack extends ITfFunction {
  // vtable begins at 4, is 2 entries long.
  ITfFnPlayBack(Pointer<COMObject> ptr) : super(ptr);

  int QueryRange(
    Pointer<COMObject> pRange,
    Pointer<Pointer<COMObject>> ppNewRange,
    Pointer<Int32> pfPlayable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pRange,
            Pointer<Pointer<COMObject>> ppNewRange,
            Pointer<Int32> pfPlayable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pRange,
            Pointer<Pointer<COMObject>> ppNewRange,
            Pointer<Int32> pfPlayable,
          )>()(
        ptr.ref.lpVtbl,
        pRange,
        ppNewRange,
        pfPlayable,
      );

  int Play(
    Pointer<COMObject> pRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pRange,
          )>()(
        ptr.ref.lpVtbl,
        pRange,
      );
}
