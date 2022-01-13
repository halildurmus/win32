// IStaticPortMappingCollection.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../networkmanagement/windowsfirewall/IStaticPortMapping.dart';

/// @nodoc
const IID_IStaticPortMappingCollection =
    '{CD1F3E77-66D6-4664-82C7-36DBB641D0F1}';

/// {@category Interface}
/// {@category com}
class IStaticPortMappingCollection extends IDispatch {
  // vtable begins at 7, is 5 entries long.
  IStaticPortMappingCollection(Pointer<COMObject> ptr) : super(ptr);

  Pointer<COMObject> get NewEnum {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get_Item(
    int lExternalPort,
    Pointer<Utf16> bstrProtocol,
    Pointer<Pointer<COMObject>> ppSPM,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lExternalPort,
            Pointer<Utf16> bstrProtocol,
            Pointer<Pointer<COMObject>> ppSPM,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lExternalPort,
            Pointer<Utf16> bstrProtocol,
            Pointer<Pointer<COMObject>> ppSPM,
          )>()(
        ptr.ref.lpVtbl,
        lExternalPort,
        bstrProtocol,
        ppSPM,
      );

  int get Count {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int Remove(
    int lExternalPort,
    Pointer<Utf16> bstrProtocol,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lExternalPort,
            Pointer<Utf16> bstrProtocol,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lExternalPort,
            Pointer<Utf16> bstrProtocol,
          )>()(
        ptr.ref.lpVtbl,
        lExternalPort,
        bstrProtocol,
      );

  int Add(
    int lExternalPort,
    Pointer<Utf16> bstrProtocol,
    int lInternalPort,
    Pointer<Utf16> bstrInternalClient,
    int bEnabled,
    Pointer<Utf16> bstrDescription,
    Pointer<Pointer<COMObject>> ppSPM,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lExternalPort,
            Pointer<Utf16> bstrProtocol,
            Int32 lInternalPort,
            Pointer<Utf16> bstrInternalClient,
            Int16 bEnabled,
            Pointer<Utf16> bstrDescription,
            Pointer<Pointer<COMObject>> ppSPM,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lExternalPort,
            Pointer<Utf16> bstrProtocol,
            int lInternalPort,
            Pointer<Utf16> bstrInternalClient,
            int bEnabled,
            Pointer<Utf16> bstrDescription,
            Pointer<Pointer<COMObject>> ppSPM,
          )>()(
        ptr.ref.lpVtbl,
        lExternalPort,
        bstrProtocol,
        lInternalPort,
        bstrInternalClient,
        bEnabled,
        bstrDescription,
        ppSPM,
      );
}
