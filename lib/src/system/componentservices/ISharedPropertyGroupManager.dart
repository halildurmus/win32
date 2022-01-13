// ISharedPropertyGroupManager.dart

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
import '../../system/componentservices/ISharedPropertyGroup.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_ISharedPropertyGroupManager =
    '{2A005C0D-A5DE-11CF-9E66-00AA00A3F464}';

/// {@category Interface}
/// {@category com}
class ISharedPropertyGroupManager extends IDispatch {
  // vtable begins at 7, is 3 entries long.
  ISharedPropertyGroupManager(Pointer<COMObject> ptr) : super(ptr);

  int CreatePropertyGroup(
    Pointer<Utf16> Name,
    Pointer<Int32> dwIsoMode,
    Pointer<Int32> dwRelMode,
    Pointer<Int16> fExists,
    Pointer<Pointer<COMObject>> ppGroup,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Name,
            Pointer<Int32> dwIsoMode,
            Pointer<Int32> dwRelMode,
            Pointer<Int16> fExists,
            Pointer<Pointer<COMObject>> ppGroup,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Name,
            Pointer<Int32> dwIsoMode,
            Pointer<Int32> dwRelMode,
            Pointer<Int16> fExists,
            Pointer<Pointer<COMObject>> ppGroup,
          )>()(
        ptr.ref.lpVtbl,
        Name,
        dwIsoMode,
        dwRelMode,
        fExists,
        ppGroup,
      );

  int get_Group(
    Pointer<Utf16> Name,
    Pointer<Pointer<COMObject>> ppGroup,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Name,
            Pointer<Pointer<COMObject>> ppGroup,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Name,
            Pointer<Pointer<COMObject>> ppGroup,
          )>()(
        ptr.ref.lpVtbl,
        Name,
        ppGroup,
      );

  Pointer<COMObject> get NewEnum {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> retval,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> retval,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}

/// @nodoc
const CLSID_SharedPropertyGroupManager =
    '{2A005C11-A5DE-11CF-9E66-00AA00A3F464}';

/// {@category com}
class SharedPropertyGroupManager extends ISharedPropertyGroupManager {
  SharedPropertyGroupManager(Pointer<COMObject> ptr) : super(ptr);

  factory SharedPropertyGroupManager.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_SharedPropertyGroupManager);
    final iid = calloc<GUID>()..ref.setGUID(IID_ISharedPropertyGroupManager);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return SharedPropertyGroupManager(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
