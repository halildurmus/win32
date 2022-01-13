// IBackgroundCopyJob2.dart

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

import '../../networking/backgroundintelligenttransferservice/IBackgroundCopyJob.dart';
import '../../foundation/structs.g.dart';
import '../../networking/backgroundintelligenttransferservice/structs.g.dart';

/// @nodoc
const IID_IBackgroundCopyJob2 = '{54B50739-686F-45EB-9DFF-D6A9A0FAA9AF}';

/// {@category Interface}
/// {@category com}
class IBackgroundCopyJob2 extends IBackgroundCopyJob {
  // vtable begins at 35, is 8 entries long.
  IBackgroundCopyJob2(Pointer<COMObject> ptr) : super(ptr);

  int SetNotifyCmdLine(
    Pointer<Utf16> Program,
    Pointer<Utf16> Parameters,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Program,
            Pointer<Utf16> Parameters,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Program,
            Pointer<Utf16> Parameters,
          )>()(
        ptr.ref.lpVtbl,
        Program,
        Parameters,
      );

  int GetNotifyCmdLine(
    Pointer<Pointer<Utf16>> pProgram,
    Pointer<Pointer<Utf16>> pParameters,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pProgram,
            Pointer<Pointer<Utf16>> pParameters,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pProgram,
            Pointer<Pointer<Utf16>> pParameters,
          )>()(
        ptr.ref.lpVtbl,
        pProgram,
        pParameters,
      );

  int GetReplyProgress(
    Pointer<BG_JOB_REPLY_PROGRESS> pProgress,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<BG_JOB_REPLY_PROGRESS> pProgress,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<BG_JOB_REPLY_PROGRESS> pProgress,
          )>()(
        ptr.ref.lpVtbl,
        pProgress,
      );

  int GetReplyData(
    Pointer<Pointer<Uint8>> ppBuffer,
    Pointer<Uint64> pLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Uint8>> ppBuffer,
            Pointer<Uint64> pLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Uint8>> ppBuffer,
            Pointer<Uint64> pLength,
          )>()(
        ptr.ref.lpVtbl,
        ppBuffer,
        pLength,
      );

  int SetReplyFileName(
    Pointer<Utf16> ReplyFileName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> ReplyFileName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> ReplyFileName,
          )>()(
        ptr.ref.lpVtbl,
        ReplyFileName,
      );

  int GetReplyFileName(
    Pointer<Pointer<Utf16>> pReplyFileName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(40)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pReplyFileName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pReplyFileName,
          )>()(
        ptr.ref.lpVtbl,
        pReplyFileName,
      );

  int SetCredentials(
    Pointer<BG_AUTH_CREDENTIALS> credentials,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(41)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<BG_AUTH_CREDENTIALS> credentials,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<BG_AUTH_CREDENTIALS> credentials,
          )>()(
        ptr.ref.lpVtbl,
        credentials,
      );

  int RemoveCredentials(
    int Target,
    int Scheme,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(42)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Target,
            Int32 Scheme,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Target,
            int Scheme,
          )>()(
        ptr.ref.lpVtbl,
        Target,
        Scheme,
      );
}
