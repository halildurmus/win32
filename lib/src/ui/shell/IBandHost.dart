// IBandHost.dart

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

/// @nodoc
const IID_IBandHost = '{B9075C7C-D48E-403F-AB99-D6C77A1084AC}';

/// {@category Interface}
/// {@category com}
class IBandHost extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IBandHost(Pointer<COMObject> ptr) : super(ptr);

  int CreateBand(
    Pointer<GUID> rclsidBand,
    int fAvailable,
    int fVisible,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rclsidBand,
            Int32 fAvailable,
            Int32 fVisible,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rclsidBand,
            int fAvailable,
            int fVisible,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        rclsidBand,
        fAvailable,
        fVisible,
        riid,
        ppv,
      );

  int SetBandAvailability(
    Pointer<GUID> rclsidBand,
    int fAvailable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rclsidBand,
            Int32 fAvailable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rclsidBand,
            int fAvailable,
          )>()(
        ptr.ref.lpVtbl,
        rclsidBand,
        fAvailable,
      );

  int DestroyBand(
    Pointer<GUID> rclsidBand,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rclsidBand,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rclsidBand,
          )>()(
        ptr.ref.lpVtbl,
        rclsidBand,
      );
}
