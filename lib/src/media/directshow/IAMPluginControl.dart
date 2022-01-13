// IAMPluginControl.dart

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

/// @nodoc
const IID_IAMPluginControl = '{0E26A181-F40C-4635-8786-976284B52981}';

/// {@category Interface}
/// {@category com}
class IAMPluginControl extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IAMPluginControl(Pointer<COMObject> ptr) : super(ptr);

  int GetPreferredClsid(
    Pointer<GUID> subType,
    Pointer<GUID> clsid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> subType,
            Pointer<GUID> clsid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> subType,
            Pointer<GUID> clsid,
          )>()(
        ptr.ref.lpVtbl,
        subType,
        clsid,
      );

  int GetPreferredClsidByIndex(
    int index,
    Pointer<GUID> subType,
    Pointer<GUID> clsid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Pointer<GUID> subType,
            Pointer<GUID> clsid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<GUID> subType,
            Pointer<GUID> clsid,
          )>()(
        ptr.ref.lpVtbl,
        index,
        subType,
        clsid,
      );

  int SetPreferredClsid(
    Pointer<GUID> subType,
    Pointer<GUID> clsid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> subType,
            Pointer<GUID> clsid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> subType,
            Pointer<GUID> clsid,
          )>()(
        ptr.ref.lpVtbl,
        subType,
        clsid,
      );

  int IsDisabled(
    Pointer<GUID> clsid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> clsid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> clsid,
          )>()(
        ptr.ref.lpVtbl,
        clsid,
      );

  int GetDisabledByIndex(
    int index,
    Pointer<GUID> clsid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Pointer<GUID> clsid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<GUID> clsid,
          )>()(
        ptr.ref.lpVtbl,
        index,
        clsid,
      );

  int SetDisabled(
    Pointer<GUID> clsid,
    int disabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> clsid,
            Int32 disabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> clsid,
            int disabled,
          )>()(
        ptr.ref.lpVtbl,
        clsid,
        disabled,
      );

  int IsLegacyDisabled(
    Pointer<Utf16> dllName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> dllName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> dllName,
          )>()(
        ptr.ref.lpVtbl,
        dllName,
      );
}
