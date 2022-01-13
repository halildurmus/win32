// IRawElementProviderWindowlessSite.dart

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
import '../../ui/accessibility/structs.g.dart';
import '../../ui/accessibility/IRawElementProviderFragment.dart';
import '../../foundation/structs.g.dart';
import '../../system/com/structs.g.dart';

/// @nodoc
const IID_IRawElementProviderWindowlessSite =
    '{0A2A93CC-BFAD-42AC-9B2E-0991FB0D3EA0}';

/// {@category Interface}
/// {@category com}
class IRawElementProviderWindowlessSite extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IRawElementProviderWindowlessSite(Pointer<COMObject> ptr) : super(ptr);

  int GetAdjacentFragment(
    int direction,
    Pointer<Pointer<COMObject>> ppParent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 direction,
            Pointer<Pointer<COMObject>> ppParent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int direction,
            Pointer<Pointer<COMObject>> ppParent,
          )>()(
        ptr.ref.lpVtbl,
        direction,
        ppParent,
      );

  int GetRuntimeIdPrefix(
    Pointer<Pointer<SAFEARRAY>> pRetVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> pRetVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> pRetVal,
          )>()(
        ptr.ref.lpVtbl,
        pRetVal,
      );
}
