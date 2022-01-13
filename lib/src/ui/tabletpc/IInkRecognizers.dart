// IInkRecognizers.dart

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
import '../../specialTypes.dart';
import '../../ui/tabletpc/IInkRecognizer.dart';

/// @nodoc
const IID_IInkRecognizers = '{9CCC4F12-B0B7-4A8B-BF58-4AECA4E8CEFD}';

/// {@category Interface}
/// {@category com}
class IInkRecognizers extends IDispatch {
  // vtable begins at 7, is 4 entries long.
  IInkRecognizers(Pointer<COMObject> ptr) : super(ptr);

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
            Pointer<Int32> Count,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> Count,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get NewEnum {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> NewEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> NewEnum,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int GetDefaultRecognizer(
    int lcid,
    Pointer<Pointer<COMObject>> DefaultRecognizer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lcid,
            Pointer<Pointer<COMObject>> DefaultRecognizer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lcid,
            Pointer<Pointer<COMObject>> DefaultRecognizer,
          )>()(
        ptr.ref.lpVtbl,
        lcid,
        DefaultRecognizer,
      );

  int Item(
    int Index,
    Pointer<Pointer<COMObject>> InkRecognizer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Index,
            Pointer<Pointer<COMObject>> InkRecognizer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Pointer<COMObject>> InkRecognizer,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        InkRecognizer,
      );
}

/// @nodoc
const CLSID_InkRecognizers = '{9FD4E808-F6E6-4E65-98D3-AA39054C1255}';

/// {@category com}
class InkRecognizers extends IInkRecognizers {
  InkRecognizers(Pointer<COMObject> ptr) : super(ptr);

  factory InkRecognizers.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_InkRecognizers);
    final iid = calloc<GUID>()..ref.setGUID(IID_IInkRecognizers);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return InkRecognizers(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
