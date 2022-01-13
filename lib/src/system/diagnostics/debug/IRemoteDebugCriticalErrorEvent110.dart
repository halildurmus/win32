// IRemoteDebugCriticalErrorEvent110.dart

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
import '../../../foundation/structs.g.dart';
import '../../../system/diagnostics/debug/IDebugDocumentContext.dart';

/// @nodoc
const IID_IRemoteDebugCriticalErrorEvent110 =
    '{2F69C611-6B14-47E8-9260-4BB7C52F504B}';

/// {@category Interface}
/// {@category com}
class IRemoteDebugCriticalErrorEvent110 extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IRemoteDebugCriticalErrorEvent110(Pointer<COMObject> ptr) : super(ptr);

  int GetErrorInfo(
    Pointer<Pointer<Utf16>> pbstrSource,
    Pointer<Int32> pMessageId,
    Pointer<Pointer<Utf16>> pbstrMessage,
    Pointer<Pointer<COMObject>> ppLocation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrSource,
            Pointer<Int32> pMessageId,
            Pointer<Pointer<Utf16>> pbstrMessage,
            Pointer<Pointer<COMObject>> ppLocation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrSource,
            Pointer<Int32> pMessageId,
            Pointer<Pointer<Utf16>> pbstrMessage,
            Pointer<Pointer<COMObject>> ppLocation,
          )>()(
        ptr.ref.lpVtbl,
        pbstrSource,
        pMessageId,
        pbstrMessage,
        ppLocation,
      );
}
