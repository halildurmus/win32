// IScriptInvocationContext.dart

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
import '../../../specialTypes.dart';

/// @nodoc
const IID_IScriptInvocationContext = '{5D7741B7-AF7E-4A2A-85E5-C77F4D0659FB}';

/// {@category Interface}
/// {@category com}
class IScriptInvocationContext extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IScriptInvocationContext(Pointer<COMObject> ptr) : super(ptr);

  int GetContextType(
    Pointer<Int32> pInvocationContextType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pInvocationContextType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pInvocationContextType,
          )>()(
        ptr.ref.lpVtbl,
        pInvocationContextType,
      );

  int GetContextDescription(
    Pointer<Pointer<Utf16>> pDescription,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pDescription,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pDescription,
          )>()(
        ptr.ref.lpVtbl,
        pDescription,
      );

  int GetContextObject(
    Pointer<Pointer<COMObject>> ppContextObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppContextObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppContextObject,
          )>()(
        ptr.ref.lpVtbl,
        ppContextObject,
      );
}
