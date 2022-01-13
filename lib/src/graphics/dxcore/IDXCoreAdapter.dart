// IDXCoreAdapter.dart

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
import '../../graphics/dxcore/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDXCoreAdapter = '{F0DB4C7F-FE5A-42A2-BD62-F2A6CF6FC83E}';

/// {@category Interface}
/// {@category com}
class IDXCoreAdapter extends IUnknown {
  // vtable begins at 3, is 10 entries long.
  IDXCoreAdapter(Pointer<COMObject> ptr) : super(ptr);

  bool IsValid() => ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Bool Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              bool Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  bool IsAttributeSupported(
    Pointer<GUID> attributeGUID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Bool Function(
            Pointer,
            Pointer<GUID> attributeGUID,
          )>>>()
          .value
          .asFunction<
              bool Function(
            Pointer,
            Pointer<GUID> attributeGUID,
          )>()(
        ptr.ref.lpVtbl,
        attributeGUID,
      );

  bool IsPropertySupported(
    int property,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Bool Function(
            Pointer,
            Uint32 property,
          )>>>()
          .value
          .asFunction<
              bool Function(
            Pointer,
            int property,
          )>()(
        ptr.ref.lpVtbl,
        property,
      );

  int GetProperty(
    int property,
    int bufferSize,
    Pointer propertyData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 property,
            IntPtr bufferSize,
            Pointer propertyData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int property,
            int bufferSize,
            Pointer propertyData,
          )>()(
        ptr.ref.lpVtbl,
        property,
        bufferSize,
        propertyData,
      );

  int GetPropertySize(
    int property,
    Pointer<IntPtr> bufferSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 property,
            Pointer<IntPtr> bufferSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int property,
            Pointer<IntPtr> bufferSize,
          )>()(
        ptr.ref.lpVtbl,
        property,
        bufferSize,
      );

  bool IsQueryStateSupported(
    int property,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Bool Function(
            Pointer,
            Uint32 property,
          )>>>()
          .value
          .asFunction<
              bool Function(
            Pointer,
            int property,
          )>()(
        ptr.ref.lpVtbl,
        property,
      );

  int QueryState(
    int state,
    int inputStateDetailsSize,
    Pointer inputStateDetails,
    int outputBufferSize,
    Pointer outputBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 state,
            IntPtr inputStateDetailsSize,
            Pointer inputStateDetails,
            IntPtr outputBufferSize,
            Pointer outputBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int state,
            int inputStateDetailsSize,
            Pointer inputStateDetails,
            int outputBufferSize,
            Pointer outputBuffer,
          )>()(
        ptr.ref.lpVtbl,
        state,
        inputStateDetailsSize,
        inputStateDetails,
        outputBufferSize,
        outputBuffer,
      );

  bool IsSetStateSupported(
    int property,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Bool Function(
            Pointer,
            Uint32 property,
          )>>>()
          .value
          .asFunction<
              bool Function(
            Pointer,
            int property,
          )>()(
        ptr.ref.lpVtbl,
        property,
      );

  int SetState(
    int state,
    int inputStateDetailsSize,
    Pointer inputStateDetails,
    int inputDataSize,
    Pointer inputData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 state,
            IntPtr inputStateDetailsSize,
            Pointer inputStateDetails,
            IntPtr inputDataSize,
            Pointer inputData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int state,
            int inputStateDetailsSize,
            Pointer inputStateDetails,
            int inputDataSize,
            Pointer inputData,
          )>()(
        ptr.ref.lpVtbl,
        state,
        inputStateDetailsSize,
        inputStateDetails,
        inputDataSize,
        inputData,
      );

  int GetFactory(
    Pointer<GUID> riid,
    Pointer<Pointer> ppvFactory,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvFactory,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvFactory,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        ppvFactory,
      );
}
