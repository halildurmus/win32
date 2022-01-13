// IAnalogAudioComponentType.dart

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
import '../../media/directshow/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IAnalogAudioComponentType = '{2CFEB2A8-1787-4A24-A941-C6EAEC39C842}';

/// {@category Interface}
/// {@category com}
class IAnalogAudioComponentType extends IComponentType {
  // vtable begins at 24, is 2 entries long.
  IAnalogAudioComponentType(Pointer<COMObject> ptr) : super(ptr);

  int get AnalogAudioMode {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> Mode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> Mode,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set AnalogAudioMode(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(25)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 Mode,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int Mode,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

/// @nodoc
const CLSID_AnalogAudioComponentType = '{28AB0005-E845-4FFA-AA9B-F4665236141C}';

/// {@category com}
class AnalogAudioComponentType extends IAnalogAudioComponentType {
  AnalogAudioComponentType(Pointer<COMObject> ptr) : super(ptr);

  factory AnalogAudioComponentType.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_AnalogAudioComponentType);
    final iid = calloc<GUID>()..ref.setGUID(IID_IAnalogAudioComponentType);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return AnalogAudioComponentType(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
