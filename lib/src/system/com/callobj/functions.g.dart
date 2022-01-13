// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../../combase.dart';
import '../../../guid.dart';
import '../../../system/com/IUnknown.dart';
import '../../../system/com/ITypeInfo.dart'; // -----------------------------------------------------------------------

// ole32.dll
// -----------------------------------------------------------------------
final _ole32 = DynamicLibrary.open('ole32.dll');

int CoGetInterceptor(
  Pointer<GUID> iidIntercepted,
  Pointer<COMObject> punkOuter,
  Pointer<GUID> iid,
  Pointer<Pointer> ppv,
) =>
    _CoGetInterceptor(
      iidIntercepted,
      punkOuter,
      iid,
      ppv,
    );

late final _CoGetInterceptor = _ole32.lookupFunction<
    Int32 Function(
  Pointer<GUID> iidIntercepted,
  Pointer<COMObject> punkOuter,
  Pointer<GUID> iid,
  Pointer<Pointer> ppv,
),
    int Function(
  Pointer<GUID> iidIntercepted,
  Pointer<COMObject> punkOuter,
  Pointer<GUID> iid,
  Pointer<Pointer> ppv,
)>('CoGetInterceptor');

int CoGetInterceptorFromTypeInfo(
  Pointer<GUID> iidIntercepted,
  Pointer<COMObject> punkOuter,
  Pointer<COMObject> typeInfo,
  Pointer<GUID> iid,
  Pointer<Pointer> ppv,
) =>
    _CoGetInterceptorFromTypeInfo(
      iidIntercepted,
      punkOuter,
      typeInfo,
      iid,
      ppv,
    );

late final _CoGetInterceptorFromTypeInfo = _ole32.lookupFunction<
    Int32 Function(
  Pointer<GUID> iidIntercepted,
  Pointer<COMObject> punkOuter,
  Pointer<COMObject> typeInfo,
  Pointer<GUID> iid,
  Pointer<Pointer> ppv,
),
    int Function(
  Pointer<GUID> iidIntercepted,
  Pointer<COMObject> punkOuter,
  Pointer<COMObject> typeInfo,
  Pointer<GUID> iid,
  Pointer<Pointer> ppv,
)>('CoGetInterceptorFromTypeInfo');
