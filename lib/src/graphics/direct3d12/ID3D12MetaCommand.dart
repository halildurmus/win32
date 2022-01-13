// ID3D12MetaCommand.dart

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

import '../../graphics/direct3d12/ID3D12Pageable.dart';
import '../../graphics/direct3d12/structs.g.dart';

/// @nodoc
const IID_ID3D12MetaCommand = '{DBB84C27-36CE-4FC9-B801-F048C46AC570}';

/// {@category Interface}
/// {@category com}
class ID3D12MetaCommand extends ID3D12Pageable {
  // vtable begins at 8, is 1 entries long.
  ID3D12MetaCommand(Pointer<COMObject> ptr) : super(ptr);

  int GetRequiredParameterResourceSize(
    int Stage,
    int ParameterIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint64 Function(
            Pointer,
            Int32 Stage,
            Uint32 ParameterIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Stage,
            int ParameterIndex,
          )>()(
        ptr.ref.lpVtbl,
        Stage,
        ParameterIndex,
      );
}
