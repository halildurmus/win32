// ID3D12VideoEncodeCommandList1.dart

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

import '../../media/mediafoundation/ID3D12VideoEncodeCommandList.dart';
import '../../media/mediafoundation/ID3D12VideoExtensionCommand.dart';

/// @nodoc
const IID_ID3D12VideoEncodeCommandList1 =
    '{94971ECA-2BDB-4769-88CF-3675EA757EBC}';

/// {@category Interface}
/// {@category com}
class ID3D12VideoEncodeCommandList1 extends ID3D12VideoEncodeCommandList {
  // vtable begins at 25, is 2 entries long.
  ID3D12VideoEncodeCommandList1(Pointer<COMObject> ptr) : super(ptr);

  void InitializeExtensionCommand(
    Pointer<COMObject> pExtensionCommand,
    Pointer pInitializationParameters,
    int InitializationParametersSizeInBytes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pExtensionCommand,
            Pointer pInitializationParameters,
            IntPtr InitializationParametersSizeInBytes,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pExtensionCommand,
            Pointer pInitializationParameters,
            int InitializationParametersSizeInBytes,
          )>()(
        ptr.ref.lpVtbl,
        pExtensionCommand,
        pInitializationParameters,
        InitializationParametersSizeInBytes,
      );

  void ExecuteExtensionCommand(
    Pointer<COMObject> pExtensionCommand,
    Pointer pExecutionParameters,
    int ExecutionParametersSizeInBytes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pExtensionCommand,
            Pointer pExecutionParameters,
            IntPtr ExecutionParametersSizeInBytes,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pExtensionCommand,
            Pointer pExecutionParameters,
            int ExecutionParametersSizeInBytes,
          )>()(
        ptr.ref.lpVtbl,
        pExtensionCommand,
        pExecutionParameters,
        ExecutionParametersSizeInBytes,
      );
}
