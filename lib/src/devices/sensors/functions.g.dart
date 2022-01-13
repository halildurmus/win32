// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../combase.dart';
import '../../guid.dart';
import '../../devices/sensors/structs.g.dart';
import '../../specialTypes.dart';
import '../../ui/shell/propertiessystem/structs.g.dart';
import '../../foundation/structs.g.dart'; // -----------------------------------------------------------------------

// sensorsutilsv2.dll
// -----------------------------------------------------------------------
final _sensorsutilsv2 = DynamicLibrary.open('sensorsutilsv2.dll');

int CollectionsListAllocateBufferAndSerialize(
  Pointer<SENSOR_COLLECTION_LIST> SourceCollection,
  Pointer<Uint32> pTargetBufferSizeInBytes,
  Pointer<Pointer<Uint8>> pTargetBuffer,
) =>
    _CollectionsListAllocateBufferAndSerialize(
      SourceCollection,
      pTargetBufferSizeInBytes,
      pTargetBuffer,
    );

late final _CollectionsListAllocateBufferAndSerialize =
    _sensorsutilsv2.lookupFunction<
        Int32 Function(
  Pointer<SENSOR_COLLECTION_LIST> SourceCollection,
  Pointer<Uint32> pTargetBufferSizeInBytes,
  Pointer<Pointer<Uint8>> pTargetBuffer,
),
        int Function(
  Pointer<SENSOR_COLLECTION_LIST> SourceCollection,
  Pointer<Uint32> pTargetBufferSizeInBytes,
  Pointer<Pointer<Uint8>> pTargetBuffer,
)>('CollectionsListAllocateBufferAndSerialize');

int CollectionsListCopyAndMarshall(
  Pointer<SENSOR_COLLECTION_LIST> Target,
  Pointer<SENSOR_COLLECTION_LIST> Source,
) =>
    _CollectionsListCopyAndMarshall(
      Target,
      Source,
    );

late final _CollectionsListCopyAndMarshall = _sensorsutilsv2.lookupFunction<
    Int32 Function(
  Pointer<SENSOR_COLLECTION_LIST> Target,
  Pointer<SENSOR_COLLECTION_LIST> Source,
),
    int Function(
  Pointer<SENSOR_COLLECTION_LIST> Target,
  Pointer<SENSOR_COLLECTION_LIST> Source,
)>('CollectionsListCopyAndMarshall');

int CollectionsListDeserializeFromBuffer(
  int SourceBufferSizeInBytes,
  Pointer<Uint8> SourceBuffer,
  Pointer<SENSOR_COLLECTION_LIST> TargetCollection,
) =>
    _CollectionsListDeserializeFromBuffer(
      SourceBufferSizeInBytes,
      SourceBuffer,
      TargetCollection,
    );

late final _CollectionsListDeserializeFromBuffer =
    _sensorsutilsv2.lookupFunction<
        Int32 Function(
  Uint32 SourceBufferSizeInBytes,
  Pointer<Uint8> SourceBuffer,
  Pointer<SENSOR_COLLECTION_LIST> TargetCollection,
),
        int Function(
  int SourceBufferSizeInBytes,
  Pointer<Uint8> SourceBuffer,
  Pointer<SENSOR_COLLECTION_LIST> TargetCollection,
)>('CollectionsListDeserializeFromBuffer');

int CollectionsListGetFillableCount(
  int BufferSizeBytes,
) =>
    _CollectionsListGetFillableCount(
      BufferSizeBytes,
    );

late final _CollectionsListGetFillableCount = _sensorsutilsv2.lookupFunction<
    Uint32 Function(
  Uint32 BufferSizeBytes,
),
    int Function(
  int BufferSizeBytes,
)>('CollectionsListGetFillableCount');

int CollectionsListGetMarshalledSize(
  Pointer<SENSOR_COLLECTION_LIST> Collection,
) =>
    _CollectionsListGetMarshalledSize(
      Collection,
    );

late final _CollectionsListGetMarshalledSize = _sensorsutilsv2.lookupFunction<
    Uint32 Function(
  Pointer<SENSOR_COLLECTION_LIST> Collection,
),
    int Function(
  Pointer<SENSOR_COLLECTION_LIST> Collection,
)>('CollectionsListGetMarshalledSize');

