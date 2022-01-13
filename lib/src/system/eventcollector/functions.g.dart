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
import '../../system/eventcollector/structs.g.dart'; // -----------------------------------------------------------------------

// wecapi.dll
// -----------------------------------------------------------------------
final _wecapi = DynamicLibrary.open('wecapi.dll');

int EcClose(
  int Object,
) =>
    _EcClose(
      Object,
    );

late final _EcClose = _wecapi.lookupFunction<
    Int32 Function(
  IntPtr Object,
),
    int Function(
  int Object,
)>('EcClose');

int EcDeleteSubscription(
  Pointer<Utf16> SubscriptionName,
  int Flags,
) =>
    _EcDeleteSubscription(
      SubscriptionName,
      Flags,
    );

late final _EcDeleteSubscription = _wecapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> SubscriptionName,
  Uint32 Flags,
),
    int Function(
  Pointer<Utf16> SubscriptionName,
  int Flags,
)>('EcDeleteSubscription');

int EcEnumNextSubscription(
  int SubscriptionEnum,
  int SubscriptionNameBufferSize,
  Pointer<Utf16> SubscriptionNameBuffer,
  Pointer<Uint32> SubscriptionNameBufferUsed,
) =>
    _EcEnumNextSubscription(
      SubscriptionEnum,
      SubscriptionNameBufferSize,
      SubscriptionNameBuffer,
      SubscriptionNameBufferUsed,
    );

late final _EcEnumNextSubscription = _wecapi.lookupFunction<
    Int32 Function(
  IntPtr SubscriptionEnum,
  Uint32 SubscriptionNameBufferSize,
  Pointer<Utf16> SubscriptionNameBuffer,
  Pointer<Uint32> SubscriptionNameBufferUsed,
),
    int Function(
  int SubscriptionEnum,
  int SubscriptionNameBufferSize,
  Pointer<Utf16> SubscriptionNameBuffer,
  Pointer<Uint32> SubscriptionNameBufferUsed,
)>('EcEnumNextSubscription');

int EcGetObjectArrayProperty(
  int ObjectArray,
  int PropertyId,
  int ArrayIndex,
  int Flags,
  int PropertyValueBufferSize,
  Pointer<EC_VARIANT> PropertyValueBuffer,
  Pointer<Uint32> PropertyValueBufferUsed,
) =>
    _EcGetObjectArrayProperty(
      ObjectArray,
      PropertyId,
      ArrayIndex,
      Flags,
      PropertyValueBufferSize,
      PropertyValueBuffer,
      PropertyValueBufferUsed,
    );

late final _EcGetObjectArrayProperty = _wecapi.lookupFunction<
    Int32 Function(
  IntPtr ObjectArray,
  Int32 PropertyId,
  Uint32 ArrayIndex,
  Uint32 Flags,
  Uint32 PropertyValueBufferSize,
  Pointer<EC_VARIANT> PropertyValueBuffer,
  Pointer<Uint32> PropertyValueBufferUsed,
),
    int Function(
  int ObjectArray,
  int PropertyId,
  int ArrayIndex,
  int Flags,
  int PropertyValueBufferSize,
  Pointer<EC_VARIANT> PropertyValueBuffer,
  Pointer<Uint32> PropertyValueBufferUsed,
)>('EcGetObjectArrayProperty');

int EcGetObjectArraySize(
  int ObjectArray,
  Pointer<Uint32> ObjectArraySize,
) =>
    _EcGetObjectArraySize(
      ObjectArray,
      ObjectArraySize,
    );

late final _EcGetObjectArraySize = _wecapi.lookupFunction<
    Int32 Function(
  IntPtr ObjectArray,
  Pointer<Uint32> ObjectArraySize,
),
    int Function(
  int ObjectArray,
  Pointer<Uint32> ObjectArraySize,
)>('EcGetObjectArraySize');

int EcGetSubscriptionProperty(
  int Subscription,
  int PropertyId,
  int Flags,
  int PropertyValueBufferSize,
  Pointer<EC_VARIANT> PropertyValueBuffer,
  Pointer<Uint32> PropertyValueBufferUsed,
) =>
    _EcGetSubscriptionProperty(
      Subscription,
      PropertyId,
      Flags,
      PropertyValueBufferSize,
      PropertyValueBuffer,
      PropertyValueBufferUsed,
    );

late final _EcGetSubscriptionProperty = _wecapi.lookupFunction<
    Int32 Function(
  IntPtr Subscription,
  Int32 PropertyId,
  Uint32 Flags,
  Uint32 PropertyValueBufferSize,
  Pointer<EC_VARIANT> PropertyValueBuffer,
  Pointer<Uint32> PropertyValueBufferUsed,
),
    int Function(
  int Subscription,
  int PropertyId,
  int Flags,
  int PropertyValueBufferSize,
  Pointer<EC_VARIANT> PropertyValueBuffer,
  Pointer<Uint32> PropertyValueBufferUsed,
)>('EcGetSubscriptionProperty');

int EcGetSubscriptionRunTimeStatus(
  Pointer<Utf16> SubscriptionName,
  int StatusInfoId,
  Pointer<Utf16> EventSourceName,
  int Flags,
  int StatusValueBufferSize,
  Pointer<EC_VARIANT> StatusValueBuffer,
  Pointer<Uint32> StatusValueBufferUsed,
) =>
    _EcGetSubscriptionRunTimeStatus(
      SubscriptionName,
      StatusInfoId,
      EventSourceName,
      Flags,
      StatusValueBufferSize,
      StatusValueBuffer,
      StatusValueBufferUsed,
    );

