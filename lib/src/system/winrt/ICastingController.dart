// ICastingController.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../system/winrt/ICastingEventHandler.dart';

/// @nodoc
const IID_ICastingController = '{F0A56423-A664-4FBD-8B43-409A45E8D9A1}';

/// {@category Interface}
/// {@category com}
class ICastingController extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  ICastingController(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<COMObject> castingEngine,
    Pointer<COMObject> castingSource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> castingEngine,
            Pointer<COMObject> castingSource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> castingEngine,
            Pointer<COMObject> castingSource,
          )>()(
        ptr.ref.lpVtbl,
        castingEngine,
        castingSource,
      );

  int Connect() => ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int Disconnect() => ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int Advise(
    Pointer<COMObject> eventHandler,
    Pointer<Uint32> cookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> eventHandler,
            Pointer<Uint32> cookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> eventHandler,
            Pointer<Uint32> cookie,
          )>()(
        ptr.ref.lpVtbl,
        eventHandler,
        cookie,
      );

  int UnAdvise(
    int cookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cookie,
          )>()(
        ptr.ref.lpVtbl,
        cookie,
      );
}
