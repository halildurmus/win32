// IWRdsWddmIddProps.dart

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
const IID_IWRdsWddmIddProps = '{1382DF4D-A289-43D1-A184-144726F9AF90}';

/// {@category Interface}
/// {@category com}
class IWRdsWddmIddProps extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IWRdsWddmIddProps(Pointer<COMObject> ptr) : super(ptr);

  int GetHardwareId(
    Pointer<Utf16> pDisplayDriverHardwareId,
    int Count,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pDisplayDriverHardwareId,
            Uint32 Count,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pDisplayDriverHardwareId,
            int Count,
          )>()(
        ptr.ref.lpVtbl,
        pDisplayDriverHardwareId,
        Count,
      );

  int OnDriverLoad(
    int SessionId,
    int DriverHandle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 SessionId,
            IntPtr DriverHandle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int SessionId,
            int DriverHandle,
          )>()(
        ptr.ref.lpVtbl,
        SessionId,
        DriverHandle,
      );

  int OnDriverUnload(
    int SessionId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 SessionId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int SessionId,
          )>()(
        ptr.ref.lpVtbl,
        SessionId,
      );

  int EnableWddmIdd(
    int Enabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Enabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Enabled,
          )>()(
        ptr.ref.lpVtbl,
        Enabled,
      );
}
