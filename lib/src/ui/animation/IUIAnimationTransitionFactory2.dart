// IUIAnimationTransitionFactory2.dart

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
import '../../ui/animation/IUIAnimationInterpolator2.dart';
import '../../ui/animation/IUIAnimationTransition2.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IUIAnimationTransitionFactory2 =
    '{937D4916-C1A6-42D5-88D8-30344D6EFE31}';

/// {@category Interface}
/// {@category com}
class IUIAnimationTransitionFactory2 extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IUIAnimationTransitionFactory2(Pointer<COMObject> ptr) : super(ptr);

  int CreateTransition(
    Pointer<COMObject> interpolator,
    Pointer<Pointer<COMObject>> transition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> interpolator,
            Pointer<Pointer<COMObject>> transition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> interpolator,
            Pointer<Pointer<COMObject>> transition,
          )>()(
        ptr.ref.lpVtbl,
        interpolator,
        transition,
      );
}

/// @nodoc
const CLSID_UIAnimationTransitionFactory2 =
    '{84302F97-7F7B-4040-B190-72AC9D18E420}';

/// {@category com}
class UIAnimationTransitionFactory2 extends IUIAnimationTransitionFactory2 {
  UIAnimationTransitionFactory2(Pointer<COMObject> ptr) : super(ptr);

  factory UIAnimationTransitionFactory2.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()
      ..ref.setGUID(CLSID_UIAnimationTransitionFactory2);
    final iid = calloc<GUID>()..ref.setGUID(IID_IUIAnimationTransitionFactory2);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return UIAnimationTransitionFactory2(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