int CollectionsListGetMarshalledSizeWithoutSerialization(
  Pointer<SENSOR_COLLECTION_LIST> Collection,
) =>
    _CollectionsListGetMarshalledSizeWithoutSerialization(
      Collection,
    );

late final _CollectionsListGetMarshalledSizeWithoutSerialization =
    _sensorsutilsv2.lookupFunction<
        Uint32 Function(
  Pointer<SENSOR_COLLECTION_LIST> Collection,
),
        int Function(
  Pointer<SENSOR_COLLECTION_LIST> Collection,
)>('CollectionsListGetMarshalledSizeWithoutSerialization');

int CollectionsListGetSerializedSize(
  Pointer<SENSOR_COLLECTION_LIST> Collection,
) =>
    _CollectionsListGetSerializedSize(
      Collection,
    );

late final _CollectionsListGetSerializedSize = _sensorsutilsv2.lookupFunction<
    Uint32 Function(
  Pointer<SENSOR_COLLECTION_LIST> Collection,
),
    int Function(
  Pointer<SENSOR_COLLECTION_LIST> Collection,
)>('CollectionsListGetSerializedSize');

int CollectionsListMarshall(
  Pointer<SENSOR_COLLECTION_LIST> Target,
) =>
    _CollectionsListMarshall(
      Target,
    );

late final _CollectionsListMarshall = _sensorsutilsv2.lookupFunction<
    Int32 Function(
  Pointer<SENSOR_COLLECTION_LIST> Target,
),
    int Function(
  Pointer<SENSOR_COLLECTION_LIST> Target,
)>('CollectionsListMarshall');

int CollectionsListSerializeToBuffer(
  Pointer<SENSOR_COLLECTION_LIST> SourceCollection,
  int TargetBufferSizeInBytes,
  Pointer<Uint8> TargetBuffer,
) =>
    _CollectionsListSerializeToBuffer(
      SourceCollection,
      TargetBufferSizeInBytes,
      TargetBuffer,
    );

late final _CollectionsListSerializeToBuffer = _sensorsutilsv2.lookupFunction<
    Int32 Function(
  Pointer<SENSOR_COLLECTION_LIST> SourceCollection,
  Uint32 TargetBufferSizeInBytes,
  Pointer<Uint8> TargetBuffer,
),
    int Function(
  Pointer<SENSOR_COLLECTION_LIST> SourceCollection,
  int TargetBufferSizeInBytes,
  Pointer<Uint8> TargetBuffer,
)>('CollectionsListSerializeToBuffer');

int CollectionsListSortSubscribedActivitiesByConfidence(
  Pointer<SENSOR_COLLECTION_LIST> thresholds,
  Pointer<SENSOR_COLLECTION_LIST> pCollection,
) =>
    _CollectionsListSortSubscribedActivitiesByConfidence(
      thresholds,
      pCollection,
    );

late final _CollectionsListSortSubscribedActivitiesByConfidence =
    _sensorsutilsv2.lookupFunction<
        Int32 Function(
  Pointer<SENSOR_COLLECTION_LIST> thresholds,
  Pointer<SENSOR_COLLECTION_LIST> pCollection,
),
        int Function(
  Pointer<SENSOR_COLLECTION_LIST> thresholds,
  Pointer<SENSOR_COLLECTION_LIST> pCollection,
)>('CollectionsListSortSubscribedActivitiesByConfidence');

int CollectionsListUpdateMarshalledPointer(
  Pointer<SENSOR_COLLECTION_LIST> Collection,
) =>
    _CollectionsListUpdateMarshalledPointer(
      Collection,
    );

late final _CollectionsListUpdateMarshalledPointer =
    _sensorsutilsv2.lookupFunction<
        Int32 Function(
  Pointer<SENSOR_COLLECTION_LIST> Collection,
),
        int Function(
  Pointer<SENSOR_COLLECTION_LIST> Collection,
)>('CollectionsListUpdateMarshalledPointer');

int EvaluateActivityThresholds(
  Pointer<SENSOR_COLLECTION_LIST> newSample,
  Pointer<SENSOR_COLLECTION_LIST> oldSample,
  Pointer<SENSOR_COLLECTION_LIST> thresholds,
) =>
    _EvaluateActivityThresholds(
      newSample,
      oldSample,
      thresholds,
    );

