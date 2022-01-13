// IModelMethod.dart

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
import '../../../system/diagnostics/debug/IModelObject.dart';
import '../../../system/diagnostics/debug/IKeyStore.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IModelMethod = '{80600C1F-B90B-4896-82AD-1C00207909E8}';

/// {@category Interface}
/// {@category com}
class IModelMethod extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IModelMethod(Pointer<COMObject> ptr) : super(ptr);

  int Call(
    Pointer<COMObject> pContextObject,
    int argCount,
    Pointer<Pointer<COMObject>> ppArguments,
    Pointer<Pointer<COMObject>> ppResult,
    Pointer<Pointer<COMObject>> ppMetadata,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pContextObject,
            Uint64 argCount,
            Pointer<Pointer<COMObject>> ppArguments,
            Pointer<Pointer<COMObject>> ppResult,
            Pointer<Pointer<COMObject>> ppMetadata,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pContextObject,
            int argCount,
            Pointer<Pointer<COMObject>> ppArguments,
            Pointer<Pointer<COMObject>> ppResult,
            Pointer<Pointer<COMObject>> ppMetadata,
          )>()(
        ptr.ref.lpVtbl,
        pContextObject,
        argCount,
        ppArguments,
        ppResult,
        ppMetadata,
      );
}
