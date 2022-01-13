// INetFwServiceRestriction.dart

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
import '../../networkmanagement/windowsfirewall/INetFwRules.dart';

/// @nodoc
const IID_INetFwServiceRestriction = '{8267BBE3-F890-491C-B7B6-2DB1EF0E5D2B}';

/// {@category Interface}
/// {@category com}
class INetFwServiceRestriction extends IDispatch {
  // vtable begins at 7, is 3 entries long.
  INetFwServiceRestriction(Pointer<COMObject> ptr) : super(ptr);

  int RestrictService(
    Pointer<Utf16> serviceName,
    Pointer<Utf16> appName,
    int restrictService,
    int serviceSidRestricted,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> serviceName,
            Pointer<Utf16> appName,
            Int16 restrictService,
            Int16 serviceSidRestricted,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> serviceName,
            Pointer<Utf16> appName,
            int restrictService,
            int serviceSidRestricted,
          )>()(
        ptr.ref.lpVtbl,
        serviceName,
        appName,
        restrictService,
        serviceSidRestricted,
      );

  int ServiceRestricted(
    Pointer<Utf16> serviceName,
    Pointer<Utf16> appName,
    Pointer<Int16> serviceRestricted,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> serviceName,
            Pointer<Utf16> appName,
            Pointer<Int16> serviceRestricted,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> serviceName,
            Pointer<Utf16> appName,
            Pointer<Int16> serviceRestricted,
          )>()(
        ptr.ref.lpVtbl,
        serviceName,
        appName,
        serviceRestricted,
      );

  Pointer<COMObject> get Rules {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> rules,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> rules,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