late final _EcGetSubscriptionRunTimeStatus = _wecapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> SubscriptionName,
  Int32 StatusInfoId,
  Pointer<Utf16> EventSourceName,
  Uint32 Flags,
  Uint32 StatusValueBufferSize,
  Pointer<EC_VARIANT> StatusValueBuffer,
  Pointer<Uint32> StatusValueBufferUsed,
),
    int Function(
  Pointer<Utf16> SubscriptionName,
  int StatusInfoId,
  Pointer<Utf16> EventSourceName,
  int Flags,
  int StatusValueBufferSize,
  Pointer<EC_VARIANT> StatusValueBuffer,
  Pointer<Uint32> StatusValueBufferUsed,
)>('EcGetSubscriptionRunTimeStatus');

int EcInsertObjectArrayElement(
  int ObjectArray,
  int ArrayIndex,
) =>
    _EcInsertObjectArrayElement(
      ObjectArray,
      ArrayIndex,
    );

late final _EcInsertObjectArrayElement = _wecapi.lookupFunction<
    Int32 Function(
  IntPtr ObjectArray,
  Uint32 ArrayIndex,
),
    int Function(
  int ObjectArray,
  int ArrayIndex,
)>('EcInsertObjectArrayElement');

int EcOpenSubscription(
  Pointer<Utf16> SubscriptionName,
  int AccessMask,
  int Flags,
) =>
    _EcOpenSubscription(
      SubscriptionName,
      AccessMask,
      Flags,
    );

late final _EcOpenSubscription = _wecapi.lookupFunction<
    IntPtr Function(
  Pointer<Utf16> SubscriptionName,
  Uint32 AccessMask,
  Uint32 Flags,
),
    int Function(
  Pointer<Utf16> SubscriptionName,
  int AccessMask,
  int Flags,
)>('EcOpenSubscription');

int EcOpenSubscriptionEnum(
  int Flags,
) =>
    _EcOpenSubscriptionEnum(
      Flags,
    );

late final _EcOpenSubscriptionEnum = _wecapi.lookupFunction<
    IntPtr Function(
  Uint32 Flags,
),
    int Function(
  int Flags,
)>('EcOpenSubscriptionEnum');

int EcRemoveObjectArrayElement(
  int ObjectArray,
  int ArrayIndex,
) =>
    _EcRemoveObjectArrayElement(
      ObjectArray,
      ArrayIndex,
    );

late final _EcRemoveObjectArrayElement = _wecapi.lookupFunction<
    Int32 Function(
  IntPtr ObjectArray,
  Uint32 ArrayIndex,
),
    int Function(
  int ObjectArray,
  int ArrayIndex,
)>('EcRemoveObjectArrayElement');

int EcRetrySubscription(
  Pointer<Utf16> SubscriptionName,
  Pointer<Utf16> EventSourceName,
  int Flags,
) =>
    _EcRetrySubscription(
      SubscriptionName,
      EventSourceName,
      Flags,
    );

late final _EcRetrySubscription = _wecapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> SubscriptionName,
  Pointer<Utf16> EventSourceName,
  Uint32 Flags,
),
    int Function(
  Pointer<Utf16> SubscriptionName,
  Pointer<Utf16> EventSourceName,
  int Flags,
)>('EcRetrySubscription');

int EcSaveSubscription(
  int Subscription,
  int Flags,
) =>
    _EcSaveSubscription(
      Subscription,
      Flags,
    );

late final _EcSaveSubscription = _wecapi.lookupFunction<
    Int32 Function(
  IntPtr Subscription,
  Uint32 Flags,
),
    int Function(
  int Subscription,
  int Flags,
)>('EcSaveSubscription');

int EcSetObjectArrayProperty(
  int ObjectArray,
  int PropertyId,
  int ArrayIndex,
  int Flags,
  Pointer<EC_VARIANT> PropertyValue,
) =>
    _EcSetObjectArrayProperty(
      ObjectArray,
      PropertyId,
      ArrayIndex,
      Flags,
      PropertyValue,
    );

late final _EcSetObjectArrayProperty = _wecapi.lookupFunction<
    Int32 Function(
  IntPtr ObjectArray,
  Int32 PropertyId,
  Uint32 ArrayIndex,
  Uint32 Flags,
  Pointer<EC_VARIANT> PropertyValue,
),
    int Function(
  int ObjectArray,
  int PropertyId,
  int ArrayIndex,
  int Flags,
  Pointer<EC_VARIANT> PropertyValue,
)>('EcSetObjectArrayProperty');

int EcSetSubscriptionProperty(
  int Subscription,
  int PropertyId,
  int Flags,
  Pointer<EC_VARIANT> PropertyValue,
) =>
    _EcSetSubscriptionProperty(
      Subscription,
      PropertyId,
      Flags,
      PropertyValue,
    );

late final _EcSetSubscriptionProperty = _wecapi.lookupFunction<
    Int32 Function(
  IntPtr Subscription,
  Int32 PropertyId,
  Uint32 Flags,
  Pointer<EC_VARIANT> PropertyValue,
),
    int Function(
  int Subscription,
  int PropertyId,
  int Flags,
  Pointer<EC_VARIANT> PropertyValue,
)>('EcSetSubscriptionProperty');
