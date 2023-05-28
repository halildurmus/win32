// iuiautomationcacherequest.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../callbacks.dart';
import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../structs.g.dart';
import '../utils.dart';
import '../variant.dart';
import '../win32/ole32.g.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomationCacheRequest = '{b32a92b5-bc25-4078-9c08-d7ee95c48e03}';

/// Exposes properties and methods of a cache request. Client applications
/// use this interface to specify the properties and control patterns to be
/// cached when a Microsoft UI Automation element is obtained.
///
/// {@category Interface}
/// {@category com}
class IUIAutomationCacheRequest extends IUnknown {
  // vtable begins at 3, is 9 entries long.
  IUIAutomationCacheRequest(super.ptr);

  factory IUIAutomationCacheRequest.from(IUnknown interface) =>
      IUIAutomationCacheRequest(
          interface.toInterface(IID_IUIAutomationCacheRequest));

  int addProperty(int propertyId) => ptr.ref.vtable
      .elementAt(3)
      .cast<
          Pointer<NativeFunction<Int32 Function(Pointer, Uint32 propertyId)>>>()
      .value
      .asFunction<
          int Function(Pointer, int propertyId)>()(ptr.ref.lpVtbl, propertyId);

  int addPattern(int patternId) => ptr.ref.vtable
      .elementAt(4)
      .cast<
          Pointer<NativeFunction<Int32 Function(Pointer, Uint32 patternId)>>>()
      .value
      .asFunction<
          int Function(Pointer, int patternId)>()(ptr.ref.lpVtbl, patternId);

  int clone(Pointer<Pointer<COMObject>> clonedRequest) => ptr.ref.vtable
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer,
                          Pointer<Pointer<COMObject>> clonedRequest)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Pointer<COMObject>> clonedRequest)>()(
      ptr.ref.lpVtbl, clonedRequest);

  int get treeScope {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Int32> scope)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<Int32> scope)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set treeScope(int value) {
    final hr = ptr.ref.vtable
        .elementAt(7)
        .cast<Pointer<NativeFunction<Int32 Function(Pointer, Int32 scope)>>>()
        .value
        .asFunction<int Function(Pointer, int scope)>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<COMObject> get treeFilter {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer, Pointer<Pointer<COMObject>> filter)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<Pointer<COMObject>> filter)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set treeFilter(Pointer<COMObject> value) {
    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        Int32 Function(Pointer, Pointer<COMObject> filter)>>>()
            .value
            .asFunction<int Function(Pointer, Pointer<COMObject> filter)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get automationElementMode {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(10)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Int32> mode)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<Int32> mode)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set automationElementMode(int value) {
    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<Pointer<NativeFunction<Int32 Function(Pointer, Int32 mode)>>>()
        .value
        .asFunction<int Function(Pointer, int mode)>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
