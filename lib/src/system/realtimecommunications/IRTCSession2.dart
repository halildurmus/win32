// IRTCSession2.dart

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

import '../../system/realtimecommunications/IRTCSession.dart';
import '../../foundation/structs.g.dart';
import '../../system/realtimecommunications/structs.g.dart';

/// @nodoc
const IID_IRTCSession2 = '{17D7CDFC-B007-484C-99D2-86A8A820991D}';

/// {@category Interface}
/// {@category com}
class IRTCSession2 extends IRTCSession {
  // vtable begins at 23, is 6 entries long.
  IRTCSession2(Pointer<COMObject> ptr) : super(ptr);

  int SendInfo(
    Pointer<Utf16> bstrInfoHeader,
    Pointer<Utf16> bstrInfo,
    int lCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrInfoHeader,
            Pointer<Utf16> bstrInfo,
            IntPtr lCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrInfoHeader,
            Pointer<Utf16> bstrInfo,
            int lCookie,
          )>()(
        ptr.ref.lpVtbl,
        bstrInfoHeader,
        bstrInfo,
        lCookie,
      );

  int put_PreferredSecurityLevel(
    int enSecurityType,
    int enSecurityLevel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 enSecurityType,
            Int32 enSecurityLevel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int enSecurityType,
            int enSecurityLevel,
          )>()(
        ptr.ref.lpVtbl,
        enSecurityType,
        enSecurityLevel,
      );

  int get_PreferredSecurityLevel(
    int enSecurityType,
    Pointer<Int32> penSecurityLevel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 enSecurityType,
            Pointer<Int32> penSecurityLevel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int enSecurityType,
            Pointer<Int32> penSecurityLevel,
          )>()(
        ptr.ref.lpVtbl,
        enSecurityType,
        penSecurityLevel,
      );

  int IsSecurityEnabled(
    int enSecurityType,
    Pointer<Int16> pfSecurityEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 enSecurityType,
            Pointer<Int16> pfSecurityEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int enSecurityType,
            Pointer<Int16> pfSecurityEnabled,
          )>()(
        ptr.ref.lpVtbl,
        enSecurityType,
        pfSecurityEnabled,
      );

  int AnswerWithSessionDescription(
    Pointer<Utf16> bstrContentType,
    Pointer<Utf16> bstrSessionDescription,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrContentType,
            Pointer<Utf16> bstrSessionDescription,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrContentType,
            Pointer<Utf16> bstrSessionDescription,
          )>()(
        ptr.ref.lpVtbl,
        bstrContentType,
        bstrSessionDescription,
      );

  int ReInviteWithSessionDescription(
    Pointer<Utf16> bstrContentType,
    Pointer<Utf16> bstrSessionDescription,
    int lCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrContentType,
            Pointer<Utf16> bstrSessionDescription,
            IntPtr lCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrContentType,
            Pointer<Utf16> bstrSessionDescription,
            int lCookie,
          )>()(
        ptr.ref.lpVtbl,
        bstrContentType,
        bstrSessionDescription,
        lCookie,
      );
}
