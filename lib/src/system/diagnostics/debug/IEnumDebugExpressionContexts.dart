// IEnumDebugExpressionContexts.dart

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
import '../../../system/diagnostics/debug/IDebugExpressionContext.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/diagnostics/debug/IEnumDebugExpressionContexts.dart';

/// @nodoc
const IID_IEnumDebugExpressionContexts =
    '{51973C40-CB0C-11D0-B5C9-00A0244A0E7A}';

/// {@category Interface}
/// {@category com}
class IEnumDebugExpressionContexts extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IEnumDebugExpressionContexts(Pointer<COMObject> ptr) : super(ptr);

  int Next(
    int celt,
    Pointer<Pointer<COMObject>> ppdec,
    Pointer<Uint32> pceltFetched,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 celt,
            Pointer<Pointer<COMObject>> ppdec,
            Pointer<Uint32> pceltFetched,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int celt,
            Pointer<Pointer<COMObject>> ppdec,
            Pointer<Uint32> pceltFetched,
          )>()(
        ptr.ref.lpVtbl,
        celt,
        ppdec,
        pceltFetched,
      );

  int Skip(
    int celt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 celt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int celt,
          )>()(
        ptr.ref.lpVtbl,
        celt,
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
    Pointer<Pointer<COMObject>> ppedec,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppedec,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppedec,
          )>()(
        ptr.ref.lpVtbl,
        ppedec,
      );
}
