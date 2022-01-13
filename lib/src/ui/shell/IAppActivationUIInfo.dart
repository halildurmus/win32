// IAppActivationUIInfo.dart

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
import '../../graphics/gdi/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IAppActivationUIInfo = '{ABAD189D-9FA3-4278-B3CA-8CA448A88DCB}';

/// {@category Interface}
/// {@category com}
class IAppActivationUIInfo extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IAppActivationUIInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetMonitor(
    Pointer<IntPtr> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> value,
          )>()(
        ptr.ref.lpVtbl,
        value,
      );

  int GetInvokePoint(
    Pointer<POINT> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<POINT> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<POINT> value,
          )>()(
        ptr.ref.lpVtbl,
        value,
      );

  int GetShowCommand(
    Pointer<Int32> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> value,
          )>()(
        ptr.ref.lpVtbl,
        value,
      );

  int GetShowUI(
    Pointer<Int32> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> value,
          )>()(
        ptr.ref.lpVtbl,
        value,
      );

  int GetKeyState(
    Pointer<Uint32> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> value,
          )>()(
        ptr.ref.lpVtbl,
        value,
      );
}
