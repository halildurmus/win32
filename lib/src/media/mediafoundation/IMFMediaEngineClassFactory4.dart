// IMFMediaEngineClassFactory4.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../guid.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../utils.dart';

import '../../system/com/IUnknown.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFMediaEngineClassFactory4 =
    '{FBE256C1-43CF-4A9B-8CB8-CE8632A34186}';

/// {@category Interface}
/// {@category com}
class IMFMediaEngineClassFactory4 extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMFMediaEngineClassFactory4(Pointer<COMObject> ptr) : super(ptr);

  int CreateContentDecryptionModuleFactory(
    Pointer<Utf16> keySystem,
    Pointer<GUID> riid,
    Pointer<Pointer> ppvObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> keySystem,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> keySystem,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvObject,
          )>()(
        ptr.ref.lpVtbl,
        keySystem,
        riid,
        ppvObject,
      );
}
