// IDDVideoPortContainer.dart

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
import '../../graphics/directdraw/structs.g.dart';
import '../../graphics/directdraw/IDirectDrawVideoPort.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directdraw/callbacks.g.dart';

/// @nodoc
const IID_IDDVideoPortContainer = '{6C142760-A733-11CE-A521-0020AF0BE560}';

/// {@category Interface}
/// {@category com}
class IDDVideoPortContainer extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IDDVideoPortContainer(Pointer<COMObject> ptr) : super(ptr);

  int CreateVideoPort(
    int param0,
    Pointer<DDVIDEOPORTDESC> param1,
    Pointer<Pointer<COMObject>> param2,
    Pointer<COMObject> param3,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 param0,
            Pointer<DDVIDEOPORTDESC> param1,
            Pointer<Pointer<COMObject>> param2,
            Pointer<COMObject> param3,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int param0,
            Pointer<DDVIDEOPORTDESC> param1,
            Pointer<Pointer<COMObject>> param2,
            Pointer<COMObject> param3,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
        param2,
        param3,
      );

  int EnumVideoPorts(
    int param0,
    Pointer<DDVIDEOPORTCAPS> param1,
    Pointer param2,
    Pointer<NativeFunction<LPDDENUMVIDEOCALLBACK>> param3,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 param0,
            Pointer<DDVIDEOPORTCAPS> param1,
            Pointer param2,
            Pointer<NativeFunction<LPDDENUMVIDEOCALLBACK>> param3,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int param0,
            Pointer<DDVIDEOPORTCAPS> param1,
            Pointer param2,
            Pointer<NativeFunction<LPDDENUMVIDEOCALLBACK>> param3,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
        param2,
        param3,
      );

  int GetVideoPortConnectInfo(
    int param0,
    Pointer<Uint32> pcInfo,
    Pointer<DDVIDEOPORTCONNECT> param2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 param0,
            Pointer<Uint32> pcInfo,
            Pointer<DDVIDEOPORTCONNECT> param2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int param0,
            Pointer<Uint32> pcInfo,
            Pointer<DDVIDEOPORTCONNECT> param2,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        pcInfo,
        param2,
      );

  int QueryVideoPortStatus(
    int param0,
    Pointer<DDVIDEOPORTSTATUS> param1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 param0,
            Pointer<DDVIDEOPORTSTATUS> param1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int param0,
            Pointer<DDVIDEOPORTSTATUS> param1,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
      );
}
