// ITextStoreSinkAnchorEx.dart

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

import '../../ui/textservices/ITextStoreAnchorSink.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITextStoreSinkAnchorEx = '{25642426-028D-4474-977B-111BB114FE3E}';

/// {@category Interface}
/// {@category com}
class ITextStoreSinkAnchorEx extends ITextStoreAnchorSink {
  // vtable begins at 11, is 1 entries long.
  ITextStoreSinkAnchorEx(Pointer<COMObject> ptr) : super(ptr);

  int OnDisconnect() => ptr.ref.lpVtbl.value
          .elementAt(11)
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
