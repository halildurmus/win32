// ICastingSourceInfo.dart

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
import '../../system/winrt/ICastingController.dart';
import '../../foundation/structs.g.dart';
import '../../ui/shell/propertiessystem/INamedPropertyStore.dart';

/// @nodoc
const IID_ICastingSourceInfo = '{45101AB7-7C3A-4BCE-9500-12C09024B298}';

/// {@category Interface}
/// {@category com}
class ICastingSourceInfo extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ICastingSourceInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetController(
    Pointer<Pointer<COMObject>> controller,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> controller,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> controller,
          )>()(
        ptr.ref.lpVtbl,
        controller,
      );

  int GetProperties(
    Pointer<Pointer<COMObject>> props,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> props,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> props,
          )>()(
        ptr.ref.lpVtbl,
        props,
      );
}
