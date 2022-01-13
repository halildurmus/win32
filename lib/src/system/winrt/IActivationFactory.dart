// IActivationFactory.dart

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

import '../../system/winrt/IInspectable.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IActivationFactory = '{00000035-0000-0000-C000-000000000046}';

/// {@category Interface}
/// {@category com}
class IActivationFactory extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IActivationFactory(Pointer<COMObject> ptr) : super(ptr);

  int ActivateInstance(
    Pointer<Pointer<COMObject>> instance,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> instance,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> instance,
          )>()(
        ptr.ref.lpVtbl,
        instance,
      );
}
