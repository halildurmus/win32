// IMultiInterfaceEventControl.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../system/com/events/IMultiInterfacePublisherFilter.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/com/events/IEventObjectCollection.dart';

/// @nodoc
const IID_IMultiInterfaceEventControl =
    '{0343E2F5-86F6-11D1-B760-00C04FB926AF}';

/// {@category Interface}
/// {@category com}
class IMultiInterfaceEventControl extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IMultiInterfaceEventControl(Pointer<COMObject> ptr) : super(ptr);

  int SetMultiInterfacePublisherFilter(
    Pointer<COMObject> classFilter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> classFilter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> classFilter,
          )>()(
        ptr.ref.lpVtbl,
        classFilter,
      );

  int GetSubscriptions(
    Pointer<GUID> eventIID,
    Pointer<Utf16> bstrMethodName,
    Pointer<Utf16> optionalCriteria,
    Pointer<Int32> optionalErrorIndex,
    Pointer<Pointer<COMObject>> ppCollection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> eventIID,
            Pointer<Utf16> bstrMethodName,
            Pointer<Utf16> optionalCriteria,
            Pointer<Int32> optionalErrorIndex,
            Pointer<Pointer<COMObject>> ppCollection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> eventIID,
            Pointer<Utf16> bstrMethodName,
            Pointer<Utf16> optionalCriteria,
            Pointer<Int32> optionalErrorIndex,
            Pointer<Pointer<COMObject>> ppCollection,
          )>()(
        ptr.ref.lpVtbl,
        eventIID,
        bstrMethodName,
        optionalCriteria,
        optionalErrorIndex,
        ppCollection,
      );

  int SetDefaultQuery(
    Pointer<GUID> eventIID,
    Pointer<Utf16> bstrMethodName,
    Pointer<Utf16> bstrCriteria,
    Pointer<Int32> errorIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> eventIID,
            Pointer<Utf16> bstrMethodName,
            Pointer<Utf16> bstrCriteria,
            Pointer<Int32> errorIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> eventIID,
            Pointer<Utf16> bstrMethodName,
            Pointer<Utf16> bstrCriteria,
            Pointer<Int32> errorIndex,
          )>()(
        ptr.ref.lpVtbl,
        eventIID,
        bstrMethodName,
        bstrCriteria,
        errorIndex,
      );

  int get AllowInprocActivation {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfAllowInprocActivation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfAllowInprocActivation,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set AllowInprocActivation(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(7)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 fAllowInprocActivation,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int fAllowInprocActivation,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get FireInParallel {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfFireInParallel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfFireInParallel,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set FireInParallel(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(9)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 fFireInParallel,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int fFireInParallel,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
