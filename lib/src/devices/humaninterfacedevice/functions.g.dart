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
import '../../foundation/structs.g.dart';
import '../../system/com/IUnknown.dart';
import '../../devices/humaninterfacedevice/structs.g.dart';
import '../../devices/humaninterfacedevice/callbacks.g.dart'; // -----------------------------------------------------------------------

// dinput8.dll
// -----------------------------------------------------------------------
final _dinput8 = DynamicLibrary.open('dinput8.dll');

int DirectInput8Create(
  int hinst,
  int dwVersion,
  Pointer<GUID> riidltf,
  Pointer<Pointer> ppvOut,
  Pointer<COMObject> punkOuter,
) =>
    _DirectInput8Create(
      hinst,
      dwVersion,
      riidltf,
      ppvOut,
      punkOuter,
    );

late final _DirectInput8Create = _dinput8.lookupFunction<
    Int32 Function(
  IntPtr hinst,
  Uint32 dwVersion,
  Pointer<GUID> riidltf,
  Pointer<Pointer> ppvOut,
  Pointer<COMObject> punkOuter,
),
    int Function(
  int hinst,
  int dwVersion,
  Pointer<GUID> riidltf,
  Pointer<Pointer> ppvOut,
  Pointer<COMObject> punkOuter,
)>('DirectInput8Create');

// -----------------------------------------------------------------------
// winmm.dll
// -----------------------------------------------------------------------
final _winmm = DynamicLibrary.open('winmm.dll');

int joyConfigChanged(
  int dwFlags,
) =>
    _joyConfigChanged(
      dwFlags,
    );

late final _joyConfigChanged = _winmm.lookupFunction<
    Uint32 Function(
  Uint32 dwFlags,
),
    int Function(
  int dwFlags,
)>('joyConfigChanged');

// -----------------------------------------------------------------------
// hid.dll
// -----------------------------------------------------------------------
final _hid = DynamicLibrary.open('hid.dll');

int HidD_FlushQueue(
  int HidDeviceObject,
) =>
    _HidD_FlushQueue(
      HidDeviceObject,
    );

late final _HidD_FlushQueue = _hid.lookupFunction<
    Uint8 Function(
  IntPtr HidDeviceObject,
),
    int Function(
  int HidDeviceObject,
)>('HidD_FlushQueue');

int HidD_FreePreparsedData(
  int PreparsedData,
) =>
    _HidD_FreePreparsedData(
      PreparsedData,
    );

late final _HidD_FreePreparsedData = _hid.lookupFunction<
    Uint8 Function(
  IntPtr PreparsedData,
),
    int Function(
  int PreparsedData,
)>('HidD_FreePreparsedData');

int HidD_GetAttributes(
  int HidDeviceObject,
  Pointer<HIDD_ATTRIBUTES> Attributes,
) =>
    _HidD_GetAttributes(
      HidDeviceObject,
      Attributes,
    );

late final _HidD_GetAttributes = _hid.lookupFunction<
    Uint8 Function(
  IntPtr HidDeviceObject,
  Pointer<HIDD_ATTRIBUTES> Attributes,
),
    int Function(
  int HidDeviceObject,
  Pointer<HIDD_ATTRIBUTES> Attributes,
)>('HidD_GetAttributes');

int HidD_GetConfiguration(
  int HidDeviceObject,
  Pointer<HIDD_CONFIGURATION> Configuration,
  int ConfigurationLength,
) =>
    _HidD_GetConfiguration(
      HidDeviceObject,
      Configuration,
      ConfigurationLength,
    );

late final _HidD_GetConfiguration = _hid.lookupFunction<
    Uint8 Function(
  IntPtr HidDeviceObject,
  Pointer<HIDD_CONFIGURATION> Configuration,
  Uint32 ConfigurationLength,
),
    int Function(
  int HidDeviceObject,
  Pointer<HIDD_CONFIGURATION> Configuration,
  int ConfigurationLength,
)>('HidD_GetConfiguration');

int HidD_GetFeature(
  int HidDeviceObject,
  Pointer ReportBuffer,
  int ReportBufferLength,
) =>
    _HidD_GetFeature(
      HidDeviceObject,
      ReportBuffer,
      ReportBufferLength,
    );

late final _HidD_GetFeature = _hid.lookupFunction<
    Uint8 Function(
  IntPtr HidDeviceObject,
  Pointer ReportBuffer,
  Uint32 ReportBufferLength,
),
    int Function(
  int HidDeviceObject,
  Pointer ReportBuffer,
  int ReportBufferLength,
)>('HidD_GetFeature');

void HidD_GetHidGuid(
  Pointer<GUID> HidGuid,
) =>
    _HidD_GetHidGuid(
      HidGuid,
    );

late final _HidD_GetHidGuid = _hid.lookupFunction<
    Void Function(
  Pointer<GUID> HidGuid,
),
    void Function(
  Pointer<GUID> HidGuid,
)>('HidD_GetHidGuid');

