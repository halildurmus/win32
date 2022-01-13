// IMAPIControl.dart

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
import '../../system/addressbook/structs.g.dart';

/// @nodoc
const IID_IMAPIControl = 'null';

/// {@category Interface}
/// {@category com}
class IMAPIControl extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IMAPIControl(Pointer<COMObject> ptr) : super(ptr);

  int GetLastError(
    int hResult,
    int ulFlags,
    Pointer<Pointer<MAPIERROR>> lppMAPIError,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hResult,
            Uint32 ulFlags,
            Pointer<Pointer<MAPIERROR>> lppMAPIError,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hResult,
            int ulFlags,
            Pointer<Pointer<MAPIERROR>> lppMAPIError,
          )>()(
        ptr.ref.lpVtbl,
        hResult,
        ulFlags,
        lppMAPIError,
      );

  int Activate(
    int ulFlags,
    int ulUIParam,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulFlags,
            IntPtr ulUIParam,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulFlags,
            int ulUIParam,
          )>()(
        ptr.ref.lpVtbl,
        ulFlags,
        ulUIParam,
      );

  int GetState(
    int ulFlags,
    Pointer<Uint32> lpulState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulFlags,
            Pointer<Uint32> lpulState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulFlags,
            Pointer<Uint32> lpulState,
          )>()(
        ptr.ref.lpVtbl,
        ulFlags,
        lpulState,
      );
}