late final _EvaluateActivityThresholds = _sensorsutilsv2.lookupFunction<
    Uint8 Function(
  Pointer<SENSOR_COLLECTION_LIST> newSample,
  Pointer<SENSOR_COLLECTION_LIST> oldSample,
  Pointer<SENSOR_COLLECTION_LIST> thresholds,
),
    int Function(
  Pointer<SENSOR_COLLECTION_LIST> newSample,
  Pointer<SENSOR_COLLECTION_LIST> oldSample,
  Pointer<SENSOR_COLLECTION_LIST> thresholds,
)>('EvaluateActivityThresholds');

int GetPerformanceTime(
  Pointer<Uint32> TimeMs,
) =>
    _GetPerformanceTime(
      TimeMs,
    );

late final _GetPerformanceTime = _sensorsutilsv2.lookupFunction<
    Int32 Function(
  Pointer<Uint32> TimeMs,
),
    int Function(
  Pointer<Uint32> TimeMs,
)>('GetPerformanceTime');

int InitPropVariantFromCLSIDArray(
  Pointer<GUID> members,
  int size,
  Pointer<PROPVARIANT> ppropvar,
) =>
    _InitPropVariantFromCLSIDArray(
      members,
      size,
      ppropvar,
    );

late final _InitPropVariantFromCLSIDArray = _sensorsutilsv2.lookupFunction<
    Int32 Function(
  Pointer<GUID> members,
  Uint32 size,
  Pointer<PROPVARIANT> ppropvar,
),
    int Function(
  Pointer<GUID> members,
  int size,
  Pointer<PROPVARIANT> ppropvar,
)>('InitPropVariantFromCLSIDArray');

int InitPropVariantFromFloat(
  double fltVal,
  Pointer<PROPVARIANT> ppropvar,
) =>
    _InitPropVariantFromFloat(
      fltVal,
      ppropvar,
    );

late final _InitPropVariantFromFloat = _sensorsutilsv2.lookupFunction<
    Int32 Function(
  Float fltVal,
  Pointer<PROPVARIANT> ppropvar,
),
    int Function(
  double fltVal,
  Pointer<PROPVARIANT> ppropvar,
)>('InitPropVariantFromFloat');

int IsCollectionListSame(
  Pointer<SENSOR_COLLECTION_LIST> ListA,
  Pointer<SENSOR_COLLECTION_LIST> ListB,
) =>
    _IsCollectionListSame(
      ListA,
      ListB,
    );

late final _IsCollectionListSame = _sensorsutilsv2.lookupFunction<
    Uint8 Function(
  Pointer<SENSOR_COLLECTION_LIST> ListA,
  Pointer<SENSOR_COLLECTION_LIST> ListB,
),
    int Function(
  Pointer<SENSOR_COLLECTION_LIST> ListA,
  Pointer<SENSOR_COLLECTION_LIST> ListB,
)>('IsCollectionListSame');

int IsGUIDPresentInList(
  Pointer<GUID> guidArray,
  int arrayLength,
  Pointer<GUID> guidElem,
) =>
    _IsGUIDPresentInList(
      guidArray,
      arrayLength,
      guidElem,
    );

late final _IsGUIDPresentInList = _sensorsutilsv2.lookupFunction<
    Uint8 Function(
  Pointer<GUID> guidArray,
  Uint32 arrayLength,
  Pointer<GUID> guidElem,
),
    int Function(
  Pointer<GUID> guidArray,
  int arrayLength,
  Pointer<GUID> guidElem,
)>('IsGUIDPresentInList');

int IsKeyPresentInCollectionList(
  Pointer<SENSOR_COLLECTION_LIST> pList,
  Pointer<PROPERTYKEY> pKey,
) =>
    _IsKeyPresentInCollectionList(
      pList,
      pKey,
    );

late final _IsKeyPresentInCollectionList = _sensorsutilsv2.lookupFunction<
    Uint8 Function(
  Pointer<SENSOR_COLLECTION_LIST> pList,
  Pointer<PROPERTYKEY> pKey,
),
    int Function(
  Pointer<SENSOR_COLLECTION_LIST> pList,
  Pointer<PROPERTYKEY> pKey,
)>('IsKeyPresentInCollectionList');

int IsKeyPresentInPropertyList(
  Pointer<SENSOR_PROPERTY_LIST> pList,
  Pointer<PROPERTYKEY> pKey,
) =>
    _IsKeyPresentInPropertyList(
      pList,
      pKey,
    );

