// IUIAnimationTransitionFactory.dart

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
import '../../ui/animation/IUIAnimationInterpolator.dart';
import '../../ui/animation/IUIAnimationTransition.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IUIAnimationTransitionFactory =
    '{FCD91E03-3E3B-45AD-BBB1-6DFC8153743D}';

/// {@category Interface}
/// {@category com}
class IUIAnimationTransitionFactory extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IUIAnimationTransitionFactory(Pointer<COMObject> ptr) : super(ptr);

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
const CLSID_UIAnimationTransitionFactory =
    '{8A9B1CDD-FCD7-419C-8B44-42FD17DB1887}';

/// {@category com}
class UIAnimationTransitionFactory extends IUIAnimationTransitionFactory {
  UIAnimationTransitionFactory(Pointer<COMObject> ptr) : super(ptr);

  factory UIAnimationTransitionFactory.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()
      ..ref.setGUID(CLSID_UIAnimationTransitionFactory);
    final iid = calloc<GUID>()..ref.setGUID(IID_IUIAnimationTransitionFactory);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return UIAnimationTransitionFactory(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
