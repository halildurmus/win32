// IMTSLocator.dart

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

import '../../system/com/IDispatch.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMTSLocator = '{D19B8BFD-7F88-11D0-B16E-00AA00BA3258}';

/// {@category Interface}
/// {@category com}
class IMTSLocator extends IDispatch {
  // vtable begins at 7, is 1 entries long.
  IMTSLocator(Pointer<COMObject> ptr) : super(ptr);

  int GetEventDispatcher(
    Pointer<Pointer<COMObject>> pUnk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pUnk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pUnk,
          )>()(
        ptr.ref.lpVtbl,
        pUnk,
      );
}
