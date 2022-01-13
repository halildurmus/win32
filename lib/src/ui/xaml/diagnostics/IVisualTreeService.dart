// IVisualTreeService.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../ui/xaml/diagnostics/IVisualTreeServiceCallback.dart';
import '../../../foundation/structs.g.dart';
import '../../../ui/xaml/diagnostics/structs.g.dart';

/// @nodoc
const IID_IVisualTreeService = '{A593B11A-D17F-48BB-8F66-83910731C8A5}';

/// {@category Interface}
/// {@category com}
class IVisualTreeService extends IUnknown {
  // vtable begins at 3, is 12 entries long.
  IVisualTreeService(Pointer<COMObject> ptr) : super(ptr);

  int AdviseVisualTreeChange(
    Pointer<COMObject> pCallback,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pCallback,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pCallback,
          )>()(
        ptr.ref.lpVtbl,
        pCallback,
      );

  int UnadviseVisualTreeChange(
    Pointer<COMObject> pCallback,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pCallback,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pCallback,
          )>()(
        ptr.ref.lpVtbl,
        pCallback,
      );

  int GetEnums(
    Pointer<Uint32> pCount,
    Pointer<Pointer<EnumType>> ppEnums,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pCount,
            Pointer<Pointer<EnumType>> ppEnums,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pCount,
            Pointer<Pointer<EnumType>> ppEnums,
          )>()(
        ptr.ref.lpVtbl,
        pCount,
        ppEnums,
      );

  int CreateInstance(
    Pointer<Utf16> typeName,
    Pointer<Utf16> value,
    Pointer<Uint64> pInstanceHandle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> typeName,
            Pointer<Utf16> value,
            Pointer<Uint64> pInstanceHandle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> typeName,
            Pointer<Utf16> value,
            Pointer<Uint64> pInstanceHandle,
          )>()(
        ptr.ref.lpVtbl,
        typeName,
        value,
        pInstanceHandle,
      );

  int GetPropertyValuesChain(
    int instanceHandle,
    Pointer<Uint32> pSourceCount,
    Pointer<Pointer<PropertyChainSource>> ppPropertySources,
    Pointer<Uint32> pPropertyCount,
    Pointer<Pointer<PropertyChainValue>> ppPropertyValues,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 instanceHandle,
            Pointer<Uint32> pSourceCount,
            Pointer<Pointer<PropertyChainSource>> ppPropertySources,
            Pointer<Uint32> pPropertyCount,
            Pointer<Pointer<PropertyChainValue>> ppPropertyValues,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int instanceHandle,
            Pointer<Uint32> pSourceCount,
            Pointer<Pointer<PropertyChainSource>> ppPropertySources,
            Pointer<Uint32> pPropertyCount,
            Pointer<Pointer<PropertyChainValue>> ppPropertyValues,
          )>()(
        ptr.ref.lpVtbl,
        instanceHandle,
        pSourceCount,
        ppPropertySources,
        pPropertyCount,
        ppPropertyValues,
      );

  int SetProperty(
    int instanceHandle,
    int value,
    int propertyIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 instanceHandle,
            Uint64 value,
            Uint32 propertyIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int instanceHandle,
            int value,
            int propertyIndex,
          )>()(
        ptr.ref.lpVtbl,
        instanceHandle,
        value,
        propertyIndex,
      );

  int ClearProperty(
    int instanceHandle,
    int propertyIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 instanceHandle,
            Uint32 propertyIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int instanceHandle,
            int propertyIndex,
          )>()(
        ptr.ref.lpVtbl,
        instanceHandle,
        propertyIndex,
      );

  int GetCollectionCount(
    int instanceHandle,
    Pointer<Uint32> pCollectionSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 instanceHandle,
            Pointer<Uint32> pCollectionSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int instanceHandle,
            Pointer<Uint32> pCollectionSize,
          )>()(
        ptr.ref.lpVtbl,
        instanceHandle,
        pCollectionSize,
      );

  int GetCollectionElements(
    int instanceHandle,
    int startIndex,
    Pointer<Uint32> pElementCount,
    Pointer<Pointer<CollectionElementValue>> ppElementValues,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 instanceHandle,
            Uint32 startIndex,
            Pointer<Uint32> pElementCount,
            Pointer<Pointer<CollectionElementValue>> ppElementValues,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int instanceHandle,
            int startIndex,
            Pointer<Uint32> pElementCount,
            Pointer<Pointer<CollectionElementValue>> ppElementValues,
          )>()(
        ptr.ref.lpVtbl,
        instanceHandle,
        startIndex,
        pElementCount,
        ppElementValues,
      );

  int AddChild(
    int parent,
    int child,
    int index,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 parent,
            Uint64 child,
            Uint32 index,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int parent,
            int child,
            int index,
          )>()(
        ptr.ref.lpVtbl,
        parent,
        child,
        index,
      );

  int RemoveChild(
    int parent,
    int index,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 parent,
            Uint32 index,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int parent,
            int index,
          )>()(
        ptr.ref.lpVtbl,
        parent,
        index,
      );

  int ClearChildren(
    int parent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 parent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int parent,
          )>()(
        ptr.ref.lpVtbl,
        parent,
      );
}