int HidD_GetIndexedString(
  int HidDeviceObject,
  int StringIndex,
  Pointer Buffer,
  int BufferLength,
) =>
    _HidD_GetIndexedString(
      HidDeviceObject,
      StringIndex,
      Buffer,
      BufferLength,
    );

late final _HidD_GetIndexedString = _hid.lookupFunction<
    Uint8 Function(
  IntPtr HidDeviceObject,
  Uint32 StringIndex,
  Pointer Buffer,
  Uint32 BufferLength,
),
    int Function(
  int HidDeviceObject,
  int StringIndex,
  Pointer Buffer,
  int BufferLength,
)>('HidD_GetIndexedString');

int HidD_GetInputReport(
  int HidDeviceObject,
  Pointer ReportBuffer,
  int ReportBufferLength,
) =>
    _HidD_GetInputReport(
      HidDeviceObject,
      ReportBuffer,
      ReportBufferLength,
    );

late final _HidD_GetInputReport = _hid.lookupFunction<
    Uint8 Function(
  IntPtr HidDeviceObject,
  Pointer ReportBuffer,
  Uint32 ReportBufferLength,
),
    int Function(
  int HidDeviceObject,
  Pointer ReportBuffer,
  int ReportBufferLength,
)>('HidD_GetInputReport');

int HidD_GetManufacturerString(
  int HidDeviceObject,
  Pointer Buffer,
  int BufferLength,
) =>
    _HidD_GetManufacturerString(
      HidDeviceObject,
      Buffer,
      BufferLength,
    );

late final _HidD_GetManufacturerString = _hid.lookupFunction<
    Uint8 Function(
  IntPtr HidDeviceObject,
  Pointer Buffer,
  Uint32 BufferLength,
),
    int Function(
  int HidDeviceObject,
  Pointer Buffer,
  int BufferLength,
)>('HidD_GetManufacturerString');

int HidD_GetMsGenreDescriptor(
  int HidDeviceObject,
  Pointer Buffer,
  int BufferLength,
) =>
    _HidD_GetMsGenreDescriptor(
      HidDeviceObject,
      Buffer,
      BufferLength,
    );

late final _HidD_GetMsGenreDescriptor = _hid.lookupFunction<
    Uint8 Function(
  IntPtr HidDeviceObject,
  Pointer Buffer,
  Uint32 BufferLength,
),
    int Function(
  int HidDeviceObject,
  Pointer Buffer,
  int BufferLength,
)>('HidD_GetMsGenreDescriptor');

int HidD_GetNumInputBuffers(
  int HidDeviceObject,
  Pointer<Uint32> NumberBuffers,
) =>
    _HidD_GetNumInputBuffers(
      HidDeviceObject,
      NumberBuffers,
    );

late final _HidD_GetNumInputBuffers = _hid.lookupFunction<
    Uint8 Function(
  IntPtr HidDeviceObject,
  Pointer<Uint32> NumberBuffers,
),
    int Function(
  int HidDeviceObject,
  Pointer<Uint32> NumberBuffers,
)>('HidD_GetNumInputBuffers');

int HidD_GetPhysicalDescriptor(
  int HidDeviceObject,
  Pointer Buffer,
  int BufferLength,
) =>
    _HidD_GetPhysicalDescriptor(
      HidDeviceObject,
      Buffer,
      BufferLength,
    );

late final _HidD_GetPhysicalDescriptor = _hid.lookupFunction<
    Uint8 Function(
  IntPtr HidDeviceObject,
  Pointer Buffer,
  Uint32 BufferLength,
),
    int Function(
  int HidDeviceObject,
  Pointer Buffer,
  int BufferLength,
)>('HidD_GetPhysicalDescriptor');

int HidD_GetPreparsedData(
  int HidDeviceObject,
  Pointer<IntPtr> PreparsedData,
) =>
    _HidD_GetPreparsedData(
      HidDeviceObject,
      PreparsedData,
    );

late final _HidD_GetPreparsedData = _hid.lookupFunction<
    Uint8 Function(
  IntPtr HidDeviceObject,
  Pointer<IntPtr> PreparsedData,
),
    int Function(
  int HidDeviceObject,
  Pointer<IntPtr> PreparsedData,
)>('HidD_GetPreparsedData');

int HidD_GetProductString(
  int HidDeviceObject,
  Pointer Buffer,
  int BufferLength,
) =>
    _HidD_GetProductString(
      HidDeviceObject,
      Buffer,
      BufferLength,
    );

late final _HidD_GetProductString = _hid.lookupFunction<
    Uint8 Function(
  IntPtr HidDeviceObject,
  Pointer Buffer,
  Uint32 BufferLength,
),
    int Function(
  int HidDeviceObject,
  Pointer Buffer,
  int BufferLength,
)>('HidD_GetProductString');

int HidD_GetSerialNumberString(
  int HidDeviceObject,
  Pointer Buffer,
  int BufferLength,
) =>
    _HidD_GetSerialNumberString(
      HidDeviceObject,
      Buffer,
      BufferLength,
    );

