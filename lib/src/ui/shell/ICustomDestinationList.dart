// ICustomDestinationList.dart

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
import '../../ui/shell/common/IObjectArray.dart';
import '../../ui/shell/structs.g.dart';

/// @nodoc
const IID_ICustomDestinationList = '{6332DEBF-87B5-4670-90C0-5E57B408A49E}';

/// {@category Interface}
/// {@category com}
class ICustomDestinationList extends IUnknown {
  // vtable begins at 3, is 9 entries long.
  ICustomDestinationList(Pointer<COMObject> ptr) : super(ptr);

  int SetAppID(
    Pointer<Utf16> pszAppID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszAppID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszAppID,
          )>()(
        ptr.ref.lpVtbl,
        pszAppID,
      );

  int BeginList(
    Pointer<Uint32> pcMinSlots,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcMinSlots,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcMinSlots,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        pcMinSlots,
        riid,
        ppv,
      );

  int AppendCategory(
    Pointer<Utf16> pszCategory,
    Pointer<COMObject> poa,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszCategory,
            Pointer<COMObject> poa,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszCategory,
            Pointer<COMObject> poa,
          )>()(
        ptr.ref.lpVtbl,
        pszCategory,
        poa,
      );

  int AppendKnownCategory(
    int category,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 category,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int category,
          )>()(
        ptr.ref.lpVtbl,
        category,
      );

  int AddUserTasks(
    Pointer<COMObject> poa,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> poa,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> poa,
          )>()(
        ptr.ref.lpVtbl,
        poa,
      );

  int CommitList() => ptr.ref.lpVtbl.value
          .elementAt(8)
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

  int GetRemovedDestinations(
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        ppv,
      );

  int DeleteList(
    Pointer<Utf16> pszAppID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszAppID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszAppID,
          )>()(
        ptr.ref.lpVtbl,
        pszAppID,
      );

  int AbortList() => ptr.ref.lpVtbl.value
          .elementAt(11)
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
