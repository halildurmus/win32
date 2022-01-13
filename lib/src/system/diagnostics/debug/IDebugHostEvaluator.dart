// IDebugHostEvaluator.dart

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
import '../../../system/diagnostics/debug/IDebugHostContext.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/diagnostics/debug/IModelObject.dart';
import '../../../system/diagnostics/debug/IKeyStore.dart';

/// @nodoc
const IID_IDebugHostEvaluator = '{0FEF9A21-577E-4997-AC7B-1C4883241D99}';

/// {@category Interface}
/// {@category com}
class IDebugHostEvaluator extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IDebugHostEvaluator(Pointer<COMObject> ptr) : super(ptr);

  int EvaluateExpression(
    Pointer<COMObject> context,
    Pointer<Utf16> expression,
    Pointer<COMObject> bindingContext,
    Pointer<Pointer<COMObject>> result,
    Pointer<Pointer<COMObject>> metadata,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> context,
            Pointer<Utf16> expression,
            Pointer<COMObject> bindingContext,
            Pointer<Pointer<COMObject>> result,
            Pointer<Pointer<COMObject>> metadata,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> context,
            Pointer<Utf16> expression,
            Pointer<COMObject> bindingContext,
            Pointer<Pointer<COMObject>> result,
            Pointer<Pointer<COMObject>> metadata,
          )>()(
        ptr.ref.lpVtbl,
        context,
        expression,
        bindingContext,
        result,
        metadata,
      );

  int EvaluateExtendedExpression(
    Pointer<COMObject> context,
    Pointer<Utf16> expression,
    Pointer<COMObject> bindingContext,
    Pointer<Pointer<COMObject>> result,
    Pointer<Pointer<COMObject>> metadata,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> context,
            Pointer<Utf16> expression,
            Pointer<COMObject> bindingContext,
            Pointer<Pointer<COMObject>> result,
            Pointer<Pointer<COMObject>> metadata,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> context,
            Pointer<Utf16> expression,
            Pointer<COMObject> bindingContext,
            Pointer<Pointer<COMObject>> result,
            Pointer<Pointer<COMObject>> metadata,
          )>()(
        ptr.ref.lpVtbl,
        context,
        expression,
        bindingContext,
        result,
        metadata,
      );
}
