// IInkDivider.dart

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
import '../../ui/tabletpc/IInkStrokes.dart';
import '../../foundation/structs.g.dart';
import '../../ui/tabletpc/IInkRecognizerContext.dart';
import '../../ui/tabletpc/IInkDivisionResult.dart';

/// @nodoc
const IID_IInkDivider = '{5DE00405-F9A4-4651-B0C5-C317DEFD58B9}';

/// {@category Interface}
/// {@category com}
class IInkDivider extends IDispatch {
  // vtable begins at 7, is 7 entries long.
  IInkDivider(Pointer<COMObject> ptr) : super(ptr);

  Pointer<COMObject> get Strokes {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> Strokes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> Strokes,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int putref_Strokes(
    Pointer<COMObject> Strokes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> Strokes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> Strokes,
          )>()(
        ptr.ref.lpVtbl,
        Strokes,
      );

  Pointer<COMObject> get RecognizerContext {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> RecognizerContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> RecognizerContext,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int putref_RecognizerContext(
    Pointer<COMObject> RecognizerContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> RecognizerContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> RecognizerContext,
          )>()(
        ptr.ref.lpVtbl,
        RecognizerContext,
      );

  int get LineHeight {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> LineHeight,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> LineHeight,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set LineHeight(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(12)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 LineHeight,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int LineHeight,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int Divide(
    Pointer<Pointer<COMObject>> InkDivisionResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> InkDivisionResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> InkDivisionResult,
          )>()(
        ptr.ref.lpVtbl,
        InkDivisionResult,
      );
}

/// @nodoc
const CLSID_InkDivider = '{8854F6A0-4683-4AE7-9191-752FE64612C3}';

/// {@category com}
class InkDivider extends IInkDivider {
  InkDivider(Pointer<COMObject> ptr) : super(ptr);

  factory InkDivider.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_InkDivider);
    final iid = calloc<GUID>()..ref.setGUID(IID_IInkDivider);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return InkDivider(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
