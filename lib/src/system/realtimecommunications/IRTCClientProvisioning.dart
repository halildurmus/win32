// IRTCClientProvisioning.dart

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
import '../../system/realtimecommunications/IRTCProfile.dart';
import '../../system/realtimecommunications/IRTCEnumProfiles.dart';
import '../../system/realtimecommunications/IRTCCollection.dart';

/// @nodoc
const IID_IRTCClientProvisioning = '{B9F5CF06-65B9-4A80-A0E6-73CAE3EF3822}';

/// {@category Interface}
/// {@category com}
class IRTCClientProvisioning extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IRTCClientProvisioning(Pointer<COMObject> ptr) : super(ptr);

  int CreateProfile(
    Pointer<Utf16> bstrProfileXML,
    Pointer<Pointer<COMObject>> ppProfile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrProfileXML,
            Pointer<Pointer<COMObject>> ppProfile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrProfileXML,
            Pointer<Pointer<COMObject>> ppProfile,
          )>()(
        ptr.ref.lpVtbl,
        bstrProfileXML,
        ppProfile,
      );

  int EnableProfile(
    Pointer<COMObject> pProfile,
    int lRegisterFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pProfile,
            Int32 lRegisterFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pProfile,
            int lRegisterFlags,
          )>()(
        ptr.ref.lpVtbl,
        pProfile,
        lRegisterFlags,
      );

  int DisableProfile(
    Pointer<COMObject> pProfile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pProfile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pProfile,
          )>()(
        ptr.ref.lpVtbl,
        pProfile,
      );

  int EnumerateProfiles(
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        ppEnum,
      );

  Pointer<COMObject> get Profiles {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppCollection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppCollection,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int GetProfile(
    Pointer<Utf16> bstrUserAccount,
    Pointer<Utf16> bstrUserPassword,
    Pointer<Utf16> bstrUserURI,
    Pointer<Utf16> bstrServer,
    int lTransport,
    int lCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrUserAccount,
            Pointer<Utf16> bstrUserPassword,
            Pointer<Utf16> bstrUserURI,
            Pointer<Utf16> bstrServer,
            Int32 lTransport,
            IntPtr lCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrUserAccount,
            Pointer<Utf16> bstrUserPassword,
            Pointer<Utf16> bstrUserURI,
            Pointer<Utf16> bstrServer,
            int lTransport,
            int lCookie,
          )>()(
        ptr.ref.lpVtbl,
        bstrUserAccount,
        bstrUserPassword,
        bstrUserURI,
        bstrServer,
        lTransport,
        lCookie,
      );

  int get SessionCapabilities {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plSupportedSessions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plSupportedSessions,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
