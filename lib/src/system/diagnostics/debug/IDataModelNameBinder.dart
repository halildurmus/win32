// IDataModelNameBinder.dart

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
const IID_IDataModelNameBinder = '{AF352B7B-8292-4C01-B360-2DC3696C65E7}';

/// {@category Interface}
/// {@category com}
class IDataModelNameBinder extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IDataModelNameBinder(Pointer<COMObject> ptr) : super(ptr);

  int BindValue(
    Pointer<COMObject> contextObject,
    Pointer<Utf16> name,
    Pointer<Pointer<COMObject>> value,
    Pointer<Pointer<COMObject>> metadata,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> contextObject,
            Pointer<Utf16> name,
            Pointer<Pointer<COMObject>> value,
            Pointer<Pointer<COMObject>> metadata,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> contextObject,
            Pointer<Utf16> name,
            Pointer<Pointer<COMObject>> value,
            Pointer<Pointer<COMObject>> metadata,
          )>()(
        ptr.ref.lpVtbl,
        contextObject,
        name,
        value,
        metadata,
      );

  int BindReference(
    Pointer<COMObject> contextObject,
    Pointer<Utf16> name,
    Pointer<Pointer<COMObject>> reference,
    Pointer<Pointer<COMObject>> metadata,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> contextObject,
            Pointer<Utf16> name,
            Pointer<Pointer<COMObject>> reference,
            Pointer<Pointer<COMObject>> metadata,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> contextObject,
            Pointer<Utf16> name,
            Pointer<Pointer<COMObject>> reference,
            Pointer<Pointer<COMObject>> metadata,
          )>()(
        ptr.ref.lpVtbl,
        contextObject,
        name,
        reference,
        metadata,
      );

  int EnumerateValues(
    Pointer<COMObject> contextObject,
    Pointer<Pointer<COMObject>> enumerator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> contextObject,
            Pointer<Pointer<COMObject>> enumerator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> contextObject,
            Pointer<Pointer<COMObject>> enumerator,
          )>()(
        ptr.ref.lpVtbl,
        contextObject,
        enumerator,
      );

  int EnumerateReferences(
    Pointer<COMObject> contextObject,
    Pointer<Pointer<COMObject>> enumerator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> contextObject,
            Pointer<Pointer<COMObject>> enumerator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> contextObject,
            Pointer<Pointer<COMObject>> enumerator,
          )>()(
        ptr.ref.lpVtbl,
        contextObject,
        enumerator,
      );
}
