// IComponentsOld.dart

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
import '../../media/directshow/IEnumComponents.dart';
import '../../specialTypes.dart';
import '../../media/directshow/IComponent.dart';
import '../../media/directshow/IComponents.dart';

/// @nodoc
const IID_IComponentsOld = '{FCD01846-0E19-11D3-9D8E-00C04F72D980}';

/// {@category Interface}
/// {@category com}
class IComponentsOld extends IDispatch {
  // vtable begins at 7, is 7 entries long.
  IComponentsOld(Pointer<COMObject> ptr) : super(ptr);

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

  int EnumComponents(
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
    Pointer<Pointer<COMObject>> ppComponent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT Index,
            Pointer<Pointer<COMObject>> ppComponent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT Index,
            Pointer<Pointer<COMObject>> ppComponent,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        ppComponent,
      );

  int Add(
    Pointer<COMObject> Component,
    Pointer<VARIANT> NewIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> Component,
            Pointer<VARIANT> NewIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> Component,
            Pointer<VARIANT> NewIndex,
          )>()(
        ptr.ref.lpVtbl,
        Component,
        NewIndex,
      );

  int Remove(
    VARIANT Index,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
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
          .elementAt(13)
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
