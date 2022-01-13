// ISharingConfigurationManager.dart

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

import '../../system/com/IUnknown.dart';
import '../../ui/shell/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISharingConfigurationManager =
    '{B4CD448A-9C86-4466-9201-2E62105B87AE}';

/// {@category Interface}
/// {@category com}
class ISharingConfigurationManager extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  ISharingConfigurationManager(Pointer<COMObject> ptr) : super(ptr);

  int CreateShare(
    int dsid,
    int role,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 dsid,
            Int32 role,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dsid,
            int role,
          )>()(
        ptr.ref.lpVtbl,
        dsid,
        role,
      );

  int DeleteShare(
    int dsid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 dsid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dsid,
          )>()(
        ptr.ref.lpVtbl,
        dsid,
      );

  int ShareExists(
    int dsid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 dsid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dsid,
          )>()(
        ptr.ref.lpVtbl,
        dsid,
      );

  int GetSharePermissions(
    int dsid,
    Pointer<Int32> pRole,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 dsid,
            Pointer<Int32> pRole,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dsid,
            Pointer<Int32> pRole,
          )>()(
        ptr.ref.lpVtbl,
        dsid,
        pRole,
      );

  int SharePrinters() => ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int StopSharingPrinters() => ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int ArePrintersShared() => ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}

/// @nodoc
const CLSID_SharingConfigurationManager =
    '{49F371E1-8C5C-4D9C-9A3B-54A6827F513C}';

/// {@category com}
class SharingConfigurationManager extends ISharingConfigurationManager {
  SharingConfigurationManager(Pointer<COMObject> ptr) : super(ptr);

  factory SharingConfigurationManager.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()
      ..ref.setGUID(CLSID_SharingConfigurationManager);
    final iid = calloc<GUID>()..ref.setGUID(IID_ISharingConfigurationManager);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return SharingConfigurationManager(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
