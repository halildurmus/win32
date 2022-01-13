// IESEvent.dart

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
import '../../system/com/structs.g.dart';

/// @nodoc
const IID_IESEvent = '{1F0E5357-AF43-44E6-8547-654C645145D2}';

/// {@category Interface}
/// {@category com}
class IESEvent extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IESEvent(Pointer<COMObject> ptr) : super(ptr);

  int GetEventId(
    Pointer<Uint32> pdwEventId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwEventId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwEventId,
          )>()(
        ptr.ref.lpVtbl,
        pdwEventId,
      );

  int GetEventType(
    Pointer<GUID> pguidEventType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidEventType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidEventType,
          )>()(
        ptr.ref.lpVtbl,
        pguidEventType,
      );

  int SetCompletionStatus(
    int dwResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwResult,
          )>()(
        ptr.ref.lpVtbl,
        dwResult,
      );

  int GetData(
    Pointer<Pointer<SAFEARRAY>> pbData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> pbData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> pbData,
          )>()(
        ptr.ref.lpVtbl,
        pbData,
      );

  int GetStringData(
    Pointer<Pointer<Utf16>> pbstrData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrData,
          )>()(
        ptr.ref.lpVtbl,
        pbstrData,
      );
}
