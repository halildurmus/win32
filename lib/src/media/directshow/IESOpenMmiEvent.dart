// IESOpenMmiEvent.dart

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

import '../../media/directshow/IESEvent.dart';
import '../../foundation/structs.g.dart';
import '../../system/com/structs.g.dart';

/// @nodoc
const IID_IESOpenMmiEvent = '{BA4B6526-1A35-4635-8B56-3EC612746A8C}';

/// {@category Interface}
/// {@category com}
class IESOpenMmiEvent extends IESEvent {
  // vtable begins at 8, is 4 entries long.
  IESOpenMmiEvent(Pointer<COMObject> ptr) : super(ptr);

  int GetDialogNumber(
    Pointer<Uint32> pDialogRequest,
    Pointer<Uint32> pDialogNumber,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pDialogRequest,
            Pointer<Uint32> pDialogNumber,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pDialogRequest,
            Pointer<Uint32> pDialogNumber,
          )>()(
        ptr.ref.lpVtbl,
        pDialogRequest,
        pDialogNumber,
      );

  int GetDialogType(
    Pointer<GUID> guidDialogType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidDialogType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidDialogType,
          )>()(
        ptr.ref.lpVtbl,
        guidDialogType,
      );

  int GetDialogData(
    Pointer<Pointer<SAFEARRAY>> pbData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
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

  int GetDialogStringData(
    Pointer<Pointer<Utf16>> pbstrBaseUrl,
    Pointer<Pointer<Utf16>> pbstrData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrBaseUrl,
            Pointer<Pointer<Utf16>> pbstrData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrBaseUrl,
            Pointer<Pointer<Utf16>> pbstrData,
          )>()(
        ptr.ref.lpVtbl,
        pbstrBaseUrl,
        pbstrData,
      );
}
