// IDiskQuotaUser.dart

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
const IID_IDiskQuotaUser = '{7988B574-EC89-11CF-9C00-00AA00A14F56}';

/// {@category Interface}
/// {@category com}
class IDiskQuotaUser extends IUnknown {
  // vtable begins at 3, is 15 entries long.
  IDiskQuotaUser(Pointer<COMObject> ptr) : super(ptr);

  int GetID(
    Pointer<Uint32> pulID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulID,
          )>()(
        ptr.ref.lpVtbl,
        pulID,
      );

  int GetName(
    Pointer<Utf16> pszAccountContainer,
    int cchAccountContainer,
    Pointer<Utf16> pszLogonName,
    int cchLogonName,
    Pointer<Utf16> pszDisplayName,
    int cchDisplayName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszAccountContainer,
            Uint32 cchAccountContainer,
            Pointer<Utf16> pszLogonName,
            Uint32 cchLogonName,
            Pointer<Utf16> pszDisplayName,
            Uint32 cchDisplayName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszAccountContainer,
            int cchAccountContainer,
            Pointer<Utf16> pszLogonName,
            int cchLogonName,
            Pointer<Utf16> pszDisplayName,
            int cchDisplayName,
          )>()(
        ptr.ref.lpVtbl,
        pszAccountContainer,
        cchAccountContainer,
        pszLogonName,
        cchLogonName,
        pszDisplayName,
        cchDisplayName,
      );

  int GetSidLength(
    Pointer<Uint32> pdwLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwLength,
          )>()(
        ptr.ref.lpVtbl,
        pdwLength,
      );

  int GetSid(
    Pointer<Uint8> pbSidBuffer,
    int cbSidBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbSidBuffer,
            Uint32 cbSidBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbSidBuffer,
            int cbSidBuffer,
          )>()(
        ptr.ref.lpVtbl,
        pbSidBuffer,
        cbSidBuffer,
      );

  int GetQuotaThreshold(
    Pointer<Int64> pllThreshold,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int64> pllThreshold,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int64> pllThreshold,
          )>()(
        ptr.ref.lpVtbl,
        pllThreshold,
      );

  int GetQuotaThresholdText(
    Pointer<Utf16> pszText,
    int cchText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszText,
            Uint32 cchText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszText,
            int cchText,
          )>()(
        ptr.ref.lpVtbl,
        pszText,
        cchText,
      );

  int GetQuotaLimit(
    Pointer<Int64> pllLimit,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int64> pllLimit,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int64> pllLimit,
          )>()(
        ptr.ref.lpVtbl,
        pllLimit,
      );

  int GetQuotaLimitText(
    Pointer<Utf16> pszText,
    int cchText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszText,
            Uint32 cchText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszText,
            int cchText,
          )>()(
        ptr.ref.lpVtbl,
        pszText,
        cchText,
      );

  int GetQuotaUsed(
    Pointer<Int64> pllUsed,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int64> pllUsed,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int64> pllUsed,
          )>()(
        ptr.ref.lpVtbl,
        pllUsed,
      );

  int GetQuotaUsedText(
    Pointer<Utf16> pszText,
    int cchText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszText,
            Uint32 cchText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszText,
            int cchText,
          )>()(
        ptr.ref.lpVtbl,
        pszText,
        cchText,
      );

  int GetQuotaInformation(
    Pointer pbQuotaInfo,
    int cbQuotaInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer pbQuotaInfo,
            Uint32 cbQuotaInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pbQuotaInfo,
            int cbQuotaInfo,
          )>()(
        ptr.ref.lpVtbl,
        pbQuotaInfo,
        cbQuotaInfo,
      );

  int SetQuotaThreshold(
    int llThreshold,
    int fWriteThrough,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int64 llThreshold,
            Int32 fWriteThrough,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int llThreshold,
            int fWriteThrough,
          )>()(
        ptr.ref.lpVtbl,
        llThreshold,
        fWriteThrough,
      );

  int SetQuotaLimit(
    int llLimit,
    int fWriteThrough,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int64 llLimit,
            Int32 fWriteThrough,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int llLimit,
            int fWriteThrough,
          )>()(
        ptr.ref.lpVtbl,
        llLimit,
        fWriteThrough,
      );

  int Invalidate() => ptr.ref.lpVtbl.value
          .elementAt(16)
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

  int GetAccountStatus(
    Pointer<Uint32> pdwStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwStatus,
          )>()(
        ptr.ref.lpVtbl,
        pdwStatus,
      );
}
