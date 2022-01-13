// IProxyProviderWinEventSink.dart

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
import '../../ui/accessibility/IRawElementProviderSimple.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../ui/accessibility/structs.g.dart';
import '../../system/com/structs.g.dart';

/// @nodoc
const IID_IProxyProviderWinEventSink = '{4FD82B78-A43E-46AC-9803-0A6969C7C183}';

/// {@category Interface}
/// {@category com}
class IProxyProviderWinEventSink extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IProxyProviderWinEventSink(Pointer<COMObject> ptr) : super(ptr);

  int AddAutomationPropertyChangedEvent(
    Pointer<COMObject> pProvider,
    int id,
    VARIANT newValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pProvider,
            Int32 id,
            VARIANT newValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pProvider,
            int id,
            VARIANT newValue,
          )>()(
        ptr.ref.lpVtbl,
        pProvider,
        id,
        newValue,
      );

  int AddAutomationEvent(
    Pointer<COMObject> pProvider,
    int id,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pProvider,
            Int32 id,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pProvider,
            int id,
          )>()(
        ptr.ref.lpVtbl,
        pProvider,
        id,
      );

  int AddStructureChangedEvent(
    Pointer<COMObject> pProvider,
    int structureChangeType,
    Pointer<SAFEARRAY> runtimeId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pProvider,
            Int32 structureChangeType,
            Pointer<SAFEARRAY> runtimeId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pProvider,
            int structureChangeType,
            Pointer<SAFEARRAY> runtimeId,
          )>()(
        ptr.ref.lpVtbl,
        pProvider,
        structureChangeType,
        runtimeId,
      );
}
