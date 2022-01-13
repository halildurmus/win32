// IRawElementProviderSimple.dart

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
import '../../ui/accessibility/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';
import '../../ui/accessibility/IRawElementProviderSimple.dart';

/// @nodoc
const IID_IRawElementProviderSimple = '{D6DD68D1-86FD-4332-8666-9ABEDEA2D24C}';

/// {@category Interface}
/// {@category com}
class IRawElementProviderSimple extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IRawElementProviderSimple(Pointer<COMObject> ptr) : super(ptr);

  int get ProviderOptions {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pRetVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pRetVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int GetPatternProvider(
    int patternId,
    Pointer<Pointer<COMObject>> pRetVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 patternId,
            Pointer<Pointer<COMObject>> pRetVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int patternId,
            Pointer<Pointer<COMObject>> pRetVal,
          )>()(
        ptr.ref.lpVtbl,
        patternId,
        pRetVal,
      );

  int GetPropertyValue(
    int propertyId,
    Pointer<VARIANT> pRetVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 propertyId,
            Pointer<VARIANT> pRetVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int propertyId,
            Pointer<VARIANT> pRetVal,
          )>()(
        ptr.ref.lpVtbl,
        propertyId,
        pRetVal,
      );

  Pointer<COMObject> get HostRawElementProvider {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pRetVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pRetVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
