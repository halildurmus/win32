// ispeechobjecttokens.dart

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
import 'idispatch.dart';
import 'iunknown.dart';

/// @nodoc
const IID_ISpeechObjectTokens = '{9285b776-2e7b-4bc0-b53e-580eb6fa967f}';

/// The ISpeechObjectTokens automation interface represents a collection of
/// SpObjectToken objects.
///
/// {@category com}
class ISpeechObjectTokens extends IDispatch {
  // vtable begins at 7, is 3 entries long.
  ISpeechObjectTokens(super.ptr);

  factory ISpeechObjectTokens.from(IUnknown interface) =>
      ISpeechObjectTokens(interface.toInterface(IID_ISpeechObjectTokens));

  int get count {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = (ptr.ref.vtable + 7)
          .cast<
            Pointer<
              NativeFunction<Int32 Function(Pointer, Pointer<Int32> Count)>
            >
          >()
          .value
          .asFunction<int Function(Pointer, Pointer<Int32> Count)>()(
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

  int item(int Index, Pointer<Pointer<COMObject>> Token) => (ptr.ref.vtable + 8)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Int32 Index,
              Pointer<Pointer<COMObject>> Token,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(Pointer, int Index, Pointer<Pointer<COMObject>> Token)
      >()(ptr.ref.lpVtbl, Index, Token);

  Pointer<COMObject> get newEnum {
    final retValuePtr = calloc<COMObject>();

    final hr = (ptr.ref.vtable + 9)
        .cast<
          Pointer<
            NativeFunction<
              Int32 Function(Pointer, Pointer<COMObject> ppEnumVARIANT)
            >
          >
        >()
        .value
        .asFunction<int Function(Pointer, Pointer<COMObject> ppEnumVARIANT)>()(
      ptr.ref.lpVtbl,
      retValuePtr,
    );

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }
}
