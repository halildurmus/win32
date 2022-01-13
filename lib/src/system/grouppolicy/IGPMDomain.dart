// IGPMDomain.dart

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
import '../../system/grouppolicy/IGPMSearchCriteria.dart';
import '../../system/grouppolicy/IGPMGPOCollection.dart';
import '../../system/grouppolicy/IGPMBackup.dart';
import '../../specialTypes.dart';
import '../../system/grouppolicy/IGPMResult.dart';
import '../../system/grouppolicy/IGPMSOM.dart';
import '../../system/grouppolicy/IGPMSOMCollection.dart';
import '../../system/grouppolicy/IGPMWMIFilter.dart';
import '../../system/grouppolicy/IGPMWMIFilterCollection.dart';

/// @nodoc
const IID_IGPMDomain = '{6B21CC14-5A00-4F44-A738-FEEC8A94C7E3}';

/// {@category Interface}
/// {@category com}
class IGPMDomain extends IDispatch {
  // vtable begins at 7, is 10 entries long.
  IGPMDomain(Pointer<COMObject> ptr) : super(ptr);

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

  int CreateGPO(
    Pointer<Pointer<COMObject>> ppNewGPO,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppNewGPO,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppNewGPO,
          )>()(
        ptr.ref.lpVtbl,
        ppNewGPO,
      );

  int GetGPO(
    Pointer<Utf16> bstrGuid,
    Pointer<Pointer<COMObject>> ppGPO,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrGuid,
            Pointer<Pointer<COMObject>> ppGPO,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrGuid,
            Pointer<Pointer<COMObject>> ppGPO,
          )>()(
        ptr.ref.lpVtbl,
        bstrGuid,
        ppGPO,
      );

  int SearchGPOs(
    Pointer<COMObject> pIGPMSearchCriteria,
    Pointer<Pointer<COMObject>> ppIGPMGPOCollection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIGPMSearchCriteria,
            Pointer<Pointer<COMObject>> ppIGPMGPOCollection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIGPMSearchCriteria,
            Pointer<Pointer<COMObject>> ppIGPMGPOCollection,
          )>()(
        ptr.ref.lpVtbl,
        pIGPMSearchCriteria,
        ppIGPMGPOCollection,
      );

  int RestoreGPO(
    Pointer<COMObject> pIGPMBackup,
    int lDCFlags,
    Pointer<VARIANT> pvarGPMProgress,
    Pointer<VARIANT> pvarGPMCancel,
    Pointer<Pointer<COMObject>> ppIGPMResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIGPMBackup,
            Int32 lDCFlags,
            Pointer<VARIANT> pvarGPMProgress,
            Pointer<VARIANT> pvarGPMCancel,
            Pointer<Pointer<COMObject>> ppIGPMResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIGPMBackup,
            int lDCFlags,
            Pointer<VARIANT> pvarGPMProgress,
            Pointer<VARIANT> pvarGPMCancel,
            Pointer<Pointer<COMObject>> ppIGPMResult,
          )>()(
        ptr.ref.lpVtbl,
        pIGPMBackup,
        lDCFlags,
        pvarGPMProgress,
        pvarGPMCancel,
        ppIGPMResult,
      );

  int GetSOM(
    Pointer<Utf16> bstrPath,
    Pointer<Pointer<COMObject>> ppSOM,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrPath,
            Pointer<Pointer<COMObject>> ppSOM,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrPath,
            Pointer<Pointer<COMObject>> ppSOM,
          )>()(
        ptr.ref.lpVtbl,
        bstrPath,
        ppSOM,
      );

  int SearchSOMs(
    Pointer<COMObject> pIGPMSearchCriteria,
    Pointer<Pointer<COMObject>> ppIGPMSOMCollection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
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

  int GetWMIFilter(
    Pointer<Utf16> bstrPath,
    Pointer<Pointer<COMObject>> ppWMIFilter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrPath,
            Pointer<Pointer<COMObject>> ppWMIFilter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrPath,
            Pointer<Pointer<COMObject>> ppWMIFilter,
          )>()(
        ptr.ref.lpVtbl,
        bstrPath,
        ppWMIFilter,
      );

  int SearchWMIFilters(
    Pointer<COMObject> pIGPMSearchCriteria,
    Pointer<Pointer<COMObject>> ppIGPMWMIFilterCollection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIGPMSearchCriteria,
            Pointer<Pointer<COMObject>> ppIGPMWMIFilterCollection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIGPMSearchCriteria,
            Pointer<Pointer<COMObject>> ppIGPMWMIFilterCollection,
          )>()(
        ptr.ref.lpVtbl,
        pIGPMSearchCriteria,
        ppIGPMWMIFilterCollection,
      );
}

/// @nodoc
const CLSID_GPMDomain = '{710901BE-1050-4CB1-838A-C5CFF259E183}';

/// {@category com}
class GPMDomain extends IGPMDomain {
  GPMDomain(Pointer<COMObject> ptr) : super(ptr);

  factory GPMDomain.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_GPMDomain);
    final iid = calloc<GUID>()..ref.setGUID(IID_IGPMDomain);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return GPMDomain(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
