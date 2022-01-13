// IResourceManager.dart

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
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';
import '../../media/directshow/IResourceConsumer.dart';

/// @nodoc
const IID_IResourceManager = '{56A868AC-0AD4-11CE-B03A-0020AF0BA770}';

/// {@category Interface}
/// {@category com}
class IResourceManager extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  IResourceManager(Pointer<COMObject> ptr) : super(ptr);

  int Register(
    Pointer<Utf16> pName,
    int cResource,
    Pointer<Int32> plToken,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pName,
            Int32 cResource,
            Pointer<Int32> plToken,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pName,
            int cResource,
            Pointer<Int32> plToken,
          )>()(
        ptr.ref.lpVtbl,
        pName,
        cResource,
        plToken,
      );

  int RegisterGroup(
    Pointer<Utf16> pName,
    int cResource,
    Pointer<Int32> palTokens,
    Pointer<Int32> plToken,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pName,
            Int32 cResource,
            Pointer<Int32> palTokens,
            Pointer<Int32> plToken,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pName,
            int cResource,
            Pointer<Int32> palTokens,
            Pointer<Int32> plToken,
          )>()(
        ptr.ref.lpVtbl,
        pName,
        cResource,
        palTokens,
        plToken,
      );

  int RequestResource(
    int idResource,
    Pointer<COMObject> pFocusObject,
    Pointer<COMObject> pConsumer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 idResource,
            Pointer<COMObject> pFocusObject,
            Pointer<COMObject> pConsumer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int idResource,
            Pointer<COMObject> pFocusObject,
            Pointer<COMObject> pConsumer,
          )>()(
        ptr.ref.lpVtbl,
        idResource,
        pFocusObject,
        pConsumer,
      );

  int NotifyAcquire(
    int idResource,
    Pointer<COMObject> pConsumer,
    int hr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 idResource,
            Pointer<COMObject> pConsumer,
            Int32 hr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int idResource,
            Pointer<COMObject> pConsumer,
            int hr,
          )>()(
        ptr.ref.lpVtbl,
        idResource,
        pConsumer,
        hr,
      );

  int NotifyRelease(
    int idResource,
    Pointer<COMObject> pConsumer,
    int bStillWant,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 idResource,
            Pointer<COMObject> pConsumer,
            Int32 bStillWant,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int idResource,
            Pointer<COMObject> pConsumer,
            int bStillWant,
          )>()(
        ptr.ref.lpVtbl,
        idResource,
        pConsumer,
        bStillWant,
      );

  int CancelRequest(
    int idResource,
    Pointer<COMObject> pConsumer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 idResource,
            Pointer<COMObject> pConsumer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int idResource,
            Pointer<COMObject> pConsumer,
          )>()(
        ptr.ref.lpVtbl,
        idResource,
        pConsumer,
      );

  int SetFocus(
    Pointer<COMObject> pFocusObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFocusObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFocusObject,
          )>()(
        ptr.ref.lpVtbl,
        pFocusObject,
      );

  int ReleaseFocus(
    Pointer<COMObject> pFocusObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFocusObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFocusObject,
          )>()(
        ptr.ref.lpVtbl,
        pFocusObject,
      );
}
