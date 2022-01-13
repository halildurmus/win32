// IDebugHostMemory.dart

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
import '../../../system/diagnostics/debug/IDebugHostContext.dart';
import '../../../system/diagnostics/debug/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IDebugHostMemory = '{212149C9-9183-4A3E-B00E-4FD1DC95339B}';

/// {@category Interface}
/// {@category com}
class IDebugHostMemory extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IDebugHostMemory(Pointer<COMObject> ptr) : super(ptr);

  int ReadBytes(
    Pointer<COMObject> context,
    Location location,
    Pointer buffer,
    int bufferSize,
    Pointer<Uint64> bytesRead,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> context,
            Location location,
            Pointer buffer,
            Uint64 bufferSize,
            Pointer<Uint64> bytesRead,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> context,
            Location location,
            Pointer buffer,
            int bufferSize,
            Pointer<Uint64> bytesRead,
          )>()(
        ptr.ref.lpVtbl,
        context,
        location,
        buffer,
        bufferSize,
        bytesRead,
      );

  int WriteBytes(
    Pointer<COMObject> context,
    Location location,
    Pointer buffer,
    int bufferSize,
    Pointer<Uint64> bytesWritten,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> context,
            Location location,
            Pointer buffer,
            Uint64 bufferSize,
            Pointer<Uint64> bytesWritten,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> context,
            Location location,
            Pointer buffer,
            int bufferSize,
            Pointer<Uint64> bytesWritten,
          )>()(
        ptr.ref.lpVtbl,
        context,
        location,
        buffer,
        bufferSize,
        bytesWritten,
      );

  int ReadPointers(
    Pointer<COMObject> context,
    Location location,
    int count,
    Pointer<Uint64> pointers,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> context,
            Location location,
            Uint64 count,
            Pointer<Uint64> pointers,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> context,
            Location location,
            int count,
            Pointer<Uint64> pointers,
          )>()(
        ptr.ref.lpVtbl,
        context,
        location,
        count,
        pointers,
      );

  int WritePointers(
    Pointer<COMObject> context,
    Location location,
    int count,
    Pointer<Uint64> pointers,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> context,
            Location location,
            Uint64 count,
            Pointer<Uint64> pointers,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> context,
            Location location,
            int count,
            Pointer<Uint64> pointers,
          )>()(
        ptr.ref.lpVtbl,
        context,
        location,
        count,
        pointers,
      );

  int GetDisplayStringForLocation(
    Pointer<COMObject> context,
    Location location,
    int verbose,
    Pointer<Pointer<Utf16>> locationName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> context,
            Location location,
            Uint8 verbose,
            Pointer<Pointer<Utf16>> locationName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> context,
            Location location,
            int verbose,
            Pointer<Pointer<Utf16>> locationName,
          )>()(
        ptr.ref.lpVtbl,
        context,
        location,
        verbose,
        locationName,
      );
}
