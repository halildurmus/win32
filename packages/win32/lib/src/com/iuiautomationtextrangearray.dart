// iuiautomationtextrangearray.dart

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
import '../propertykey.dart';
import '../structs.g.dart';
import '../utils.dart';
import '../variant.dart';
import '../win32/ole32.g.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomationTextRangeArray =
    '{ce4ae76a-e717-4c98-81ea-47371d028eb6}';

/// Represents a collection of IUIAutomationTextRange objects.
///
/// {@category com}
class IUIAutomationTextRangeArray extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IUIAutomationTextRangeArray(super.ptr);

  factory IUIAutomationTextRangeArray.from(IUnknown interface) =>
      IUIAutomationTextRangeArray(
        interface.toInterface(IID_IUIAutomationTextRangeArray),
      );

  int get length {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = (ptr.ref.vtable + 3)
          .cast<
            Pointer<
              NativeFunction<Int32 Function(Pointer, Pointer<Int32> length)>
            >
          >()
          .value
          .asFunction<int Function(Pointer, Pointer<Int32> length)>()(
        ptr.ref.lpVtbl,
        retValuePtr,
      );

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int getElement(int index, Pointer<Pointer<COMObject>> element) =>
      (ptr.ref.vtable + 4)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(
                  Pointer,
                  Int32 index,
                  Pointer<Pointer<COMObject>> element,
                )
              >
            >
          >()
          .value
          .asFunction<
            int Function(
              Pointer,
              int index,
              Pointer<Pointer<COMObject>> element,
            )
          >()(ptr.ref.lpVtbl, index, element);
}
