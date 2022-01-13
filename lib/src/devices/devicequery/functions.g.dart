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
import '../../devices/devicequery/structs.g.dart';
import '../../devices/properties/structs.g.dart';
import '../../devices/devicequery/callbacks.g.dart';
import '../../foundation/structs.g.dart'; // -----------------------------------------------------------------------

// api-ms-win-devices-query-l1-1-0.dll
// -----------------------------------------------------------------------
final _api_ms_win_devices_query_l1_1_0 =
    DynamicLibrary.open('api-ms-win-devices-query-l1-1-0.dll');

void DevCloseObjectQuery(
  Pointer<HDEVQUERY__> hDevQuery,
) =>
    _DevCloseObjectQuery(
      hDevQuery,
    );

late final _DevCloseObjectQuery =
    _api_ms_win_devices_query_l1_1_0.lookupFunction<
        Void Function(
  Pointer<HDEVQUERY__> hDevQuery,
),
        void Function(
  Pointer<HDEVQUERY__> hDevQuery,
)>('DevCloseObjectQuery');

int DevCreateObjectQuery(
  int ObjectType,
  int QueryFlags,
  int cRequestedProperties,
  Pointer<DEVPROPCOMPKEY> pRequestedProperties,
  int cFilterExpressionCount,
  Pointer<DEVPROP_FILTER_EXPRESSION> pFilter,
  Pointer<NativeFunction<PDEV_QUERY_RESULT_CALLBACK>> pCallback,
  Pointer pContext,
  Pointer<Pointer<HDEVQUERY__>> phDevQuery,
) =>
    _DevCreateObjectQuery(
      ObjectType,
      QueryFlags,
      cRequestedProperties,
      pRequestedProperties,
      cFilterExpressionCount,
      pFilter,
      pCallback,
      pContext,
      phDevQuery,
    );

late final _DevCreateObjectQuery =
    _api_ms_win_devices_query_l1_1_0.lookupFunction<
        Int32 Function(
  Int32 ObjectType,
  Uint32 QueryFlags,
  Uint32 cRequestedProperties,
  Pointer<DEVPROPCOMPKEY> pRequestedProperties,
  Uint32 cFilterExpressionCount,
  Pointer<DEVPROP_FILTER_EXPRESSION> pFilter,
  Pointer<NativeFunction<PDEV_QUERY_RESULT_CALLBACK>> pCallback,
  Pointer pContext,
  Pointer<Pointer<HDEVQUERY__>> phDevQuery,
),
        int Function(
  int ObjectType,
  int QueryFlags,
  int cRequestedProperties,
  Pointer<DEVPROPCOMPKEY> pRequestedProperties,
  int cFilterExpressionCount,
  Pointer<DEVPROP_FILTER_EXPRESSION> pFilter,
  Pointer<NativeFunction<PDEV_QUERY_RESULT_CALLBACK>> pCallback,
  Pointer pContext,
  Pointer<Pointer<HDEVQUERY__>> phDevQuery,
)>('DevCreateObjectQuery');

int DevCreateObjectQueryFromId(
  int ObjectType,
  Pointer<Utf16> pszObjectId,
  int QueryFlags,
  int cRequestedProperties,
  Pointer<DEVPROPCOMPKEY> pRequestedProperties,
  int cFilterExpressionCount,
  Pointer<DEVPROP_FILTER_EXPRESSION> pFilter,
  Pointer<NativeFunction<PDEV_QUERY_RESULT_CALLBACK>> pCallback,
  Pointer pContext,
  Pointer<Pointer<HDEVQUERY__>> phDevQuery,
) =>
    _DevCreateObjectQueryFromId(
      ObjectType,
      pszObjectId,
      QueryFlags,
      cRequestedProperties,
      pRequestedProperties,
      cFilterExpressionCount,
      pFilter,
      pCallback,
      pContext,
      phDevQuery,
    );

