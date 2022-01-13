// ISharedPropertyGroup.dart

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
import '../../system/componentservices/ISharedProperty.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISharedPropertyGroup = '{2A005C07-A5DE-11CF-9E66-00AA00A3F464}';

/// {@category Interface}
/// {@category com}
class ISharedPropertyGroup extends IDispatch {
  // vtable begins at 7, is 4 entries long.
  ISharedPropertyGroup(Pointer<COMObject> ptr) : super(ptr);

  int CreatePropertyByPosition(
    int Index,
    Pointer<Int16> fExists,
    Pointer<Pointer<COMObject>> ppProp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Index,
            Pointer<Int16> fExists,
            Pointer<Pointer<COMObject>> ppProp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Int16> fExists,
            Pointer<Pointer<COMObject>> ppProp,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        fExists,
        ppProp,
      );

  int get_PropertyByPosition(
    int Index,
    Pointer<Pointer<COMObject>> ppProperty,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Index,
            Pointer<Pointer<COMObject>> ppProperty,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Pointer<COMObject>> ppProperty,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        ppProperty,
      );

  int CreateProperty(
    Pointer<Utf16> Name,
    Pointer<Int16> fExists,
    Pointer<Pointer<COMObject>> ppProp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Name,
            Pointer<Int16> fExists,
            Pointer<Pointer<COMObject>> ppProp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Name,
            Pointer<Int16> fExists,
            Pointer<Pointer<COMObject>> ppProp,
          )>()(
        ptr.ref.lpVtbl,
        Name,
        fExists,
        ppProp,
      );

  int get_Property(
    Pointer<Utf16> Name,
    Pointer<Pointer<COMObject>> ppProperty,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Name,
            Pointer<Pointer<COMObject>> ppProperty,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Name,
            Pointer<Pointer<COMObject>> ppProperty,
          )>()(
        ptr.ref.lpVtbl,
        Name,
        ppProperty,
      );
}

/// @nodoc
const CLSID_SharedPropertyGroup = '{2A005C0B-A5DE-11CF-9E66-00AA00A3F464}';

/// {@category com}
class SharedPropertyGroup extends ISharedPropertyGroup {
  SharedPropertyGroup(Pointer<COMObject> ptr) : super(ptr);

  factory SharedPropertyGroup.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_SharedPropertyGroup);
    final iid = calloc<GUID>()..ref.setGUID(IID_ISharedPropertyGroup);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return SharedPropertyGroup(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