late final _HidD_GetSerialNumberString = _hid.lookupFunction<
    Uint8 Function(
  IntPtr HidDeviceObject,
  Pointer Buffer,
  Uint32 BufferLength,
),
    int Function(
  int HidDeviceObject,
  Pointer Buffer,
  int BufferLength,
)>('HidD_GetSerialNumberString');

int HidD_SetConfiguration(
  int HidDeviceObject,
  Pointer<HIDD_CONFIGURATION> Configuration,
  int ConfigurationLength,
) =>
    _HidD_SetConfiguration(
      HidDeviceObject,
      Configuration,
      ConfigurationLength,
    );

late final _HidD_SetConfiguration = _hid.lookupFunction<
    Uint8 Function(
  IntPtr HidDeviceObject,
  Pointer<HIDD_CONFIGURATION> Configuration,
  Uint32 ConfigurationLength,
),
    int Function(
  int HidDeviceObject,
  Pointer<HIDD_CONFIGURATION> Configuration,
  int ConfigurationLength,
)>('HidD_SetConfiguration');

int HidD_SetFeature(
  int HidDeviceObject,
  Pointer ReportBuffer,
  int ReportBufferLength,
) =>
    _HidD_SetFeature(
      HidDeviceObject,
      ReportBuffer,
      ReportBufferLength,
    );

late final _HidD_SetFeature = _hid.lookupFunction<
    Uint8 Function(
  IntPtr HidDeviceObject,
  Pointer ReportBuffer,
  Uint32 ReportBufferLength,
),
    int Function(
  int HidDeviceObject,
  Pointer ReportBuffer,
  int ReportBufferLength,
)>('HidD_SetFeature');

int HidD_SetNumInputBuffers(
  int HidDeviceObject,
  int NumberBuffers,
) =>
    _HidD_SetNumInputBuffers(
      HidDeviceObject,
      NumberBuffers,
    );

late final _HidD_SetNumInputBuffers = _hid.lookupFunction<
    Uint8 Function(
  IntPtr HidDeviceObject,
  Uint32 NumberBuffers,
),
    int Function(
  int HidDeviceObject,
  int NumberBuffers,
)>('HidD_SetNumInputBuffers');

int HidD_SetOutputReport(
  int HidDeviceObject,
  Pointer ReportBuffer,
  int ReportBufferLength,
) =>
    _HidD_SetOutputReport(
      HidDeviceObject,
      ReportBuffer,
      ReportBufferLength,
    );

late final _HidD_SetOutputReport = _hid.lookupFunction<
    Uint8 Function(
  IntPtr HidDeviceObject,
  Pointer ReportBuffer,
  Uint32 ReportBufferLength,
),
    int Function(
  int HidDeviceObject,
  Pointer ReportBuffer,
  int ReportBufferLength,
)>('HidD_SetOutputReport');

int HidP_GetButtonArray(
  int ReportType,
  int UsagePage,
  int LinkCollection,
  int Usage,
  Pointer<HIDP_BUTTON_ARRAY_DATA> ButtonData,
  Pointer<Uint16> ButtonDataLength,
  int PreparsedData,
  Pointer<Utf8> Report,
  int ReportLength,
) =>
    _HidP_GetButtonArray(
      ReportType,
      UsagePage,
      LinkCollection,
      Usage,
      ButtonData,
      ButtonDataLength,
      PreparsedData,
      Report,
      ReportLength,
    );

late final _HidP_GetButtonArray = _hid.lookupFunction<
    Int32 Function(
  Int32 ReportType,
  Uint16 UsagePage,
  Uint16 LinkCollection,
  Uint16 Usage,
  Pointer<HIDP_BUTTON_ARRAY_DATA> ButtonData,
  Pointer<Uint16> ButtonDataLength,
  IntPtr PreparsedData,
  Pointer<Utf8> Report,
  Uint32 ReportLength,
),
    int Function(
  int ReportType,
  int UsagePage,
  int LinkCollection,
  int Usage,
  Pointer<HIDP_BUTTON_ARRAY_DATA> ButtonData,
  Pointer<Uint16> ButtonDataLength,
  int PreparsedData,
  Pointer<Utf8> Report,
  int ReportLength,
)>('HidP_GetButtonArray');

int HidP_GetButtonCaps(
  int ReportType,
  Pointer<HIDP_BUTTON_CAPS> ButtonCaps,
  Pointer<Uint16> ButtonCapsLength,
  int PreparsedData,
) =>
    _HidP_GetButtonCaps(
      ReportType,
      ButtonCaps,
      ButtonCapsLength,
      PreparsedData,
    );

late final _HidP_GetButtonCaps = _hid.lookupFunction<
    Int32 Function(
  Int32 ReportType,
  Pointer<HIDP_BUTTON_CAPS> ButtonCaps,
  Pointer<Uint16> ButtonCapsLength,
  IntPtr PreparsedData,
),
    int Function(
  int ReportType,
  Pointer<HIDP_BUTTON_CAPS> ButtonCaps,
  Pointer<Uint16> ButtonCapsLength,
  int PreparsedData,
)>('HidP_GetButtonCaps');

