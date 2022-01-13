// IDestinationStreamFactory.dart

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
import '../../system/com/IStream.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDestinationStreamFactory = '{8A87781B-39A7-4A1F-AAB3-A39B9C34A7D9}';

/// {@category Interface}
/// {@category com}
class IDestinationStreamFactory extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IDestinationStreamFactory(Pointer<COMObject> ptr) : super(ptr);

  int GetDestinationStream(
    Pointer<Pointer<COMObject>> ppstm,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppstm,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppstm,
          )>()(
        ptr.ref.lpVtbl,
        ppstm,
      );
}
