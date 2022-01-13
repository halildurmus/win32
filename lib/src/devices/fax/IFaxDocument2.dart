// IFaxDocument2.dart

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

import '../../devices/fax/IFaxDocument.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';
import '../../devices/fax/IFaxServer.dart';

/// @nodoc
const IID_IFaxDocument2 = '{E1347661-F9EF-4D6D-B4A5-C0A068B65CFF}';

/// {@category Interface}
/// {@category com}
class IFaxDocument2 extends IFaxDocument {
  // vtable begins at 41, is 5 entries long.
  IFaxDocument2(Pointer<COMObject> ptr) : super(ptr);

  Pointer<Utf16> get SubmissionId {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(41)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrSubmissionId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrSubmissionId,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  VARIANT get Bodies {
    final retValuePtr = calloc<VARIANT>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(42)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pvBodies,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pvBodies,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set Bodies(VARIANT value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(43)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          VARIANT vBodies,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          VARIANT vBodies,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int Submit2(
    Pointer<Utf16> bstrFaxServerName,
    Pointer<VARIANT> pvFaxOutgoingJobIDs,
    Pointer<Int32> plErrorBodyFile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(44)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrFaxServerName,
            Pointer<VARIANT> pvFaxOutgoingJobIDs,
            Pointer<Int32> plErrorBodyFile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrFaxServerName,
            Pointer<VARIANT> pvFaxOutgoingJobIDs,
            Pointer<Int32> plErrorBodyFile,
          )>()(
        ptr.ref.lpVtbl,
        bstrFaxServerName,
        pvFaxOutgoingJobIDs,
        plErrorBodyFile,
      );

  int ConnectedSubmit2(
    Pointer<COMObject> pFaxServer,
    Pointer<VARIANT> pvFaxOutgoingJobIDs,
    Pointer<Int32> plErrorBodyFile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(45)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFaxServer,
            Pointer<VARIANT> pvFaxOutgoingJobIDs,
            Pointer<Int32> plErrorBodyFile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFaxServer,
            Pointer<VARIANT> pvFaxOutgoingJobIDs,
            Pointer<Int32> plErrorBodyFile,
          )>()(
        ptr.ref.lpVtbl,
        pFaxServer,
        pvFaxOutgoingJobIDs,
        plErrorBodyFile,
      );
}
