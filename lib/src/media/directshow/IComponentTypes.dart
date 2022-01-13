// IComponentTypes.dart

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
import '../../system/ole/IEnumVARIANT.dart';
import '../../media/directshow/IEnumComponentTypes.dart';
import '../../specialTypes.dart';
import '../../media/directshow/IComponentType.dart';
import '../../media/directshow/IComponentTypes.dart';

/// @nodoc
const IID_IComponentTypes = '{0DC13D4A-0313-11D3-9D8E-00C04F72D980}';

/// {@category Interface}
/// {@category com}
class IComponentTypes extends IDispatch {
  // vtable begins at 7, is 8 entries long.
  IComponentTypes(Pointer<COMObject> ptr) : super(ptr);

  int get Count {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> Count,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> Count,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get NewEnum {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppNewEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppNewEnum,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int EnumComponentTypes(
    Pointer<Pointer<COMObject>> ppNewEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppNewEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppNewEnum,
          )>()(
        ptr.ref.lpVtbl,
        ppNewEnum,
      );

  int get_Item(
    VARIANT Index,
    Pointer<Pointer<COMObject>> ComponentType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT Index,
            Pointer<Pointer<COMObject>> ComponentType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT Index,
            Pointer<Pointer<COMObject>> ComponentType,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        ComponentType,
      );

  int put_Item(
    VARIANT Index,
    Pointer<COMObject> ComponentType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT Index,
            Pointer<COMObject> ComponentType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT Index,
            Pointer<COMObject> ComponentType,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        ComponentType,
      );

  int Add(
    Pointer<COMObject> ComponentType,
    Pointer<VARIANT> NewIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> ComponentType,
            Pointer<VARIANT> NewIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> ComponentType,
            Pointer<VARIANT> NewIndex,
          )>()(
        ptr.ref.lpVtbl,
        ComponentType,
        NewIndex,
      );

  int Remove(
    VARIANT Index,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT Index,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT Index,
          )>()(
        ptr.ref.lpVtbl,
        Index,
      );

  int Clone(
    Pointer<Pointer<COMObject>> NewList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> NewList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> NewList,
          )>()(
        ptr.ref.lpVtbl,
        NewList,
      );
}

/// @nodoc
const CLSID_ComponentTypes = '{A1A2B1C4-0E3A-11D3-9D8E-00C04F72D980}';

/// {@category com}
class ComponentTypes extends IComponentTypes {
  ComponentTypes(Pointer<COMObject> ptr) : super(ptr);

  factory ComponentTypes.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_ComponentTypes);
    final iid = calloc<GUID>()..ref.setGUID(IID_IComponentTypes);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return ComponentTypes(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
