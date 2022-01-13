// IModelObject.dart

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
import '../../../system/diagnostics/debug/IDebugHostContext.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/diagnostics/debug/structs.g.dart';
import '../../../specialTypes.dart';
import '../../../system/diagnostics/debug/IModelObject.dart';
import '../../../system/diagnostics/debug/IKeyStore.dart';
import '../../../system/diagnostics/debug/IKeyEnumerator.dart';
import '../../../system/diagnostics/debug/IRawEnumerator.dart';
import '../../../system/diagnostics/debug/IDebugHostType.dart';

/// @nodoc
const IID_IModelObject = '{E28C7893-3F4B-4B96-BACA-293CDC55F45D}';

/// {@category Interface}
/// {@category com}
class IModelObject extends IUnknown {
  // vtable begins at 3, is 33 entries long.
  IModelObject(Pointer<COMObject> ptr) : super(ptr);

  int GetContext(
    Pointer<Pointer<COMObject>> context,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> context,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> context,
          )>()(
        ptr.ref.lpVtbl,
        context,
      );

  int GetKind(
    Pointer<Int32> kind,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> kind,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> kind,
          )>()(
        ptr.ref.lpVtbl,
        kind,
      );

  int GetIntrinsicValue(
    Pointer<VARIANT> intrinsicData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> intrinsicData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> intrinsicData,
          )>()(
        ptr.ref.lpVtbl,
        intrinsicData,
      );

  int GetIntrinsicValueAs(
    int vt,
    Pointer<VARIANT> intrinsicData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 vt,
            Pointer<VARIANT> intrinsicData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int vt,
            Pointer<VARIANT> intrinsicData,
          )>()(
        ptr.ref.lpVtbl,
        vt,
        intrinsicData,
      );