late final _DevCreateObjectQueryFromId =
    _api_ms_win_devices_query_l1_1_0.lookupFunction<
        Int32 Function(
  Int32 ObjectType,
  Pointer<Utf16> pszObjectId,
  Uint32 QueryFlags,
  Uint32 cRequestedProperties,
  Pointer<DEVPROPCOMPKEY> pRequestedProperties,
  Uint32 cFilterExpressionCount,
  Pointer<DEVPROP_FILTER_EXPRESSION> pFilter,
  Pointer<NativeFunction<PDEV_QUERY_RESULT_CALLBACK>> pCallback,
  Pointer pContext,
  Pointer<Pointer<HDEVQUERY__>> phDevQuery,
),
        int Function(
  int ObjectType,
  Pointer<Utf16> pszObjectId,
  int QueryFlags,
  int cRequestedProperties,
  Pointer<DEVPROPCOMPKEY> pRequestedProperties,
  int cFilterExpressionCount,
  Pointer<DEVPROP_FILTER_EXPRESSION> pFilter,
  Pointer<NativeFunction<PDEV_QUERY_RESULT_CALLBACK>> pCallback,
  Pointer pContext,
  Pointer<Pointer<HDEVQUERY__>> phDevQuery,
)>('DevCreateObjectQueryFromId');

int DevCreateObjectQueryFromIds(
  int ObjectType,
  Pointer<Utf16> pszzObjectIds,
  int QueryFlags,
  int cRequestedProperties,
  Pointer<DEVPROPCOMPKEY> pRequestedProperties,
  int cFilterExpressionCount,
  Pointer<DEVPROP_FILTER_EXPRESSION> pFilter,
  Pointer<NativeFunction<PDEV_QUERY_RESULT_CALLBACK>> pCallback,
  Pointer pContext,
  Pointer<Pointer<HDEVQUERY__>> phDevQuery,
) =>
    _DevCreateObjectQueryFromIds(
      ObjectType,
      pszzObjectIds,
      QueryFlags,
      cRequestedProperties,
      pRequestedProperties,
      cFilterExpressionCount,
      pFilter,
      pCallback,
      pContext,
      phDevQuery,
    );

late final _DevCreateObjectQueryFromIds =
    _api_ms_win_devices_query_l1_1_0.lookupFunction<
        Int32 Function(
  Int32 ObjectType,
  Pointer<Utf16> pszzObjectIds,
  Uint32 QueryFlags,
  Uint32 cRequestedProperties,
  Pointer<DEVPROPCOMPKEY> pRequestedProperties,
  Uint32 cFilterExpressionCount,
  Pointer<DEVPROP_FILTER_EXPRESSION> pFilter,
  Pointer<NativeFunction<PDEV_QUERY_RESULT_CALLBACK>> pCallback,
  Pointer pContext,
  Pointer<Pointer<HDEVQUERY__>> phDevQuery,
),
        int Function(
  int ObjectType,
  Pointer<Utf16> pszzObjectIds,
  int QueryFlags,
  int cRequestedProperties,
  Pointer<DEVPROPCOMPKEY> pRequestedProperties,
  int cFilterExpressionCount,
  Pointer<DEVPROP_FILTER_EXPRESSION> pFilter,
  Pointer<NativeFunction<PDEV_QUERY_RESULT_CALLBACK>> pCallback,
  Pointer pContext,
  Pointer<Pointer<HDEVQUERY__>> phDevQuery,
)>('DevCreateObjectQueryFromIds');

Pointer<DEVPROPERTY> DevFindProperty(
  Pointer<DEVPROPKEY> pKey,
  int Store,
  Pointer<Utf16> pszLocaleName,
  int cProperties,
  Pointer<DEVPROPERTY> pProperties,
) =>
    _DevFindProperty(
      pKey,
      Store,
      pszLocaleName,
      cProperties,
      pProperties,
    );

late final _DevFindProperty = _api_ms_win_devices_query_l1_1_0.lookupFunction<
    Pointer<DEVPROPERTY> Function(
  Pointer<DEVPROPKEY> pKey,
  Int32 Store,
  Pointer<Utf16> pszLocaleName,
  Uint32 cProperties,
  Pointer<DEVPROPERTY> pProperties,
),
    Pointer<DEVPROPERTY> Function(
  Pointer<DEVPROPKEY> pKey,
  int Store,
  Pointer<Utf16> pszLocaleName,
  int cProperties,
  Pointer<DEVPROPERTY> pProperties,
)>('DevFindProperty');

