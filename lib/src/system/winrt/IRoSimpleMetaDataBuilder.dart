// IRoSimpleMetaDataBuilder.dart

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

import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IRoSimpleMetaDataBuilder = 'null';

/// {@category Interface}
/// {@category com}
class IRoSimpleMetaDataBuilder {
  // vtable begins at 0, is 10 entries long.
  Pointer<COMObject> ptr;

  IRoSimpleMetaDataBuilder(this.ptr);

  int SetWinRtInterface(
    GUID iid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(0)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID iid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID iid,
          )>()(
        ptr.ref.lpVtbl,
        iid,
      );

  int SetDelegate(
    GUID iid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(1)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID iid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID iid,
          )>()(
        ptr.ref.lpVtbl,
        iid,
      );

  int SetInterfaceGroupSimpleDefault(
    Pointer<Utf16> name,
    Pointer<Utf16> defaultInterfaceName,
    Pointer<GUID> defaultInterfaceIID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(2)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> name,
            Pointer<Utf16> defaultInterfaceName,
            Pointer<GUID> defaultInterfaceIID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> name,
            Pointer<Utf16> defaultInterfaceName,
            Pointer<GUID> defaultInterfaceIID,
          )>()(
        ptr.ref.lpVtbl,
        name,
        defaultInterfaceName,
        defaultInterfaceIID,
      );

  int SetInterfaceGroupParameterizedDefault(
    Pointer<Utf16> name,
    int elementCount,
    Pointer<Pointer<Utf16>> defaultInterfaceNameElements,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> name,
            Uint32 elementCount,
            Pointer<Pointer<Utf16>> defaultInterfaceNameElements,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> name,
            int elementCount,
            Pointer<Pointer<Utf16>> defaultInterfaceNameElements,
          )>()(
        ptr.ref.lpVtbl,
        name,
        elementCount,
        defaultInterfaceNameElements,
      );

  int SetRuntimeClassSimpleDefault(
    Pointer<Utf16> name,
    Pointer<Utf16> defaultInterfaceName,
    Pointer<GUID> defaultInterfaceIID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> name,
            Pointer<Utf16> defaultInterfaceName,
            Pointer<GUID> defaultInterfaceIID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> name,
            Pointer<Utf16> defaultInterfaceName,
            Pointer<GUID> defaultInterfaceIID,
          )>()(
        ptr.ref.lpVtbl,
        name,
        defaultInterfaceName,
        defaultInterfaceIID,
      );

  int SetRuntimeClassParameterizedDefault(
    Pointer<Utf16> name,
    int elementCount,
    Pointer<Pointer<Utf16>> defaultInterfaceNameElements,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> name,
            Uint32 elementCount,
            Pointer<Pointer<Utf16>> defaultInterfaceNameElements,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> name,
            int elementCount,
            Pointer<Pointer<Utf16>> defaultInterfaceNameElements,
          )>()(
        ptr.ref.lpVtbl,
        name,
        elementCount,
        defaultInterfaceNameElements,
      );

  int SetStruct(
    Pointer<Utf16> name,
    int numFields,
    Pointer<Pointer<Utf16>> fieldTypeNames,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> name,
            Uint32 numFields,
            Pointer<Pointer<Utf16>> fieldTypeNames,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> name,
            int numFields,
            Pointer<Pointer<Utf16>> fieldTypeNames,
          )>()(
        ptr.ref.lpVtbl,
        name,
        numFields,
        fieldTypeNames,
      );

  int SetEnum(
    Pointer<Utf16> name,
    Pointer<Utf16> baseType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> name,
            Pointer<Utf16> baseType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> name,
            Pointer<Utf16> baseType,
          )>()(
        ptr.ref.lpVtbl,
        name,
        baseType,
      );

  int SetParameterizedInterface(
    GUID piid,
    int numArgs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID piid,
            Uint32 numArgs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID piid,
            int numArgs,
          )>()(
        ptr.ref.lpVtbl,
        piid,
        numArgs,
      );

  int SetParameterizedDelegate(
    GUID piid,
    int numArgs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID piid,
            Uint32 numArgs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID piid,
            int numArgs,
          )>()(
        ptr.ref.lpVtbl,
        piid,
        numArgs,
      );
}
