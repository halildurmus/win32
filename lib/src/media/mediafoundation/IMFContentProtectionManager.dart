// IMFContentProtectionManager.dart

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
import '../../media/mediafoundation/IMFActivate.dart';
import '../../media/mediafoundation/IMFTopology.dart';
import '../../media/mediafoundation/IMFAsyncCallback.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/IMFAsyncResult.dart';

/// @nodoc
const IID_IMFContentProtectionManager =
    '{ACF92459-6A61-42BD-B57C-B43E51203CB0}';

/// {@category Interface}
/// {@category com}
class IMFContentProtectionManager extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IMFContentProtectionManager(Pointer<COMObject> ptr) : super(ptr);

  int BeginEnableContent(
    Pointer<COMObject> pEnablerActivate,
    Pointer<COMObject> pTopo,
    Pointer<COMObject> pCallback,
    Pointer<COMObject> punkState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pEnablerActivate,
            Pointer<COMObject> pTopo,
            Pointer<COMObject> pCallback,
            Pointer<COMObject> punkState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pEnablerActivate,
            Pointer<COMObject> pTopo,
            Pointer<COMObject> pCallback,
            Pointer<COMObject> punkState,
          )>()(
        ptr.ref.lpVtbl,
        pEnablerActivate,
        pTopo,
        pCallback,
        punkState,
      );

  int EndEnableContent(
    Pointer<COMObject> pResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pResult,
          )>()(
        ptr.ref.lpVtbl,
        pResult,
      );
}
