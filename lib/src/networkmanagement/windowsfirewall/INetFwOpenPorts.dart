// INetFwOpenPorts.dart

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
import '../../networkmanagement/windowsfirewall/INetFwOpenPort.dart';
import '../../networkmanagement/windowsfirewall/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_INetFwOpenPorts = '{C0E9D7FA-E07E-430A-B19A-090CE82D92E2}';

/// {@category Interface}
/// {@category com}
class INetFwOpenPorts extends IDispatch {
  // vtable begins at 7, is 5 entries long.
  INetFwOpenPorts(Pointer<COMObject> ptr) : super(ptr);

  int get Count {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> count,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> count,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int Add(
    Pointer<COMObject> port,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> port,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> port,
          )>()(
        ptr.ref.lpVtbl,
        port,
      );

  int Remove(
    int portNumber,
    int ipProtocol,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 portNumber,
            Int32 ipProtocol,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int portNumber,
            int ipProtocol,
          )>()(
        ptr.ref.lpVtbl,
        portNumber,
        ipProtocol,
      );

  int Item(
    int portNumber,
    int ipProtocol,
    Pointer<Pointer<COMObject>> openPort,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 portNumber,
            Int32 ipProtocol,
            Pointer<Pointer<COMObject>> openPort,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int portNumber,
            int ipProtocol,
            Pointer<Pointer<COMObject>> openPort,
          )>()(
        ptr.ref.lpVtbl,
        portNumber,
        ipProtocol,
        openPort,
      );

  Pointer<COMObject> get NewEnum {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> newEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> newEnum,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