int HidP_GetCaps(
  int PreparsedData,
  Pointer<HIDP_CAPS> Capabilities,
) =>
    _HidP_GetCaps(
      PreparsedData,
      Capabilities,
    );

late final _HidP_GetCaps = _hid.lookupFunction<
    Int32 Function(
  IntPtr PreparsedData,
  Pointer<HIDP_CAPS> Capabilities,
),
    int Function(
  int PreparsedData,
  Pointer<HIDP_CAPS> Capabilities,
)>('HidP_GetCaps');

int HidP_GetData(
  int ReportType,
  Pointer<HIDP_DATA> DataList,
  Pointer<Uint32> DataLength,
  int PreparsedData,
  Pointer<Utf8> Report,
  int ReportLength,
) =>
    _HidP_GetData(
      ReportType,
      DataList,
      DataLength,
      PreparsedData,
      Report,
      ReportLength,
    );

late final _HidP_GetData = _hid.lookupFunction<
    Int32 Function(
  Int32 ReportType,
  Pointer<HIDP_DATA> DataList,
  Pointer<Uint32> DataLength,
  IntPtr PreparsedData,
  Pointer<Utf8> Report,
  Uint32 ReportLength,
),
    int Function(
  int ReportType,
  Pointer<HIDP_DATA> DataList,
  Pointer<Uint32> DataLength,
  int PreparsedData,
  Pointer<Utf8> Report,
  int ReportLength,
)>('HidP_GetData');

int HidP_GetExtendedAttributes(
  int ReportType,
  int DataIndex,
  int PreparsedData,
  Pointer<HIDP_EXTENDED_ATTRIBUTES> Attributes,
  Pointer<Uint32> LengthAttributes,
) =>
    _HidP_GetExtendedAttributes(
      ReportType,
      DataIndex,
      PreparsedData,
      Attributes,
      LengthAttributes,
    );

late final _HidP_GetExtendedAttributes = _hid.lookupFunction<
    Int32 Function(
  Int32 ReportType,
  Uint16 DataIndex,
  IntPtr PreparsedData,
  Pointer<HIDP_EXTENDED_ATTRIBUTES> Attributes,
  Pointer<Uint32> LengthAttributes,
),
    int Function(
  int ReportType,
  int DataIndex,
  int PreparsedData,
  Pointer<HIDP_EXTENDED_ATTRIBUTES> Attributes,
  Pointer<Uint32> LengthAttributes,
)>('HidP_GetExtendedAttributes');

int HidP_GetLinkCollectionNodes(
  Pointer<HIDP_LINK_COLLECTION_NODE> LinkCollectionNodes,
  Pointer<Uint32> LinkCollectionNodesLength,
  int PreparsedData,
) =>
    _HidP_GetLinkCollectionNodes(
      LinkCollectionNodes,
      LinkCollectionNodesLength,
      PreparsedData,
    );

late final _HidP_GetLinkCollectionNodes = _hid.lookupFunction<
    Int32 Function(
  Pointer<HIDP_LINK_COLLECTION_NODE> LinkCollectionNodes,
  Pointer<Uint32> LinkCollectionNodesLength,
  IntPtr PreparsedData,
),
    int Function(
  Pointer<HIDP_LINK_COLLECTION_NODE> LinkCollectionNodes,
  Pointer<Uint32> LinkCollectionNodesLength,
  int PreparsedData,
)>('HidP_GetLinkCollectionNodes');

int HidP_GetScaledUsageValue(
  int ReportType,
  int UsagePage,
  int LinkCollection,
  int Usage,
  Pointer<Int32> UsageValue,
  int PreparsedData,
  Pointer<Utf8> Report,
  int ReportLength,
) =>
    _HidP_GetScaledUsageValue(
      ReportType,
      UsagePage,
      LinkCollection,
      Usage,
      UsageValue,
      PreparsedData,
      Report,
      ReportLength,
    );

late final _HidP_GetScaledUsageValue = _hid.lookupFunction<
    Int32 Function(
  Int32 ReportType,
  Uint16 UsagePage,
  Uint16 LinkCollection,
  Uint16 Usage,
  Pointer<Int32> UsageValue,
  IntPtr PreparsedData,
  Pointer<Utf8> Report,
  Uint32 ReportLength,
),
    int Function(
  int ReportType,
  int UsagePage,
  int LinkCollection,
  int Usage,
  Pointer<Int32> UsageValue,
  int PreparsedData,
  Pointer<Utf8> Report,
  int ReportLength,
)>('HidP_GetScaledUsageValue');

int HidP_GetSpecificButtonCaps(
  int ReportType,
  int UsagePage,
  int LinkCollection,
  int Usage,
  Pointer<HIDP_BUTTON_CAPS> ButtonCaps,
  Pointer<Uint16> ButtonCapsLength,
  int PreparsedData,
) =>
    _HidP_GetSpecificButtonCaps(
      ReportType,
      UsagePage,
      LinkCollection,
      Usage,
      ButtonCaps,
      ButtonCapsLength,
      PreparsedData,
    );

