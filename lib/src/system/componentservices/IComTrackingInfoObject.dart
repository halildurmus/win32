// IComTrackingInfoObject.dart

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
import '../../specialTypes.dart';

/// @nodoc
const IID_IComTrackingInfoObject = '{116E42C5-D8B1-47BF-AB1E-C895ED3E2372}';

/// {@category Interface}
/// {@category com}
class IComTrackingInfoObject extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IComTrackingInfoObject(Pointer<COMObject> ptr) : super(ptr);

  int GetValue(
    Pointer<Utf16> szPropertyName,
    Pointer<VARIANT> pvarOut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> szPropertyName,
            Pointer<VARIANT> pvarOut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> szPropertyName,
            Pointer<VARIANT> pvarOut,
          )>()(
        ptr.ref.lpVtbl,
        szPropertyName,
        pvarOut,
      );
}
