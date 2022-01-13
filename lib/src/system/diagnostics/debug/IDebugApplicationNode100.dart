// IDebugApplicationNode100.dart

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
import '../../../system/diagnostics/debug/structs.g.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/diagnostics/debug/IDebugDocument.dart';

/// @nodoc
const IID_IDebugApplicationNode100 = '{90A7734E-841B-4F77-9384-A2891E76E7E2}';

/// {@category Interface}
/// {@category com}
class IDebugApplicationNode100 extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IDebugApplicationNode100(Pointer<COMObject> ptr) : super(ptr);

  int SetFilterForEventSink(
    int dwCookie,
    int filter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwCookie,
            Int32 filter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwCookie,
            int filter,
          )>()(
        ptr.ref.lpVtbl,
        dwCookie,
        filter,
      );

  int GetExcludedDocuments(
    int filter,
    Pointer<TEXT_DOCUMENT_ARRAY> pDocuments,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 filter,
            Pointer<TEXT_DOCUMENT_ARRAY> pDocuments,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int filter,
            Pointer<TEXT_DOCUMENT_ARRAY> pDocuments,
          )>()(
        ptr.ref.lpVtbl,
        filter,
        pDocuments,
      );

  int QueryIsChildNode(
    Pointer<COMObject> pSearchKey,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSearchKey,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSearchKey,
          )>()(
        ptr.ref.lpVtbl,
        pSearchKey,
      );
}