late final _IsKeyPresentInPropertyList = _sensorsutilsv2.lookupFunction<
    Uint8 Function(
  Pointer<SENSOR_PROPERTY_LIST> pList,
  Pointer<PROPERTYKEY> pKey,
),
    int Function(
  Pointer<SENSOR_PROPERTY_LIST> pList,
  Pointer<PROPERTYKEY> pKey,
)>('IsKeyPresentInPropertyList');

int IsSensorSubscribed(
  Pointer<SENSOR_COLLECTION_LIST> subscriptionList,
  GUID currentType,
) =>
    _IsSensorSubscribed(
      subscriptionList,
      currentType,
    );

late final _IsSensorSubscribed = _sensorsutilsv2.lookupFunction<
    Uint8 Function(
  Pointer<SENSOR_COLLECTION_LIST> subscriptionList,
  GUID currentType,
),
    int Function(
  Pointer<SENSOR_COLLECTION_LIST> subscriptionList,
  GUID currentType,
)>('IsSensorSubscribed');

int PropKeyFindKeyGetBool(
  Pointer<SENSOR_COLLECTION_LIST> pList,
  Pointer<PROPERTYKEY> pKey,
  Pointer<Int32> pRetValue,
) =>
    _PropKeyFindKeyGetBool(
      pList,
      pKey,
      pRetValue,
    );

late final _PropKeyFindKeyGetBool = _sensorsutilsv2.lookupFunction<
    Int32 Function(
  Pointer<SENSOR_COLLECTION_LIST> pList,
  Pointer<PROPERTYKEY> pKey,
  Pointer<Int32> pRetValue,
),
    int Function(
  Pointer<SENSOR_COLLECTION_LIST> pList,
  Pointer<PROPERTYKEY> pKey,
  Pointer<Int32> pRetValue,
)>('PropKeyFindKeyGetBool');

int PropKeyFindKeyGetDouble(
  Pointer<SENSOR_COLLECTION_LIST> pList,
  Pointer<PROPERTYKEY> pKey,
  Pointer<Double> pRetValue,
) =>
    _PropKeyFindKeyGetDouble(
      pList,
      pKey,
      pRetValue,
    );

late final _PropKeyFindKeyGetDouble = _sensorsutilsv2.lookupFunction<
    Int32 Function(
  Pointer<SENSOR_COLLECTION_LIST> pList,
  Pointer<PROPERTYKEY> pKey,
  Pointer<Double> pRetValue,
),
    int Function(
  Pointer<SENSOR_COLLECTION_LIST> pList,
  Pointer<PROPERTYKEY> pKey,
  Pointer<Double> pRetValue,
)>('PropKeyFindKeyGetDouble');

int PropKeyFindKeyGetFileTime(
  Pointer<SENSOR_COLLECTION_LIST> pList,
  Pointer<PROPERTYKEY> pKey,
  Pointer<FILETIME> pRetValue,
) =>
    _PropKeyFindKeyGetFileTime(
      pList,
      pKey,
      pRetValue,
    );

late final _PropKeyFindKeyGetFileTime = _sensorsutilsv2.lookupFunction<
    Int32 Function(
  Pointer<SENSOR_COLLECTION_LIST> pList,
  Pointer<PROPERTYKEY> pKey,
  Pointer<FILETIME> pRetValue,
),
    int Function(
  Pointer<SENSOR_COLLECTION_LIST> pList,
  Pointer<PROPERTYKEY> pKey,
  Pointer<FILETIME> pRetValue,
)>('PropKeyFindKeyGetFileTime');

int PropKeyFindKeyGetFloat(
  Pointer<SENSOR_COLLECTION_LIST> pList,
  Pointer<PROPERTYKEY> pKey,
  Pointer<Float> pRetValue,
) =>
    _PropKeyFindKeyGetFloat(
      pList,
      pKey,
      pRetValue,
    );

late final _PropKeyFindKeyGetFloat = _sensorsutilsv2.lookupFunction<
    Int32 Function(
  Pointer<SENSOR_COLLECTION_LIST> pList,
  Pointer<PROPERTYKEY> pKey,
  Pointer<Float> pRetValue,
),
    int Function(
  Pointer<SENSOR_COLLECTION_LIST> pList,
  Pointer<PROPERTYKEY> pKey,
  Pointer<Float> pRetValue,
)>('PropKeyFindKeyGetFloat');

