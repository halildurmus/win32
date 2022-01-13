// IWdsTransportConfigurationManager2.dart

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

import '../../system/deploymentservices/IWdsTransportConfigurationManager.dart';
import '../../system/deploymentservices/IWdsTransportMulticastSessionPolicy.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWdsTransportConfigurationManager2 =
    '{D0D85CAF-A153-4F1D-A9DD-96F431C50717}';

/// {@category Interface}
/// {@category com}
class IWdsTransportConfigurationManager2
    extends IWdsTransportConfigurationManager {
  // vtable begins at 16, is 1 entries long.
  IWdsTransportConfigurationManager2(Pointer<COMObject> ptr) : super(ptr);

  Pointer<COMObject> get MulticastSessionPolicy {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppWdsTransportMulticastSessionPolicy,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppWdsTransportMulticastSessionPolicy,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
