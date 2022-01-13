// IVisualTreeService3.dart

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

import '../../../ui/xaml/diagnostics/IVisualTreeService2.dart';
import '../../../foundation/structs.g.dart';
import '../../../ui/xaml/diagnostics/structs.g.dart';

/// @nodoc
const IID_IVisualTreeService3 = '{0E79C6E0-85A0-4BE8-B41A-655CF1FD19BD}';

/// {@category Interface}
/// {@category com}
class IVisualTreeService3 extends IVisualTreeService2 {
  // vtable begins at 19, is 4 entries long.
  IVisualTreeService3(Pointer<COMObject> ptr) : super(ptr);

  int ResolveResource(
    int resourceContext,
    Pointer<Utf16> resourceName,
    int resourceType,
    int propertyIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 resourceContext,
            Pointer<Utf16> resourceName,
            Int32 resourceType,
            Uint32 propertyIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int resourceContext,
            Pointer<Utf16> resourceName,
            int resourceType,
            int propertyIndex,
          )>()(
        ptr.ref.lpVtbl,
        resourceContext,
        resourceName,
        resourceType,
        propertyIndex,
      );

  int GetDictionaryItem(
    int dictionaryHandle,
    Pointer<Utf16> resourceName,
    int resourceIsImplicitStyle,
    Pointer<Uint64> resourceHandle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 dictionaryHandle,
            Pointer<Utf16> resourceName,
            Int32 resourceIsImplicitStyle,
            Pointer<Uint64> resourceHandle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dictionaryHandle,
            Pointer<Utf16> resourceName,
            int resourceIsImplicitStyle,
            Pointer<Uint64> resourceHandle,
          )>()(
        ptr.ref.lpVtbl,
        dictionaryHandle,
        resourceName,
        resourceIsImplicitStyle,
        resourceHandle,
      );

  int AddDictionaryItem(
    int dictionaryHandle,
    int resourceKey,
    int resourceHandle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 dictionaryHandle,
            Uint64 resourceKey,
            Uint64 resourceHandle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dictionaryHandle,
            int resourceKey,
            int resourceHandle,
          )>()(
        ptr.ref.lpVtbl,
        dictionaryHandle,
        resourceKey,
        resourceHandle,
      );

  int RemoveDictionaryItem(
    int dictionaryHandle,
    int resourceKey,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 dictionaryHandle,
            Uint64 resourceKey,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dictionaryHandle,
            int resourceKey,
          )>()(
        ptr.ref.lpVtbl,
        dictionaryHandle,
        resourceKey,
      );
}