void DevFreeObjectProperties(
  int cPropertyCount,
  Pointer<DEVPROPERTY> pProperties,
) =>
    _DevFreeObjectProperties(
      cPropertyCount,
      pProperties,
    );

late final _DevFreeObjectProperties =
    _api_ms_win_devices_query_l1_1_0.lookupFunction<
        Void Function(
  Uint32 cPropertyCount,
  Pointer<DEVPROPERTY> pProperties,
),
        void Function(
  int cPropertyCount,
  Pointer<DEVPROPERTY> pProperties,
)>('DevFreeObjectProperties');

void DevFreeObjects(
  int cObjectCount,
  Pointer<DEV_OBJECT> pObjects,
) =>
    _DevFreeObjects(
      cObjectCount,
      pObjects,
    );

late final _DevFreeObjects = _api_ms_win_devices_query_l1_1_0.lookupFunction<
    Void Function(
  Uint32 cObjectCount,
  Pointer<DEV_OBJECT> pObjects,
),
    void Function(
  int cObjectCount,
  Pointer<DEV_OBJECT> pObjects,
)>('DevFreeObjects');

int DevGetObjectProperties(
  int ObjectType,
  Pointer<Utf16> pszObjectId,
  int QueryFlags,
  int cRequestedProperties,
  Pointer<DEVPROPCOMPKEY> pRequestedProperties,
  Pointer<Uint32> pcPropertyCount,
  Pointer<Pointer<DEVPROPERTY>> ppProperties,
) =>
    _DevGetObjectProperties(
      ObjectType,
      pszObjectId,
      QueryFlags,
      cRequestedProperties,
      pRequestedProperties,
      pcPropertyCount,
      ppProperties,
    );

late final _DevGetObjectProperties =
    _api_ms_win_devices_query_l1_1_0.lookupFunction<
        Int32 Function(
  Int32 ObjectType,
  Pointer<Utf16> pszObjectId,
  Uint32 QueryFlags,
  Uint32 cRequestedProperties,
  Pointer<DEVPROPCOMPKEY> pRequestedProperties,
  Pointer<Uint32> pcPropertyCount,
  Pointer<Pointer<DEVPROPERTY>> ppProperties,
),
        int Function(
  int ObjectType,
  Pointer<Utf16> pszObjectId,
  int QueryFlags,
  int cRequestedProperties,
  Pointer<DEVPROPCOMPKEY> pRequestedProperties,
  Pointer<Uint32> pcPropertyCount,
  Pointer<Pointer<DEVPROPERTY>> ppProperties,
)>('DevGetObjectProperties');

int DevGetObjects(
  int ObjectType,
  int QueryFlags,
  int cRequestedProperties,
  Pointer<DEVPROPCOMPKEY> pRequestedProperties,
  int cFilterExpressionCount,
  Pointer<DEVPROP_FILTER_EXPRESSION> pFilter,
  Pointer<Uint32> pcObjectCount,
  Pointer<Pointer<DEV_OBJECT>> ppObjects,
) =>
    _DevGetObjects(
      ObjectType,
      QueryFlags,
      cRequestedProperties,
      pRequestedProperties,
      cFilterExpressionCount,
      pFilter,
      pcObjectCount,
      ppObjects,
    );

late final _DevGetObjects = _api_ms_win_devices_query_l1_1_0.lookupFunction<
    Int32 Function(
  Int32 ObjectType,
  Uint32 QueryFlags,
  Uint32 cRequestedProperties,
  Pointer<DEVPROPCOMPKEY> pRequestedProperties,
  Uint32 cFilterExpressionCount,
  Pointer<DEVPROP_FILTER_EXPRESSION> pFilter,
  Pointer<Uint32> pcObjectCount,
  Pointer<Pointer<DEV_OBJECT>> ppObjects,
),
    int Function(
  int ObjectType,
  int QueryFlags,
  int cRequestedProperties,
  Pointer<DEVPROPCOMPKEY> pRequestedProperties,
  int cFilterExpressionCount,
  Pointer<DEVPROP_FILTER_EXPRESSION> pFilter,
  Pointer<Uint32> pcObjectCount,
  Pointer<Pointer<DEV_OBJECT>> ppObjects,
)>('DevGetObjects');

