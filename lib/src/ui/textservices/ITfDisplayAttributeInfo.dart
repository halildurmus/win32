// ITfDisplayAttributeInfo.dart

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
import '../../ui/textservices/structs.g.dart';

/// @nodoc
const IID_ITfDisplayAttributeInfo = '{70528852-2F26-4AEA-8C96-215150578932}';

/// {@category Interface}
/// {@category com}
class ITfDisplayAttributeInfo extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  ITfDisplayAttributeInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetGUID(
    Pointer<GUID> pguid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguid,
          )>()(
        ptr.ref.lpVtbl,
        pguid,
      );

  int GetDescription(
    Pointer<Pointer<Utf16>> pbstrDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrDesc,
          )>()(
        ptr.ref.lpVtbl,
        pbstrDesc,
      );

  int GetAttributeInfo(
    Pointer<TF_DISPLAYATTRIBUTE> pda,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<TF_DISPLAYATTRIBUTE> pda,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<TF_DISPLAYATTRIBUTE> pda,
          )>()(
        ptr.ref.lpVtbl,
        pda,
      );

  int SetAttributeInfo(
    Pointer<TF_DISPLAYATTRIBUTE> pda,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<TF_DISPLAYATTRIBUTE> pda,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<TF_DISPLAYATTRIBUTE> pda,
          )>()(
        ptr.ref.lpVtbl,
        pda,
      );

  int Reset() => ptr.ref.lpVtbl.value
          .elementAt(7)
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
