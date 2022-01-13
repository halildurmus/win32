// IUPnPServiceAsync.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../foundation/structs.g.dart';
import '../../../specialTypes.dart';
import '../../../devices/enumeration/pnp/IUPnPAsyncResult.dart';

/// @nodoc
const IID_IUPnPServiceAsync = '{098BDAF5-5EC1-49E7-A260-B3A11DD8680C}';

/// {@category Interface}
/// {@category com}
class IUPnPServiceAsync extends IUnknown {
  // vtable begins at 3, is 9 entries long.
  IUPnPServiceAsync(Pointer<COMObject> ptr) : super(ptr);

  int BeginInvokeAction(
    Pointer<Utf16> bstrActionName,
    VARIANT vInActionArgs,
    Pointer<COMObject> pAsyncResult,
    Pointer<Uint64> pullRequestID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrActionName,
            VARIANT vInActionArgs,
            Pointer<COMObject> pAsyncResult,
            Pointer<Uint64> pullRequestID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrActionName,
            VARIANT vInActionArgs,
            Pointer<COMObject> pAsyncResult,
            Pointer<Uint64> pullRequestID,
          )>()(
        ptr.ref.lpVtbl,
        bstrActionName,
        vInActionArgs,
        pAsyncResult,
        pullRequestID,
      );

  int EndInvokeAction(
    int ullRequestID,
    Pointer<VARIANT> pvOutActionArgs,
    Pointer<VARIANT> pvRetVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 ullRequestID,
            Pointer<VARIANT> pvOutActionArgs,
            Pointer<VARIANT> pvRetVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ullRequestID,
            Pointer<VARIANT> pvOutActionArgs,
            Pointer<VARIANT> pvRetVal,
          )>()(
        ptr.ref.lpVtbl,
        ullRequestID,
        pvOutActionArgs,
        pvRetVal,
      );

  int BeginQueryStateVariable(
    Pointer<Utf16> bstrVariableName,
    Pointer<COMObject> pAsyncResult,
    Pointer<Uint64> pullRequestID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrVariableName,
            Pointer<COMObject> pAsyncResult,
            Pointer<Uint64> pullRequestID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrVariableName,
            Pointer<COMObject> pAsyncResult,
            Pointer<Uint64> pullRequestID,
          )>()(
        ptr.ref.lpVtbl,
        bstrVariableName,
        pAsyncResult,
        pullRequestID,
      );

  int EndQueryStateVariable(
    int ullRequestID,
    Pointer<VARIANT> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 ullRequestID,
            Pointer<VARIANT> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ullRequestID,
            Pointer<VARIANT> pValue,
          )>()(
        ptr.ref.lpVtbl,
        ullRequestID,
        pValue,
      );

  int BeginSubscribeToEvents(
    Pointer<COMObject> pUnkCallback,
    Pointer<COMObject> pAsyncResult,
    Pointer<Uint64> pullRequestID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pUnkCallback,
            Pointer<COMObject> pAsyncResult,
            Pointer<Uint64> pullRequestID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pUnkCallback,
            Pointer<COMObject> pAsyncResult,
            Pointer<Uint64> pullRequestID,
          )>()(
        ptr.ref.lpVtbl,
        pUnkCallback,
        pAsyncResult,
        pullRequestID,
      );

  int EndSubscribeToEvents(
    int ullRequestID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 ullRequestID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ullRequestID,
          )>()(
        ptr.ref.lpVtbl,
        ullRequestID,
      );

  int BeginSCPDDownload(
    Pointer<COMObject> pAsyncResult,
    Pointer<Uint64> pullRequestID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pAsyncResult,
            Pointer<Uint64> pullRequestID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pAsyncResult,
            Pointer<Uint64> pullRequestID,
          )>()(
        ptr.ref.lpVtbl,
        pAsyncResult,
        pullRequestID,
      );

  int EndSCPDDownload(
    int ullRequestID,
    Pointer<Pointer<Utf16>> pbstrSCPDDoc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 ullRequestID,
            Pointer<Pointer<Utf16>> pbstrSCPDDoc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ullRequestID,
            Pointer<Pointer<Utf16>> pbstrSCPDDoc,
          )>()(
        ptr.ref.lpVtbl,
        ullRequestID,
        pbstrSCPDDoc,
      );

  int CancelAsyncOperation(
    int ullRequestID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 ullRequestID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ullRequestID,
          )>()(
        ptr.ref.lpVtbl,
        ullRequestID,
      );
}