// -----------------------------------------------------------------------
// api-ms-win-devices-query-l1-1-1.dll
// -----------------------------------------------------------------------
final _api_ms_win_devices_query_l1_1_1 =
    DynamicLibrary.open('api-ms-win-devices-query-l1-1-1.dll');

int DevCreateObjectQueryEx(
  int ObjectType,
  int QueryFlags,
  int cRequestedProperties,
  Pointer<DEVPROPCOMPKEY> pRequestedProperties,
  int cFilterExpressionCount,
  Pointer<DEVPROP_FILTER_EXPRESSION> pFilter,
  int cExtendedParameterCount,
  Pointer<DEV_QUERY_PARAMETER> pExtendedParameters,
  Pointer<NativeFunction<PDEV_QUERY_RESULT_CALLBACK>> pCallback,
  Pointer pContext,
  Pointer<Pointer<HDEVQUERY__>> phDevQuery,
) =>
    _DevCreateObjectQueryEx(
      ObjectType,
      QueryFlags,
      cRequestedProperties,
      pRequestedProperties,
      cFilterExpressionCount,
      pFilter,
      cExtendedParameterCount,
      pExtendedParameters,
      pCallback,
      pContext,
      phDevQuery,
    );

late final _DevCreateObjectQueryEx =
    _api_ms_win_devices_query_l1_1_1.lookupFunction<
        Int32 Function(
  Int32 ObjectType,
  Uint32 QueryFlags,
  Uint32 cRequestedProperties,
  Pointer<DEVPROPCOMPKEY> pRequestedProperties,
  Uint32 cFilterExpressionCount,
  Pointer<DEVPROP_FILTER_EXPRESSION> pFilter,
  Uint32 cExtendedParameterCount,
  Pointer<DEV_QUERY_PARAMETER> pExtendedParameters,
  Pointer<NativeFunction<PDEV_QUERY_RESULT_CALLBACK>> pCallback,
  Pointer pContext,
  Pointer<Pointer<HDEVQUERY__>> phDevQuery,
),
        int Function(
  int ObjectType,
  int QueryFlags,
  int cRequestedProperties,
  Pointer<DEVPROPCOMPKEY> pRequestedProperties,
  int cFilterExpressionCount,
  Pointer<DEVPROP_FILTER_EXPRESSION> pFilter,
  int cExtendedParameterCount,
  Pointer<DEV_QUERY_PARAMETER> pExtendedParameters,
  Pointer<NativeFunction<PDEV_QUERY_RESULT_CALLBACK>> pCallback,
  Pointer pContext,
  Pointer<Pointer<HDEVQUERY__>> phDevQuery,
)>('DevCreateObjectQueryEx');

int DevCreateObjectQueryFromIdEx(
  int ObjectType,
  Pointer<Utf16> pszObjectId,
  int QueryFlags,
  int cRequestedProperties,
  Pointer<DEVPROPCOMPKEY> pRequestedProperties,
  int cFilterExpressionCount,
  Pointer<DEVPROP_FILTER_EXPRESSION> pFilter,
  int cExtendedParameterCount,
  Pointer<DEV_QUERY_PARAMETER> pExtendedParameters,
  Pointer<NativeFunction<PDEV_QUERY_RESULT_CALLBACK>> pCallback,
  Pointer pContext,
  Pointer<Pointer<HDEVQUERY__>> phDevQuery,
) =>
    _DevCreateObjectQueryFromIdEx(
      ObjectType,
      pszObjectId,
      QueryFlags,
      cRequestedProperties,
      pRequestedProperties,
      cFilterExpressionCount,
      pFilter,
      cExtendedParameterCount,
      pExtendedParameters,
      pCallback,
      pContext,
      phDevQuery,
    );

