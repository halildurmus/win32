// ITfUIElementMgr.dart

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
import '../../ui/textservices/ITfUIElement.dart';
import '../../foundation/structs.g.dart';
import '../../ui/textservices/IEnumTfUIElements.dart';

/// @nodoc
const IID_ITfUIElementMgr = '{EA1EA135-19DF-11D7-A6D2-00065B84435C}';

/// {@category Interface}
/// {@category com}
class ITfUIElementMgr extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  ITfUIElementMgr(Pointer<COMObject> ptr) : super(ptr);

  int BeginUIElement(
    Pointer<COMObject> pElement,
    Pointer<Int32> pbShow,
    Pointer<Uint32> pdwUIElementId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pElement,
            Pointer<Int32> pbShow,
            Pointer<Uint32> pdwUIElementId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pElement,
            Pointer<Int32> pbShow,
            Pointer<Uint32> pdwUIElementId,
          )>()(
        ptr.ref.lpVtbl,
        pElement,
        pbShow,
        pdwUIElementId,
      );

  int UpdateUIElement(
    int dwUIElementId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwUIElementId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwUIElementId,
          )>()(
        ptr.ref.lpVtbl,
        dwUIElementId,
      );

  int EndUIElement(
    int dwUIElementId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwUIElementId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwUIElementId,
          )>()(
        ptr.ref.lpVtbl,
        dwUIElementId,
      );

  int GetUIElement(
    int dwUIELementId,
    Pointer<Pointer<COMObject>> ppElement,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwUIELementId,
            Pointer<Pointer<COMObject>> ppElement,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwUIELementId,
            Pointer<Pointer<COMObject>> ppElement,
          )>()(
        ptr.ref.lpVtbl,
        dwUIELementId,
        ppElement,
      );

  int EnumUIElements(
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        ppEnum,
      );
}
