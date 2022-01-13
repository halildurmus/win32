// ILanguageComponentType.dart

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

import '../../media/directshow/IComponentType.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ILanguageComponentType = '{B874C8BA-0FA2-11D3-9D8E-00C04F72D980}';

/// {@category Interface}
/// {@category com}
class ILanguageComponentType extends IComponentType {
  // vtable begins at 24, is 2 entries long.
  ILanguageComponentType(Pointer<COMObject> ptr) : super(ptr);

  int get LangID {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> LangID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> LangID,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set LangID(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(25)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 LangID,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int LangID,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

/// @nodoc
const CLSID_LanguageComponentType = '{1BE49F30-0E1B-11D3-9D8E-00C04F72D980}';

/// {@category com}
class LanguageComponentType extends ILanguageComponentType {
  LanguageComponentType(Pointer<COMObject> ptr) : super(ptr);

  factory LanguageComponentType.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_LanguageComponentType);
    final iid = calloc<GUID>()..ref.setGUID(IID_ILanguageComponentType);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return LanguageComponentType(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
