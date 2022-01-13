// IRemoteDebugInfoEvent110.dart

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
import '../../../system/diagnostics/debug/IDebugDocumentContext.dart';

/// @nodoc
const IID_IRemoteDebugInfoEvent110 = '{9FF56BB6-EB89-4C0F-8823-CC2A4C0B7F26}';

/// {@category Interface}
/// {@category com}
class IRemoteDebugInfoEvent110 extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IRemoteDebugInfoEvent110(Pointer<COMObject> ptr) : super(ptr);

  int GetEventInfo(
    Pointer<Int32> pMessageType,
    Pointer<Pointer<Utf16>> pbstrMessage,
    Pointer<Pointer<Utf16>> pbstrUrl,
    Pointer<Pointer<COMObject>> ppLocation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pMessageType,
            Pointer<Pointer<Utf16>> pbstrMessage,
            Pointer<Pointer<Utf16>> pbstrUrl,
            Pointer<Pointer<COMObject>> ppLocation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pMessageType,
            Pointer<Pointer<Utf16>> pbstrMessage,
            Pointer<Pointer<Utf16>> pbstrUrl,
            Pointer<Pointer<COMObject>> ppLocation,
          )>()(
        ptr.ref.lpVtbl,
        pMessageType,
        pbstrMessage,
        pbstrUrl,
        ppLocation,
      );
}
