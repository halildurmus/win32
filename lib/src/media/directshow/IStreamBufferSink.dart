// IStreamBufferSink.dart

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
import '../../specialTypes.dart';

/// @nodoc
const IID_IStreamBufferSink = '{AFD1F242-7EFD-45EE-BA4E-407A25C9A77A}';

/// {@category Interface}
/// {@category com}
class IStreamBufferSink extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IStreamBufferSink(Pointer<COMObject> ptr) : super(ptr);

  int LockProfile(
    Pointer<Utf16> pszStreamBufferFilename,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszStreamBufferFilename,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszStreamBufferFilename,
          )>()(
        ptr.ref.lpVtbl,
        pszStreamBufferFilename,
      );

  int CreateRecorder(
    Pointer<Utf16> pszFilename,
    int dwRecordType,
    Pointer<Pointer<COMObject>> pRecordingIUnknown,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszFilename,
            Uint32 dwRecordType,
            Pointer<Pointer<COMObject>> pRecordingIUnknown,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszFilename,
            int dwRecordType,
            Pointer<Pointer<COMObject>> pRecordingIUnknown,
          )>()(
        ptr.ref.lpVtbl,
        pszFilename,
        dwRecordType,
        pRecordingIUnknown,
      );

  int IsProfileLocked() => ptr.ref.lpVtbl.value
          .elementAt(5)
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