  int GetKeyValue(
    Pointer<Utf16> key,
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
          .elementAt(8)
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

  int EnumerateKeyValues(
    Pointer<Pointer<COMObject>> enumerator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> enumerator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> enumerator,
          )>()(
        ptr.ref.lpVtbl,
        enumerator,
      );

  int GetRawValue(
    int kind,
    Pointer<Utf16> name,
    int searchFlags,
    Pointer<Pointer<COMObject>> object,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 kind,
            Pointer<Utf16> name,
            Uint32 searchFlags,
            Pointer<Pointer<COMObject>> object,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int kind,
            Pointer<Utf16> name,
            int searchFlags,
            Pointer<Pointer<COMObject>> object,
          )>()(
        ptr.ref.lpVtbl,
        kind,
        name,
        searchFlags,
        object,
      );

  int EnumerateRawValues(
    int kind,
    int searchFlags,
    Pointer<Pointer<COMObject>> enumerator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 kind,
            Uint32 searchFlags,
            Pointer<Pointer<COMObject>> enumerator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int kind,
            int searchFlags,
            Pointer<Pointer<COMObject>> enumerator,
          )>()(
        ptr.ref.lpVtbl,
        kind,
        searchFlags,
        enumerator,
      );

  int Dereference(
    Pointer<Pointer<COMObject>> object,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
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

  int TryCastToRuntimeType(
    Pointer<Pointer<COMObject>> runtimeTypedObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> runtimeTypedObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> runtimeTypedObject,
          )>()(
        ptr.ref.lpVtbl,
        runtimeTypedObject,
      );

  int GetConcept(
    Pointer<GUID> conceptId,
    Pointer<Pointer<COMObject>> conceptInterface,
    Pointer<Pointer<COMObject>> conceptMetadata,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> conceptId,
            Pointer<Pointer<COMObject>> conceptInterface,
            Pointer<Pointer<COMObject>> conceptMetadata,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> conceptId,
            Pointer<Pointer<COMObject>> conceptInterface,
            Pointer<Pointer<COMObject>> conceptMetadata,
          )>()(
        ptr.ref.lpVtbl,
        conceptId,
        conceptInterface,
        conceptMetadata,
      );

  int GetLocation(
    Pointer<Location> location,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Location> location,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Location> location,
          )>()(
        ptr.ref.lpVtbl,
        location,
      );

  int GetTypeInfo(
    Pointer<Pointer<COMObject>> type,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> type,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> type,
          )>()(
        ptr.ref.lpVtbl,
        type,
      );

  int GetTargetInfo(
    Pointer<Location> location,
    Pointer<Pointer<COMObject>> type,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Location> location,
            Pointer<Pointer<COMObject>> type,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Location> location,
            Pointer<Pointer<COMObject>> type,
          )>()(
        ptr.ref.lpVtbl,
        location,
        type,
      );

  int GetNumberOfParentModels(
    Pointer<Uint64> numModels,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> numModels,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> numModels,
          )>()(
        ptr.ref.lpVtbl,
        numModels,
      );

  int GetParentModel(
    int i,
    Pointer<Pointer<COMObject>> model,
    Pointer<Pointer<COMObject>> contextObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 i,
            Pointer<Pointer<COMObject>> model,
            Pointer<Pointer<COMObject>> contextObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int i,
            Pointer<Pointer<COMObject>> model,
            Pointer<Pointer<COMObject>> contextObject,
          )>()(
        ptr.ref.lpVtbl,
        i,
        model,
        contextObject,
      );

  int AddParentModel(
    Pointer<COMObject> model,
    Pointer<COMObject> contextObject,
    int override,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> model,
            Pointer<COMObject> contextObject,
            Uint8 override,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> model,
            Pointer<COMObject> contextObject,
            int override,
          )>()(
        ptr.ref.lpVtbl,
        model,
        contextObject,
        override,
      );

  int RemoveParentModel(
    Pointer<COMObject> model,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> model,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> model,
          )>()(
        ptr.ref.lpVtbl,
        model,
      );

  int GetKey(
    Pointer<Utf16> key,
    Pointer<Pointer<COMObject>> object,
    Pointer<Pointer<COMObject>> metadata,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
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

  int GetKeyReference(
    Pointer<Utf16> key,
    Pointer<Pointer<COMObject>> objectReference,
    Pointer<Pointer<COMObject>> metadata,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> key,
            Pointer<Pointer<COMObject>> objectReference,
            Pointer<Pointer<COMObject>> metadata,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> key,
            Pointer<Pointer<COMObject>> objectReference,
            Pointer<Pointer<COMObject>> metadata,
          )>()(
        ptr.ref.lpVtbl,
        key,
        objectReference,
        metadata,
      );

  int SetKey(
    Pointer<Utf16> key,
    Pointer<COMObject> object,
    Pointer<COMObject> metadata,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
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

  int ClearKeys() => ptr.ref.lpVtbl.value
          .elementAt(25)
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

  int EnumerateKeys(
    Pointer<Pointer<COMObject>> enumerator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> enumerator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> enumerator,
          )>()(
        ptr.ref.lpVtbl,
        enumerator,
      );

  int EnumerateKeyReferences(
    Pointer<Pointer<COMObject>> enumerator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> enumerator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> enumerator,
          )>()(
        ptr.ref.lpVtbl,
        enumerator,
      );

  int SetConcept(
    Pointer<GUID> conceptId,
    Pointer<COMObject> conceptInterface,
    Pointer<COMObject> conceptMetadata,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> conceptId,
            Pointer<COMObject> conceptInterface,
            Pointer<COMObject> conceptMetadata,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> conceptId,
            Pointer<COMObject> conceptInterface,
            Pointer<COMObject> conceptMetadata,
          )>()(
        ptr.ref.lpVtbl,
        conceptId,
        conceptInterface,
        conceptMetadata,
      );

  int ClearConcepts() => ptr.ref.lpVtbl.value
          .elementAt(29)
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

  int GetRawReference(
    int kind,
    Pointer<Utf16> name,
    int searchFlags,
    Pointer<Pointer<COMObject>> object,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 kind,
            Pointer<Utf16> name,
            Uint32 searchFlags,
            Pointer<Pointer<COMObject>> object,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int kind,
            Pointer<Utf16> name,
            int searchFlags,
            Pointer<Pointer<COMObject>> object,
          )>()(
        ptr.ref.lpVtbl,
        kind,
        name,
        searchFlags,
        object,
      );

  int EnumerateRawReferences(
    int kind,
    int searchFlags,
    Pointer<Pointer<COMObject>> enumerator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 kind,
            Uint32 searchFlags,
            Pointer<Pointer<COMObject>> enumerator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int kind,
            int searchFlags,
            Pointer<Pointer<COMObject>> enumerator,
          )>()(
        ptr.ref.lpVtbl,
        kind,
        searchFlags,
        enumerator,
      );

  int SetContextForDataModel(
    Pointer<COMObject> dataModelObject,
    Pointer<COMObject> context,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> dataModelObject,
            Pointer<COMObject> context,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> dataModelObject,
            Pointer<COMObject> context,
          )>()(
        ptr.ref.lpVtbl,
        dataModelObject,
        context,
      );

  int GetContextForDataModel(
    Pointer<COMObject> dataModelObject,
    Pointer<Pointer<COMObject>> context,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> dataModelObject,
            Pointer<Pointer<COMObject>> context,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> dataModelObject,
            Pointer<Pointer<COMObject>> context,
          )>()(
        ptr.ref.lpVtbl,
        dataModelObject,
        context,
      );

  int Compare(
    Pointer<COMObject> other,
    Pointer<Pointer<COMObject>> ppResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> other,
            Pointer<Pointer<COMObject>> ppResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> other,
            Pointer<Pointer<COMObject>> ppResult,
          )>()(
        ptr.ref.lpVtbl,
        other,
        ppResult,
      );

  int IsEqualTo(
    Pointer<COMObject> other,
    Pointer<Bool> equal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> other,
            Pointer<Bool> equal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> other,
            Pointer<Bool> equal,
          )>()(
        ptr.ref.lpVtbl,
        other,
        equal,
      );
}
