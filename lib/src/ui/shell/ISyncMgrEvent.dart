// ISyncMgrEvent.dart

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
import '../../ui/shell/structs.g.dart';

/// @nodoc
const IID_ISyncMgrEvent = '{FEE0EF8B-46BD-4DB4-B7E6-FF2C687313BC}';

/// {@category Interface}
/// {@category com}
class ISyncMgrEvent extends IUnknown {
  // vtable begins at 3, is 11 entries long.
  ISyncMgrEvent(Pointer<COMObject> ptr) : super(ptr);

  int GetEventID(
    Pointer<GUID> pguidEventID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidEventID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidEventID,
          )>()(
        ptr.ref.lpVtbl,
        pguidEventID,
      );

  int GetHandlerID(
    Pointer<Pointer<Utf16>> ppszHandlerID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszHandlerID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszHandlerID,
          )>()(
        ptr.ref.lpVtbl,
        ppszHandlerID,
      );

  int GetItemID(
    Pointer<Pointer<Utf16>> ppszItemID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszItemID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszItemID,
          )>()(
        ptr.ref.lpVtbl,
        ppszItemID,
      );

  int GetLevel(
    Pointer<Int32> pnLevel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pnLevel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pnLevel,
          )>()(
        ptr.ref.lpVtbl,
        pnLevel,
      );

  int GetFlags(
    Pointer<Int32> pnFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pnFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pnFlags,
          )>()(
        ptr.ref.lpVtbl,
        pnFlags,
      );

  int GetTime(
    Pointer<FILETIME> pfCreationTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<FILETIME> pfCreationTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<FILETIME> pfCreationTime,
          )>()(
        ptr.ref.lpVtbl,
        pfCreationTime,
      );

  int GetName(
    Pointer<Pointer<Utf16>> ppszName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszName,
          )>()(
        ptr.ref.lpVtbl,
        ppszName,
      );

  int GetDescription(
    Pointer<Pointer<Utf16>> ppszDescription,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszDescription,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszDescription,
          )>()(
        ptr.ref.lpVtbl,
        ppszDescription,
      );

  int GetLinkText(
    Pointer<Pointer<Utf16>> ppszLinkText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszLinkText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszLinkText,
          )>()(
        ptr.ref.lpVtbl,
        ppszLinkText,
      );

  int GetLinkReference(
    Pointer<Pointer<Utf16>> ppszLinkReference,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszLinkReference,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszLinkReference,
          )>()(
        ptr.ref.lpVtbl,
        ppszLinkReference,
      );

  int GetContext(
    Pointer<Pointer<Utf16>> ppszContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszContext,
          )>()(
        ptr.ref.lpVtbl,
        ppszContext,
      );
}
