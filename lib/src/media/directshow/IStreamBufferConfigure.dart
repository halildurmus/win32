// IStreamBufferConfigure.dart

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
const IID_IStreamBufferConfigure = '{CE14DFAE-4098-4AF7-BBF7-D6511F835414}';

/// {@category Interface}
/// {@category com}
class IStreamBufferConfigure extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IStreamBufferConfigure(Pointer<COMObject> ptr) : super(ptr);

  int SetDirectory(
    Pointer<Utf16> pszDirectoryName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszDirectoryName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszDirectoryName,
          )>()(
        ptr.ref.lpVtbl,
        pszDirectoryName,
      );

  int GetDirectory(
    Pointer<Pointer<Utf16>> ppszDirectoryName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszDirectoryName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszDirectoryName,
          )>()(
        ptr.ref.lpVtbl,
        ppszDirectoryName,
      );

  int SetBackingFileCount(
    int dwMin,
    int dwMax,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwMin,
            Uint32 dwMax,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwMin,
            int dwMax,
          )>()(
        ptr.ref.lpVtbl,
        dwMin,
        dwMax,
      );

  int GetBackingFileCount(
    Pointer<Uint32> pdwMin,
    Pointer<Uint32> pdwMax,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwMin,
            Pointer<Uint32> pdwMax,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwMin,
            Pointer<Uint32> pdwMax,
          )>()(
        ptr.ref.lpVtbl,
        pdwMin,
        pdwMax,
      );

  int SetBackingFileDuration(
    int dwSeconds,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwSeconds,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwSeconds,
          )>()(
        ptr.ref.lpVtbl,
        dwSeconds,
      );

  int GetBackingFileDuration(
    Pointer<Uint32> pdwSeconds,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwSeconds,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwSeconds,
          )>()(
        ptr.ref.lpVtbl,
        pdwSeconds,
      );
}