late final _HidP_GetSpecificButtonCaps = _hid.lookupFunction<
    Int32 Function(
  Int32 ReportType,
  Uint16 UsagePage,
  Uint16 LinkCollection,
  Uint16 Usage,
  Pointer<HIDP_BUTTON_CAPS> ButtonCaps,
  Pointer<Uint16> ButtonCapsLength,
  IntPtr PreparsedData,
),
    int Function(
  int ReportType,
  int UsagePage,
  int LinkCollection,
  int Usage,
  Pointer<HIDP_BUTTON_CAPS> ButtonCaps,
  Pointer<Uint16> ButtonCapsLength,
  int PreparsedData,
)>('HidP_GetSpecificButtonCaps');

int HidP_GetSpecificValueCaps(
  int ReportType,
  int UsagePage,
  int LinkCollection,
  int Usage,
  Pointer<HIDP_VALUE_CAPS> ValueCaps,
  Pointer<Uint16> ValueCapsLength,
  int PreparsedData,
) =>
    _HidP_GetSpecificValueCaps(
      ReportType,
      UsagePage,
      LinkCollection,
      Usage,
      ValueCaps,
      ValueCapsLength,
      PreparsedData,
    );

late final _HidP_GetSpecificValueCaps = _hid.lookupFunction<
    Int32 Function(
  Int32 ReportType,
  Uint16 UsagePage,
  Uint16 LinkCollection,
  Uint16 Usage,
  Pointer<HIDP_VALUE_CAPS> ValueCaps,
  Pointer<Uint16> ValueCapsLength,
  IntPtr PreparsedData,
),
    int Function(
  int ReportType,
  int UsagePage,
  int LinkCollection,
  int Usage,
  Pointer<HIDP_VALUE_CAPS> ValueCaps,
  Pointer<Uint16> ValueCapsLength,
  int PreparsedData,
)>('HidP_GetSpecificValueCaps');

int HidP_GetUsageValue(
  int ReportType,
  int UsagePage,
  int LinkCollection,
  int Usage,
  Pointer<Uint32> UsageValue,
  int PreparsedData,
  Pointer<Utf8> Report,
  int ReportLength,
) =>
    _HidP_GetUsageValue(
      ReportType,
      UsagePage,
      LinkCollection,
      Usage,
      UsageValue,
      PreparsedData,
      Report,
      ReportLength,
    );

late final _HidP_GetUsageValue = _hid.lookupFunction<
    Int32 Function(
  Int32 ReportType,
  Uint16 UsagePage,
  Uint16 LinkCollection,
  Uint16 Usage,
  Pointer<Uint32> UsageValue,
  IntPtr PreparsedData,
  Pointer<Utf8> Report,
  Uint32 ReportLength,
),
    int Function(
  int ReportType,
  int UsagePage,
  int LinkCollection,
  int Usage,
  Pointer<Uint32> UsageValue,
  int PreparsedData,
  Pointer<Utf8> Report,
  int ReportLength,
)>('HidP_GetUsageValue');

int HidP_GetUsageValueArray(
  int ReportType,
  int UsagePage,
  int LinkCollection,
  int Usage,
  Pointer<Utf8> UsageValue,
  int UsageValueByteLength,
  int PreparsedData,
  Pointer<Utf8> Report,
  int ReportLength,
) =>
    _HidP_GetUsageValueArray(
      ReportType,
      UsagePage,
      LinkCollection,
      Usage,
      UsageValue,
      UsageValueByteLength,
      PreparsedData,
      Report,
      ReportLength,
    );

late final _HidP_GetUsageValueArray = _hid.lookupFunction<
    Int32 Function(
  Int32 ReportType,
  Uint16 UsagePage,
  Uint16 LinkCollection,
  Uint16 Usage,
  Pointer<Utf8> UsageValue,
  Uint16 UsageValueByteLength,
  IntPtr PreparsedData,
  Pointer<Utf8> Report,
  Uint32 ReportLength,
),
    int Function(
  int ReportType,
  int UsagePage,
  int LinkCollection,
  int Usage,
  Pointer<Utf8> UsageValue,
  int UsageValueByteLength,
  int PreparsedData,
  Pointer<Utf8> Report,
  int ReportLength,
)>('HidP_GetUsageValueArray');

int HidP_GetUsages(
  int ReportType,
  int UsagePage,
  int LinkCollection,
  Pointer<Uint16> UsageList,
  Pointer<Uint32> UsageLength,
  int PreparsedData,
  Pointer<Utf8> Report,
  int ReportLength,
) =>
    _HidP_GetUsages(
      ReportType,
      UsagePage,
      LinkCollection,
      UsageList,
      UsageLength,
      PreparsedData,
      Report,
      ReportLength,
    );

