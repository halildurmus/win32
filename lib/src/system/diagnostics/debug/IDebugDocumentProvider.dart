// IDebugDocumentProvider.dart

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

import '../../../system/diagnostics/debug/IDebugDocumentInfo.dart';
import '../../../system/diagnostics/debug/IDebugDocument.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IDebugDocumentProvider = '{51973C20-CB0C-11D0-B5C9-00A0244A0E7A}';

/// {@category Interface}
/// {@category com}
class IDebugDocumentProvider extends IDebugDocumentInfo {
  // vtable begins at 5, is 1 entries long.
  IDebugDocumentProvider(Pointer<COMObject> ptr) : super(ptr);

  int GetDocument(
    Pointer<Pointer<COMObject>> ppssd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppssd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppssd,
          )>()(
        ptr.ref.lpVtbl,
        ppssd,
      );
}
