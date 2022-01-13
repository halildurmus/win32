// IKeyStore.dart

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
const IID_IKeyStore = '{0FC7557D-401D-4FCA-9365-DA1E9850697C}';

/// {@category Interface}
/// {@category com}
class IKeyStore extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IKeyStore(Pointer<COMObject> ptr) : super(ptr);

  int GetKey(
    Pointer<Utf16> key,
    Pointer<Pointer<COMObject>> object,
    Pointer<Pointer<COMObject>> metadata,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> key,
            Pointer<Pointer<COMObject>> object,
            Pointer<Pointer<COMObject>> metadata,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> key,
            Pointer<Pointer<COMObject>> object,
            Pointer<Pointer<COMObject>> metadata,
          )>()(
        ptr.ref.lpVtbl,
        key,
        object,
        metadata,
      );

  int SetKey(
    Pointer<Utf16> key,
    Pointer<COMObject> object,
    Pointer<COMObject> metadata,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> key,
            Pointer<COMObject> object,
            Pointer<COMObject> metadata,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> key,
            Pointer<COMObject> object,
            Pointer<COMObject> metadata,
          )>()(
        ptr.ref.lpVtbl,
        key,
        object,
        metadata,
      );

  int GetKeyValue(
    Pointer<Utf16> key,
    Pointer<Pointer<COMObject>> object,
    Pointer<Pointer<COMObject>> metadata,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> key,
            Pointer<Pointer<COMObject>> object,
            Pointer<Pointer<COMObject>> metadata,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> key,
            Pointer<Pointer<COMObject>> object,
            Pointer<Pointer<COMObject>> metadata,
          )>()(
        ptr.ref.lpVtbl,
        key,
        object,
        metadata,
      );

  int SetKeyValue(
    Pointer<Utf16> key,
    Pointer<COMObject> object,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> key,
            Pointer<COMObject> object,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> key,
            Pointer<COMObject> object,
          )>()(
        ptr.ref.lpVtbl,
        key,
        object,
      );

  int ClearKeys() => ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
