// IComponentType.dart

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
import '../../media/directshow/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../media/directshow/IComponentType.dart';

/// @nodoc
const IID_IComponentType = '{6A340DC0-0311-11D3-9D8E-00C04F72D980}';

/// {@category Interface}
/// {@category com}
class IComponentType extends IDispatch {
  // vtable begins at 7, is 17 entries long.
  IComponentType(Pointer<COMObject> ptr) : super(ptr);

  int get Category {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> Category,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> Category,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set Category(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(8)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 Category,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int Category,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get_MediaMajorType(
    Pointer<Pointer<Utf16>> MediaMajorType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> MediaMajorType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> MediaMajorType,
          )>()(
        ptr.ref.lpVtbl,
        MediaMajorType,
      );

  int put_MediaMajorType(
    Pointer<Utf16> MediaMajorType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> MediaMajorType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> MediaMajorType,
          )>()(
        ptr.ref.lpVtbl,
        MediaMajorType,
      );

  int get__MediaMajorType(
    Pointer<GUID> MediaMajorTypeGuid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> MediaMajorTypeGuid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> MediaMajorTypeGuid,
          )>()(
        ptr.ref.lpVtbl,
        MediaMajorTypeGuid,
      );

  int put__MediaMajorType(
    Pointer<GUID> MediaMajorTypeGuid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> MediaMajorTypeGuid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> MediaMajorTypeGuid,
          )>()(
        ptr.ref.lpVtbl,
        MediaMajorTypeGuid,
      );

  int get_MediaSubType(
    Pointer<Pointer<Utf16>> MediaSubType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> MediaSubType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> MediaSubType,
          )>()(
        ptr.ref.lpVtbl,
        MediaSubType,
      );

  int put_MediaSubType(
    Pointer<Utf16> MediaSubType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> MediaSubType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> MediaSubType,
          )>()(
        ptr.ref.lpVtbl,
        MediaSubType,
      );

  int get__MediaSubType(
    Pointer<GUID> MediaSubTypeGuid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> MediaSubTypeGuid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> MediaSubTypeGuid,
          )>()(
        ptr.ref.lpVtbl,
        MediaSubTypeGuid,
      );

  int put__MediaSubType(
    Pointer<GUID> MediaSubTypeGuid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> MediaSubTypeGuid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> MediaSubTypeGuid,
          )>()(
        ptr.ref.lpVtbl,
        MediaSubTypeGuid,
      );

  int get_MediaFormatType(
    Pointer<Pointer<Utf16>> MediaFormatType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> MediaFormatType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> MediaFormatType,
          )>()(
        ptr.ref.lpVtbl,
        MediaFormatType,
      );

  int put_MediaFormatType(
    Pointer<Utf16> MediaFormatType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> MediaFormatType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> MediaFormatType,
          )>()(
        ptr.ref.lpVtbl,
        MediaFormatType,
      );

  int get__MediaFormatType(
    Pointer<GUID> MediaFormatTypeGuid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> MediaFormatTypeGuid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> MediaFormatTypeGuid,
          )>()(
        ptr.ref.lpVtbl,
        MediaFormatTypeGuid,
      );

  int put__MediaFormatType(
    Pointer<GUID> MediaFormatTypeGuid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> MediaFormatTypeGuid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> MediaFormatTypeGuid,
          )>()(
        ptr.ref.lpVtbl,
        MediaFormatTypeGuid,
      );

  int get_MediaType(
    Pointer<AM_MEDIA_TYPE> MediaType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<AM_MEDIA_TYPE> MediaType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<AM_MEDIA_TYPE> MediaType,
          )>()(
        ptr.ref.lpVtbl,
        MediaType,
      );

  int put_MediaType(
    Pointer<AM_MEDIA_TYPE> MediaType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<AM_MEDIA_TYPE> MediaType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<AM_MEDIA_TYPE> MediaType,
          )>()(
        ptr.ref.lpVtbl,
        MediaType,
      );

  int Clone(
    Pointer<Pointer<COMObject>> NewCT,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> NewCT,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> NewCT,
          )>()(
        ptr.ref.lpVtbl,
        NewCT,
      );
}

/// @nodoc
const CLSID_ComponentType = '{823535A0-0318-11D3-9D8E-00C04F72D980}';

/// {@category com}
class ComponentType extends IComponentType {
  ComponentType(Pointer<COMObject> ptr) : super(ptr);

  factory ComponentType.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_ComponentType);
    final iid = calloc<GUID>()..ref.setGUID(IID_IComponentType);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return ComponentType(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
