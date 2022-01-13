// IPTFilterLicenseRenewal.dart

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
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IPTFilterLicenseRenewal = '{26D836A5-0C15-44C7-AC59-B0DA8728F240}';

/// {@category Interface}
/// {@category com}
class IPTFilterLicenseRenewal extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IPTFilterLicenseRenewal(Pointer<COMObject> ptr) : super(ptr);

  int RenewLicenses(
    Pointer<Utf16> wszFileName,
    Pointer<Utf16> wszExpiredKid,
    int dwCallersId,
    int bHighPriority,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> wszFileName,
            Pointer<Utf16> wszExpiredKid,
            Uint32 dwCallersId,
            Int32 bHighPriority,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> wszFileName,
            Pointer<Utf16> wszExpiredKid,
            int dwCallersId,
            int bHighPriority,
          )>()(
        ptr.ref.lpVtbl,
        wszFileName,
        wszExpiredKid,
        dwCallersId,
        bHighPriority,
      );

  int CancelLicenseRenewal() => ptr.ref.lpVtbl.value
          .elementAt(4)
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
