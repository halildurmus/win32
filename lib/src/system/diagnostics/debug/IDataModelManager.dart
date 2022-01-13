// IDataModelManager.dart

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
import '../../../system/diagnostics/debug/IDebugHostContext.dart';
import '../../../system/diagnostics/debug/structs.g.dart';
import '../../../system/diagnostics/debug/IDebugHostType.dart';
import '../../../system/diagnostics/debug/IDataModelConcept.dart';
import '../../../specialTypes.dart';
import '../../../system/diagnostics/debug/IDebugHostTypeSignature.dart';
import '../../../system/diagnostics/debug/IDebugHostSymbolEnumerator.dart';
import '../../../system/diagnostics/debug/IKeyStore.dart';

/// @nodoc
const IID_IDataModelManager = '{73FE19F4-A110-4500-8ED9-3C28896F508C}';

/// {@category Interface}
/// {@category com}
class IDataModelManager extends IUnknown {
  // vtable begins at 3, is 20 entries long.
  IDataModelManager(Pointer<COMObject> ptr) : super(ptr);

  int Close() => ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int CreateNoValue(
    Pointer<Pointer<COMObject>> object,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> object,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> object,
          )>()(
        ptr.ref.lpVtbl,
        object,
      );

  int CreateErrorObject(
    int hrError,
    Pointer<Utf16> pwszMessage,
    Pointer<Pointer<COMObject>> object,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hrError,
            Pointer<Utf16> pwszMessage,
            Pointer<Pointer<COMObject>> object,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hrError,
            Pointer<Utf16> pwszMessage,
            Pointer<Pointer<COMObject>> object,
          )>()(
        ptr.ref.lpVtbl,
        hrError,
        pwszMessage,
        object,
      );

  int CreateTypedObject(
    Pointer<COMObject> context,
    Location objectLocation,
    Pointer<COMObject> objectType,
    Pointer<Pointer<COMObject>> object,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> context,
            Location objectLocation,
            Pointer<COMObject> objectType,
            Pointer<Pointer<COMObject>> object,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> context,
            Location objectLocation,
            Pointer<COMObject> objectType,
            Pointer<Pointer<COMObject>> object,
          )>()(
        ptr.ref.lpVtbl,
        context,
        objectLocation,
        objectType,
        object,
      );

  int CreateTypedObjectReference(
    Pointer<COMObject> context,
    Location objectLocation,
    Pointer<COMObject> objectType,
    Pointer<Pointer<COMObject>> object,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> context,
            Location objectLocation,
            Pointer<COMObject> objectType,
            Pointer<Pointer<COMObject>> object,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> context,
            Location objectLocation,
            Pointer<COMObject> objectType,
            Pointer<Pointer<COMObject>> object,
          )>()(
        ptr.ref.lpVtbl,
        context,
        objectLocation,
        objectType,
        object,
      );

  int CreateSyntheticObject(
    Pointer<COMObject> context,
    Pointer<Pointer<COMObject>> object,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> context,
            Pointer<Pointer<COMObject>> object,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> context,
            Pointer<Pointer<COMObject>> object,
          )>()(
        ptr.ref.lpVtbl,
        context,
        object,
      );

  int CreateDataModelObject(
    Pointer<COMObject> dataModel,
    Pointer<Pointer<COMObject>> object,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> dataModel,
            Pointer<Pointer<COMObject>> object,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> dataModel,
            Pointer<Pointer<COMObject>> object,
          )>()(
        ptr.ref.lpVtbl,
        dataModel,
        object,
      );

  int CreateIntrinsicObject(
    int objectKind,
    Pointer<VARIANT> intrinsicData,
    Pointer<Pointer<COMObject>> object,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 objectKind,
            Pointer<VARIANT> intrinsicData,
            Pointer<Pointer<COMObject>> object,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int objectKind,
            Pointer<VARIANT> intrinsicData,
            Pointer<Pointer<COMObject>> object,
          )>()(
        ptr.ref.lpVtbl,
        objectKind,
        intrinsicData,
        object,
      );

  int CreateTypedIntrinsicObject(
    Pointer<VARIANT> intrinsicData,
    Pointer<COMObject> type,
    Pointer<Pointer<COMObject>> object,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> intrinsicData,
            Pointer<COMObject> type,
            Pointer<Pointer<COMObject>> object,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> intrinsicData,
            Pointer<COMObject> type,
            Pointer<Pointer<COMObject>> object,
          )>()(
        ptr.ref.lpVtbl,
        intrinsicData,
        type,
        object,
      );

