// ID3D12StateObjectProperties.dart

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
const IID_ID3D12StateObjectProperties =
    '{DE5FA827-9BF9-4F26-89FF-D7F56FDE3860}';

/// {@category Interface}
/// {@category com}
class ID3D12StateObjectProperties extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  ID3D12StateObjectProperties(Pointer<COMObject> ptr) : super(ptr);

  Pointer GetShaderIdentifier(
    Pointer<Utf16> pExportName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Pointer Function(
            Pointer,
            Pointer<Utf16> pExportName,
          )>>>()
          .value
          .asFunction<
              Pointer Function(
            Pointer,
            Pointer<Utf16> pExportName,
          )>()(
        ptr.ref.lpVtbl,
        pExportName,
      );

  int GetShaderStackSize(
    Pointer<Utf16> pExportName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint64 Function(
            Pointer,
            Pointer<Utf16> pExportName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pExportName,
          )>()(
        ptr.ref.lpVtbl,
        pExportName,
      );

  int GetPipelineStackSize() => ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint64 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  void SetPipelineStackSize(
    int PipelineStackSizeInBytes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint64 PipelineStackSizeInBytes,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int PipelineStackSizeInBytes,
          )>()(
        ptr.ref.lpVtbl,
        PipelineStackSizeInBytes,
      );
}
