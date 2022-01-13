// IDxcContainerReflection.dart

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
import '../../../graphics/direct3d/dxc/IDxcBlob.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IDxcContainerReflection = '{D2C21B26-8350-4BDC-976A-331CE6F4C54C}';

/// {@category Interface}
/// {@category com}
class IDxcContainerReflection extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IDxcContainerReflection(Pointer<COMObject> ptr) : super(ptr);

  int Load(
    Pointer<COMObject> pContainer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pContainer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pContainer,
          )>()(
        ptr.ref.lpVtbl,
        pContainer,
      );

  int GetPartCount(
    Pointer<Uint32> pResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pResult,
          )>()(
        ptr.ref.lpVtbl,
        pResult,
      );

  int GetPartKind(
    int idx,
    Pointer<Uint32> pResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 idx,
            Pointer<Uint32> pResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int idx,
            Pointer<Uint32> pResult,
          )>()(
        ptr.ref.lpVtbl,
        idx,
        pResult,
      );

  int GetPartContent(
    int idx,
    Pointer<Pointer<COMObject>> ppResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 idx,
            Pointer<Pointer<COMObject>> ppResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int idx,
            Pointer<Pointer<COMObject>> ppResult,
          )>()(
        ptr.ref.lpVtbl,
        idx,
        ppResult,
      );

  int FindFirstPartKind(
    int kind,
    Pointer<Uint32> pResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 kind,
            Pointer<Uint32> pResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int kind,
            Pointer<Uint32> pResult,
          )>()(
        ptr.ref.lpVtbl,
        kind,
        pResult,
      );

  int GetPartReflection(
    int idx,
    Pointer<GUID> iid,
    Pointer<Pointer> ppvObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 idx,
            Pointer<GUID> iid,
            Pointer<Pointer> ppvObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int idx,
            Pointer<GUID> iid,
            Pointer<Pointer> ppvObject,
          )>()(
        ptr.ref.lpVtbl,
        idx,
        iid,
        ppvObject,
      );
}
