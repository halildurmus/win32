// ITsSbPlugin.dart

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
import '../../system/remotedesktop/ITsSbProvider.dart';
import '../../system/remotedesktop/ITsSbPluginNotifySink.dart';
import '../../system/remotedesktop/ITsSbPluginPropertySet.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITsSbPlugin = '{48CD7406-CAAB-465F-A5D6-BAA863B9EA4F}';

/// {@category Interface}
/// {@category com}
class ITsSbPlugin extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ITsSbPlugin(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<COMObject> pProvider,
    Pointer<COMObject> pNotifySink,
    Pointer<COMObject> pPropertySet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pProvider,
            Pointer<COMObject> pNotifySink,
            Pointer<COMObject> pPropertySet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pProvider,
            Pointer<COMObject> pNotifySink,
            Pointer<COMObject> pPropertySet,
          )>()(
        ptr.ref.lpVtbl,
        pProvider,
        pNotifySink,
        pPropertySet,
      );

  int Terminate(
    int hr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hr,
          )>()(
        ptr.ref.lpVtbl,
        hr,
      );
}
