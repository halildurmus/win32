// IXamlDiagnostics.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../system/winrt/IInspectable.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IXamlDiagnostics = '{18C9E2B6-3F43-4116-9F2B-FF935D7770D2}';

/// {@category Interface}
/// {@category com}
class IXamlDiagnostics extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  IXamlDiagnostics(Pointer<COMObject> ptr) : super(ptr);

  int GetDispatcher(
    Pointer<Pointer<COMObject>> ppDispatcher,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppDispatcher,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppDispatcher,
          )>()(
        ptr.ref.lpVtbl,
        ppDispatcher,
      );

  int GetUiLayer(
    Pointer<Pointer<COMObject>> ppLayer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppLayer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppLayer,
          )>()(
        ptr.ref.lpVtbl,
        ppLayer,
      );

  int GetApplication(
    Pointer<Pointer<COMObject>> ppApplication,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppApplication,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppApplication,
          )>()(
        ptr.ref.lpVtbl,
        ppApplication,
      );

  int GetIInspectableFromHandle(
    int instanceHandle,
    Pointer<Pointer<COMObject>> ppInstance,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 instanceHandle,
            Pointer<Pointer<COMObject>> ppInstance,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int instanceHandle,
            Pointer<Pointer<COMObject>> ppInstance,
          )>()(
        ptr.ref.lpVtbl,
        instanceHandle,
        ppInstance,
      );

  int GetHandleFromIInspectable(
    Pointer<COMObject> pInstance,
    Pointer<Uint64> pHandle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pInstance,
            Pointer<Uint64> pHandle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pInstance,
            Pointer<Uint64> pHandle,
          )>()(
        ptr.ref.lpVtbl,
        pInstance,
        pHandle,
      );

  int HitTest(
    RECT rect,
    Pointer<Uint32> pCount,
    Pointer<Pointer<Uint64>> ppInstanceHandles,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            RECT rect,
            Pointer<Uint32> pCount,
            Pointer<Pointer<Uint64>> ppInstanceHandles,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            RECT rect,
            Pointer<Uint32> pCount,
            Pointer<Pointer<Uint64>> ppInstanceHandles,
          )>()(
        ptr.ref.lpVtbl,
        rect,
        pCount,
        ppInstanceHandles,
      );

  int RegisterInstance(
    Pointer<COMObject> pInstance,
    Pointer<Uint64> pInstanceHandle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pInstance,
            Pointer<Uint64> pInstanceHandle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pInstance,
            Pointer<Uint64> pInstanceHandle,
          )>()(
        ptr.ref.lpVtbl,
        pInstance,
        pInstanceHandle,
      );

  int GetInitializationData(
    Pointer<Pointer<Utf16>> pInitializationData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pInitializationData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pInitializationData,
          )>()(
        ptr.ref.lpVtbl,
        pInitializationData,
      );
}