late final _HidP_GetUsages = _hid.lookupFunction<
    Int32 Function(
  Int32 ReportType,
  Uint16 UsagePage,
  Uint16 LinkCollection,
  Pointer<Uint16> UsageList,
  Pointer<Uint32> UsageLength,
  IntPtr PreparsedData,
  Pointer<Utf8> Report,
  Uint32 ReportLength,
),
    int Function(
  int ReportType,
  int UsagePage,
  int LinkCollection,
  Pointer<Uint16> UsageList,
  Pointer<Uint32> UsageLength,
  int PreparsedData,
  Pointer<Utf8> Report,
  int ReportLength,
)>('HidP_GetUsages');

int HidP_GetUsagesEx(
  int ReportType,
  int LinkCollection,
  Pointer<USAGE_AND_PAGE> ButtonList,
  Pointer<Uint32> UsageLength,
  int PreparsedData,
  Pointer<Utf8> Report,
  int ReportLength,
) =>
    _HidP_GetUsagesEx(
      ReportType,
      LinkCollection,
      ButtonList,
      UsageLength,
      PreparsedData,
      Report,
      ReportLength,
    );

late final _HidP_GetUsagesEx = _hid.lookupFunction<
    Int32 Function(
  Int32 ReportType,
  Uint16 LinkCollection,
  Pointer<USAGE_AND_PAGE> ButtonList,
  Pointer<Uint32> UsageLength,
  IntPtr PreparsedData,
  Pointer<Utf8> Report,
  Uint32 ReportLength,
),
    int Function(
  int ReportType,
  int LinkCollection,
  Pointer<USAGE_AND_PAGE> ButtonList,
  Pointer<Uint32> UsageLength,
  int PreparsedData,
  Pointer<Utf8> Report,
  int ReportLength,
)>('HidP_GetUsagesEx');

int HidP_GetValueCaps(
  int ReportType,
  Pointer<HIDP_VALUE_CAPS> ValueCaps,
  Pointer<Uint16> ValueCapsLength,
  int PreparsedData,
) =>
    _HidP_GetValueCaps(
      ReportType,
      ValueCaps,
      ValueCapsLength,
      PreparsedData,
    );

late final _HidP_GetValueCaps = _hid.lookupFunction<
    Int32 Function(
  Int32 ReportType,
  Pointer<HIDP_VALUE_CAPS> ValueCaps,
  Pointer<Uint16> ValueCapsLength,
  IntPtr PreparsedData,
),
    int Function(
  int ReportType,
  Pointer<HIDP_VALUE_CAPS> ValueCaps,
  Pointer<Uint16> ValueCapsLength,
  int PreparsedData,
)>('HidP_GetValueCaps');

int HidP_InitializeReportForID(
  int ReportType,
  int ReportID,
  int PreparsedData,
  Pointer<Utf8> Report,
  int ReportLength,
) =>
    _HidP_InitializeReportForID(
      ReportType,
      ReportID,
      PreparsedData,
      Report,
      ReportLength,
    );

late final _HidP_InitializeReportForID = _hid.lookupFunction<
    Int32 Function(
  Int32 ReportType,
  Uint8 ReportID,
  IntPtr PreparsedData,
  Pointer<Utf8> Report,
  Uint32 ReportLength,
),
    int Function(
  int ReportType,
  int ReportID,
  int PreparsedData,
  Pointer<Utf8> Report,
  int ReportLength,
)>('HidP_InitializeReportForID');

int HidP_MaxDataListLength(
  int ReportType,
  int PreparsedData,
) =>
    _HidP_MaxDataListLength(
      ReportType,
      PreparsedData,
    );

late final _HidP_MaxDataListLength = _hid.lookupFunction<
    Uint32 Function(
  Int32 ReportType,
  IntPtr PreparsedData,
),
    int Function(
  int ReportType,
  int PreparsedData,
)>('HidP_MaxDataListLength');

int HidP_MaxUsageListLength(
  int ReportType,
  int UsagePage,
  int PreparsedData,
) =>
    _HidP_MaxUsageListLength(
      ReportType,
      UsagePage,
      PreparsedData,
    );

late final _HidP_MaxUsageListLength = _hid.lookupFunction<
    Uint32 Function(
  Int32 ReportType,
  Uint16 UsagePage,
  IntPtr PreparsedData,
),
    int Function(
  int ReportType,
  int UsagePage,
  int PreparsedData,
)>('HidP_MaxUsageListLength');

int HidP_SetButtonArray(
  int ReportType,
  int UsagePage,
  int LinkCollection,
  int Usage,
  Pointer<HIDP_BUTTON_ARRAY_DATA> ButtonData,
  int ButtonDataLength,
  int PreparsedData,
  Pointer<Utf8> Report,
  int ReportLength,
) =>
    _HidP_SetButtonArray(
      ReportType,
      UsagePage,
      LinkCollection,
      Usage,
      ButtonData,
      ButtonDataLength,
      PreparsedData,
      Report,
      ReportLength,
    );

