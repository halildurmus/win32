// iuiautomationproxyfactoryentry.dart

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
const IID_IUIAutomationProxyFactoryEntry =
    '{d50e472e-b64b-490c-bca1-d30696f9f289}';

/// Represents a proxy factory in the table maintained by Microsoft UI
/// Automation, and exposes properties and methods that can be used by
/// client applications to interact with IUIAutomationProxyFactory objects.
///
/// {@category Interface}
/// {@category com}
class IUIAutomationProxyFactoryEntry extends IUnknown {
  // vtable begins at 3, is 13 entries long.
  IUIAutomationProxyFactoryEntry(super.ptr);

  factory IUIAutomationProxyFactoryEntry.from(IUnknown interface) =>
      IUIAutomationProxyFactoryEntry(
          interface.toInterface(IID_IUIAutomationProxyFactoryEntry));

  Pointer<COMObject> get proxyFactory {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(3)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer, Pointer<Pointer<COMObject>> factory)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<Pointer<COMObject>> factory)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get className {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(4)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer, Pointer<Pointer<Utf16>> className)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<Pointer<Utf16>> className)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get imageName {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(5)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer, Pointer<Pointer<Utf16>> imageName)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<Pointer<Utf16>> imageName)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get allowSubstringMatch {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer, Pointer<Int32> allowSubstringMatch)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<Int32> allowSubstringMatch)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get canCheckBaseClass {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(7)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer, Pointer<Int32> canCheckBaseClass)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<Int32> canCheckBaseClass)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get needsAdviseEvents {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Pointer<Int32> adviseEvents)>>>()
          .value
          .asFunction<
              int Function(Pointer,
                  Pointer<Int32> adviseEvents)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set className(Pointer<Utf16> value) {
    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        Int32 Function(Pointer, Pointer<Utf16> className)>>>()
            .value
            .asFunction<int Function(Pointer, Pointer<Utf16> className)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  set imageName(Pointer<Utf16> value) {
    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        Int32 Function(Pointer, Pointer<Utf16> imageName)>>>()
            .value
            .asFunction<int Function(Pointer, Pointer<Utf16> imageName)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  set allowSubstringMatch(int value) {
    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        Int32 Function(Pointer, Int32 allowSubstringMatch)>>>()
            .value
            .asFunction<int Function(Pointer, int allowSubstringMatch)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  set canCheckBaseClass(int value) {
    final hr = ptr.ref.vtable
            .elementAt(12)
            .cast<
                Pointer<
                    NativeFunction<
                        Int32 Function(Pointer, Int32 canCheckBaseClass)>>>()
            .value
            .asFunction<int Function(Pointer, int canCheckBaseClass)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  set needsAdviseEvents(int value) {
    final hr = ptr.ref.vtable
        .elementAt(13)
        .cast<
            Pointer<
                NativeFunction<Int32 Function(Pointer, Int32 adviseEvents)>>>()
        .value
        .asFunction<
            int Function(Pointer, int adviseEvents)>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int
      setWinEventsForAutomationEvent(
              int eventId, int propertyId, Pointer<SAFEARRAY> winEvents) =>
          ptr.ref.vtable
                  .elementAt(14)
                  .cast<
                      Pointer<
                          NativeFunction<
                              Int32 Function(
                                  Pointer,
                                  Uint32 eventId,
                                  Uint32 propertyId,
                                  Pointer<SAFEARRAY> winEvents)>>>()
                  .value
                  .asFunction<
                      int Function(Pointer, int eventId, int propertyId,
                          Pointer<SAFEARRAY> winEvents)>()(
              ptr.ref.lpVtbl, eventId, propertyId, winEvents);

  int
      getWinEventsForAutomationEvent(int eventId, int propertyId,
              Pointer<Pointer<SAFEARRAY>> winEvents) =>
          ptr.ref.vtable
                  .elementAt(15)
                  .cast<
                      Pointer<
                          NativeFunction<
                              Int32 Function(
                                  Pointer,
                                  Uint32 eventId,
                                  Uint32 propertyId,
                                  Pointer<Pointer<SAFEARRAY>> winEvents)>>>()
                  .value
                  .asFunction<
                      int Function(Pointer, int eventId, int propertyId,
                          Pointer<Pointer<SAFEARRAY>> winEvents)>()(
              ptr.ref.lpVtbl, eventId, propertyId, winEvents);
}
