// IRDPSRAPIInvitationManager.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../system/desktopsharing/IRDPSRAPIInvitation.dart';

/// @nodoc
const IID_IRDPSRAPIInvitationManager = '{4722B049-92C3-4C2D-8A65-F7348F644DCF}';

/// {@category Interface}
/// {@category com}
class IRDPSRAPIInvitationManager extends IDispatch {
  // vtable begins at 7, is 4 entries long.
  IRDPSRAPIInvitationManager(Pointer<COMObject> ptr) : super(ptr);

  Pointer<COMObject> get NewEnum {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> retval,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> retval,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get_Item(
    VARIANT item,
    Pointer<Pointer<COMObject>> ppInvitation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT item,
            Pointer<Pointer<COMObject>> ppInvitation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT item,
            Pointer<Pointer<COMObject>> ppInvitation,
          )>()(
        ptr.ref.lpVtbl,
        item,
        ppInvitation,
      );

  int get Count {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pRetVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pRetVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int CreateInvitation(
    Pointer<Utf16> bstrAuthString,
    Pointer<Utf16> bstrGroupName,
    Pointer<Utf16> bstrPassword,
    int AttendeeLimit,
    Pointer<Pointer<COMObject>> ppInvitation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrAuthString,
            Pointer<Utf16> bstrGroupName,
            Pointer<Utf16> bstrPassword,
            Int32 AttendeeLimit,
            Pointer<Pointer<COMObject>> ppInvitation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrAuthString,
            Pointer<Utf16> bstrGroupName,
            Pointer<Utf16> bstrPassword,
            int AttendeeLimit,
            Pointer<Pointer<COMObject>> ppInvitation,
          )>()(
        ptr.ref.lpVtbl,
        bstrAuthString,
        bstrGroupName,
        bstrPassword,
        AttendeeLimit,
        ppInvitation,
      );
}

/// @nodoc
const CLSID_RDPSRAPIInvitationManager =
    '{53D9C9DB-75AB-4271-948A-4C4EB36A8F2B}';

/// {@category com}
class RDPSRAPIInvitationManager extends IRDPSRAPIInvitationManager {
  RDPSRAPIInvitationManager(Pointer<COMObject> ptr) : super(ptr);

  factory RDPSRAPIInvitationManager.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_RDPSRAPIInvitationManager);
    final iid = calloc<GUID>()..ref.setGUID(IID_IRDPSRAPIInvitationManager);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return RDPSRAPIInvitationManager(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
