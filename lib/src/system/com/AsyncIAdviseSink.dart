// AsyncIAdviseSink.dart

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
import '../../system/com/structs.g.dart';
import '../../system/com/IMoniker.dart';

/// @nodoc
const IID_AsyncIAdviseSink = '{00000150-0000-0000-C000-000000000046}';

/// {@category Interface}
/// {@category com}
class AsyncIAdviseSink extends IUnknown {
  // vtable begins at 3, is 10 entries long.
  AsyncIAdviseSink(Pointer<COMObject> ptr) : super(ptr);

  void Begin_OnDataChange(
    Pointer<FORMATETC> pFormatetc,
    Pointer<STGMEDIUM> pStgmed,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<FORMATETC> pFormatetc,
            Pointer<STGMEDIUM> pStgmed,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<FORMATETC> pFormatetc,
            Pointer<STGMEDIUM> pStgmed,
          )>()(
        ptr.ref.lpVtbl,
        pFormatetc,
        pStgmed,
      );

  void Finish_OnDataChange() => ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  void Begin_OnViewChange(
    int dwAspect,
    int lindex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 dwAspect,
            Int32 lindex,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int dwAspect,
            int lindex,
          )>()(
        ptr.ref.lpVtbl,
        dwAspect,
        lindex,
      );

  void Finish_OnViewChange() => ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  void Begin_OnRename(
    Pointer<COMObject> pmk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pmk,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pmk,
          )>()(
        ptr.ref.lpVtbl,
        pmk,
      );

  void Finish_OnRename() => ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  void Begin_OnSave() => ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  void Finish_OnSave() => ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  void Begin_OnClose() => ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  void Finish_OnClose() => ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
