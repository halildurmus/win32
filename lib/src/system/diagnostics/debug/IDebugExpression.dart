// IDebugExpression.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../system/diagnostics/debug/IDebugExpressionCallBack.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/diagnostics/debug/IDebugProperty.dart';

/// @nodoc
const IID_IDebugExpression = '{51973C14-CB0C-11D0-B5C9-00A0244A0E7A}';

/// {@category Interface}
/// {@category com}
class IDebugExpression extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IDebugExpression(Pointer<COMObject> ptr) : super(ptr);

  int Start(
    Pointer<COMObject> pdecb,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pdecb,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pdecb,
          )>()(
        ptr.ref.lpVtbl,
        pdecb,
      );

  int Abort() => ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int QueryIsComplete() => ptr.ref.lpVtbl.value
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

  int GetResultAsString(
    Pointer<Int32> phrResult,
    Pointer<Pointer<Utf16>> pbstrResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> phrResult,
            Pointer<Pointer<Utf16>> pbstrResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> phrResult,
            Pointer<Pointer<Utf16>> pbstrResult,
          )>()(
        ptr.ref.lpVtbl,
        phrResult,
        pbstrResult,
      );

  int GetResultAsDebugProperty(
    Pointer<Int32> phrResult,
    Pointer<Pointer<COMObject>> ppdp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> phrResult,
            Pointer<Pointer<COMObject>> ppdp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> phrResult,
            Pointer<Pointer<COMObject>> ppdp,
          )>()(
        ptr.ref.lpVtbl,
        phrResult,
        ppdp,
      );
}
