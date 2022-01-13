// ID2D1Resource.dart

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
import '../../graphics/direct2d/ID2D1Factory.dart';

/// @nodoc
const IID_ID2D1Resource = '{2CD90691-12E2-11DC-9FED-001143A055F9}';

/// {@category Interface}
/// {@category com}
class ID2D1Resource extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ID2D1Resource(Pointer<COMObject> ptr) : super(ptr);

  void GetFactory(
    Pointer<Pointer<COMObject>> factory,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Pointer<COMObject>> factory,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Pointer<COMObject>> factory,
          )>()(
        ptr.ref.lpVtbl,
        factory,
      );
}
