// IModelKeyReference.dart

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
import '../../../foundation/structs.g.dart';
import '../../../system/diagnostics/debug/IModelObject.dart';
import '../../../system/diagnostics/debug/IKeyStore.dart';

/// @nodoc
const IID_IModelKeyReference = '{5253DCF8-5AFF-4C62-B302-56A289E00998}';

/// {@category Interface}
/// {@category com}
class IModelKeyReference extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IModelKeyReference(Pointer<COMObject> ptr) : super(ptr);

  int GetKeyName(
    Pointer<Pointer<Utf16>> keyName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> keyName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> keyName,
          )>()(
        ptr.ref.lpVtbl,
        keyName,
      );

  int GetOriginalObject(
    Pointer<Pointer<COMObject>> originalObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> originalObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> originalObject,
          )>()(
        ptr.ref.lpVtbl,
        originalObject,
      );

  int GetContextObject(
    Pointer<Pointer<COMObject>> containingObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> containingObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> containingObject,
          )>()(
        ptr.ref.lpVtbl,
        containingObject,
      );

  int GetKey(
    Pointer<Pointer<COMObject>> object,
    Pointer<Pointer<COMObject>> metadata,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> object,
            Pointer<Pointer<COMObject>> metadata,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> object,
            Pointer<Pointer<COMObject>> metadata,
          )>()(
        ptr.ref.lpVtbl,
        object,
        metadata,
      );

  int GetKeyValue(
    Pointer<Pointer<COMObject>> object,
    Pointer<Pointer<COMObject>> metadata,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> object,
            Pointer<Pointer<COMObject>> metadata,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> object,
            Pointer<Pointer<COMObject>> metadata,
          )>()(
        ptr.ref.lpVtbl,
        object,
        metadata,
      );

  int SetKey(
    Pointer<COMObject> object,
    Pointer<COMObject> metadata,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> object,
            Pointer<COMObject> metadata,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> object,
            Pointer<COMObject> metadata,
          )>()(
        ptr.ref.lpVtbl,
        object,
        metadata,
      );

  int SetKeyValue(
    Pointer<COMObject> object,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> object,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> object,
          )>()(
        ptr.ref.lpVtbl,
        object,
      );
}
