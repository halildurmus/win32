// IAzPrincipalLocator.dart

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
import '../../security/authorization/IAzNameResolver.dart';
import '../../foundation/structs.g.dart';
import '../../security/authorization/IAzObjectPicker.dart';

/// @nodoc
const IID_IAzPrincipalLocator = '{E5C3507D-AD6A-4992-9C7F-74AB480B44CC}';

/// {@category Interface}
/// {@category com}
class IAzPrincipalLocator extends IDispatch {
  // vtable begins at 7, is 2 entries long.
  IAzPrincipalLocator(Pointer<COMObject> ptr) : super(ptr);

  Pointer<COMObject> get NameResolver {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppNameResolver,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppNameResolver,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get ObjectPicker {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppObjectPicker,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppObjectPicker,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}

/// @nodoc
const CLSID_AzPrincipalLocator = '{483AFB5D-70DF-4E16-ABDC-A1DE4D015A3E}';

/// {@category com}
class AzPrincipalLocator extends IAzPrincipalLocator {
  AzPrincipalLocator(Pointer<COMObject> ptr) : super(ptr);

  factory AzPrincipalLocator.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_AzPrincipalLocator);
    final iid = calloc<GUID>()..ref.setGUID(IID_IAzPrincipalLocator);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return AzPrincipalLocator(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