  int GetModelForTypeSignature(
    Pointer<COMObject> typeSignature,
    Pointer<Pointer<COMObject>> dataModel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> typeSignature,
            Pointer<Pointer<COMObject>> dataModel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> typeSignature,
            Pointer<Pointer<COMObject>> dataModel,
          )>()(
        ptr.ref.lpVtbl,
        typeSignature,
        dataModel,
      );

  int GetModelForType(
    Pointer<COMObject> type,
    Pointer<Pointer<COMObject>> dataModel,
    Pointer<Pointer<COMObject>> typeSignature,
    Pointer<Pointer<COMObject>> wildcardMatches,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> type,
            Pointer<Pointer<COMObject>> dataModel,
            Pointer<Pointer<COMObject>> typeSignature,
            Pointer<Pointer<COMObject>> wildcardMatches,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> type,
            Pointer<Pointer<COMObject>> dataModel,
            Pointer<Pointer<COMObject>> typeSignature,
            Pointer<Pointer<COMObject>> wildcardMatches,
          )>()(
        ptr.ref.lpVtbl,
        type,
        dataModel,
        typeSignature,
        wildcardMatches,
      );

  int RegisterModelForTypeSignature(
    Pointer<COMObject> typeSignature,
    Pointer<COMObject> dataModel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> typeSignature,
            Pointer<COMObject> dataModel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> typeSignature,
            Pointer<COMObject> dataModel,
          )>()(
        ptr.ref.lpVtbl,
        typeSignature,
        dataModel,
      );

  int UnregisterModelForTypeSignature(
    Pointer<COMObject> dataModel,
    Pointer<COMObject> typeSignature,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> dataModel,
            Pointer<COMObject> typeSignature,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> dataModel,
            Pointer<COMObject> typeSignature,
          )>()(
        ptr.ref.lpVtbl,
        dataModel,
        typeSignature,
      );

  int RegisterExtensionForTypeSignature(
    Pointer<COMObject> typeSignature,
    Pointer<COMObject> dataModel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> typeSignature,
            Pointer<COMObject> dataModel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> typeSignature,
            Pointer<COMObject> dataModel,
          )>()(
        ptr.ref.lpVtbl,
        typeSignature,
        dataModel,
      );

  int UnregisterExtensionForTypeSignature(
    Pointer<COMObject> dataModel,
    Pointer<COMObject> typeSignature,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> dataModel,
            Pointer<COMObject> typeSignature,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> dataModel,
            Pointer<COMObject> typeSignature,
          )>()(
        ptr.ref.lpVtbl,
        dataModel,
        typeSignature,
      );

  int CreateMetadataStore(
    Pointer<COMObject> parentStore,
    Pointer<Pointer<COMObject>> metadataStore,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> parentStore,
            Pointer<Pointer<COMObject>> metadataStore,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> parentStore,
            Pointer<Pointer<COMObject>> metadataStore,
          )>()(
        ptr.ref.lpVtbl,
        parentStore,
        metadataStore,
      );

  int GetRootNamespace(
    Pointer<Pointer<COMObject>> rootNamespace,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> rootNamespace,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> rootNamespace,
          )>()(
        ptr.ref.lpVtbl,
        rootNamespace,
      );

  int RegisterNamedModel(
    Pointer<Utf16> modelName,
    Pointer<COMObject> modeObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> modelName,
            Pointer<COMObject> modeObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> modelName,
            Pointer<COMObject> modeObject,
          )>()(
        ptr.ref.lpVtbl,
        modelName,
        modeObject,
      );

  int UnregisterNamedModel(
    Pointer<Utf16> modelName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> modelName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> modelName,
          )>()(
        ptr.ref.lpVtbl,
        modelName,
      );

  int AcquireNamedModel(
    Pointer<Utf16> modelName,
    Pointer<Pointer<COMObject>> modelObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> modelName,
            Pointer<Pointer<COMObject>> modelObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> modelName,
            Pointer<Pointer<COMObject>> modelObject,
          )>()(
        ptr.ref.lpVtbl,
        modelName,
        modelObject,
      );
}