late final _DevCreateObjectQueryFromIdEx =
    _api_ms_win_devices_query_l1_1_1.lookupFunction<
        Int32 Function(
  Int32 ObjectType,
  Pointer<Utf16> pszObjectId,
  Uint32 QueryFlags,
  Uint32 cRequestedProperties,
  Pointer<DEVPROPCOMPKEY> pRequestedProperties,
  Uint32 cFilterExpressionCount,
  Pointer<DEVPROP_FILTER_EXPRESSION> pFilter,
  Uint32 cExtendedParameterCount,
  Pointer<DEV_QUERY_PARAMETER> pExtendedParameters,
  Pointer<NativeFunction<PDEV_QUERY_RESULT_CALLBACK>> pCallback,
  Pointer pContext,
  Pointer<Pointer<HDEVQUERY__>> phDevQuery,
),
        int Function(
  int ObjectType,
  Pointer<Utf16> pszObjectId,
  int QueryFlags,
  int cRequestedProperties,
  Pointer<DEVPROPCOMPKEY> pRequestedProperties,
  int cFilterExpressionCount,
  Pointer<DEVPROP_FILTER_EXPRESSION> pFilter,
  int cExtendedParameterCount,
  Pointer<DEV_QUERY_PARAMETER> pExtendedParameters,
  Pointer<NativeFunction<PDEV_QUERY_RESULT_CALLBACK>> pCallback,
  Pointer pContext,
  Pointer<Pointer<HDEVQUERY__>> phDevQuery,
)>('DevCreateObjectQueryFromIdEx');

int DevCreateObjectQueryFromIdsEx(
  int ObjectType,
  Pointer<Utf16> pszzObjectIds,
  int QueryFlags,
  int cRequestedProperties,
  Pointer<DEVPROPCOMPKEY> pRequestedProperties,
  int cFilterExpressionCount,
  Pointer<DEVPROP_FILTER_EXPRESSION> pFilter,
  int cExtendedParameterCount,
  Pointer<DEV_QUERY_PARAMETER> pExtendedParameters,
  Pointer<NativeFunction<PDEV_QUERY_RESULT_CALLBACK>> pCallback,
  Pointer pContext,
  Pointer<Pointer<HDEVQUERY__>> phDevQuery,
) =>
    _DevCreateObjectQueryFromIdsEx(
      ObjectType,
      pszzObjectIds,
      QueryFlags,
      cRequestedProperties,
      pRequestedProperties,
      cFilterExpressionCount,
      pFilter,
      cExtendedParameterCount,
      pExtendedParameters,
      pCallback,
      pContext,
      phDevQuery,
    );

late final _DevCreateObjectQueryFromIdsEx =
    _api_ms_win_devices_query_l1_1_1.lookupFunction<
        Int32 Function(
  Int32 ObjectType,
  Pointer<Utf16> pszzObjectIds,
  Uint32 QueryFlags,
  Uint32 cRequestedProperties,
  Pointer<DEVPROPCOMPKEY> pRequestedProperties,
  Uint32 cFilterExpressionCount,
  Pointer<DEVPROP_FILTER_EXPRESSION> pFilter,
  Uint32 cExtendedParameterCount,
  Pointer<DEV_QUERY_PARAMETER> pExtendedParameters,
  Pointer<NativeFunction<PDEV_QUERY_RESULT_CALLBACK>> pCallback,
  Pointer pContext,
  Pointer<Pointer<HDEVQUERY__>> phDevQuery,
),
        int Function(
  int ObjectType,
  Pointer<Utf16> pszzObjectIds,
  int QueryFlags,
  int cRequestedProperties,
  Pointer<DEVPROPCOMPKEY> pRequestedProperties,
  int cFilterExpressionCount,
  Pointer<DEVPROP_FILTER_EXPRESSION> pFilter,
  int cExtendedParameterCount,
  Pointer<DEV_QUERY_PARAMETER> pExtendedParameters,
  Pointer<NativeFunction<PDEV_QUERY_RESULT_CALLBACK>> pCallback,
  Pointer pContext,
  Pointer<Pointer<HDEVQUERY__>> phDevQuery,
)>('DevCreateObjectQueryFromIdsEx');

