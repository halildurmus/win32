// IGPMSitesContainer.dart

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
import '../../system/grouppolicy/IGPMSOM.dart';
import '../../system/grouppolicy/IGPMSearchCriteria.dart';
import '../../system/grouppolicy/IGPMSOMCollection.dart';

/// @nodoc
const IID_IGPMSitesContainer = '{4725A899-2782-4D27-A6BB-D499246FFD72}';

/// {@category Interface}
/// {@category com}
class IGPMSitesContainer extends IDispatch {
  // vtable begins at 7, is 5 entries long.
  IGPMSitesContainer(Pointer<COMObject> ptr) : super(ptr);

  Pointer<Utf16> get DomainController {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
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

  Pointer<Utf16> get Domain {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
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

  Pointer<Utf16> get Forest {
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

  int GetSite(
    Pointer<Utf16> bstrSiteName,
    Pointer<Pointer<COMObject>> ppSOM,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrSiteName,
            Pointer<Pointer<COMObject>> ppSOM,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrSiteName,
            Pointer<Pointer<COMObject>> ppSOM,
          )>()(
        ptr.ref.lpVtbl,
        bstrSiteName,
        ppSOM,
      );

  int SearchSites(
    Pointer<COMObject> pIGPMSearchCriteria,
    Pointer<Pointer<COMObject>> ppIGPMSOMCollection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIGPMSearchCriteria,
            Pointer<Pointer<COMObject>> ppIGPMSOMCollection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIGPMSearchCriteria,
            Pointer<Pointer<COMObject>> ppIGPMSOMCollection,
          )>()(
        ptr.ref.lpVtbl,
        pIGPMSearchCriteria,
        ppIGPMSOMCollection,
      );
}

/// @nodoc
const CLSID_GPMSitesContainer = '{229F5C42-852C-4B30-945F-C522BE9BD386}';

/// {@category com}
class GPMSitesContainer extends IGPMSitesContainer {
  GPMSitesContainer(Pointer<COMObject> ptr) : super(ptr);

  factory GPMSitesContainer.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_GPMSitesContainer);
    final iid = calloc<GUID>()..ref.setGUID(IID_IGPMSitesContainer);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return GPMSitesContainer(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
