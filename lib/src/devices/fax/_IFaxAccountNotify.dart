// IFaxAccountNotify.dart

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
import '../../devices/fax/IFaxAccount.dart';
import '../../foundation/structs.g.dart';
import '../../devices/fax/IFaxJobStatus.dart';
import '../../devices/fax/IFaxServer2.dart';

/// @nodoc
const IID_IFaxAccountNotify = '{B9B3BC81-AC1B-46F3-B39D-0ADC30E1B788}';

/// {@category Interface}
/// {@category com}
class IFaxAccountNotify extends IDispatch {
  // vtable begins at 7, is 11 entries long.
  IFaxAccountNotify(Pointer<COMObject> ptr) : super(ptr);

  int OnIncomingJobAdded(
    Pointer<COMObject> pFaxAccount,
    Pointer<Utf16> bstrJobId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFaxAccount,
            Pointer<Utf16> bstrJobId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFaxAccount,
            Pointer<Utf16> bstrJobId,
          )>()(
        ptr.ref.lpVtbl,
        pFaxAccount,
        bstrJobId,
      );

  int OnIncomingJobRemoved(
    Pointer<COMObject> pFaxAccount,
    Pointer<Utf16> bstrJobId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFaxAccount,
            Pointer<Utf16> bstrJobId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFaxAccount,
            Pointer<Utf16> bstrJobId,
          )>()(
        ptr.ref.lpVtbl,
        pFaxAccount,
        bstrJobId,
      );

  int OnIncomingJobChanged(
    Pointer<COMObject> pFaxAccount,
    Pointer<Utf16> bstrJobId,
    Pointer<COMObject> pJobStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFaxAccount,
            Pointer<Utf16> bstrJobId,
            Pointer<COMObject> pJobStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFaxAccount,
            Pointer<Utf16> bstrJobId,
            Pointer<COMObject> pJobStatus,
          )>()(
        ptr.ref.lpVtbl,
        pFaxAccount,
        bstrJobId,
        pJobStatus,
      );

  int OnOutgoingJobAdded(
    Pointer<COMObject> pFaxAccount,
    Pointer<Utf16> bstrJobId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFaxAccount,
            Pointer<Utf16> bstrJobId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFaxAccount,
            Pointer<Utf16> bstrJobId,
          )>()(
        ptr.ref.lpVtbl,
        pFaxAccount,
        bstrJobId,
      );

  int OnOutgoingJobRemoved(
    Pointer<COMObject> pFaxAccount,
    Pointer<Utf16> bstrJobId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFaxAccount,
            Pointer<Utf16> bstrJobId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFaxAccount,
            Pointer<Utf16> bstrJobId,
          )>()(
        ptr.ref.lpVtbl,
        pFaxAccount,
        bstrJobId,
      );

  int OnOutgoingJobChanged(
    Pointer<COMObject> pFaxAccount,
    Pointer<Utf16> bstrJobId,
    Pointer<COMObject> pJobStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFaxAccount,
            Pointer<Utf16> bstrJobId,
            Pointer<COMObject> pJobStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFaxAccount,
            Pointer<Utf16> bstrJobId,
            Pointer<COMObject> pJobStatus,
          )>()(
        ptr.ref.lpVtbl,
        pFaxAccount,
        bstrJobId,
        pJobStatus,
      );

  int OnIncomingMessageAdded(
    Pointer<COMObject> pFaxAccount,
    Pointer<Utf16> bstrMessageId,
    int fAddedToReceiveFolder,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFaxAccount,
            Pointer<Utf16> bstrMessageId,
            Int16 fAddedToReceiveFolder,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFaxAccount,
            Pointer<Utf16> bstrMessageId,
            int fAddedToReceiveFolder,
          )>()(
        ptr.ref.lpVtbl,
        pFaxAccount,
        bstrMessageId,
        fAddedToReceiveFolder,
      );

  int OnIncomingMessageRemoved(
    Pointer<COMObject> pFaxAccount,
    Pointer<Utf16> bstrMessageId,
    int fRemovedFromReceiveFolder,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFaxAccount,
            Pointer<Utf16> bstrMessageId,
            Int16 fRemovedFromReceiveFolder,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFaxAccount,
            Pointer<Utf16> bstrMessageId,
            int fRemovedFromReceiveFolder,
          )>()(
        ptr.ref.lpVtbl,
        pFaxAccount,
        bstrMessageId,
        fRemovedFromReceiveFolder,
      );

  int OnOutgoingMessageAdded(
    Pointer<COMObject> pFaxAccount,
    Pointer<Utf16> bstrMessageId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFaxAccount,
            Pointer<Utf16> bstrMessageId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFaxAccount,
            Pointer<Utf16> bstrMessageId,
          )>()(
        ptr.ref.lpVtbl,
        pFaxAccount,
        bstrMessageId,
      );

  int OnOutgoingMessageRemoved(
    Pointer<COMObject> pFaxAccount,
    Pointer<Utf16> bstrMessageId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFaxAccount,
            Pointer<Utf16> bstrMessageId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFaxAccount,
            Pointer<Utf16> bstrMessageId,
          )>()(
        ptr.ref.lpVtbl,
        pFaxAccount,
        bstrMessageId,
      );

  int OnServerShutDown(
    Pointer<COMObject> pFaxServer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFaxServer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFaxServer,
          )>()(
        ptr.ref.lpVtbl,
        pFaxServer,
      );
}
