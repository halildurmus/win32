// IDocViewSite.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDocViewSite = '{87D605E0-C511-11CF-89A9-00A0C9054129}';

/// {@category Interface}
/// {@category com}
class IDocViewSite extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IDocViewSite(Pointer<COMObject> ptr) : super(ptr);

  int OnSetTitle(
    Pointer<VARIANT> pvTitle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pvTitle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pvTitle,
          )>()(
        ptr.ref.lpVtbl,
        pvTitle,
      );
}