int PropKeyFindKeyGetGuid(
  Pointer<SENSOR_COLLECTION_LIST> pList,
  Pointer<PROPERTYKEY> pKey,
  Pointer<GUID> pRetValue,
) =>
    _PropKeyFindKeyGetGuid(
      pList,
      pKey,
      pRetValue,
    );

late final _PropKeyFindKeyGetGuid = _sensorsutilsv2.lookupFunction<
    Int32 Function(
  Pointer<SENSOR_COLLECTION_LIST> pList,
  Pointer<PROPERTYKEY> pKey,
  Pointer<GUID> pRetValue,
),
    int Function(
  Pointer<SENSOR_COLLECTION_LIST> pList,
  Pointer<PROPERTYKEY> pKey,
  Pointer<GUID> pRetValue,
)>('PropKeyFindKeyGetGuid');

int PropKeyFindKeyGetInt32(
  Pointer<SENSOR_COLLECTION_LIST> pList,
  Pointer<PROPERTYKEY> pKey,
  Pointer<Int32> pRetValue,
) =>
    _PropKeyFindKeyGetInt32(
      pList,
      pKey,
      pRetValue,
    );

late final _PropKeyFindKeyGetInt32 = _sensorsutilsv2.lookupFunction<
    Int32 Function(
  Pointer<SENSOR_COLLECTION_LIST> pList,
  Pointer<PROPERTYKEY> pKey,
  Pointer<Int32> pRetValue,
),
    int Function(
  Pointer<SENSOR_COLLECTION_LIST> pList,
  Pointer<PROPERTYKEY> pKey,
  Pointer<Int32> pRetValue,
)>('PropKeyFindKeyGetInt32');

int PropKeyFindKeyGetInt64(
  Pointer<SENSOR_COLLECTION_LIST> pList,
  Pointer<PROPERTYKEY> pKey,
  Pointer<Int64> pRetValue,
) =>
    _PropKeyFindKeyGetInt64(
      pList,
      pKey,
      pRetValue,
    );

late final _PropKeyFindKeyGetInt64 = _sensorsutilsv2.lookupFunction<
    Int32 Function(
  Pointer<SENSOR_COLLECTION_LIST> pList,
  Pointer<PROPERTYKEY> pKey,
  Pointer<Int64> pRetValue,
),
    int Function(
  Pointer<SENSOR_COLLECTION_LIST> pList,
  Pointer<PROPERTYKEY> pKey,
  Pointer<Int64> pRetValue,
)>('PropKeyFindKeyGetInt64');

int PropKeyFindKeyGetNthInt64(
  Pointer<SENSOR_COLLECTION_LIST> pList,
  Pointer<PROPERTYKEY> pKey,
  int Occurrence,
  Pointer<Int64> pRetValue,
) =>
    _PropKeyFindKeyGetNthInt64(
      pList,
      pKey,
      Occurrence,
      pRetValue,
    );

late final _PropKeyFindKeyGetNthInt64 = _sensorsutilsv2.lookupFunction<
    Int32 Function(
  Pointer<SENSOR_COLLECTION_LIST> pList,
  Pointer<PROPERTYKEY> pKey,
  Uint32 Occurrence,
  Pointer<Int64> pRetValue,
),
    int Function(
  Pointer<SENSOR_COLLECTION_LIST> pList,
  Pointer<PROPERTYKEY> pKey,
  int Occurrence,
  Pointer<Int64> pRetValue,
)>('PropKeyFindKeyGetNthInt64');

int PropKeyFindKeyGetNthUlong(
  Pointer<SENSOR_COLLECTION_LIST> pList,
  Pointer<PROPERTYKEY> pKey,
  int Occurrence,
  Pointer<Uint32> pRetValue,
) =>
    _PropKeyFindKeyGetNthUlong(
      pList,
      pKey,
      Occurrence,
      pRetValue,
    );

late final _PropKeyFindKeyGetNthUlong = _sensorsutilsv2.lookupFunction<
    Int32 Function(
  Pointer<SENSOR_COLLECTION_LIST> pList,
  Pointer<PROPERTYKEY> pKey,
  Uint32 Occurrence,
  Pointer<Uint32> pRetValue,
),
    int Function(
  Pointer<SENSOR_COLLECTION_LIST> pList,
  Pointer<PROPERTYKEY> pKey,
  int Occurrence,
  Pointer<Uint32> pRetValue,
)>('PropKeyFindKeyGetNthUlong');

