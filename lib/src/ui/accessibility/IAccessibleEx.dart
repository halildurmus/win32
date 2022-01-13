// IAccessibleEx.dart

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
import '../../ui/accessibility/IAccessibleEx.dart';
import '../../foundation/structs.g.dart';
import '../../ui/accessibility/IAccessible.dart';
import '../../system/com/structs.g.dart';
import '../../ui/accessibility/IRawElementProviderSimple.dart';

/// @nodoc
const IID_IAccessibleEx = '{F8B80ADA-2C44-48D0-89BE-5FF23C9CD875}';

/// {@category Interface}
/// {@category com}
class IAccessibleEx extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IAccessibleEx(Pointer<COMObject> ptr) : super(ptr);

  int GetObjectForChild(
    int idChild,
    Pointer<Pointer<COMObject>> pRetVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 idChild,
            Pointer<Pointer<COMObject>> pRetVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int idChild,
            Pointer<Pointer<COMObject>> pRetVal,
          )>()(
        ptr.ref.lpVtbl,
        idChild,
        pRetVal,
      );

  int GetIAccessiblePair(
    Pointer<Pointer<COMObject>> ppAcc,
    Pointer<Int32> pidChild,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppAcc,
            Pointer<Int32> pidChild,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppAcc,
            Pointer<Int32> pidChild,
          )>()(
        ptr.ref.lpVtbl,
        ppAcc,
        pidChild,
      );

  int GetRuntimeId(
    Pointer<Pointer<SAFEARRAY>> pRetVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> pRetVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> pRetVal,
          )>()(
        ptr.ref.lpVtbl,
        pRetVal,
      );

  int ConvertReturnedElement(
    Pointer<COMObject> pIn,
    Pointer<Pointer<COMObject>> ppRetValOut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIn,
            Pointer<Pointer<COMObject>> ppRetValOut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIn,
            Pointer<Pointer<COMObject>> ppRetValOut,
          )>()(
        ptr.ref.lpVtbl,
        pIn,
        ppRetValOut,
      );
}
