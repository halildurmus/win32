// IDedupDataPortManager.dart

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
import '../../storage/datadeduplication/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../storage/datadeduplication/IDedupDataPort.dart';

/// @nodoc
const IID_IDedupDataPortManager = '{44677452-B90A-445E-8192-CDCFE81511FB}';

/// {@category Interface}
/// {@category com}
class IDedupDataPortManager extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IDedupDataPortManager(Pointer<COMObject> ptr) : super(ptr);

  int GetConfiguration(
    Pointer<Uint32> pMinChunkSize,
    Pointer<Uint32> pMaxChunkSize,
    Pointer<Int32> pChunkingAlgorithm,
    Pointer<Int32> pHashingAlgorithm,
    Pointer<Int32> pCompressionAlgorithm,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pMinChunkSize,
            Pointer<Uint32> pMaxChunkSize,
            Pointer<Int32> pChunkingAlgorithm,
            Pointer<Int32> pHashingAlgorithm,
            Pointer<Int32> pCompressionAlgorithm,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pMinChunkSize,
            Pointer<Uint32> pMaxChunkSize,
            Pointer<Int32> pChunkingAlgorithm,
            Pointer<Int32> pHashingAlgorithm,
            Pointer<Int32> pCompressionAlgorithm,
          )>()(
        ptr.ref.lpVtbl,
        pMinChunkSize,
        pMaxChunkSize,
        pChunkingAlgorithm,
        pHashingAlgorithm,
        pCompressionAlgorithm,
      );

  int GetVolumeStatus(
    int Options,
    Pointer<Utf16> Path,
    Pointer<Int32> pStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Options,
            Pointer<Utf16> Path,
            Pointer<Int32> pStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Options,
            Pointer<Utf16> Path,
            Pointer<Int32> pStatus,
          )>()(
        ptr.ref.lpVtbl,
        Options,
        Path,
        pStatus,
      );

  int GetVolumeDataPort(
    int Options,
    Pointer<Utf16> Path,
    Pointer<Pointer<COMObject>> ppDataPort,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Options,
            Pointer<Utf16> Path,
            Pointer<Pointer<COMObject>> ppDataPort,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Options,
            Pointer<Utf16> Path,
            Pointer<Pointer<COMObject>> ppDataPort,
          )>()(
        ptr.ref.lpVtbl,
        Options,
        Path,
        ppDataPort,
      );
}
