// IMFMediaEventGenerator.dart

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
import '../../media/mediafoundation/structs.g.dart';
import '../../media/mediafoundation/IMFMediaEvent.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/IMFAsyncCallback.dart';
import '../../specialTypes.dart';
import '../../media/mediafoundation/IMFAsyncResult.dart';

/// @nodoc
const IID_IMFMediaEventGenerator = '{2CD0BD52-BCD5-4B89-B62C-EADC0C031E7D}';

/// {@category Interface}
/// {@category com}
class IMFMediaEventGenerator extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IMFMediaEventGenerator(Pointer<COMObject> ptr) : super(ptr);

  int GetEvent(
    int dwFlags,
    Pointer<Pointer<COMObject>> ppEvent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<Pointer<COMObject>> ppEvent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<Pointer<COMObject>> ppEvent,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        ppEvent,
      );

  int BeginGetEvent(
    Pointer<COMObject> pCallback,
    Pointer<COMObject> punkState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pCallback,
            Pointer<COMObject> punkState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pCallback,
            Pointer<COMObject> punkState,
          )>()(
        ptr.ref.lpVtbl,
        pCallback,
        punkState,
      );

  int EndGetEvent(
    Pointer<COMObject> pResult,
    Pointer<Pointer<COMObject>> ppEvent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pResult,
            Pointer<Pointer<COMObject>> ppEvent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pResult,
            Pointer<Pointer<COMObject>> ppEvent,
          )>()(
        ptr.ref.lpVtbl,
        pResult,
        ppEvent,
      );

  int QueueEvent(
    int met,
    Pointer<GUID> guidExtendedType,
    int hrStatus,
    Pointer<PROPVARIANT> pvValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 met,
            Pointer<GUID> guidExtendedType,
            Int32 hrStatus,
            Pointer<PROPVARIANT> pvValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int met,
            Pointer<GUID> guidExtendedType,
            int hrStatus,
            Pointer<PROPVARIANT> pvValue,
          )>()(
        ptr.ref.lpVtbl,
        met,
        guidExtendedType,
        hrStatus,
        pvValue,
      );
}
