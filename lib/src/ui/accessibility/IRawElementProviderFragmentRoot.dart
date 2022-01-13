// IRawElementProviderFragmentRoot.dart

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
import '../../ui/accessibility/IRawElementProviderFragment.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IRawElementProviderFragmentRoot =
    '{620CE2A5-AB8F-40A9-86CB-DE3C75599B58}';

/// {@category Interface}
/// {@category com}
class IRawElementProviderFragmentRoot extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IRawElementProviderFragmentRoot(Pointer<COMObject> ptr) : super(ptr);

  int ElementProviderFromPoint(
    double x,
    double y,
    Pointer<Pointer<COMObject>> pRetVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double x,
            Double y,
            Pointer<Pointer<COMObject>> pRetVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double x,
            double y,
            Pointer<Pointer<COMObject>> pRetVal,
          )>()(
        ptr.ref.lpVtbl,
        x,
        y,
        pRetVal,
      );

  int GetFocus(
    Pointer<Pointer<COMObject>> pRetVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pRetVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pRetVal,
          )>()(
        ptr.ref.lpVtbl,
        pRetVal,
      );
}
