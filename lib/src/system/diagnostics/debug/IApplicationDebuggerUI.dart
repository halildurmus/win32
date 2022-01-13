// IApplicationDebuggerUI.dart

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
import '../../../system/diagnostics/debug/IDebugDocumentText.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/diagnostics/debug/IDebugDocumentContext.dart';

/// @nodoc
const IID_IApplicationDebuggerUI = '{51973C2B-CB0C-11D0-B5C9-00A0244A0E7A}';

/// {@category Interface}
/// {@category com}
class IApplicationDebuggerUI extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IApplicationDebuggerUI(Pointer<COMObject> ptr) : super(ptr);

  int BringDocumentToTop(
    Pointer<COMObject> pddt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pddt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pddt,
          )>()(
        ptr.ref.lpVtbl,
        pddt,
      );

  int BringDocumentContextToTop(
    Pointer<COMObject> pddc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pddc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pddc,
          )>()(
        ptr.ref.lpVtbl,
        pddc,
      );
}
