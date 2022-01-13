// IAccessibleWindowlessSite.dart

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
import '../../ui/accessibility/IAccessibleHandler.dart';
import '../../foundation/structs.g.dart';
import '../../system/com/structs.g.dart';
import '../../ui/accessibility/IAccessible.dart';

/// @nodoc
const IID_IAccessibleWindowlessSite = '{BF3ABD9C-76DA-4389-9EB6-1427D25ABAB7}';

/// {@category Interface}
/// {@category com}
class IAccessibleWindowlessSite extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IAccessibleWindowlessSite(Pointer<COMObject> ptr) : super(ptr);

  int AcquireObjectIdRange(
    int rangeSize,
    Pointer<COMObject> pRangeOwner,
    Pointer<Int32> pRangeBase,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 rangeSize,
            Pointer<COMObject> pRangeOwner,
            Pointer<Int32> pRangeBase,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int rangeSize,
            Pointer<COMObject> pRangeOwner,
            Pointer<Int32> pRangeBase,
          )>()(
        ptr.ref.lpVtbl,
        rangeSize,
        pRangeOwner,
        pRangeBase,
      );

  int ReleaseObjectIdRange(
    int rangeBase,
    Pointer<COMObject> pRangeOwner,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 rangeBase,
            Pointer<COMObject> pRangeOwner,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int rangeBase,
            Pointer<COMObject> pRangeOwner,
          )>()(
        ptr.ref.lpVtbl,
        rangeBase,
        pRangeOwner,
      );

  int QueryObjectIdRanges(
    Pointer<COMObject> pRangesOwner,
    Pointer<Pointer<SAFEARRAY>> psaRanges,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pRangesOwner,
            Pointer<Pointer<SAFEARRAY>> psaRanges,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pRangesOwner,
            Pointer<Pointer<SAFEARRAY>> psaRanges,
          )>()(
        ptr.ref.lpVtbl,
        pRangesOwner,
        psaRanges,
      );

  int GetParentAccessible(
    Pointer<Pointer<COMObject>> ppParent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppParent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppParent,
          )>()(
        ptr.ref.lpVtbl,
        ppParent,
      );
}
