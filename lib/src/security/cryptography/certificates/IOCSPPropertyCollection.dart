// IOCSPPropertyCollection.dart

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

import '../../../system/com/IDispatch.dart';
import '../../../specialTypes.dart';
import '../../../foundation/structs.g.dart';
import '../../../security/cryptography/certificates/IOCSPProperty.dart';

/// @nodoc
const IID_IOCSPPropertyCollection = '{2597C18D-54E6-4B74-9FA9-A6BFDA99CBBE}';

/// {@category Interface}
/// {@category com}
class IOCSPPropertyCollection extends IDispatch {
  // vtable begins at 7, is 8 entries long.
  IOCSPPropertyCollection(Pointer<COMObject> ptr) : super(ptr);

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
            Pointer<Pointer<COMObject>> ppVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get_Item(
    int Index,
    Pointer<VARIANT> pVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Index,
            Pointer<VARIANT> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<VARIANT> pVal,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        pVal,
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

  int get_ItemByName(
    Pointer<Utf16> bstrPropName,
    Pointer<VARIANT> pVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrPropName,
            Pointer<VARIANT> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrPropName,
            Pointer<VARIANT> pVal,
          )>()(
        ptr.ref.lpVtbl,
        bstrPropName,
        pVal,
      );

  int CreateProperty(
    Pointer<Utf16> bstrPropName,
    Pointer<VARIANT> pVarPropValue,
    Pointer<Pointer<COMObject>> ppVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrPropName,
            Pointer<VARIANT> pVarPropValue,
            Pointer<Pointer<COMObject>> ppVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrPropName,
            Pointer<VARIANT> pVarPropValue,
            Pointer<Pointer<COMObject>> ppVal,
          )>()(
        ptr.ref.lpVtbl,
        bstrPropName,
        pVarPropValue,
        ppVal,
      );

  int DeleteProperty(
    Pointer<Utf16> bstrPropName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrPropName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrPropName,
          )>()(
        ptr.ref.lpVtbl,
        bstrPropName,
      );

  int InitializeFromProperties(
    Pointer<VARIANT> pVarProperties,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pVarProperties,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pVarProperties,
          )>()(
        ptr.ref.lpVtbl,
        pVarProperties,
      );

  int GetAllProperties(
    Pointer<VARIANT> pVarProperties,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pVarProperties,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pVarProperties,
          )>()(
        ptr.ref.lpVtbl,
        pVarProperties,
      );
}

/// @nodoc
const CLSID_OCSPPropertyCollection = '{F935A528-BA8A-4DD9-BA79-F283275CB2DE}';

/// {@category com}
class OCSPPropertyCollection extends IOCSPPropertyCollection {
  OCSPPropertyCollection(Pointer<COMObject> ptr) : super(ptr);

  factory OCSPPropertyCollection.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_OCSPPropertyCollection);
    final iid = calloc<GUID>()..ref.setGUID(IID_IOCSPPropertyCollection);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return OCSPPropertyCollection(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
