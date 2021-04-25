// UserDataPaths.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../ole32.dart';
import '../structs.dart';
import '../structs.g.dart';
import '../utils.dart';

import '../winrt/winrt_constants.dart';

import 'IInspectable.dart';

typedef _get_CameraRoll_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> value);
typedef _get_CameraRoll_Dart = int Function(Pointer obj, Pointer<IntPtr> value);

typedef _get_Cookies_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> value);
typedef _get_Cookies_Dart = int Function(Pointer obj, Pointer<IntPtr> value);

typedef _get_Desktop_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> value);
typedef _get_Desktop_Dart = int Function(Pointer obj, Pointer<IntPtr> value);

typedef _get_Documents_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> value);
typedef _get_Documents_Dart = int Function(Pointer obj, Pointer<IntPtr> value);

typedef _get_Downloads_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> value);
typedef _get_Downloads_Dart = int Function(Pointer obj, Pointer<IntPtr> value);

typedef _get_Favorites_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> value);
typedef _get_Favorites_Dart = int Function(Pointer obj, Pointer<IntPtr> value);

typedef _get_History_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> value);
typedef _get_History_Dart = int Function(Pointer obj, Pointer<IntPtr> value);

typedef _get_InternetCache_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> value);
typedef _get_InternetCache_Dart = int Function(
    Pointer obj, Pointer<IntPtr> value);

typedef _get_LocalAppData_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> value);
typedef _get_LocalAppData_Dart = int Function(
    Pointer obj, Pointer<IntPtr> value);

typedef _get_LocalAppDataLow_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> value);
typedef _get_LocalAppDataLow_Dart = int Function(
    Pointer obj, Pointer<IntPtr> value);

typedef _get_Music_Native = Int32 Function(Pointer obj, Pointer<IntPtr> value);
typedef _get_Music_Dart = int Function(Pointer obj, Pointer<IntPtr> value);

typedef _get_Pictures_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> value);
typedef _get_Pictures_Dart = int Function(Pointer obj, Pointer<IntPtr> value);

typedef _get_Profile_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> value);
typedef _get_Profile_Dart = int Function(Pointer obj, Pointer<IntPtr> value);

typedef _get_Recent_Native = Int32 Function(Pointer obj, Pointer<IntPtr> value);
typedef _get_Recent_Dart = int Function(Pointer obj, Pointer<IntPtr> value);

typedef _get_RoamingAppData_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> value);
typedef _get_RoamingAppData_Dart = int Function(
    Pointer obj, Pointer<IntPtr> value);

typedef _get_SavedPictures_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> value);
typedef _get_SavedPictures_Dart = int Function(
    Pointer obj, Pointer<IntPtr> value);

typedef _get_Screenshots_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> value);
typedef _get_Screenshots_Dart = int Function(
    Pointer obj, Pointer<IntPtr> value);

typedef _get_Templates_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> value);
typedef _get_Templates_Dart = int Function(Pointer obj, Pointer<IntPtr> value);

typedef _get_Videos_Native = Int32 Function(Pointer obj, Pointer<IntPtr> value);
typedef _get_Videos_Dart = int Function(Pointer obj, Pointer<IntPtr> value);

typedef _GetForUser_Native = Int32 Function(
    Pointer obj, Pointer user, Pointer<Pointer> result);
typedef _GetForUser_Dart = int Function(
    Pointer obj, Pointer user, Pointer<Pointer> result);

typedef _GetDefault_Native = Int32 Function(
    Pointer obj, Pointer<Pointer> result);
typedef _GetDefault_Dart = int Function(Pointer obj, Pointer<Pointer> result);

/// {@category Interface}
/// {@category winrt}
class UserDataPaths extends IInspectable {
  // vtable begins at 6, ends at 26

  UserDataPaths(Pointer<COMObject> ptr) : super(ptr);

  int get CameraRoll {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = Pointer<NativeFunction<_get_CameraRoll_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(6).value)
          .asFunction<_get_CameraRoll_Dart>()(ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get Cookies {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = Pointer<NativeFunction<_get_Cookies_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(7).value)
          .asFunction<_get_Cookies_Dart>()(ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get Desktop {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = Pointer<NativeFunction<_get_Desktop_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(8).value)
          .asFunction<_get_Desktop_Dart>()(ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get Documents {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = Pointer<NativeFunction<_get_Documents_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(9).value)
          .asFunction<_get_Documents_Dart>()(ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get Downloads {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = Pointer<NativeFunction<_get_Downloads_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(10).value)
          .asFunction<_get_Downloads_Dart>()(ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get Favorites {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = Pointer<NativeFunction<_get_Favorites_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(11).value)
          .asFunction<_get_Favorites_Dart>()(ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get History {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = Pointer<NativeFunction<_get_History_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(12).value)
          .asFunction<_get_History_Dart>()(ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get InternetCache {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = Pointer<NativeFunction<_get_InternetCache_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(13).value)
          .asFunction<_get_InternetCache_Dart>()(ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get LocalAppData {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = Pointer<NativeFunction<_get_LocalAppData_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(14).value)
          .asFunction<_get_LocalAppData_Dart>()(ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get LocalAppDataLow {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr =
          Pointer<NativeFunction<_get_LocalAppDataLow_Native>>.fromAddress(
                      ptr.ref.vtable.elementAt(15).value)
                  .asFunction<_get_LocalAppDataLow_Dart>()(
              ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get Music {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = Pointer<NativeFunction<_get_Music_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(16).value)
          .asFunction<_get_Music_Dart>()(ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get Pictures {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = Pointer<NativeFunction<_get_Pictures_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(17).value)
          .asFunction<_get_Pictures_Dart>()(ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get Profile {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = Pointer<NativeFunction<_get_Profile_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(18).value)
          .asFunction<_get_Profile_Dart>()(ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get Recent {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = Pointer<NativeFunction<_get_Recent_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(19).value)
          .asFunction<_get_Recent_Dart>()(ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get RoamingAppData {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr =
          Pointer<NativeFunction<_get_RoamingAppData_Native>>.fromAddress(
                      ptr.ref.vtable.elementAt(20).value)
                  .asFunction<_get_RoamingAppData_Dart>()(
              ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get SavedPictures {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = Pointer<NativeFunction<_get_SavedPictures_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(21).value)
          .asFunction<_get_SavedPictures_Dart>()(ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get Screenshots {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = Pointer<NativeFunction<_get_Screenshots_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(22).value)
          .asFunction<_get_Screenshots_Dart>()(ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get Templates {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = Pointer<NativeFunction<_get_Templates_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(23).value)
          .asFunction<_get_Templates_Dart>()(ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get Videos {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = Pointer<NativeFunction<_get_Videos_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(24).value)
          .asFunction<_get_Videos_Dart>()(ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int GetForUser(Pointer user, Pointer<Pointer> result) =>
      Pointer<NativeFunction<_GetForUser_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(25).value)
          .asFunction<_GetForUser_Dart>()(ptr.ref.lpVtbl, user, result);

  int GetDefault(Pointer<Pointer> result) =>
      Pointer<NativeFunction<_GetDefault_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(26).value)
          .asFunction<_GetDefault_Dart>()(ptr.ref.lpVtbl, result);
}
