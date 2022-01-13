// ISensLogon.dart

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

import '../../system/com/IDispatch.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISensLogon = '{D597BAB3-5B9F-11D1-8DD2-00AA004ABD5E}';

/// {@category Interface}
/// {@category com}
class ISensLogon extends IDispatch {
  // vtable begins at 7, is 7 entries long.
  ISensLogon(Pointer<COMObject> ptr) : super(ptr);

  int Logon(
    Pointer<Utf16> bstrUserName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrUserName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrUserName,
          )>()(
        ptr.ref.lpVtbl,
        bstrUserName,
      );

  int Logoff(
    Pointer<Utf16> bstrUserName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrUserName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrUserName,
          )>()(
        ptr.ref.lpVtbl,
        bstrUserName,
      );

  int StartShell(
    Pointer<Utf16> bstrUserName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrUserName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrUserName,
          )>()(
        ptr.ref.lpVtbl,
        bstrUserName,
      );

  int DisplayLock(
    Pointer<Utf16> bstrUserName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrUserName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrUserName,
          )>()(
        ptr.ref.lpVtbl,
        bstrUserName,
      );

  int DisplayUnlock(
    Pointer<Utf16> bstrUserName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrUserName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrUserName,
          )>()(
        ptr.ref.lpVtbl,
        bstrUserName,
      );

  int StartScreenSaver(
    Pointer<Utf16> bstrUserName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrUserName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrUserName,
          )>()(
        ptr.ref.lpVtbl,
        bstrUserName,
      );

  int StopScreenSaver(
    Pointer<Utf16> bstrUserName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrUserName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrUserName,
          )>()(
        ptr.ref.lpVtbl,
        bstrUserName,
      );
}
