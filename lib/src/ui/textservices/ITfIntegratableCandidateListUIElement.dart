// ITfIntegratableCandidateListUIElement.dart

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
import '../../ui/textservices/structs.g.dart';

/// @nodoc
const IID_ITfIntegratableCandidateListUIElement =
    '{C7A6F54F-B180-416F-B2BF-7BF2E4683D7B}';

/// {@category Interface}
/// {@category com}
class ITfIntegratableCandidateListUIElement extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  ITfIntegratableCandidateListUIElement(Pointer<COMObject> ptr) : super(ptr);

  int SetIntegrationStyle(
    GUID guidIntegrationStyle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID guidIntegrationStyle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID guidIntegrationStyle,
          )>()(
        ptr.ref.lpVtbl,
        guidIntegrationStyle,
      );

  int GetSelectionStyle(
    Pointer<Int32> ptfSelectionStyle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> ptfSelectionStyle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> ptfSelectionStyle,
          )>()(
        ptr.ref.lpVtbl,
        ptfSelectionStyle,
      );

  int OnKeyDown(
    int wParam,
    int lParam,
    Pointer<Int32> pfEaten,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr wParam,
            IntPtr lParam,
            Pointer<Int32> pfEaten,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wParam,
            int lParam,
            Pointer<Int32> pfEaten,
          )>()(
        ptr.ref.lpVtbl,
        wParam,
        lParam,
        pfEaten,
      );

  int ShowCandidateNumbers(
    Pointer<Int32> pfShow,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfShow,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfShow,
          )>()(
        ptr.ref.lpVtbl,
        pfShow,
      );

  int FinalizeExactCompositionString() => ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
