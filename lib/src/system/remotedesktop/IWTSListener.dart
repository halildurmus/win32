// IWTSListener.dart

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
import '../../system/com/structuredstorage/IPropertyBag.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWTSListener = '{A1230206-9A39-4D58-8674-CDB4DFF4E73B}';

/// {@category Interface}
/// {@category com}
class IWTSListener extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IWTSListener(Pointer<COMObject> ptr) : super(ptr);

  int GetConfiguration(
    Pointer<Pointer<COMObject>> ppPropertyBag,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPropertyBag,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPropertyBag,
          )>()(
        ptr.ref.lpVtbl,
        ppPropertyBag,
      );
}
