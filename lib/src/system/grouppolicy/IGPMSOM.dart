// IGPMSOM.dart

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
import '../../system/grouppolicy/IGPMGPO.dart';
import '../../system/grouppolicy/IGPMGPOLink.dart';
import '../../system/grouppolicy/structs.g.dart';
import '../../system/grouppolicy/IGPMGPOLinksCollection.dart';
import '../../system/grouppolicy/IGPMSecurityInfo.dart';

/// @nodoc
const IID_IGPMSOM = '{C0A7F09E-05A1-4F0C-8158-9E5C33684F6B}';

/// {@category Interface}
/// {@category com}
class IGPMSOM extends IDispatch {
  // vtable begins at 7, is 10 entries long.
  IGPMSOM(Pointer<COMObject> ptr) : super(ptr);

  int get GPOInheritanceBlocked {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set GPOInheritanceBlocked(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(8)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int16 newVal,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int newVal,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<Utf16> get Name {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get Path {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int CreateGPOLink(
    int lLinkPos,
    Pointer<COMObject> pGPO,
    Pointer<Pointer<COMObject>> ppNewGPOLink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lLinkPos,
            Pointer<COMObject> pGPO,
            Pointer<Pointer<COMObject>> ppNewGPOLink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lLinkPos,
            Pointer<COMObject> pGPO,
            Pointer<Pointer<COMObject>> ppNewGPOLink,
          )>()(
        ptr.ref.lpVtbl,
        lLinkPos,
        pGPO,
        ppNewGPOLink,
      );

  int get Type {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int GetGPOLinks(
    Pointer<Pointer<COMObject>> ppGPOLinks,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppGPOLinks,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppGPOLinks,
          )>()(
        ptr.ref.lpVtbl,
        ppGPOLinks,
      );

  int GetInheritedGPOLinks(
    Pointer<Pointer<COMObject>> ppGPOLinks,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppGPOLinks,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppGPOLinks,
          )>()(
        ptr.ref.lpVtbl,
        ppGPOLinks,
      );

  int GetSecurityInfo(
    Pointer<Pointer<COMObject>> ppSecurityInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSecurityInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSecurityInfo,
          )>()(
        ptr.ref.lpVtbl,
        ppSecurityInfo,
      );

  int SetSecurityInfo(
    Pointer<COMObject> pSecurityInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSecurityInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSecurityInfo,
          )>()(
        ptr.ref.lpVtbl,
        pSecurityInfo,
      );
}

/// @nodoc
const CLSID_GPMSOM = '{32D93FAC-450E-44CF-829C-8B22FF6BDAE1}';

/// {@category com}
class GPMSOM extends IGPMSOM {
  GPMSOM(Pointer<COMObject> ptr) : super(ptr);

  factory GPMSOM.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_GPMSOM);
    final iid = calloc<GUID>()..ref.setGUID(IID_IGPMSOM);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return GPMSOM(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
