// ICatalog.dart

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

/// @nodoc
const IID_ICatalog = '{6EB22870-8A19-11D0-81B6-00A0C9231C29}';

/// {@category Interface}
/// {@category com}
class ICatalog extends IDispatch {
  // vtable begins at 7, is 4 entries long.
  ICatalog(Pointer<COMObject> ptr) : super(ptr);

  int GetCollection(
    Pointer<Utf16> bstrCollName,
    Pointer<Pointer<COMObject>> ppCatalogCollection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrCollName,
            Pointer<Pointer<COMObject>> ppCatalogCollection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrCollName,
            Pointer<Pointer<COMObject>> ppCatalogCollection,
          )>()(
        ptr.ref.lpVtbl,
        bstrCollName,
        ppCatalogCollection,
      );

  int Connect(
    Pointer<Utf16> bstrConnectString,
    Pointer<Pointer<COMObject>> ppCatalogCollection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrConnectString,
            Pointer<Pointer<COMObject>> ppCatalogCollection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrConnectString,
            Pointer<Pointer<COMObject>> ppCatalogCollection,
          )>()(
        ptr.ref.lpVtbl,
        bstrConnectString,
        ppCatalogCollection,
      );

  int get MajorVersion {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> retval,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> retval,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get MinorVersion {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> retval,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> retval,
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
const CLSID_Catalog = '{6EB22881-8A19-11D0-81B6-00A0C9231C29}';

/// {@category com}
class Catalog extends ICatalog {
  Catalog(Pointer<COMObject> ptr) : super(ptr);

  factory Catalog.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_Catalog);
    final iid = calloc<GUID>()..ref.setGUID(IID_ICatalog);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return Catalog(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
