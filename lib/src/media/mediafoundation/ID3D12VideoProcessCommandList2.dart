// ID3D12VideoProcessCommandList2.dart

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

import '../../media/mediafoundation/ID3D12VideoProcessCommandList1.dart';
import '../../graphics/direct3d12/ID3D12ProtectedResourceSession.dart';
import '../../media/mediafoundation/ID3D12VideoExtensionCommand.dart';

/// @nodoc
const IID_ID3D12VideoProcessCommandList2 =
    '{DB525AE4-6AD6-473C-BAA7-59B2E37082E4}';

/// {@category Interface}
/// {@category com}
class ID3D12VideoProcessCommandList2 extends ID3D12VideoProcessCommandList1 {
  // vtable begins at 24, is 3 entries long.
  ID3D12VideoProcessCommandList2(Pointer<COMObject> ptr) : super(ptr);

  void SetProtectedResourceSession(
    Pointer<COMObject> pProtectedResourceSession,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pProtectedResourceSession,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pProtectedResourceSession,
          )>()(
        ptr.ref.lpVtbl,
        pProtectedResourceSession,
      );

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
