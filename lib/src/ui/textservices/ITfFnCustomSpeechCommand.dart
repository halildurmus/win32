// ITfFnCustomSpeechCommand.dart

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

import '../../ui/textservices/ITfFunction.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITfFnCustomSpeechCommand = '{FCA6C349-A12F-43A3-8DD6-5A5A4282577B}';

/// {@category Interface}
/// {@category com}
class ITfFnCustomSpeechCommand extends ITfFunction {
  // vtable begins at 4, is 1 entries long.
  ITfFnCustomSpeechCommand(Pointer<COMObject> ptr) : super(ptr);

  int SetSpeechCommandProvider(
    Pointer<COMObject> pspcmdProvider,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pspcmdProvider,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pspcmdProvider,
          )>()(
        ptr.ref.lpVtbl,
        pspcmdProvider,
      );
}
