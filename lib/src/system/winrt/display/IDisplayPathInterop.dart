// IDisplayPathInterop.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IDisplayPathInterop = '{A6BA4205-E59E-4E71-B25B-4E436D21EE3D}';

/// {@category Interface}
/// {@category com}
class IDisplayPathInterop extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IDisplayPathInterop(Pointer<COMObject> ptr) : super(ptr);

  int CreateSourcePresentationHandle(
    Pointer<IntPtr> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> pValue,
          )>()(
        ptr.ref.lpVtbl,
        pValue,
      );

  int GetSourceId(
    Pointer<Uint32> pSourceId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pSourceId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pSourceId,
          )>()(
        ptr.ref.lpVtbl,
        pSourceId,
      );
}