int PropKeyFindKeyGetNthUshort(
  Pointer<SENSOR_COLLECTION_LIST> pList,
  Pointer<PROPERTYKEY> pKey,
  int Occurrence,
  Pointer<Uint16> pRetValue,
) =>
    _PropKeyFindKeyGetNthUshort(
      pList,
      pKey,
      Occurrence,
      pRetValue,
    );

late final _PropKeyFindKeyGetNthUshort = _sensorsutilsv2.lookupFunction<
    Int32 Function(
  Pointer<SENSOR_COLLECTION_LIST> pList,
  Pointer<PROPERTYKEY> pKey,
  Uint32 Occurrence,
  Pointer<Uint16> pRetValue,
),
    int Function(
  Pointer<SENSOR_COLLECTION_LIST> pList,
  Pointer<PROPERTYKEY> pKey,
  int Occurrence,
  Pointer<Uint16> pRetValue,
)>('PropKeyFindKeyGetNthUshort');

int PropKeyFindKeyGetPropVariant(
  Pointer<SENSOR_COLLECTION_LIST> pList,
  Pointer<PROPERTYKEY> pKey,
  int TypeCheck,
  Pointer<PROPVARIANT> pValue,
) =>
    _PropKeyFindKeyGetPropVariant(
      pList,
      pKey,
      TypeCheck,
      pValue,
    );

late final _PropKeyFindKeyGetPropVariant = _sensorsutilsv2.lookupFunction<
    Int32 Function(
  Pointer<SENSOR_COLLECTION_LIST> pList,
  Pointer<PROPERTYKEY> pKey,
  Uint8 TypeCheck,
  Pointer<PROPVARIANT> pValue,
),
    int Function(
  Pointer<SENSOR_COLLECTION_LIST> pList,
  Pointer<PROPERTYKEY> pKey,
  int TypeCheck,
  Pointer<PROPVARIANT> pValue,
)>('PropKeyFindKeyGetPropVariant');

int PropKeyFindKeyGetUlong(
  Pointer<SENSOR_COLLECTION_LIST> pList,
  Pointer<PROPERTYKEY> pKey,
  Pointer<Uint32> pRetValue,
) =>
    _PropKeyFindKeyGetUlong(
      pList,
      pKey,
      pRetValue,
    );

late final _PropKeyFindKeyGetUlong = _sensorsutilsv2.lookupFunction<
    Int32 Function(
  Pointer<SENSOR_COLLECTION_LIST> pList,
  Pointer<PROPERTYKEY> pKey,
  Pointer<Uint32> pRetValue,
),
    int Function(
  Pointer<SENSOR_COLLECTION_LIST> pList,
  Pointer<PROPERTYKEY> pKey,
  Pointer<Uint32> pRetValue,
)>('PropKeyFindKeyGetUlong');

int PropKeyFindKeyGetUshort(
  Pointer<SENSOR_COLLECTION_LIST> pList,
  Pointer<PROPERTYKEY> pKey,
  Pointer<Uint16> pRetValue,
) =>
    _PropKeyFindKeyGetUshort(
      pList,
      pKey,
      pRetValue,
    );

late final _PropKeyFindKeyGetUshort = _sensorsutilsv2.lookupFunction<
    Int32 Function(
  Pointer<SENSOR_COLLECTION_LIST> pList,
  Pointer<PROPERTYKEY> pKey,
  Pointer<Uint16> pRetValue,
),
    int Function(
  Pointer<SENSOR_COLLECTION_LIST> pList,
  Pointer<PROPERTYKEY> pKey,
  Pointer<Uint16> pRetValue,
)>('PropKeyFindKeyGetUshort');

int PropKeyFindKeySetPropVariant(
  Pointer<SENSOR_COLLECTION_LIST> pList,
  Pointer<PROPERTYKEY> pKey,
  int TypeCheck,
  Pointer<PROPVARIANT> pValue,
) =>
    _PropKeyFindKeySetPropVariant(
      pList,
      pKey,
      TypeCheck,
      pValue,
    );

late final _PropKeyFindKeySetPropVariant = _sensorsutilsv2.lookupFunction<
    Int32 Function(
  Pointer<SENSOR_COLLECTION_LIST> pList,
  Pointer<PROPERTYKEY> pKey,
  Uint8 TypeCheck,
  Pointer<PROPVARIANT> pValue,
),
    int Function(
  Pointer<SENSOR_COLLECTION_LIST> pList,
  Pointer<PROPERTYKEY> pKey,
  int TypeCheck,
  Pointer<PROPVARIANT> pValue,
)>('PropKeyFindKeySetPropVariant');

