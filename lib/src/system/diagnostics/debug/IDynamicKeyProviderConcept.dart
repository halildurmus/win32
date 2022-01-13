// IDynamicKeyProviderConcept.dart

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
import '../../../system/diagnostics/debug/IModelObject.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/diagnostics/debug/IKeyStore.dart';
import '../../../system/diagnostics/debug/IKeyEnumerator.dart';

/// @nodoc
const IID_IDynamicKeyProviderConcept = '{E7983FA1-80A7-498C-988F-518DDC5D4025}';

/// {@category Interface}
/// {@category com}
class IDynamicKeyProviderConcept extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IDynamicKeyProviderConcept(Pointer<COMObject> ptr) : super(ptr);

  int GetKey(
    Pointer<COMObject> contextObject,
    Pointer<Utf16> key,
    Pointer<Pointer<COMObject>> keyValue,
    Pointer<Pointer<COMObject>> metadata,
    Pointer<Bool> hasKey,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> contextObject,
            Pointer<Utf16> key,
            Pointer<Pointer<COMObject>> keyValue,
            Pointer<Pointer<COMObject>> metadata,
            Pointer<Bool> hasKey,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> contextObject,
            Pointer<Utf16> key,
            Pointer<Pointer<COMObject>> keyValue,
            Pointer<Pointer<COMObject>> metadata,
            Pointer<Bool> hasKey,
          )>()(
        ptr.ref.lpVtbl,
        contextObject,
        key,
        keyValue,
        metadata,
        hasKey,
      );

  int SetKey(
    Pointer<COMObject> contextObject,
    Pointer<Utf16> key,
    Pointer<COMObject> keyValue,
    Pointer<COMObject> metadata,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> contextObject,
            Pointer<Utf16> key,
            Pointer<COMObject> keyValue,
            Pointer<COMObject> metadata,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> contextObject,
            Pointer<Utf16> key,
            Pointer<COMObject> keyValue,
            Pointer<COMObject> metadata,
          )>()(
        ptr.ref.lpVtbl,
        contextObject,
        key,
        keyValue,
        metadata,
      );

  int EnumerateKeys(
    Pointer<COMObject> contextObject,
    Pointer<Pointer<COMObject>> ppEnumerator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> contextObject,
            Pointer<Pointer<COMObject>> ppEnumerator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> contextObject,
            Pointer<Pointer<COMObject>> ppEnumerator,
          )>()(
        ptr.ref.lpVtbl,
        contextObject,
        ppEnumerator,
      );
}
