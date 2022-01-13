// IXMLDSOControl.dart

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
import '../../../data/xml/msxml/IXMLDOMDocument.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IXMLDSOControl = '{310AFA62-0575-11D2-9CA9-0060B0EC3D39}';

/// {@category Interface}
/// {@category com}
class IXMLDSOControl extends IDispatch {
  // vtable begins at 7, is 5 entries long.
  IXMLDSOControl(Pointer<COMObject> ptr) : super(ptr);

  Pointer<COMObject> get XMLDocument {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppDoc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppDoc,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set XMLDocument(Pointer<COMObject> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(8)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<COMObject> ppDoc,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<COMObject> ppDoc,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get JavaDSOCompatible {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> fJavaDSOCompatible,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> fJavaDSOCompatible,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set JavaDSOCompatible(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(10)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 fJavaDSOCompatible,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int fJavaDSOCompatible,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get readyState {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> state,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> state,
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
const CLSID_XMLDSOControl = '{550DDA30-0541-11D2-9CA9-0060B0EC3D39}';

/// {@category com}
class XMLDSOControl extends IXMLDSOControl {
  XMLDSOControl(Pointer<COMObject> ptr) : super(ptr);

  factory XMLDSOControl.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_XMLDSOControl);
    final iid = calloc<GUID>()..ref.setGUID(IID_IXMLDSOControl);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return XMLDSOControl(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