int PropVariantGetInformation(
  Pointer<PROPVARIANT> PropVariantValue,
  Pointer<Uint32> PropVariantOffset,
  Pointer<Uint32> PropVariantSize,
  Pointer<Pointer> PropVariantPointer,
  Pointer<Uint32> RemappedType,
) =>
    _PropVariantGetInformation(
      PropVariantValue,
      PropVariantOffset,
      PropVariantSize,
      PropVariantPointer,
      RemappedType,
    );

late final _PropVariantGetInformation = _sensorsutilsv2.lookupFunction<
    Int32 Function(
  Pointer<PROPVARIANT> PropVariantValue,
  Pointer<Uint32> PropVariantOffset,
  Pointer<Uint32> PropVariantSize,
  Pointer<Pointer> PropVariantPointer,
  Pointer<Uint32> RemappedType,
),
    int Function(
  Pointer<PROPVARIANT> PropVariantValue,
  Pointer<Uint32> PropVariantOffset,
  Pointer<Uint32> PropVariantSize,
  Pointer<Pointer> PropVariantPointer,
  Pointer<Uint32> RemappedType,
)>('PropVariantGetInformation');

int PropertiesListCopy(
  Pointer<SENSOR_PROPERTY_LIST> Target,
  Pointer<SENSOR_PROPERTY_LIST> Source,
) =>
    _PropertiesListCopy(
      Target,
      Source,
    );

late final _PropertiesListCopy = _sensorsutilsv2.lookupFunction<
    Int32 Function(
  Pointer<SENSOR_PROPERTY_LIST> Target,
  Pointer<SENSOR_PROPERTY_LIST> Source,
),
    int Function(
  Pointer<SENSOR_PROPERTY_LIST> Target,
  Pointer<SENSOR_PROPERTY_LIST> Source,
)>('PropertiesListCopy');

int PropertiesListGetFillableCount(
  int BufferSizeBytes,
) =>
    _PropertiesListGetFillableCount(
      BufferSizeBytes,
    );

late final _PropertiesListGetFillableCount = _sensorsutilsv2.lookupFunction<
    Uint32 Function(
  Uint32 BufferSizeBytes,
),
    int Function(
  int BufferSizeBytes,
)>('PropertiesListGetFillableCount');

int SensorCollectionGetAt(
  int Index,
  Pointer<SENSOR_COLLECTION_LIST> pSensorsList,
  Pointer<PROPERTYKEY> pKey,
  Pointer<PROPVARIANT> pValue,
) =>
    _SensorCollectionGetAt(
      Index,
      pSensorsList,
      pKey,
      pValue,
    );

late final _SensorCollectionGetAt = _sensorsutilsv2.lookupFunction<
    Int32 Function(
  Uint32 Index,
  Pointer<SENSOR_COLLECTION_LIST> pSensorsList,
  Pointer<PROPERTYKEY> pKey,
  Pointer<PROPVARIANT> pValue,
),
    int Function(
  int Index,
  Pointer<SENSOR_COLLECTION_LIST> pSensorsList,
  Pointer<PROPERTYKEY> pKey,
  Pointer<PROPVARIANT> pValue,
)>('SensorCollectionGetAt');

int SerializationBufferAllocate(
  int SizeInBytes,
  Pointer<Pointer<Uint8>> pBuffer,
) =>
    _SerializationBufferAllocate(
      SizeInBytes,
      pBuffer,
    );

late final _SerializationBufferAllocate = _sensorsutilsv2.lookupFunction<
    Int32 Function(
  Uint32 SizeInBytes,
  Pointer<Pointer<Uint8>> pBuffer,
),
    int Function(
  int SizeInBytes,
  Pointer<Pointer<Uint8>> pBuffer,
)>('SerializationBufferAllocate');

void SerializationBufferFree(
  Pointer<Uint8> Buffer,
) =>
    _SerializationBufferFree(
      Buffer,
    );

late final _SerializationBufferFree = _sensorsutilsv2.lookupFunction<
    Void Function(
  Pointer<Uint8> Buffer,
),
    void Function(
  Pointer<Uint8> Buffer,
)>('SerializationBufferFree');
