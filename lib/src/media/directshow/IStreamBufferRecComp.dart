// IStreamBufferRecComp.dart

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

/// @nodoc
const IID_IStreamBufferRecComp = '{9E259A9B-8815-42AE-B09F-221970B154FD}';

/// {@category Interface}
/// {@category com}
class IStreamBufferRecComp extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IStreamBufferRecComp(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<Utf16> pszTargetFilename,
    Pointer<Utf16> pszSBRecProfileRef,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszTargetFilename,
            Pointer<Utf16> pszSBRecProfileRef,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszTargetFilename,
            Pointer<Utf16> pszSBRecProfileRef,
          )>()(
        ptr.ref.lpVtbl,
        pszTargetFilename,
        pszSBRecProfileRef,
      );

  int Append(
    Pointer<Utf16> pszSBRecording,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszSBRecording,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszSBRecording,
          )>()(
        ptr.ref.lpVtbl,
        pszSBRecording,
      );

  int AppendEx(
    Pointer<Utf16> pszSBRecording,
    int rtStart,
    int rtStop,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszSBRecording,
            Int64 rtStart,
            Int64 rtStop,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszSBRecording,
            int rtStart,
            int rtStop,
          )>()(
        ptr.ref.lpVtbl,
        pszSBRecording,
        rtStart,
        rtStop,
      );

  int GetCurrentLength(
    Pointer<Uint32> pcSeconds,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcSeconds,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcSeconds,
          )>()(
        ptr.ref.lpVtbl,
        pcSeconds,
      );

  int Close() => ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int Cancel() => ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
