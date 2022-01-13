// IMFMediaEngineClassFactory2.dart

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
import '../../media/mediafoundation/IMFMediaKeys.dart';

/// @nodoc
const IID_IMFMediaEngineClassFactory2 =
    '{09083CEF-867F-4BF6-8776-DEE3A7B42FCA}';

/// {@category Interface}
/// {@category com}
class IMFMediaEngineClassFactory2 extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMFMediaEngineClassFactory2(Pointer<COMObject> ptr) : super(ptr);

  int CreateMediaKeys2(
    Pointer<Utf16> keySystem,
    Pointer<Utf16> defaultCdmStorePath,
    Pointer<Utf16> inprivateCdmStorePath,
    Pointer<Pointer<COMObject>> ppKeys,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> keySystem,
            Pointer<Utf16> defaultCdmStorePath,
            Pointer<Utf16> inprivateCdmStorePath,
            Pointer<Pointer<COMObject>> ppKeys,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> keySystem,
            Pointer<Utf16> defaultCdmStorePath,
            Pointer<Utf16> inprivateCdmStorePath,
            Pointer<Pointer<COMObject>> ppKeys,
          )>()(
        ptr.ref.lpVtbl,
        keySystem,
        defaultCdmStorePath,
        inprivateCdmStorePath,
        ppKeys,
      );
}
