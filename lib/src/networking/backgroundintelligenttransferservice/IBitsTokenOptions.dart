// IBitsTokenOptions.dart

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
import '../../networking/backgroundintelligenttransferservice/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IBitsTokenOptions = '{9A2584C3-F7D2-457A-9A5E-22B67BFFC7D2}';

/// {@category Interface}
/// {@category com}
class IBitsTokenOptions extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IBitsTokenOptions(Pointer<COMObject> ptr) : super(ptr);

  int SetHelperTokenFlags(
    int UsageFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 UsageFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int UsageFlags,
          )>()(
        ptr.ref.lpVtbl,
        UsageFlags,
      );

  int GetHelperTokenFlags(
    Pointer<Uint32> pFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pFlags,
          )>()(
        ptr.ref.lpVtbl,
        pFlags,
      );

  int SetHelperToken() => ptr.ref.lpVtbl.value
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

  int ClearHelperToken() => ptr.ref.lpVtbl.value
          .elementAt(6)
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

  int GetHelperTokenSid(
    Pointer<Pointer<Utf16>> pSid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pSid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pSid,
          )>()(
        ptr.ref.lpVtbl,
        pSid,
      );
}
