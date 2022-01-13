// IDxcContainerBuilder.dart

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
import '../../../graphics/direct3d/dxc/IDxcOperationResult.dart';

/// @nodoc
const IID_IDxcContainerBuilder = '{334B1F50-2292-4B35-99A1-25588D8C17FE}';

/// {@category Interface}
/// {@category com}
class IDxcContainerBuilder extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IDxcContainerBuilder(Pointer<COMObject> ptr) : super(ptr);

  int Load(
    Pointer<COMObject> pDxilContainerHeader,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDxilContainerHeader,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDxilContainerHeader,
          )>()(
        ptr.ref.lpVtbl,
        pDxilContainerHeader,
      );

  int AddPart(
    int fourCC,
    Pointer<COMObject> pSource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 fourCC,
            Pointer<COMObject> pSource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fourCC,
            Pointer<COMObject> pSource,
          )>()(
        ptr.ref.lpVtbl,
        fourCC,
        pSource,
      );

  int RemovePart(
    int fourCC,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 fourCC,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fourCC,
          )>()(
        ptr.ref.lpVtbl,
        fourCC,
      );

  int SerializeContainer(
    Pointer<Pointer<COMObject>> ppResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppResult,
          )>()(
        ptr.ref.lpVtbl,
        ppResult,
      );
}
