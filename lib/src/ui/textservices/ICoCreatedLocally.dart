// ICoCreatedLocally.dart

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
const IID_ICoCreatedLocally = '{0A53EB6C-1908-4742-8CFF-2CEE2E93F94C}';

/// {@category Interface}
/// {@category com}
class ICoCreatedLocally extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ICoCreatedLocally(Pointer<COMObject> ptr) : super(ptr);

  int LocalInit(
    Pointer<COMObject> punkLocalObject,
    Pointer<GUID> riidParam,
    Pointer<COMObject> punkParam,
    VARIANT varParam,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> punkLocalObject,
            Pointer<GUID> riidParam,
            Pointer<COMObject> punkParam,
            VARIANT varParam,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> punkLocalObject,
            Pointer<GUID> riidParam,
            Pointer<COMObject> punkParam,
            VARIANT varParam,
          )>()(
        ptr.ref.lpVtbl,
        punkLocalObject,
        riidParam,
        punkParam,
        varParam,
      );
}