late final _HidP_SetButtonArray = _hid.lookupFunction<
    Int32 Function(
  Int32 ReportType,
  Uint16 UsagePage,
  Uint16 LinkCollection,
  Uint16 Usage,
  Pointer<HIDP_BUTTON_ARRAY_DATA> ButtonData,
  Uint16 ButtonDataLength,
  IntPtr PreparsedData,
  Pointer<Utf8> Report,
  Uint32 ReportLength,
),
    int Function(
  int ReportType,
  int UsagePage,
  int LinkCollection,
  int Usage,
  Pointer<HIDP_BUTTON_ARRAY_DATA> ButtonData,
  int ButtonDataLength,
  int PreparsedData,
  Pointer<Utf8> Report,
  int ReportLength,
)>('HidP_SetButtonArray');

int HidP_SetData(
  int ReportType,
  Pointer<HIDP_DATA> DataList,
  Pointer<Uint32> DataLength,
  int PreparsedData,
  Pointer<Utf8> Report,
  int ReportLength,
) =>
    _HidP_SetData(
      ReportType,
      DataList,
      DataLength,
      PreparsedData,
      Report,
      ReportLength,
    );

late final _HidP_SetData = _hid.lookupFunction<
    Int32 Function(
  Int32 ReportType,
  Pointer<HIDP_DATA> DataList,
  Pointer<Uint32> DataLength,
  IntPtr PreparsedData,
  Pointer<Utf8> Report,
  Uint32 ReportLength,
),
    int Function(
  int ReportType,
  Pointer<HIDP_DATA> DataList,
  Pointer<Uint32> DataLength,
  int PreparsedData,
  Pointer<Utf8> Report,
  int ReportLength,
)>('HidP_SetData');

int HidP_SetScaledUsageValue(
  int ReportType,
  int UsagePage,
  int LinkCollection,
  int Usage,
  int UsageValue,
  int PreparsedData,
  Pointer<Utf8> Report,
  int ReportLength,
) =>
    _HidP_SetScaledUsageValue(
      ReportType,
      UsagePage,
      LinkCollection,
      Usage,
      UsageValue,
      PreparsedData,
      Report,
      ReportLength,
    );

late final _HidP_SetScaledUsageValue = _hid.lookupFunction<
    Int32 Function(
  Int32 ReportType,
  Uint16 UsagePage,
  Uint16 LinkCollection,
  Uint16 Usage,
  Int32 UsageValue,
  IntPtr PreparsedData,
  Pointer<Utf8> Report,
  Uint32 ReportLength,
),
    int Function(
  int ReportType,
  int UsagePage,
  int LinkCollection,
  int Usage,
  int UsageValue,
  int PreparsedData,
  Pointer<Utf8> Report,
  int ReportLength,
)>('HidP_SetScaledUsageValue');

int HidP_SetUsageValue(
  int ReportType,
  int UsagePage,
  int LinkCollection,
  int Usage,
  int UsageValue,
  int PreparsedData,
  Pointer<Utf8> Report,
  int ReportLength,
) =>
    _HidP_SetUsageValue(
      ReportType,
      UsagePage,
      LinkCollection,
      Usage,
      UsageValue,
      PreparsedData,
      Report,
      ReportLength,
    );

late final _HidP_SetUsageValue = _hid.lookupFunction<
    Int32 Function(
  Int32 ReportType,
  Uint16 UsagePage,
  Uint16 LinkCollection,
  Uint16 Usage,
  Uint32 UsageValue,
  IntPtr PreparsedData,
  Pointer<Utf8> Report,
  Uint32 ReportLength,
),
    int Function(
  int ReportType,
  int UsagePage,
  int LinkCollection,
  int Usage,
  int UsageValue,
  int PreparsedData,
  Pointer<Utf8> Report,
  int ReportLength,
)>('HidP_SetUsageValue');

int HidP_SetUsageValueArray(
  int ReportType,
  int UsagePage,
  int LinkCollection,
  int Usage,
  Pointer<Utf8> UsageValue,
  int UsageValueByteLength,
  int PreparsedData,
  Pointer<Utf8> Report,
  int ReportLength,
) =>
    _HidP_SetUsageValueArray(
      ReportType,
      UsagePage,
      LinkCollection,
      Usage,
      UsageValue,
      UsageValueByteLength,
      PreparsedData,
      Report,
      ReportLength,
    );

late final _HidP_SetUsageValueArray = _hid.lookupFunction<
    Int32 Function(
  Int32 ReportType,
  Uint16 UsagePage,
  Uint16 LinkCollection,
  Uint16 Usage,
  Pointer<Utf8> UsageValue,
  Uint16 UsageValueByteLength,
  IntPtr PreparsedData,
  Pointer<Utf8> Report,
  Uint32 ReportLength,
),
    int Function(
  int ReportType,
  int UsagePage,
  int LinkCollection,
  int Usage,
  Pointer<Utf8> UsageValue,
  int UsageValueByteLength,
  int PreparsedData,
  Pointer<Utf8> Report,
  int ReportLength,
)>('HidP_SetUsageValueArray');

