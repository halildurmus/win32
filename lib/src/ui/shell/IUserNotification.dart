// IUserNotification.dart

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
import '../../ui/windowsandmessaging/structs.g.dart';
import '../../ui/shell/IQueryContinue.dart';

/// @nodoc
const IID_IUserNotification = '{BA9711BA-5893-4787-A7E1-41277151550B}';

/// {@category Interface}
/// {@category com}
class IUserNotification extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IUserNotification(Pointer<COMObject> ptr) : super(ptr);

  int SetBalloonInfo(
    Pointer<Utf16> pszTitle,
    Pointer<Utf16> pszText,
    int dwInfoFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszTitle,
            Pointer<Utf16> pszText,
            Uint32 dwInfoFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszTitle,
            Pointer<Utf16> pszText,
            int dwInfoFlags,
          )>()(
        ptr.ref.lpVtbl,
        pszTitle,
        pszText,
        dwInfoFlags,
      );

  int SetBalloonRetry(
    int dwShowTime,
    int dwInterval,
    int cRetryCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwShowTime,
            Uint32 dwInterval,
            Uint32 cRetryCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwShowTime,
            int dwInterval,
            int cRetryCount,
          )>()(
        ptr.ref.lpVtbl,
        dwShowTime,
        dwInterval,
        cRetryCount,
      );

  int SetIconInfo(
    int hIcon,
    Pointer<Utf16> pszToolTip,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hIcon,
            Pointer<Utf16> pszToolTip,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hIcon,
            Pointer<Utf16> pszToolTip,
          )>()(
        ptr.ref.lpVtbl,
        hIcon,
        pszToolTip,
      );

  int Show(
    Pointer<COMObject> pqc,
    int dwContinuePollInterval,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pqc,
            Uint32 dwContinuePollInterval,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pqc,
            int dwContinuePollInterval,
          )>()(
        ptr.ref.lpVtbl,
        pqc,
        dwContinuePollInterval,
      );

  int PlaySound(
    Pointer<Utf16> pszSoundName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszSoundName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszSoundName,
          )>()(
        ptr.ref.lpVtbl,
        pszSoundName,
      );
}

/// @nodoc
const CLSID_UserNotification = '{0010890E-8789-413C-ADBC-48F5B511B3AF}';

/// {@category com}
class UserNotification extends IUserNotification {
  UserNotification(Pointer<COMObject> ptr) : super(ptr);

  factory UserNotification.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_UserNotification);
    final iid = calloc<GUID>()..ref.setGUID(IID_IUserNotification);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return UserNotification(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
