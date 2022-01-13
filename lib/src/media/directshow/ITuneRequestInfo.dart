// ITuneRequestInfo.dart

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
import '../../media/directshow/ITuneRequest.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITuneRequestInfo = '{A3B152DF-7A90-4218-AC54-9830BEE8C0B6}';

/// {@category Interface}
/// {@category com}
class ITuneRequestInfo extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  ITuneRequestInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetLocatorData(
    Pointer<COMObject> Request,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> Request,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> Request,
          )>()(
        ptr.ref.lpVtbl,
        Request,
      );

  int GetComponentData(
    Pointer<COMObject> CurrentRequest,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> CurrentRequest,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> CurrentRequest,
          )>()(
        ptr.ref.lpVtbl,
        CurrentRequest,
      );

  int CreateComponentList(
    Pointer<COMObject> CurrentRequest,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> CurrentRequest,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> CurrentRequest,
          )>()(
        ptr.ref.lpVtbl,
        CurrentRequest,
      );

  int GetNextProgram(
    Pointer<COMObject> CurrentRequest,
    Pointer<Pointer<COMObject>> TuneRequest,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> CurrentRequest,
            Pointer<Pointer<COMObject>> TuneRequest,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> CurrentRequest,
            Pointer<Pointer<COMObject>> TuneRequest,
          )>()(
        ptr.ref.lpVtbl,
        CurrentRequest,
        TuneRequest,
      );

  int GetPreviousProgram(
    Pointer<COMObject> CurrentRequest,
    Pointer<Pointer<COMObject>> TuneRequest,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> CurrentRequest,
            Pointer<Pointer<COMObject>> TuneRequest,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> CurrentRequest,
            Pointer<Pointer<COMObject>> TuneRequest,
          )>()(
        ptr.ref.lpVtbl,
        CurrentRequest,
        TuneRequest,
      );

  int GetNextLocator(
    Pointer<COMObject> CurrentRequest,
    Pointer<Pointer<COMObject>> TuneRequest,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> CurrentRequest,
            Pointer<Pointer<COMObject>> TuneRequest,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> CurrentRequest,
            Pointer<Pointer<COMObject>> TuneRequest,
          )>()(
        ptr.ref.lpVtbl,
        CurrentRequest,
        TuneRequest,
      );

  int GetPreviousLocator(
    Pointer<COMObject> CurrentRequest,
    Pointer<Pointer<COMObject>> TuneRequest,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> CurrentRequest,
            Pointer<Pointer<COMObject>> TuneRequest,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> CurrentRequest,
            Pointer<Pointer<COMObject>> TuneRequest,
          )>()(
        ptr.ref.lpVtbl,
        CurrentRequest,
        TuneRequest,
      );
}
