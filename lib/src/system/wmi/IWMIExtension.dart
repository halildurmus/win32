// IWMIExtension.dart

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
import '../../foundation/structs.g.dart';
import '../../system/wmi/ISWbemObject.dart';
import '../../system/wmi/ISWbemServices.dart';

/// @nodoc
const IID_IWMIExtension = '{ADC1F06E-5C7E-11D2-8B74-00104B2AFB41}';

/// {@category Interface}
/// {@category com}
class IWMIExtension extends IDispatch {
  // vtable begins at 7, is 3 entries long.
  IWMIExtension(Pointer<COMObject> ptr) : super(ptr);

  Pointer<Utf16> get WMIObjectPath {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> strWMIObjectPath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> strWMIObjectPath,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int GetWMIObject(
    Pointer<Pointer<COMObject>> objWMIObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> objWMIObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> objWMIObject,
          )>()(
        ptr.ref.lpVtbl,
        objWMIObject,
      );

  int GetWMIServices(
    Pointer<Pointer<COMObject>> objWMIServices,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> objWMIServices,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> objWMIServices,
          )>()(
        ptr.ref.lpVtbl,
        objWMIServices,
      );
}

/// @nodoc
const CLSID_WMIExtension = '{F0975AFE-5C7F-11D2-8B74-00104B2AFB41}';

/// {@category com}
class WMIExtension extends IWMIExtension {
  WMIExtension(Pointer<COMObject> ptr) : super(ptr);

  factory WMIExtension.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_WMIExtension);
    final iid = calloc<GUID>()..ref.setGUID(IID_IWMIExtension);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return WMIExtension(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
