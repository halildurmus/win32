// IDedupBackupSupport.dart

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
import '../../storage/datadeduplication/IDedupReadFileCallback.dart';

/// @nodoc
const IID_IDedupBackupSupport = '{C719D963-2B2D-415E-ACF7-7EB7CA596FF4}';

/// {@category Interface}
/// {@category com}
class IDedupBackupSupport extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IDedupBackupSupport(Pointer<COMObject> ptr) : super(ptr);

  int RestoreFiles(
    int NumberOfFiles,
    Pointer<Pointer<Utf16>> FileFullPaths,
    Pointer<COMObject> Store,
    int Flags,
    Pointer<Int32> FileResults,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 NumberOfFiles,
            Pointer<Pointer<Utf16>> FileFullPaths,
            Pointer<COMObject> Store,
            Uint32 Flags,
            Pointer<Int32> FileResults,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int NumberOfFiles,
            Pointer<Pointer<Utf16>> FileFullPaths,
            Pointer<COMObject> Store,
            int Flags,
            Pointer<Int32> FileResults,
          )>()(
        ptr.ref.lpVtbl,
        NumberOfFiles,
        FileFullPaths,
        Store,
        Flags,
        FileResults,
      );
}

/// @nodoc
const CLSID_DedupBackupSupport = '{73D6B2AD-2984-4715-B2E3-924C149744DD}';

/// {@category com}
class DedupBackupSupport extends IDedupBackupSupport {
  DedupBackupSupport(Pointer<COMObject> ptr) : super(ptr);

  factory DedupBackupSupport.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_DedupBackupSupport);
    final iid = calloc<GUID>()..ref.setGUID(IID_IDedupBackupSupport);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return DedupBackupSupport(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
