// IVBSAXDeclHandler.dart

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

import '../../../system/com/IDispatch.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IVBSAXDeclHandler = '{E8917260-7579-4BE1-B5DD-7AFBFA6F077B}';

/// {@category Interface}
/// {@category com}
class IVBSAXDeclHandler extends IDispatch {
  // vtable begins at 7, is 4 entries long.
  IVBSAXDeclHandler(Pointer<COMObject> ptr) : super(ptr);

  int elementDecl(
    Pointer<Pointer<Utf16>> strName,
    Pointer<Pointer<Utf16>> strModel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> strName,
            Pointer<Pointer<Utf16>> strModel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> strName,
            Pointer<Pointer<Utf16>> strModel,
          )>()(
        ptr.ref.lpVtbl,
        strName,
        strModel,
      );

  int attributeDecl(
    Pointer<Pointer<Utf16>> strElementName,
    Pointer<Pointer<Utf16>> strAttributeName,
    Pointer<Pointer<Utf16>> strType,
    Pointer<Pointer<Utf16>> strValueDefault,
    Pointer<Pointer<Utf16>> strValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> strElementName,
            Pointer<Pointer<Utf16>> strAttributeName,
            Pointer<Pointer<Utf16>> strType,
            Pointer<Pointer<Utf16>> strValueDefault,
            Pointer<Pointer<Utf16>> strValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> strElementName,
            Pointer<Pointer<Utf16>> strAttributeName,
            Pointer<Pointer<Utf16>> strType,
            Pointer<Pointer<Utf16>> strValueDefault,
            Pointer<Pointer<Utf16>> strValue,
          )>()(
        ptr.ref.lpVtbl,
        strElementName,
        strAttributeName,
        strType,
        strValueDefault,
        strValue,
      );

  int internalEntityDecl(
    Pointer<Pointer<Utf16>> strName,
    Pointer<Pointer<Utf16>> strValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> strName,
            Pointer<Pointer<Utf16>> strValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> strName,
            Pointer<Pointer<Utf16>> strValue,
          )>()(
        ptr.ref.lpVtbl,
        strName,
        strValue,
      );

  int externalEntityDecl(
    Pointer<Pointer<Utf16>> strName,
    Pointer<Pointer<Utf16>> strPublicId,
    Pointer<Pointer<Utf16>> strSystemId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> strName,
            Pointer<Pointer<Utf16>> strPublicId,
            Pointer<Pointer<Utf16>> strSystemId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> strName,
            Pointer<Pointer<Utf16>> strPublicId,
            Pointer<Pointer<Utf16>> strSystemId,
          )>()(
        ptr.ref.lpVtbl,
        strName,
        strPublicId,
        strSystemId,
      );
}
