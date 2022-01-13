// IMessage.dart

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

import '../../system/addressbook/IMAPIProp.dart';
import '../../system/addressbook/IMAPITable.dart';
import '../../foundation/structs.g.dart';
import '../../system/addressbook/IAttach.dart';
import '../../system/addressbook/IMAPIProgress.dart';
import '../../system/addressbook/structs.g.dart';

/// @nodoc
const IID_IMessage = 'null';

/// {@category Interface}
/// {@category com}
class IMessage extends IMAPIProp {
  // vtable begins at 14, is 8 entries long.
  IMessage(Pointer<COMObject> ptr) : super(ptr);

  int GetAttachmentTable(
    int ulFlags,
    Pointer<Pointer<COMObject>> lppTable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulFlags,
            Pointer<Pointer<COMObject>> lppTable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulFlags,
            Pointer<Pointer<COMObject>> lppTable,
          )>()(
        ptr.ref.lpVtbl,
        ulFlags,
        lppTable,
      );

  int OpenAttach(
    int ulAttachmentNum,
    Pointer<GUID> lpInterface,
    int ulFlags,
    Pointer<Pointer<COMObject>> lppAttach,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulAttachmentNum,
            Pointer<GUID> lpInterface,
            Uint32 ulFlags,
            Pointer<Pointer<COMObject>> lppAttach,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulAttachmentNum,
            Pointer<GUID> lpInterface,
            int ulFlags,
            Pointer<Pointer<COMObject>> lppAttach,
          )>()(
        ptr.ref.lpVtbl,
        ulAttachmentNum,
        lpInterface,
        ulFlags,
        lppAttach,
      );

  int CreateAttach(
    Pointer<GUID> lpInterface,
    int ulFlags,
    Pointer<Uint32> lpulAttachmentNum,
    Pointer<Pointer<COMObject>> lppAttach,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> lpInterface,
            Uint32 ulFlags,
            Pointer<Uint32> lpulAttachmentNum,
            Pointer<Pointer<COMObject>> lppAttach,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> lpInterface,
            int ulFlags,
            Pointer<Uint32> lpulAttachmentNum,
            Pointer<Pointer<COMObject>> lppAttach,
          )>()(
        ptr.ref.lpVtbl,
        lpInterface,
        ulFlags,
        lpulAttachmentNum,
        lppAttach,
      );

  int DeleteAttach(
    int ulAttachmentNum,
    int ulUIParam,
    Pointer<COMObject> lpProgress,
    int ulFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulAttachmentNum,
            IntPtr ulUIParam,
            Pointer<COMObject> lpProgress,
            Uint32 ulFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulAttachmentNum,
            int ulUIParam,
            Pointer<COMObject> lpProgress,
            int ulFlags,
          )>()(
        ptr.ref.lpVtbl,
        ulAttachmentNum,
        ulUIParam,
        lpProgress,
        ulFlags,
      );

  int GetRecipientTable(
    int ulFlags,
    Pointer<Pointer<COMObject>> lppTable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulFlags,
            Pointer<Pointer<COMObject>> lppTable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulFlags,
            Pointer<Pointer<COMObject>> lppTable,
          )>()(
        ptr.ref.lpVtbl,
        ulFlags,
        lppTable,
      );

  int ModifyRecipients(
    int ulFlags,
    Pointer<ADRLIST> lpMods,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulFlags,
            Pointer<ADRLIST> lpMods,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulFlags,
            Pointer<ADRLIST> lpMods,
          )>()(
        ptr.ref.lpVtbl,
        ulFlags,
        lpMods,
      );

  int SubmitMessage(
    int ulFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulFlags,
          )>()(
        ptr.ref.lpVtbl,
        ulFlags,
      );

  int SetReadFlag(
    int ulFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulFlags,
          )>()(
        ptr.ref.lpVtbl,
        ulFlags,
      );
}