int DevGetObjectPropertiesEx(
  int ObjectType,
  Pointer<Utf16> pszObjectId,
  int QueryFlags,
  int cRequestedProperties,
  Pointer<DEVPROPCOMPKEY> pRequestedProperties,
  int cExtendedParameterCount,
  Pointer<DEV_QUERY_PARAMETER> pExtendedParameters,
  Pointer<Uint32> pcPropertyCount,
  Pointer<Pointer<DEVPROPERTY>> ppProperties,
) =>
    _DevGetObjectPropertiesEx(
      ObjectType,
      pszObjectId,
      QueryFlags,
      cRequestedProperties,
      pRequestedProperties,
      cExtendedParameterCount,
      pExtendedParameters,
      pcPropertyCount,
      ppProperties,
    );

late final _DevGetObjectPropertiesEx =
    _api_ms_win_devices_query_l1_1_1.lookupFunction<
        Int32 Function(
  Int32 ObjectType,
  Pointer<Utf16> pszObjectId,
  Uint32 QueryFlags,
  Uint32 cRequestedProperties,
  Pointer<DEVPROPCOMPKEY> pRequestedProperties,
  Uint32 cExtendedParameterCount,
  Pointer<DEV_QUERY_PARAMETER> pExtendedParameters,
  Pointer<Uint32> pcPropertyCount,
  Pointer<Pointer<DEVPROPERTY>> ppProperties,
),
        int Function(
  int ObjectType,
  Pointer<Utf16> pszObjectId,
  int QueryFlags,
  int cRequestedProperties,
  Pointer<DEVPROPCOMPKEY> pRequestedProperties,
  int cExtendedParameterCount,
  Pointer<DEV_QUERY_PARAMETER> pExtendedParameters,
  Pointer<Uint32> pcPropertyCount,
  Pointer<Pointer<DEVPROPERTY>> ppProperties,
)>('DevGetObjectPropertiesEx');

int DevGetObjectsEx(
  int ObjectType,
  int QueryFlags,
  int cRequestedProperties,
  Pointer<DEVPROPCOMPKEY> pRequestedProperties,
  int cFilterExpressionCount,
  Pointer<DEVPROP_FILTER_EXPRESSION> pFilter,
  int cExtendedParameterCount,
  Pointer<DEV_QUERY_PARAMETER> pExtendedParameters,
  Pointer<Uint32> pcObjectCount,
  Pointer<Pointer<DEV_OBJECT>> ppObjects,
) =>
    _DevGetObjectsEx(
      ObjectType,
      QueryFlags,
      cRequestedProperties,
      pRequestedProperties,
      cFilterExpressionCount,
      pFilter,
      cExtendedParameterCount,
      pExtendedParameters,
      pcObjectCount,
      ppObjects,
    );

late final _DevGetObjectsEx = _api_ms_win_devices_query_l1_1_1.lookupFunction<
    Int32 Function(
  Int32 ObjectType,
  Uint32 QueryFlags,
  Uint32 cRequestedProperties,
  Pointer<DEVPROPCOMPKEY> pRequestedProperties,
  Uint32 cFilterExpressionCount,
  Pointer<DEVPROP_FILTER_EXPRESSION> pFilter,
  Uint32 cExtendedParameterCount,
  Pointer<DEV_QUERY_PARAMETER> pExtendedParameters,
  Pointer<Uint32> pcObjectCount,
  Pointer<Pointer<DEV_OBJECT>> ppObjects,
),
    int Function(
  int ObjectType,
  int QueryFlags,
  int cRequestedProperties,
  Pointer<DEVPROPCOMPKEY> pRequestedProperties,
  int cFilterExpressionCount,
  Pointer<DEVPROP_FILTER_EXPRESSION> pFilter,
  int cExtendedParameterCount,
  Pointer<DEV_QUERY_PARAMETER> pExtendedParameters,
  Pointer<Uint32> pcObjectCount,
  Pointer<Pointer<DEV_OBJECT>> ppObjects,
)>('DevGetObjectsEx');
