// IDiscMaster.dart

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
import '../../storage/imapi/IEnumDiscMasterFormats.dart';
import '../../storage/imapi/IEnumDiscRecorders.dart';
import '../../storage/imapi/IDiscRecorder.dart';
import '../../storage/imapi/IDiscMasterProgressEvents.dart';

/// @nodoc
const IID_IDiscMaster = '{520CCA62-51A5-11D3-9144-00104BA11C5E}';

/// {@category Interface}
/// {@category com}
class IDiscMaster extends IUnknown {
  // vtable begins at 3, is 12 entries long.
  IDiscMaster(Pointer<COMObject> ptr) : super(ptr);

  int Open() => ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int EnumDiscMasterFormats(
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        ppEnum,
      );

  int GetActiveDiscMasterFormat(
    Pointer<GUID> lpiid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> lpiid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> lpiid,
          )>()(
        ptr.ref.lpVtbl,
        lpiid,
      );

  int SetActiveDiscMasterFormat(
    Pointer<GUID> riid,
    Pointer<Pointer> ppUnk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppUnk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppUnk,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        ppUnk,
      );

  int EnumDiscRecorders(
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        ppEnum,
      );

  int GetActiveDiscRecorder(
    Pointer<Pointer<COMObject>> ppRecorder,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppRecorder,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppRecorder,
          )>()(
        ptr.ref.lpVtbl,
        ppRecorder,
      );

  int SetActiveDiscRecorder(
    Pointer<COMObject> pRecorder,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pRecorder,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pRecorder,
          )>()(
        ptr.ref.lpVtbl,
        pRecorder,
      );

  int ClearFormatContent() => ptr.ref.lpVtbl.value
          .elementAt(10)
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

  int ProgressAdvise(
    Pointer<COMObject> pEvents,
    Pointer<IntPtr> pvCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pEvents,
            Pointer<IntPtr> pvCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pEvents,
            Pointer<IntPtr> pvCookie,
          )>()(
        ptr.ref.lpVtbl,
        pEvents,
        pvCookie,
      );

  int ProgressUnadvise(
    int vCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr vCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int vCookie,
          )>()(
        ptr.ref.lpVtbl,
        vCookie,
      );

  int RecordDisc(
    int bSimulate,
    int bEjectAfterBurn,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint8 bSimulate,
            Uint8 bEjectAfterBurn,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bSimulate,
            int bEjectAfterBurn,
          )>()(
        ptr.ref.lpVtbl,
        bSimulate,
        bEjectAfterBurn,
      );

  int Close() => ptr.ref.lpVtbl.value
          .elementAt(14)
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
}
