// IDiskQuotaControl.dart

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

import '../../system/com/IConnectionPointContainer.dart';
import '../../foundation/structs.g.dart';
import '../../storage/filesystem/structs.g.dart';
import '../../storage/filesystem/IDiskQuotaUser.dart';
import '../../storage/filesystem/IEnumDiskQuotaUsers.dart';
import '../../storage/filesystem/IDiskQuotaUserBatch.dart';

/// @nodoc
const IID_IDiskQuotaControl = '{7988B572-EC89-11CF-9C00-00AA00A14F56}';

/// {@category Interface}
/// {@category com}
class IDiskQuotaControl extends IConnectionPointContainer {
  // vtable begins at 5, is 21 entries long.
  IDiskQuotaControl(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<Utf16> pszPath,
    int bReadWrite,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPath,
            Int32 bReadWrite,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPath,
            int bReadWrite,
          )>()(
        ptr.ref.lpVtbl,
        pszPath,
        bReadWrite,
      );

  int SetQuotaState(
    int dwState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwState,
          )>()(
        ptr.ref.lpVtbl,
        dwState,
      );

  int GetQuotaState(
    Pointer<Uint32> pdwState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwState,
          )>()(
        ptr.ref.lpVtbl,
        pdwState,
      );

  int SetQuotaLogFlags(
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
      );

  int GetQuotaLogFlags(
    Pointer<Uint32> pdwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwFlags,
          )>()(
        ptr.ref.lpVtbl,
        pdwFlags,
      );

  int SetDefaultQuotaThreshold(
    int llThreshold,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int64 llThreshold,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int llThreshold,
          )>()(
        ptr.ref.lpVtbl,
        llThreshold,
      );

  int GetDefaultQuotaThreshold(
    Pointer<Int64> pllThreshold,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
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

  int GetDefaultQuotaThresholdText(
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

  int SetDefaultQuotaLimit(
    int llLimit,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int64 llLimit,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int llLimit,
          )>()(
        ptr.ref.lpVtbl,
        llLimit,
      );

  int GetDefaultQuotaLimit(
    Pointer<Int64> pllLimit,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
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

  int GetDefaultQuotaLimitText(
    Pointer<Utf16> pszText,
    int cchText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
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

  int AddUserSid(
    int pUserSid,
    int fNameResolution,
    Pointer<Pointer<COMObject>> ppUser,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr pUserSid,
            Uint32 fNameResolution,
            Pointer<Pointer<COMObject>> ppUser,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int pUserSid,
            int fNameResolution,
            Pointer<Pointer<COMObject>> ppUser,
          )>()(
        ptr.ref.lpVtbl,
        pUserSid,
        fNameResolution,
        ppUser,
      );

  int AddUserName(
    Pointer<Utf16> pszLogonName,
    int fNameResolution,
    Pointer<Pointer<COMObject>> ppUser,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszLogonName,
            Uint32 fNameResolution,
            Pointer<Pointer<COMObject>> ppUser,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszLogonName,
            int fNameResolution,
            Pointer<Pointer<COMObject>> ppUser,
          )>()(
        ptr.ref.lpVtbl,
        pszLogonName,
        fNameResolution,
        ppUser,
      );

  int DeleteUser(
    Pointer<COMObject> pUser,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pUser,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pUser,
          )>()(
        ptr.ref.lpVtbl,
        pUser,
      );

  int FindUserSid(
    int pUserSid,
    int fNameResolution,
    Pointer<Pointer<COMObject>> ppUser,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr pUserSid,
            Uint32 fNameResolution,
            Pointer<Pointer<COMObject>> ppUser,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int pUserSid,
            int fNameResolution,
            Pointer<Pointer<COMObject>> ppUser,
          )>()(
        ptr.ref.lpVtbl,
        pUserSid,
        fNameResolution,
        ppUser,
      );

  int FindUserName(
    Pointer<Utf16> pszLogonName,
    Pointer<Pointer<COMObject>> ppUser,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszLogonName,
            Pointer<Pointer<COMObject>> ppUser,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszLogonName,
            Pointer<Pointer<COMObject>> ppUser,
          )>()(
        ptr.ref.lpVtbl,
        pszLogonName,
        ppUser,
      );

  int CreateEnumUsers(
    Pointer<IntPtr> rgpUserSids,
    int cpSids,
    int fNameResolution,
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> rgpUserSids,
            Uint32 cpSids,
            Uint32 fNameResolution,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> rgpUserSids,
            int cpSids,
            int fNameResolution,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        rgpUserSids,
        cpSids,
        fNameResolution,
        ppEnum,
      );

  int CreateUserBatch(
    Pointer<Pointer<COMObject>> ppBatch,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppBatch,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppBatch,
          )>()(
        ptr.ref.lpVtbl,
        ppBatch,
      );

  int InvalidateSidNameCache() => ptr.ref.lpVtbl.value
          .elementAt(23)
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

  int GiveUserNameResolutionPriority(
    Pointer<COMObject> pUser,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pUser,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pUser,
          )>()(
        ptr.ref.lpVtbl,
        pUser,
      );

  int ShutdownNameResolution() => ptr.ref.lpVtbl.value
          .elementAt(25)
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
