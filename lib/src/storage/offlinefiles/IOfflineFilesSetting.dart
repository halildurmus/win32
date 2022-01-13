// IOfflineFilesSetting.dart

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
import '../../storage/offlinefiles/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IOfflineFilesSetting = '{D871D3F7-F613-48A1-827E-7A34E560FFF6}';

/// {@category Interface}
/// {@category com}
class IOfflineFilesSetting extends IUnknown {
  // vtable begins at 3, is 9 entries long.
  IOfflineFilesSetting(Pointer<COMObject> ptr) : super(ptr);

  int GetName(
    Pointer<Pointer<Utf16>> ppszName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int GetValueType(
    Pointer<Int32> pType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pType,
          )>()(
        ptr.ref.lpVtbl,
        pType,
      );

  int GetPreference(
    Pointer<VARIANT> pvarValue,
    int dwScope,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pvarValue,
            Uint32 dwScope,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pvarValue,
            int dwScope,
          )>()(
        ptr.ref.lpVtbl,
        pvarValue,
        dwScope,
      );

  int GetPreferenceScope(
    Pointer<Uint32> pdwScope,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwScope,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwScope,
          )>()(
        ptr.ref.lpVtbl,
        pdwScope,
      );

  int SetPreference(
    Pointer<VARIANT> pvarValue,
    int dwScope,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pvarValue,
            Uint32 dwScope,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pvarValue,
            int dwScope,
          )>()(
        ptr.ref.lpVtbl,
        pvarValue,
        dwScope,
      );

  int DeletePreference(
    int dwScope,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwScope,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwScope,
          )>()(
        ptr.ref.lpVtbl,
        dwScope,
      );

  int GetPolicy(
    Pointer<VARIANT> pvarValue,
    int dwScope,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pvarValue,
            Uint32 dwScope,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pvarValue,
            int dwScope,
          )>()(
        ptr.ref.lpVtbl,
        pvarValue,
        dwScope,
      );

  int GetPolicyScope(
    Pointer<Uint32> pdwScope,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwScope,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwScope,
          )>()(
        ptr.ref.lpVtbl,
        pdwScope,
      );

  int GetValue(
    Pointer<VARIANT> pvarValue,
    Pointer<Int32> pbSetByPolicy,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pvarValue,
            Pointer<Int32> pbSetByPolicy,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pvarValue,
            Pointer<Int32> pbSetByPolicy,
          )>()(
        ptr.ref.lpVtbl,
        pvarValue,
        pbSetByPolicy,
      );
}

/// @nodoc
const CLSID_OfflineFilesSetting = '{FD3659E9-A920-4123-AD64-7FC76C7AACDF}';

/// {@category com}
class OfflineFilesSetting extends IOfflineFilesSetting {
  OfflineFilesSetting(Pointer<COMObject> ptr) : super(ptr);

  factory OfflineFilesSetting.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_OfflineFilesSetting);
    final iid = calloc<GUID>()..ref.setGUID(IID_IOfflineFilesSetting);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return OfflineFilesSetting(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
