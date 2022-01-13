// IMFPluginControl.dart

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
const IID_IMFPluginControl = '{5C6C44BF-1DB6-435B-9249-E8CD10FDEC96}';

/// {@category Interface}
/// {@category com}
class IMFPluginControl extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IMFPluginControl(Pointer<COMObject> ptr) : super(ptr);

  int GetPreferredClsid(
    int pluginType,
    Pointer<Utf16> selector,
    Pointer<GUID> clsid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 pluginType,
            Pointer<Utf16> selector,
            Pointer<GUID> clsid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int pluginType,
            Pointer<Utf16> selector,
            Pointer<GUID> clsid,
          )>()(
        ptr.ref.lpVtbl,
        pluginType,
        selector,
        clsid,
      );

  int GetPreferredClsidByIndex(
    int pluginType,
    int index,
    Pointer<Pointer<Utf16>> selector,
    Pointer<GUID> clsid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 pluginType,
            Uint32 index,
            Pointer<Pointer<Utf16>> selector,
            Pointer<GUID> clsid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int pluginType,
            int index,
            Pointer<Pointer<Utf16>> selector,
            Pointer<GUID> clsid,
          )>()(
        ptr.ref.lpVtbl,
        pluginType,
        index,
        selector,
        clsid,
      );

  int SetPreferredClsid(
    int pluginType,
    Pointer<Utf16> selector,
    Pointer<GUID> clsid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 pluginType,
            Pointer<Utf16> selector,
            Pointer<GUID> clsid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int pluginType,
            Pointer<Utf16> selector,
            Pointer<GUID> clsid,
          )>()(
        ptr.ref.lpVtbl,
        pluginType,
        selector,
        clsid,
      );

  int IsDisabled(
    int pluginType,
    Pointer<GUID> clsid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 pluginType,
            Pointer<GUID> clsid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int pluginType,
            Pointer<GUID> clsid,
          )>()(
        ptr.ref.lpVtbl,
        pluginType,
        clsid,
      );

  int GetDisabledByIndex(
    int pluginType,
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
            Uint32 pluginType,
            Uint32 index,
            Pointer<GUID> clsid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int pluginType,
            int index,
            Pointer<GUID> clsid,
          )>()(
        ptr.ref.lpVtbl,
        pluginType,
        index,
        clsid,
      );

  int SetDisabled(
    int pluginType,
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
            Uint32 pluginType,
            Pointer<GUID> clsid,
            Int32 disabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int pluginType,
            Pointer<GUID> clsid,
            int disabled,
          )>()(
        ptr.ref.lpVtbl,
        pluginType,
        clsid,
        disabled,
      );
}
