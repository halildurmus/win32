// IAdviseSink.dart

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
const IID_IAdviseSink = '{0000010F-0000-0000-C000-000000000046}';

/// {@category Interface}
/// {@category com}
class IAdviseSink extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IAdviseSink(Pointer<COMObject> ptr) : super(ptr);

  void OnDataChange(
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

  void OnViewChange(
    int dwAspect,
    int lindex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
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

  void OnRename(
    Pointer<COMObject> pmk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
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

  void OnSave() => ptr.ref.lpVtbl.value
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

  void OnClose() => ptr.ref.lpVtbl.value
          .elementAt(7)
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
