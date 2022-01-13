// IDataModelManager2.dart

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

import '../../../system/diagnostics/debug/IDataModelManager.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/diagnostics/debug/IKeyStore.dart';
import '../../../system/diagnostics/debug/IModelObject.dart';
import '../../../system/diagnostics/debug/IDebugHostContext.dart';
import '../../../specialTypes.dart';
import '../../../system/diagnostics/debug/IDebugHostType.dart';

/// @nodoc
const IID_IDataModelManager2 = '{F412C5EA-2284-4622-A660-A697160D3312}';

/// {@category Interface}
/// {@category com}
class IDataModelManager2 extends IDataModelManager {
  // vtable begins at 23, is 2 entries long.
  IDataModelManager2(Pointer<COMObject> ptr) : super(ptr);

  int AcquireSubNamespace(
    Pointer<Utf16> modelName,
    Pointer<Utf16> subNamespaceModelName,
    Pointer<Utf16> accessName,
    Pointer<COMObject> metadata,
    Pointer<Pointer<COMObject>> namespaceModelObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> modelName,
            Pointer<Utf16> subNamespaceModelName,
            Pointer<Utf16> accessName,
            Pointer<COMObject> metadata,
            Pointer<Pointer<COMObject>> namespaceModelObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> modelName,
            Pointer<Utf16> subNamespaceModelName,
            Pointer<Utf16> accessName,
            Pointer<COMObject> metadata,
            Pointer<Pointer<COMObject>> namespaceModelObject,
          )>()(
        ptr.ref.lpVtbl,
        modelName,
        subNamespaceModelName,
        accessName,
        metadata,
        namespaceModelObject,
      );

  int CreateTypedIntrinsicObjectEx(
    Pointer<COMObject> context,
    Pointer<VARIANT> intrinsicData,
    Pointer<COMObject> type,
    Pointer<Pointer<COMObject>> object,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> context,
            Pointer<VARIANT> intrinsicData,
            Pointer<COMObject> type,
            Pointer<Pointer<COMObject>> object,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> context,
            Pointer<VARIANT> intrinsicData,
            Pointer<COMObject> type,
            Pointer<Pointer<COMObject>> object,
          )>()(
        ptr.ref.lpVtbl,
        context,
        intrinsicData,
        type,
        object,
      );
}