int HidP_SetUsages(
  int ReportType,
  int UsagePage,
  int LinkCollection,
  Pointer<Uint16> UsageList,
  Pointer<Uint32> UsageLength,
  int PreparsedData,
  Pointer<Utf8> Report,
  int ReportLength,
) =>
    _HidP_SetUsages(
      ReportType,
      UsagePage,
      LinkCollection,
      UsageList,
      UsageLength,
      PreparsedData,
      Report,
      ReportLength,
    );

late final _HidP_SetUsages = _hid.lookupFunction<
    Int32 Function(
  Int32 ReportType,
  Uint16 UsagePage,
  Uint16 LinkCollection,
  Pointer<Uint16> UsageList,
  Pointer<Uint32> UsageLength,
  IntPtr PreparsedData,
  Pointer<Utf8> Report,
  Uint32 ReportLength,
),
    int Function(
  int ReportType,
  int UsagePage,
  int LinkCollection,
  Pointer<Uint16> UsageList,
  Pointer<Uint32> UsageLength,
  int PreparsedData,
  Pointer<Utf8> Report,
  int ReportLength,
)>('HidP_SetUsages');

int HidP_TranslateUsagesToI8042ScanCodes(
  Pointer<Uint16> ChangedUsageList,
  int UsageListLength,
  int KeyAction,
  Pointer<HIDP_KEYBOARD_MODIFIER_STATE> ModifierState,
  Pointer<NativeFunction<PHIDP_INSERT_SCANCODES>> InsertCodesProcedure,
  Pointer InsertCodesContext,
) =>
    _HidP_TranslateUsagesToI8042ScanCodes(
      ChangedUsageList,
      UsageListLength,
      KeyAction,
      ModifierState,
      InsertCodesProcedure,
      InsertCodesContext,
    );

late final _HidP_TranslateUsagesToI8042ScanCodes = _hid.lookupFunction<
    Int32 Function(
  Pointer<Uint16> ChangedUsageList,
  Uint32 UsageListLength,
  Int32 KeyAction,
  Pointer<HIDP_KEYBOARD_MODIFIER_STATE> ModifierState,
  Pointer<NativeFunction<PHIDP_INSERT_SCANCODES>> InsertCodesProcedure,
  Pointer InsertCodesContext,
),
    int Function(
  Pointer<Uint16> ChangedUsageList,
  int UsageListLength,
  int KeyAction,
  Pointer<HIDP_KEYBOARD_MODIFIER_STATE> ModifierState,
  Pointer<NativeFunction<PHIDP_INSERT_SCANCODES>> InsertCodesProcedure,
  Pointer InsertCodesContext,
)>('HidP_TranslateUsagesToI8042ScanCodes');

int HidP_UnsetUsages(
  int ReportType,
  int UsagePage,
  int LinkCollection,
  Pointer<Uint16> UsageList,
  Pointer<Uint32> UsageLength,
  int PreparsedData,
  Pointer<Utf8> Report,
  int ReportLength,
) =>
    _HidP_UnsetUsages(
      ReportType,
      UsagePage,
      LinkCollection,
      UsageList,
      UsageLength,
      PreparsedData,
      Report,
      ReportLength,
    );

late final _HidP_UnsetUsages = _hid.lookupFunction<
    Int32 Function(
  Int32 ReportType,
  Uint16 UsagePage,
  Uint16 LinkCollection,
  Pointer<Uint16> UsageList,
  Pointer<Uint32> UsageLength,
  IntPtr PreparsedData,
  Pointer<Utf8> Report,
  Uint32 ReportLength,
),
    int Function(
  int ReportType,
  int UsagePage,
  int LinkCollection,
  Pointer<Uint16> UsageList,
  Pointer<Uint32> UsageLength,
  int PreparsedData,
  Pointer<Utf8> Report,
  int ReportLength,
)>('HidP_UnsetUsages');

int HidP_UsageListDifference(
  Pointer<Uint16> PreviousUsageList,
  Pointer<Uint16> CurrentUsageList,
  Pointer<Uint16> BreakUsageList,
  Pointer<Uint16> MakeUsageList,
  int UsageListLength,
) =>
    _HidP_UsageListDifference(
      PreviousUsageList,
      CurrentUsageList,
      BreakUsageList,
      MakeUsageList,
      UsageListLength,
    );

late final _HidP_UsageListDifference = _hid.lookupFunction<
    Int32 Function(
  Pointer<Uint16> PreviousUsageList,
  Pointer<Uint16> CurrentUsageList,
  Pointer<Uint16> BreakUsageList,
  Pointer<Uint16> MakeUsageList,
  Uint32 UsageListLength,
),
    int Function(
  Pointer<Uint16> PreviousUsageList,
  Pointer<Uint16> CurrentUsageList,
  Pointer<Uint16> BreakUsageList,
  Pointer<Uint16> MakeUsageList,
  int UsageListLength,
)>('HidP_UsageListDifference');
