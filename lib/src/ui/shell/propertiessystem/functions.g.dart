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
import '../../../specialTypes.dart';
import '../../../foundation/structs.g.dart';
import '../../../ui/shell/common/structs.g.dart';
import '../../../ui/shell/propertiessystem/structs.g.dart';
import '../../../ui/shell/propertiessystem/IPropertyStore.dart';
import '../../../ui/shell/propertiessystem/IDelayedPropertyStoreFactory.dart';
import '../../../system/com/IUnknown.dart';
import '../../../system/com/structuredstorage/IPropertySetStorage.dart';
import '../../../ui/shell/propertiessystem/IPropertyDescription.dart';
import '../../../system/com/structuredstorage/IPropertyBag.dart';
import '../../../system/com/IStream.dart';
import '../../../system/com/IBindCtx.dart';
import '../../../system/com/structuredstorage/IPropertyStorage.dart';
import '../../../system/com/structuredstorage/structs.g.dart'; // -----------------------------------------------------------------------

// propsys.dll
// -----------------------------------------------------------------------
final _propsys = DynamicLibrary.open('propsys.dll');

void ClearPropVariantArray(
  Pointer<PROPVARIANT> rgPropVar,
  int cVars,
) =>
    _ClearPropVariantArray(
      rgPropVar,
      cVars,
    );

late final _ClearPropVariantArray = _propsys.lookupFunction<
    Void Function(
  Pointer<PROPVARIANT> rgPropVar,
  Uint32 cVars,
),
    void Function(
  Pointer<PROPVARIANT> rgPropVar,
  int cVars,
)>('ClearPropVariantArray');

void ClearVariantArray(
  Pointer<VARIANT> pvars,
  int cvars,
) =>
    _ClearVariantArray(
      pvars,
      cvars,
    );

late final _ClearVariantArray = _propsys.lookupFunction<
    Void Function(
  Pointer<VARIANT> pvars,
  Uint32 cvars,
),
    void Function(
  Pointer<VARIANT> pvars,
  int cvars,
)>('ClearVariantArray');

int InitPropVariantFromBooleanVector(
  Pointer<Int32> prgf,
  int cElems,
  Pointer<PROPVARIANT> ppropvar,
) =>
    _InitPropVariantFromBooleanVector(
      prgf,
      cElems,
      ppropvar,
    );

late final _InitPropVariantFromBooleanVector = _propsys.lookupFunction<
    Int32 Function(
  Pointer<Int32> prgf,
  Uint32 cElems,
  Pointer<PROPVARIANT> ppropvar,
),
    int Function(
  Pointer<Int32> prgf,
  int cElems,
  Pointer<PROPVARIANT> ppropvar,
)>('InitPropVariantFromBooleanVector');

int InitPropVariantFromBuffer(
  Pointer pv,
  int cb,
  Pointer<PROPVARIANT> ppropvar,
) =>
    _InitPropVariantFromBuffer(
      pv,
      cb,
      ppropvar,
    );

late final _InitPropVariantFromBuffer = _propsys.lookupFunction<
    Int32 Function(
  Pointer pv,
  Uint32 cb,
  Pointer<PROPVARIANT> ppropvar,
),
    int Function(
  Pointer pv,
  int cb,
  Pointer<PROPVARIANT> ppropvar,
)>('InitPropVariantFromBuffer');

int InitPropVariantFromCLSID(
  Pointer<GUID> clsid,
  Pointer<PROPVARIANT> ppropvar,
) =>
    _InitPropVariantFromCLSID(
      clsid,
      ppropvar,
    );

late final _InitPropVariantFromCLSID = _propsys.lookupFunction<
    Int32 Function(
  Pointer<GUID> clsid,
  Pointer<PROPVARIANT> ppropvar,
),
    int Function(
  Pointer<GUID> clsid,
  Pointer<PROPVARIANT> ppropvar,
)>('InitPropVariantFromCLSID');

int InitPropVariantFromDoubleVector(
  Pointer<Double> prgn,
  int cElems,
  Pointer<PROPVARIANT> ppropvar,
) =>
    _InitPropVariantFromDoubleVector(
      prgn,
      cElems,
      ppropvar,
    );

late final _InitPropVariantFromDoubleVector = _propsys.lookupFunction<
    Int32 Function(
  Pointer<Double> prgn,
  Uint32 cElems,
  Pointer<PROPVARIANT> ppropvar,
),
    int Function(
  Pointer<Double> prgn,
  int cElems,
  Pointer<PROPVARIANT> ppropvar,
)>('InitPropVariantFromDoubleVector');

int InitPropVariantFromFileTime(
  Pointer<FILETIME> pftIn,
  Pointer<PROPVARIANT> ppropvar,
) =>
    _InitPropVariantFromFileTime(
      pftIn,
      ppropvar,
    );

late final _InitPropVariantFromFileTime = _propsys.lookupFunction<
    Int32 Function(
  Pointer<FILETIME> pftIn,
  Pointer<PROPVARIANT> ppropvar,
),
    int Function(
  Pointer<FILETIME> pftIn,
  Pointer<PROPVARIANT> ppropvar,
)>('InitPropVariantFromFileTime');

int InitPropVariantFromFileTimeVector(
  Pointer<FILETIME> prgft,
  int cElems,
  Pointer<PROPVARIANT> ppropvar,
) =>
    _InitPropVariantFromFileTimeVector(
      prgft,
      cElems,
      ppropvar,
    );

late final _InitPropVariantFromFileTimeVector = _propsys.lookupFunction<
    Int32 Function(
  Pointer<FILETIME> prgft,
  Uint32 cElems,
  Pointer<PROPVARIANT> ppropvar,
),
    int Function(
  Pointer<FILETIME> prgft,
  int cElems,
  Pointer<PROPVARIANT> ppropvar,
)>('InitPropVariantFromFileTimeVector');

int InitPropVariantFromGUIDAsString(
  Pointer<GUID> guid,
  Pointer<PROPVARIANT> ppropvar,
) =>
    _InitPropVariantFromGUIDAsString(
      guid,
      ppropvar,
    );

late final _InitPropVariantFromGUIDAsString = _propsys.lookupFunction<
    Int32 Function(
  Pointer<GUID> guid,
  Pointer<PROPVARIANT> ppropvar,
),
    int Function(
  Pointer<GUID> guid,
  Pointer<PROPVARIANT> ppropvar,
)>('InitPropVariantFromGUIDAsString');

int InitPropVariantFromInt16Vector(
  Pointer<Int16> prgn,
  int cElems,
  Pointer<PROPVARIANT> ppropvar,
) =>
    _InitPropVariantFromInt16Vector(
      prgn,
      cElems,
      ppropvar,
    );

late final _InitPropVariantFromInt16Vector = _propsys.lookupFunction<
    Int32 Function(
  Pointer<Int16> prgn,
  Uint32 cElems,
  Pointer<PROPVARIANT> ppropvar,
),
    int Function(
  Pointer<Int16> prgn,
  int cElems,
  Pointer<PROPVARIANT> ppropvar,
)>('InitPropVariantFromInt16Vector');

int InitPropVariantFromInt32Vector(
  Pointer<Int32> prgn,
  int cElems,
  Pointer<PROPVARIANT> ppropvar,
) =>
    _InitPropVariantFromInt32Vector(
      prgn,
      cElems,
      ppropvar,
    );

late final _InitPropVariantFromInt32Vector = _propsys.lookupFunction<
    Int32 Function(
  Pointer<Int32> prgn,
  Uint32 cElems,
  Pointer<PROPVARIANT> ppropvar,
),
    int Function(
  Pointer<Int32> prgn,
  int cElems,
  Pointer<PROPVARIANT> ppropvar,
)>('InitPropVariantFromInt32Vector');

int InitPropVariantFromInt64Vector(
  Pointer<Int64> prgn,
  int cElems,
  Pointer<PROPVARIANT> ppropvar,
) =>
    _InitPropVariantFromInt64Vector(
      prgn,
      cElems,
      ppropvar,
    );

late final _InitPropVariantFromInt64Vector = _propsys.lookupFunction<
    Int32 Function(
  Pointer<Int64> prgn,
  Uint32 cElems,
  Pointer<PROPVARIANT> ppropvar,
),
    int Function(
  Pointer<Int64> prgn,
  int cElems,
  Pointer<PROPVARIANT> ppropvar,
)>('InitPropVariantFromInt64Vector');

int InitPropVariantFromPropVariantVectorElem(
  Pointer<PROPVARIANT> propvarIn,
  int iElem,
  Pointer<PROPVARIANT> ppropvar,
) =>
    _InitPropVariantFromPropVariantVectorElem(
      propvarIn,
      iElem,
      ppropvar,
    );

late final _InitPropVariantFromPropVariantVectorElem = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPVARIANT> propvarIn,
  Uint32 iElem,
  Pointer<PROPVARIANT> ppropvar,
),
    int Function(
  Pointer<PROPVARIANT> propvarIn,
  int iElem,
  Pointer<PROPVARIANT> ppropvar,
)>('InitPropVariantFromPropVariantVectorElem');

int InitPropVariantFromResource(
  int hinst,
  int id,
  Pointer<PROPVARIANT> ppropvar,
) =>
    _InitPropVariantFromResource(
      hinst,
      id,
      ppropvar,
    );

late final _InitPropVariantFromResource = _propsys.lookupFunction<
    Int32 Function(
  IntPtr hinst,
  Uint32 id,
  Pointer<PROPVARIANT> ppropvar,
),
    int Function(
  int hinst,
  int id,
  Pointer<PROPVARIANT> ppropvar,
)>('InitPropVariantFromResource');

int InitPropVariantFromStrRet(
  Pointer<STRRET> pstrret,
  Pointer<ITEMIDLIST> pidl,
  Pointer<PROPVARIANT> ppropvar,
) =>
    _InitPropVariantFromStrRet(
      pstrret,
      pidl,
      ppropvar,
    );

late final _InitPropVariantFromStrRet = _propsys.lookupFunction<
    Int32 Function(
  Pointer<STRRET> pstrret,
  Pointer<ITEMIDLIST> pidl,
  Pointer<PROPVARIANT> ppropvar,
),
    int Function(
  Pointer<STRRET> pstrret,
  Pointer<ITEMIDLIST> pidl,
  Pointer<PROPVARIANT> ppropvar,
)>('InitPropVariantFromStrRet');

int InitPropVariantFromStringAsVector(
  Pointer<Utf16> psz,
  Pointer<PROPVARIANT> ppropvar,
) =>
    _InitPropVariantFromStringAsVector(
      psz,
      ppropvar,
    );

late final _InitPropVariantFromStringAsVector = _propsys.lookupFunction<
    Int32 Function(
  Pointer<Utf16> psz,
  Pointer<PROPVARIANT> ppropvar,
),
    int Function(
  Pointer<Utf16> psz,
  Pointer<PROPVARIANT> ppropvar,
)>('InitPropVariantFromStringAsVector');

int InitPropVariantFromStringVector(
  Pointer<Pointer<Utf16>> prgsz,
  int cElems,
  Pointer<PROPVARIANT> ppropvar,
) =>
    _InitPropVariantFromStringVector(
      prgsz,
      cElems,
      ppropvar,
    );

late final _InitPropVariantFromStringVector = _propsys.lookupFunction<
    Int32 Function(
  Pointer<Pointer<Utf16>> prgsz,
  Uint32 cElems,
  Pointer<PROPVARIANT> ppropvar,
),
    int Function(
  Pointer<Pointer<Utf16>> prgsz,
  int cElems,
  Pointer<PROPVARIANT> ppropvar,
)>('InitPropVariantFromStringVector');

int InitPropVariantFromUInt16Vector(
  Pointer<Uint16> prgn,
  int cElems,
  Pointer<PROPVARIANT> ppropvar,
) =>
    _InitPropVariantFromUInt16Vector(
      prgn,
      cElems,
      ppropvar,
    );

late final _InitPropVariantFromUInt16Vector = _propsys.lookupFunction<
    Int32 Function(
  Pointer<Uint16> prgn,
  Uint32 cElems,
  Pointer<PROPVARIANT> ppropvar,
),
    int Function(
  Pointer<Uint16> prgn,
  int cElems,
  Pointer<PROPVARIANT> ppropvar,
)>('InitPropVariantFromUInt16Vector');

int InitPropVariantFromUInt32Vector(
  Pointer<Uint32> prgn,
  int cElems,
  Pointer<PROPVARIANT> ppropvar,
) =>
    _InitPropVariantFromUInt32Vector(
      prgn,
      cElems,
      ppropvar,
    );

late final _InitPropVariantFromUInt32Vector = _propsys.lookupFunction<
    Int32 Function(
  Pointer<Uint32> prgn,
  Uint32 cElems,
  Pointer<PROPVARIANT> ppropvar,
),
    int Function(
  Pointer<Uint32> prgn,
  int cElems,
  Pointer<PROPVARIANT> ppropvar,
)>('InitPropVariantFromUInt32Vector');

int InitPropVariantFromUInt64Vector(
  Pointer<Uint64> prgn,
  int cElems,
  Pointer<PROPVARIANT> ppropvar,
) =>
    _InitPropVariantFromUInt64Vector(
      prgn,
      cElems,
      ppropvar,
    );

late final _InitPropVariantFromUInt64Vector = _propsys.lookupFunction<
    Int32 Function(
  Pointer<Uint64> prgn,
  Uint32 cElems,
  Pointer<PROPVARIANT> ppropvar,
),
    int Function(
  Pointer<Uint64> prgn,
  int cElems,
  Pointer<PROPVARIANT> ppropvar,
)>('InitPropVariantFromUInt64Vector');

int InitPropVariantVectorFromPropVariant(
  Pointer<PROPVARIANT> propvarSingle,
  Pointer<PROPVARIANT> ppropvarVector,
) =>
    _InitPropVariantVectorFromPropVariant(
      propvarSingle,
      ppropvarVector,
    );

late final _InitPropVariantVectorFromPropVariant = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPVARIANT> propvarSingle,
  Pointer<PROPVARIANT> ppropvarVector,
),
    int Function(
  Pointer<PROPVARIANT> propvarSingle,
  Pointer<PROPVARIANT> ppropvarVector,
)>('InitPropVariantVectorFromPropVariant');

int InitVariantFromBooleanArray(
  Pointer<Int32> prgf,
  int cElems,
  Pointer<VARIANT> pvar,
) =>
    _InitVariantFromBooleanArray(
      prgf,
      cElems,
      pvar,
    );

late final _InitVariantFromBooleanArray = _propsys.lookupFunction<
    Int32 Function(
  Pointer<Int32> prgf,
  Uint32 cElems,
  Pointer<VARIANT> pvar,
),
    int Function(
  Pointer<Int32> prgf,
  int cElems,
  Pointer<VARIANT> pvar,
)>('InitVariantFromBooleanArray');

int InitVariantFromBuffer(
  Pointer pv,
  int cb,
  Pointer<VARIANT> pvar,
) =>
    _InitVariantFromBuffer(
      pv,
      cb,
      pvar,
    );

late final _InitVariantFromBuffer = _propsys.lookupFunction<
    Int32 Function(
  Pointer pv,
  Uint32 cb,
  Pointer<VARIANT> pvar,
),
    int Function(
  Pointer pv,
  int cb,
  Pointer<VARIANT> pvar,
)>('InitVariantFromBuffer');

int InitVariantFromDoubleArray(
  Pointer<Double> prgn,
  int cElems,
  Pointer<VARIANT> pvar,
) =>
    _InitVariantFromDoubleArray(
      prgn,
      cElems,
      pvar,
    );

late final _InitVariantFromDoubleArray = _propsys.lookupFunction<
    Int32 Function(
  Pointer<Double> prgn,
  Uint32 cElems,
  Pointer<VARIANT> pvar,
),
    int Function(
  Pointer<Double> prgn,
  int cElems,
  Pointer<VARIANT> pvar,
)>('InitVariantFromDoubleArray');

int InitVariantFromFileTime(
  Pointer<FILETIME> pft,
  Pointer<VARIANT> pvar,
) =>
    _InitVariantFromFileTime(
      pft,
      pvar,
    );

late final _InitVariantFromFileTime = _propsys.lookupFunction<
    Int32 Function(
  Pointer<FILETIME> pft,
  Pointer<VARIANT> pvar,
),
    int Function(
  Pointer<FILETIME> pft,
  Pointer<VARIANT> pvar,
)>('InitVariantFromFileTime');

int InitVariantFromFileTimeArray(
  Pointer<FILETIME> prgft,
  int cElems,
  Pointer<VARIANT> pvar,
) =>
    _InitVariantFromFileTimeArray(
      prgft,
      cElems,
      pvar,
    );

late final _InitVariantFromFileTimeArray = _propsys.lookupFunction<
    Int32 Function(
  Pointer<FILETIME> prgft,
  Uint32 cElems,
  Pointer<VARIANT> pvar,
),
    int Function(
  Pointer<FILETIME> prgft,
  int cElems,
  Pointer<VARIANT> pvar,
)>('InitVariantFromFileTimeArray');

int InitVariantFromGUIDAsString(
  Pointer<GUID> guid,
  Pointer<VARIANT> pvar,
) =>
    _InitVariantFromGUIDAsString(
      guid,
      pvar,
    );

late final _InitVariantFromGUIDAsString = _propsys.lookupFunction<
    Int32 Function(
  Pointer<GUID> guid,
  Pointer<VARIANT> pvar,
),
    int Function(
  Pointer<GUID> guid,
  Pointer<VARIANT> pvar,
)>('InitVariantFromGUIDAsString');

int InitVariantFromInt16Array(
  Pointer<Int16> prgn,
  int cElems,
  Pointer<VARIANT> pvar,
) =>
    _InitVariantFromInt16Array(
      prgn,
      cElems,
      pvar,
    );

late final _InitVariantFromInt16Array = _propsys.lookupFunction<
    Int32 Function(
  Pointer<Int16> prgn,
  Uint32 cElems,
  Pointer<VARIANT> pvar,
),
    int Function(
  Pointer<Int16> prgn,
  int cElems,
  Pointer<VARIANT> pvar,
)>('InitVariantFromInt16Array');

int InitVariantFromInt32Array(
  Pointer<Int32> prgn,
  int cElems,
  Pointer<VARIANT> pvar,
) =>
    _InitVariantFromInt32Array(
      prgn,
      cElems,
      pvar,
    );

late final _InitVariantFromInt32Array = _propsys.lookupFunction<
    Int32 Function(
  Pointer<Int32> prgn,
  Uint32 cElems,
  Pointer<VARIANT> pvar,
),
    int Function(
  Pointer<Int32> prgn,
  int cElems,
  Pointer<VARIANT> pvar,
)>('InitVariantFromInt32Array');

int InitVariantFromInt64Array(
  Pointer<Int64> prgn,
  int cElems,
  Pointer<VARIANT> pvar,
) =>
    _InitVariantFromInt64Array(
      prgn,
      cElems,
      pvar,
    );

late final _InitVariantFromInt64Array = _propsys.lookupFunction<
    Int32 Function(
  Pointer<Int64> prgn,
  Uint32 cElems,
  Pointer<VARIANT> pvar,
),
    int Function(
  Pointer<Int64> prgn,
  int cElems,
  Pointer<VARIANT> pvar,
)>('InitVariantFromInt64Array');

int InitVariantFromResource(
  int hinst,
  int id,
  Pointer<VARIANT> pvar,
) =>
    _InitVariantFromResource(
      hinst,
      id,
      pvar,
    );

late final _InitVariantFromResource = _propsys.lookupFunction<
    Int32 Function(
  IntPtr hinst,
  Uint32 id,
  Pointer<VARIANT> pvar,
),
    int Function(
  int hinst,
  int id,
  Pointer<VARIANT> pvar,
)>('InitVariantFromResource');

int InitVariantFromStrRet(
  Pointer<STRRET> pstrret,
  Pointer<ITEMIDLIST> pidl,
  Pointer<VARIANT> pvar,
) =>
    _InitVariantFromStrRet(
      pstrret,
      pidl,
      pvar,
    );

late final _InitVariantFromStrRet = _propsys.lookupFunction<
    Int32 Function(
  Pointer<STRRET> pstrret,
  Pointer<ITEMIDLIST> pidl,
  Pointer<VARIANT> pvar,
),
    int Function(
  Pointer<STRRET> pstrret,
  Pointer<ITEMIDLIST> pidl,
  Pointer<VARIANT> pvar,
)>('InitVariantFromStrRet');

int InitVariantFromStringArray(
  Pointer<Pointer<Utf16>> prgsz,
  int cElems,
  Pointer<VARIANT> pvar,
) =>
    _InitVariantFromStringArray(
      prgsz,
      cElems,
      pvar,
    );

late final _InitVariantFromStringArray = _propsys.lookupFunction<
    Int32 Function(
  Pointer<Pointer<Utf16>> prgsz,
  Uint32 cElems,
  Pointer<VARIANT> pvar,
),
    int Function(
  Pointer<Pointer<Utf16>> prgsz,
  int cElems,
  Pointer<VARIANT> pvar,
)>('InitVariantFromStringArray');

int InitVariantFromUInt16Array(
  Pointer<Uint16> prgn,
  int cElems,
  Pointer<VARIANT> pvar,
) =>
    _InitVariantFromUInt16Array(
      prgn,
      cElems,
      pvar,
    );

late final _InitVariantFromUInt16Array = _propsys.lookupFunction<
    Int32 Function(
  Pointer<Uint16> prgn,
  Uint32 cElems,
  Pointer<VARIANT> pvar,
),
    int Function(
  Pointer<Uint16> prgn,
  int cElems,
  Pointer<VARIANT> pvar,
)>('InitVariantFromUInt16Array');

int InitVariantFromUInt32Array(
  Pointer<Uint32> prgn,
  int cElems,
  Pointer<VARIANT> pvar,
) =>
    _InitVariantFromUInt32Array(
      prgn,
      cElems,
      pvar,
    );

late final _InitVariantFromUInt32Array = _propsys.lookupFunction<
    Int32 Function(
  Pointer<Uint32> prgn,
  Uint32 cElems,
  Pointer<VARIANT> pvar,
),
    int Function(
  Pointer<Uint32> prgn,
  int cElems,
  Pointer<VARIANT> pvar,
)>('InitVariantFromUInt32Array');

int InitVariantFromUInt64Array(
  Pointer<Uint64> prgn,
  int cElems,
  Pointer<VARIANT> pvar,
) =>
    _InitVariantFromUInt64Array(
      prgn,
      cElems,
      pvar,
    );

late final _InitVariantFromUInt64Array = _propsys.lookupFunction<
    Int32 Function(
  Pointer<Uint64> prgn,
  Uint32 cElems,
  Pointer<VARIANT> pvar,
),
    int Function(
  Pointer<Uint64> prgn,
  int cElems,
  Pointer<VARIANT> pvar,
)>('InitVariantFromUInt64Array');

int InitVariantFromVariantArrayElem(
  Pointer<VARIANT> varIn,
  int iElem,
  Pointer<VARIANT> pvar,
) =>
    _InitVariantFromVariantArrayElem(
      varIn,
      iElem,
      pvar,
    );

late final _InitVariantFromVariantArrayElem = _propsys.lookupFunction<
    Int32 Function(
  Pointer<VARIANT> varIn,
  Uint32 iElem,
  Pointer<VARIANT> pvar,
),
    int Function(
  Pointer<VARIANT> varIn,
  int iElem,
  Pointer<VARIANT> pvar,
)>('InitVariantFromVariantArrayElem');

int PSCoerceToCanonicalValue(
  Pointer<PROPERTYKEY> key,
  Pointer<PROPVARIANT> ppropvar,
) =>
    _PSCoerceToCanonicalValue(
      key,
      ppropvar,
    );

late final _PSCoerceToCanonicalValue = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPERTYKEY> key,
  Pointer<PROPVARIANT> ppropvar,
),
    int Function(
  Pointer<PROPERTYKEY> key,
  Pointer<PROPVARIANT> ppropvar,
)>('PSCoerceToCanonicalValue');

int PSCreateAdapterFromPropertyStore(
  Pointer<COMObject> pps,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) =>
    _PSCreateAdapterFromPropertyStore(
      pps,
      riid,
      ppv,
    );

late final _PSCreateAdapterFromPropertyStore = _propsys.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pps,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
),
    int Function(
  Pointer<COMObject> pps,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
)>('PSCreateAdapterFromPropertyStore');

int PSCreateDelayedMultiplexPropertyStore(
  int flags,
  Pointer<COMObject> pdpsf,
  Pointer<Uint32> rgStoreIds,
  int cStores,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) =>
    _PSCreateDelayedMultiplexPropertyStore(
      flags,
      pdpsf,
      rgStoreIds,
      cStores,
      riid,
      ppv,
    );

late final _PSCreateDelayedMultiplexPropertyStore = _propsys.lookupFunction<
    Int32 Function(
  Uint32 flags,
  Pointer<COMObject> pdpsf,
  Pointer<Uint32> rgStoreIds,
  Uint32 cStores,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
),
    int Function(
  int flags,
  Pointer<COMObject> pdpsf,
  Pointer<Uint32> rgStoreIds,
  int cStores,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
)>('PSCreateDelayedMultiplexPropertyStore');

int PSCreateMemoryPropertyStore(
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) =>
    _PSCreateMemoryPropertyStore(
      riid,
      ppv,
    );

late final _PSCreateMemoryPropertyStore = _propsys.lookupFunction<
    Int32 Function(
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
),
    int Function(
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
)>('PSCreateMemoryPropertyStore');

int PSCreateMultiplexPropertyStore(
  Pointer<Pointer<COMObject>> prgpunkStores,
  int cStores,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) =>
    _PSCreateMultiplexPropertyStore(
      prgpunkStores,
      cStores,
      riid,
      ppv,
    );

late final _PSCreateMultiplexPropertyStore = _propsys.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> prgpunkStores,
  Uint32 cStores,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
),
    int Function(
  Pointer<Pointer<COMObject>> prgpunkStores,
  int cStores,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
)>('PSCreateMultiplexPropertyStore');

int PSCreatePropertyChangeArray(
  Pointer<PROPERTYKEY> rgpropkey,
  Pointer<Uint32> rgflags,
  Pointer<PROPVARIANT> rgpropvar,
  int cChanges,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) =>
    _PSCreatePropertyChangeArray(
      rgpropkey,
      rgflags,
      rgpropvar,
      cChanges,
      riid,
      ppv,
    );

late final _PSCreatePropertyChangeArray = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPERTYKEY> rgpropkey,
  Pointer<Uint32> rgflags,
  Pointer<PROPVARIANT> rgpropvar,
  Uint32 cChanges,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
),
    int Function(
  Pointer<PROPERTYKEY> rgpropkey,
  Pointer<Uint32> rgflags,
  Pointer<PROPVARIANT> rgpropvar,
  int cChanges,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
)>('PSCreatePropertyChangeArray');

int PSCreatePropertyStoreFromObject(
  Pointer<COMObject> punk,
  int grfMode,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) =>
    _PSCreatePropertyStoreFromObject(
      punk,
      grfMode,
      riid,
      ppv,
    );

late final _PSCreatePropertyStoreFromObject = _propsys.lookupFunction<
    Int32 Function(
  Pointer<COMObject> punk,
  Uint32 grfMode,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
),
    int Function(
  Pointer<COMObject> punk,
  int grfMode,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
)>('PSCreatePropertyStoreFromObject');

int PSCreatePropertyStoreFromPropertySetStorage(
  Pointer<COMObject> ppss,
  int grfMode,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) =>
    _PSCreatePropertyStoreFromPropertySetStorage(
      ppss,
      grfMode,
      riid,
      ppv,
    );

late final _PSCreatePropertyStoreFromPropertySetStorage =
    _propsys.lookupFunction<
        Int32 Function(
  Pointer<COMObject> ppss,
  Uint32 grfMode,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
),
        int Function(
  Pointer<COMObject> ppss,
  int grfMode,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
)>('PSCreatePropertyStoreFromPropertySetStorage');

int PSCreateSimplePropertyChange(
  int flags,
  Pointer<PROPERTYKEY> key,
  Pointer<PROPVARIANT> propvar,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) =>
    _PSCreateSimplePropertyChange(
      flags,
      key,
      propvar,
      riid,
      ppv,
    );

late final _PSCreateSimplePropertyChange = _propsys.lookupFunction<
    Int32 Function(
  Uint32 flags,
  Pointer<PROPERTYKEY> key,
  Pointer<PROPVARIANT> propvar,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
),
    int Function(
  int flags,
  Pointer<PROPERTYKEY> key,
  Pointer<PROPVARIANT> propvar,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
)>('PSCreateSimplePropertyChange');

int PSEnumeratePropertyDescriptions(
  int filterOn,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) =>
    _PSEnumeratePropertyDescriptions(
      filterOn,
      riid,
      ppv,
    );

late final _PSEnumeratePropertyDescriptions = _propsys.lookupFunction<
    Int32 Function(
  Int32 filterOn,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
),
    int Function(
  int filterOn,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
)>('PSEnumeratePropertyDescriptions');

int PSFormatForDisplay(
  Pointer<PROPERTYKEY> propkey,
  Pointer<PROPVARIANT> propvar,
  int pdfFlags,
  Pointer<Utf16> pwszText,
  int cchText,
) =>
    _PSFormatForDisplay(
      propkey,
      propvar,
      pdfFlags,
      pwszText,
      cchText,
    );

late final _PSFormatForDisplay = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPERTYKEY> propkey,
  Pointer<PROPVARIANT> propvar,
  Uint32 pdfFlags,
  Pointer<Utf16> pwszText,
  Uint32 cchText,
),
    int Function(
  Pointer<PROPERTYKEY> propkey,
  Pointer<PROPVARIANT> propvar,
  int pdfFlags,
  Pointer<Utf16> pwszText,
  int cchText,
)>('PSFormatForDisplay');

int PSFormatForDisplayAlloc(
  Pointer<PROPERTYKEY> key,
  Pointer<PROPVARIANT> propvar,
  int pdff,
  Pointer<Pointer<Utf16>> ppszDisplay,
) =>
    _PSFormatForDisplayAlloc(
      key,
      propvar,
      pdff,
      ppszDisplay,
    );

late final _PSFormatForDisplayAlloc = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPERTYKEY> key,
  Pointer<PROPVARIANT> propvar,
  Uint32 pdff,
  Pointer<Pointer<Utf16>> ppszDisplay,
),
    int Function(
  Pointer<PROPERTYKEY> key,
  Pointer<PROPVARIANT> propvar,
  int pdff,
  Pointer<Pointer<Utf16>> ppszDisplay,
)>('PSFormatForDisplayAlloc');

int PSFormatPropertyValue(
  Pointer<COMObject> pps,
  Pointer<COMObject> ppd,
  int pdff,
  Pointer<Pointer<Utf16>> ppszDisplay,
) =>
    _PSFormatPropertyValue(
      pps,
      ppd,
      pdff,
      ppszDisplay,
    );

late final _PSFormatPropertyValue = _propsys.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pps,
  Pointer<COMObject> ppd,
  Uint32 pdff,
  Pointer<Pointer<Utf16>> ppszDisplay,
),
    int Function(
  Pointer<COMObject> pps,
  Pointer<COMObject> ppd,
  int pdff,
  Pointer<Pointer<Utf16>> ppszDisplay,
)>('PSFormatPropertyValue');

int PSGetImageReferenceForValue(
  Pointer<PROPERTYKEY> propkey,
  Pointer<PROPVARIANT> propvar,
  Pointer<Pointer<Utf16>> ppszImageRes,
) =>
    _PSGetImageReferenceForValue(
      propkey,
      propvar,
      ppszImageRes,
    );

late final _PSGetImageReferenceForValue = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPERTYKEY> propkey,
  Pointer<PROPVARIANT> propvar,
  Pointer<Pointer<Utf16>> ppszImageRes,
),
    int Function(
  Pointer<PROPERTYKEY> propkey,
  Pointer<PROPVARIANT> propvar,
  Pointer<Pointer<Utf16>> ppszImageRes,
)>('PSGetImageReferenceForValue');

int PSGetItemPropertyHandler(
  Pointer<COMObject> punkItem,
  int fReadWrite,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) =>
    _PSGetItemPropertyHandler(
      punkItem,
      fReadWrite,
      riid,
      ppv,
    );

late final _PSGetItemPropertyHandler = _propsys.lookupFunction<
    Int32 Function(
  Pointer<COMObject> punkItem,
  Int32 fReadWrite,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
),
    int Function(
  Pointer<COMObject> punkItem,
  int fReadWrite,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
)>('PSGetItemPropertyHandler');

int PSGetItemPropertyHandlerWithCreateObject(
  Pointer<COMObject> punkItem,
  int fReadWrite,
  Pointer<COMObject> punkCreateObject,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) =>
    _PSGetItemPropertyHandlerWithCreateObject(
      punkItem,
      fReadWrite,
      punkCreateObject,
      riid,
      ppv,
    );

late final _PSGetItemPropertyHandlerWithCreateObject = _propsys.lookupFunction<
    Int32 Function(
  Pointer<COMObject> punkItem,
  Int32 fReadWrite,
  Pointer<COMObject> punkCreateObject,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
),
    int Function(
  Pointer<COMObject> punkItem,
  int fReadWrite,
  Pointer<COMObject> punkCreateObject,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
)>('PSGetItemPropertyHandlerWithCreateObject');

int PSGetNameFromPropertyKey(
  Pointer<PROPERTYKEY> propkey,
  Pointer<Pointer<Utf16>> ppszCanonicalName,
) =>
    _PSGetNameFromPropertyKey(
      propkey,
      ppszCanonicalName,
    );

late final _PSGetNameFromPropertyKey = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPERTYKEY> propkey,
  Pointer<Pointer<Utf16>> ppszCanonicalName,
),
    int Function(
  Pointer<PROPERTYKEY> propkey,
  Pointer<Pointer<Utf16>> ppszCanonicalName,
)>('PSGetNameFromPropertyKey');

int PSGetNamedPropertyFromPropertyStorage(
  Pointer<SERIALIZEDPROPSTORAGE> psps,
  int cb,
  Pointer<Utf16> pszName,
  Pointer<PROPVARIANT> ppropvar,
) =>
    _PSGetNamedPropertyFromPropertyStorage(
      psps,
      cb,
      pszName,
      ppropvar,
    );

late final _PSGetNamedPropertyFromPropertyStorage = _propsys.lookupFunction<
    Int32 Function(
  Pointer<SERIALIZEDPROPSTORAGE> psps,
  Uint32 cb,
  Pointer<Utf16> pszName,
  Pointer<PROPVARIANT> ppropvar,
),
    int Function(
  Pointer<SERIALIZEDPROPSTORAGE> psps,
  int cb,
  Pointer<Utf16> pszName,
  Pointer<PROPVARIANT> ppropvar,
)>('PSGetNamedPropertyFromPropertyStorage');

int PSGetPropertyDescription(
  Pointer<PROPERTYKEY> propkey,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) =>
    _PSGetPropertyDescription(
      propkey,
      riid,
      ppv,
    );

late final _PSGetPropertyDescription = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPERTYKEY> propkey,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
),
    int Function(
  Pointer<PROPERTYKEY> propkey,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
)>('PSGetPropertyDescription');

int PSGetPropertyDescriptionByName(
  Pointer<Utf16> pszCanonicalName,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) =>
    _PSGetPropertyDescriptionByName(
      pszCanonicalName,
      riid,
      ppv,
    );

late final _PSGetPropertyDescriptionByName = _propsys.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszCanonicalName,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
),
    int Function(
  Pointer<Utf16> pszCanonicalName,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
)>('PSGetPropertyDescriptionByName');

int PSGetPropertyDescriptionListFromString(
  Pointer<Utf16> pszPropList,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) =>
    _PSGetPropertyDescriptionListFromString(
      pszPropList,
      riid,
      ppv,
    );

late final _PSGetPropertyDescriptionListFromString = _propsys.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPropList,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
),
    int Function(
  Pointer<Utf16> pszPropList,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
)>('PSGetPropertyDescriptionListFromString');

int PSGetPropertyFromPropertyStorage(
  Pointer<SERIALIZEDPROPSTORAGE> psps,
  int cb,
  Pointer<PROPERTYKEY> rpkey,
  Pointer<PROPVARIANT> ppropvar,
) =>
    _PSGetPropertyFromPropertyStorage(
      psps,
      cb,
      rpkey,
      ppropvar,
    );

late final _PSGetPropertyFromPropertyStorage = _propsys.lookupFunction<
    Int32 Function(
  Pointer<SERIALIZEDPROPSTORAGE> psps,
  Uint32 cb,
  Pointer<PROPERTYKEY> rpkey,
  Pointer<PROPVARIANT> ppropvar,
),
    int Function(
  Pointer<SERIALIZEDPROPSTORAGE> psps,
  int cb,
  Pointer<PROPERTYKEY> rpkey,
  Pointer<PROPVARIANT> ppropvar,
)>('PSGetPropertyFromPropertyStorage');

int PSGetPropertyKeyFromName(
  Pointer<Utf16> pszName,
  Pointer<PROPERTYKEY> ppropkey,
) =>
    _PSGetPropertyKeyFromName(
      pszName,
      ppropkey,
    );

late final _PSGetPropertyKeyFromName = _propsys.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszName,
  Pointer<PROPERTYKEY> ppropkey,
),
    int Function(
  Pointer<Utf16> pszName,
  Pointer<PROPERTYKEY> ppropkey,
)>('PSGetPropertyKeyFromName');

int PSGetPropertySystem(
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) =>
    _PSGetPropertySystem(
      riid,
      ppv,
    );

late final _PSGetPropertySystem = _propsys.lookupFunction<
    Int32 Function(
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
),
    int Function(
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
)>('PSGetPropertySystem');

int PSGetPropertyValue(
  Pointer<COMObject> pps,
  Pointer<COMObject> ppd,
  Pointer<PROPVARIANT> ppropvar,
) =>
    _PSGetPropertyValue(
      pps,
      ppd,
      ppropvar,
    );

late final _PSGetPropertyValue = _propsys.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pps,
  Pointer<COMObject> ppd,
  Pointer<PROPVARIANT> ppropvar,
),
    int Function(
  Pointer<COMObject> pps,
  Pointer<COMObject> ppd,
  Pointer<PROPVARIANT> ppropvar,
)>('PSGetPropertyValue');

int PSLookupPropertyHandlerCLSID(
  Pointer<Utf16> pszFilePath,
  Pointer<GUID> pclsid,
) =>
    _PSLookupPropertyHandlerCLSID(
      pszFilePath,
      pclsid,
    );

late final _PSLookupPropertyHandlerCLSID = _propsys.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszFilePath,
  Pointer<GUID> pclsid,
),
    int Function(
  Pointer<Utf16> pszFilePath,
  Pointer<GUID> pclsid,
)>('PSLookupPropertyHandlerCLSID');

int PSPropertyBag_Delete(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
) =>
    _PSPropertyBag_Delete(
      propBag,
      propName,
    );

late final _PSPropertyBag_Delete = _propsys.lookupFunction<
    Int32 Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
),
    int Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
)>('PSPropertyBag_Delete');

int PSPropertyBag_ReadBOOL(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<Int32> value,
) =>
    _PSPropertyBag_ReadBOOL(
      propBag,
      propName,
      value,
    );

late final _PSPropertyBag_ReadBOOL = _propsys.lookupFunction<
    Int32 Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<Int32> value,
),
    int Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<Int32> value,
)>('PSPropertyBag_ReadBOOL');

int PSPropertyBag_ReadBSTR(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<Pointer<Utf16>> value,
) =>
    _PSPropertyBag_ReadBSTR(
      propBag,
      propName,
      value,
    );

late final _PSPropertyBag_ReadBSTR = _propsys.lookupFunction<
    Int32 Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<Pointer<Utf16>> value,
),
    int Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<Pointer<Utf16>> value,
)>('PSPropertyBag_ReadBSTR');

int PSPropertyBag_ReadDWORD(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<Uint32> value,
) =>
    _PSPropertyBag_ReadDWORD(
      propBag,
      propName,
      value,
    );

late final _PSPropertyBag_ReadDWORD = _propsys.lookupFunction<
    Int32 Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<Uint32> value,
),
    int Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<Uint32> value,
)>('PSPropertyBag_ReadDWORD');

int PSPropertyBag_ReadGUID(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<GUID> value,
) =>
    _PSPropertyBag_ReadGUID(
      propBag,
      propName,
      value,
    );

late final _PSPropertyBag_ReadGUID = _propsys.lookupFunction<
    Int32 Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<GUID> value,
),
    int Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<GUID> value,
)>('PSPropertyBag_ReadGUID');

int PSPropertyBag_ReadInt(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<Int32> value,
) =>
    _PSPropertyBag_ReadInt(
      propBag,
      propName,
      value,
    );

late final _PSPropertyBag_ReadInt = _propsys.lookupFunction<
    Int32 Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<Int32> value,
),
    int Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<Int32> value,
)>('PSPropertyBag_ReadInt');

int PSPropertyBag_ReadLONG(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<Int32> value,
) =>
    _PSPropertyBag_ReadLONG(
      propBag,
      propName,
      value,
    );

late final _PSPropertyBag_ReadLONG = _propsys.lookupFunction<
    Int32 Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<Int32> value,
),
    int Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<Int32> value,
)>('PSPropertyBag_ReadLONG');

int PSPropertyBag_ReadPOINTL(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<POINTL> value,
) =>
    _PSPropertyBag_ReadPOINTL(
      propBag,
      propName,
      value,
    );

late final _PSPropertyBag_ReadPOINTL = _propsys.lookupFunction<
    Int32 Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<POINTL> value,
),
    int Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<POINTL> value,
)>('PSPropertyBag_ReadPOINTL');

int PSPropertyBag_ReadPOINTS(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<POINTS> value,
) =>
    _PSPropertyBag_ReadPOINTS(
      propBag,
      propName,
      value,
    );

late final _PSPropertyBag_ReadPOINTS = _propsys.lookupFunction<
    Int32 Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<POINTS> value,
),
    int Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<POINTS> value,
)>('PSPropertyBag_ReadPOINTS');

int PSPropertyBag_ReadPropertyKey(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<PROPERTYKEY> value,
) =>
    _PSPropertyBag_ReadPropertyKey(
      propBag,
      propName,
      value,
    );

late final _PSPropertyBag_ReadPropertyKey = _propsys.lookupFunction<
    Int32 Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<PROPERTYKEY> value,
),
    int Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<PROPERTYKEY> value,
)>('PSPropertyBag_ReadPropertyKey');

int PSPropertyBag_ReadRECTL(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<RECTL> value,
) =>
    _PSPropertyBag_ReadRECTL(
      propBag,
      propName,
      value,
    );

late final _PSPropertyBag_ReadRECTL = _propsys.lookupFunction<
    Int32 Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<RECTL> value,
),
    int Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<RECTL> value,
)>('PSPropertyBag_ReadRECTL');

int PSPropertyBag_ReadSHORT(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<Int16> value,
) =>
    _PSPropertyBag_ReadSHORT(
      propBag,
      propName,
      value,
    );

late final _PSPropertyBag_ReadSHORT = _propsys.lookupFunction<
    Int32 Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<Int16> value,
),
    int Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<Int16> value,
)>('PSPropertyBag_ReadSHORT');

int PSPropertyBag_ReadStr(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<Utf16> value,
  int characterCount,
) =>
    _PSPropertyBag_ReadStr(
      propBag,
      propName,
      value,
      characterCount,
    );

late final _PSPropertyBag_ReadStr = _propsys.lookupFunction<
    Int32 Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<Utf16> value,
  Int32 characterCount,
),
    int Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<Utf16> value,
  int characterCount,
)>('PSPropertyBag_ReadStr');

int PSPropertyBag_ReadStrAlloc(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<Pointer<Utf16>> value,
) =>
    _PSPropertyBag_ReadStrAlloc(
      propBag,
      propName,
      value,
    );

late final _PSPropertyBag_ReadStrAlloc = _propsys.lookupFunction<
    Int32 Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<Pointer<Utf16>> value,
),
    int Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<Pointer<Utf16>> value,
)>('PSPropertyBag_ReadStrAlloc');

int PSPropertyBag_ReadStream(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<Pointer<COMObject>> value,
) =>
    _PSPropertyBag_ReadStream(
      propBag,
      propName,
      value,
    );

late final _PSPropertyBag_ReadStream = _propsys.lookupFunction<
    Int32 Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<Pointer<COMObject>> value,
),
    int Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<Pointer<COMObject>> value,
)>('PSPropertyBag_ReadStream');

int PSPropertyBag_ReadType(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<VARIANT> $var,
  int type,
) =>
    _PSPropertyBag_ReadType(
      propBag,
      propName,
      $var,
      type,
    );

late final _PSPropertyBag_ReadType = _propsys.lookupFunction<
    Int32 Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<VARIANT> $var,
  Uint16 type,
),
    int Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<VARIANT> $var,
  int type,
)>('PSPropertyBag_ReadType');

int PSPropertyBag_ReadULONGLONG(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<Uint64> value,
) =>
    _PSPropertyBag_ReadULONGLONG(
      propBag,
      propName,
      value,
    );

late final _PSPropertyBag_ReadULONGLONG = _propsys.lookupFunction<
    Int32 Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<Uint64> value,
),
    int Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<Uint64> value,
)>('PSPropertyBag_ReadULONGLONG');

int PSPropertyBag_ReadUnknown(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) =>
    _PSPropertyBag_ReadUnknown(
      propBag,
      propName,
      riid,
      ppv,
    );

late final _PSPropertyBag_ReadUnknown = _propsys.lookupFunction<
    Int32 Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
),
    int Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
)>('PSPropertyBag_ReadUnknown');

int PSPropertyBag_WriteBOOL(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  int value,
) =>
    _PSPropertyBag_WriteBOOL(
      propBag,
      propName,
      value,
    );

late final _PSPropertyBag_WriteBOOL = _propsys.lookupFunction<
    Int32 Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Int32 value,
),
    int Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  int value,
)>('PSPropertyBag_WriteBOOL');

int PSPropertyBag_WriteBSTR(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<Utf16> value,
) =>
    _PSPropertyBag_WriteBSTR(
      propBag,
      propName,
      value,
    );

late final _PSPropertyBag_WriteBSTR = _propsys.lookupFunction<
    Int32 Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<Utf16> value,
),
    int Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<Utf16> value,
)>('PSPropertyBag_WriteBSTR');

int PSPropertyBag_WriteDWORD(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  int value,
) =>
    _PSPropertyBag_WriteDWORD(
      propBag,
      propName,
      value,
    );

late final _PSPropertyBag_WriteDWORD = _propsys.lookupFunction<
    Int32 Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Uint32 value,
),
    int Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  int value,
)>('PSPropertyBag_WriteDWORD');

int PSPropertyBag_WriteGUID(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<GUID> value,
) =>
    _PSPropertyBag_WriteGUID(
      propBag,
      propName,
      value,
    );

late final _PSPropertyBag_WriteGUID = _propsys.lookupFunction<
    Int32 Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<GUID> value,
),
    int Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<GUID> value,
)>('PSPropertyBag_WriteGUID');

int PSPropertyBag_WriteInt(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  int value,
) =>
    _PSPropertyBag_WriteInt(
      propBag,
      propName,
      value,
    );

late final _PSPropertyBag_WriteInt = _propsys.lookupFunction<
    Int32 Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Int32 value,
),
    int Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  int value,
)>('PSPropertyBag_WriteInt');

int PSPropertyBag_WriteLONG(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  int value,
) =>
    _PSPropertyBag_WriteLONG(
      propBag,
      propName,
      value,
    );

late final _PSPropertyBag_WriteLONG = _propsys.lookupFunction<
    Int32 Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Int32 value,
),
    int Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  int value,
)>('PSPropertyBag_WriteLONG');

int PSPropertyBag_WritePOINTL(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<POINTL> value,
) =>
    _PSPropertyBag_WritePOINTL(
      propBag,
      propName,
      value,
    );

late final _PSPropertyBag_WritePOINTL = _propsys.lookupFunction<
    Int32 Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<POINTL> value,
),
    int Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<POINTL> value,
)>('PSPropertyBag_WritePOINTL');

int PSPropertyBag_WritePOINTS(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<POINTS> value,
) =>
    _PSPropertyBag_WritePOINTS(
      propBag,
      propName,
      value,
    );

late final _PSPropertyBag_WritePOINTS = _propsys.lookupFunction<
    Int32 Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<POINTS> value,
),
    int Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<POINTS> value,
)>('PSPropertyBag_WritePOINTS');

int PSPropertyBag_WritePropertyKey(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<PROPERTYKEY> value,
) =>
    _PSPropertyBag_WritePropertyKey(
      propBag,
      propName,
      value,
    );

late final _PSPropertyBag_WritePropertyKey = _propsys.lookupFunction<
    Int32 Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<PROPERTYKEY> value,
),
    int Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<PROPERTYKEY> value,
)>('PSPropertyBag_WritePropertyKey');

int PSPropertyBag_WriteRECTL(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<RECTL> value,
) =>
    _PSPropertyBag_WriteRECTL(
      propBag,
      propName,
      value,
    );

late final _PSPropertyBag_WriteRECTL = _propsys.lookupFunction<
    Int32 Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<RECTL> value,
),
    int Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<RECTL> value,
)>('PSPropertyBag_WriteRECTL');

int PSPropertyBag_WriteSHORT(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  int value,
) =>
    _PSPropertyBag_WriteSHORT(
      propBag,
      propName,
      value,
    );

late final _PSPropertyBag_WriteSHORT = _propsys.lookupFunction<
    Int32 Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Int16 value,
),
    int Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  int value,
)>('PSPropertyBag_WriteSHORT');

int PSPropertyBag_WriteStr(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<Utf16> value,
) =>
    _PSPropertyBag_WriteStr(
      propBag,
      propName,
      value,
    );

late final _PSPropertyBag_WriteStr = _propsys.lookupFunction<
    Int32 Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<Utf16> value,
),
    int Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<Utf16> value,
)>('PSPropertyBag_WriteStr');

int PSPropertyBag_WriteStream(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<COMObject> value,
) =>
    _PSPropertyBag_WriteStream(
      propBag,
      propName,
      value,
    );

late final _PSPropertyBag_WriteStream = _propsys.lookupFunction<
    Int32 Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<COMObject> value,
),
    int Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<COMObject> value,
)>('PSPropertyBag_WriteStream');

int PSPropertyBag_WriteULONGLONG(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  int value,
) =>
    _PSPropertyBag_WriteULONGLONG(
      propBag,
      propName,
      value,
    );

late final _PSPropertyBag_WriteULONGLONG = _propsys.lookupFunction<
    Int32 Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Uint64 value,
),
    int Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  int value,
)>('PSPropertyBag_WriteULONGLONG');

int PSPropertyBag_WriteUnknown(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<COMObject> punk,
) =>
    _PSPropertyBag_WriteUnknown(
      propBag,
      propName,
      punk,
    );

late final _PSPropertyBag_WriteUnknown = _propsys.lookupFunction<
    Int32 Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<COMObject> punk,
),
    int Function(
  Pointer<COMObject> propBag,
  Pointer<Utf16> propName,
  Pointer<COMObject> punk,
)>('PSPropertyBag_WriteUnknown');

int PSPropertyKeyFromString(
  Pointer<Utf16> pszString,
  Pointer<PROPERTYKEY> pkey,
) =>
    _PSPropertyKeyFromString(
      pszString,
      pkey,
    );

late final _PSPropertyKeyFromString = _propsys.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszString,
  Pointer<PROPERTYKEY> pkey,
),
    int Function(
  Pointer<Utf16> pszString,
  Pointer<PROPERTYKEY> pkey,
)>('PSPropertyKeyFromString');

int PSRefreshPropertySchema() => _PSRefreshPropertySchema();

late final _PSRefreshPropertySchema =
    _propsys.lookupFunction<Int32 Function(), int Function()>(
        'PSRefreshPropertySchema');

int PSRegisterPropertySchema(
  Pointer<Utf16> pszPath,
) =>
    _PSRegisterPropertySchema(
      pszPath,
    );

late final _PSRegisterPropertySchema = _propsys.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPath,
),
    int Function(
  Pointer<Utf16> pszPath,
)>('PSRegisterPropertySchema');

int PSSetPropertyValue(
  Pointer<COMObject> pps,
  Pointer<COMObject> ppd,
  Pointer<PROPVARIANT> propvar,
) =>
    _PSSetPropertyValue(
      pps,
      ppd,
      propvar,
    );

late final _PSSetPropertyValue = _propsys.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pps,
  Pointer<COMObject> ppd,
  Pointer<PROPVARIANT> propvar,
),
    int Function(
  Pointer<COMObject> pps,
  Pointer<COMObject> ppd,
  Pointer<PROPVARIANT> propvar,
)>('PSSetPropertyValue');

int PSStringFromPropertyKey(
  Pointer<PROPERTYKEY> pkey,
  Pointer<Utf16> psz,
  int cch,
) =>
    _PSStringFromPropertyKey(
      pkey,
      psz,
      cch,
    );

late final _PSStringFromPropertyKey = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPERTYKEY> pkey,
  Pointer<Utf16> psz,
  Uint32 cch,
),
    int Function(
  Pointer<PROPERTYKEY> pkey,
  Pointer<Utf16> psz,
  int cch,
)>('PSStringFromPropertyKey');

int PSUnregisterPropertySchema(
  Pointer<Utf16> pszPath,
) =>
    _PSUnregisterPropertySchema(
      pszPath,
    );

late final _PSUnregisterPropertySchema = _propsys.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPath,
),
    int Function(
  Pointer<Utf16> pszPath,
)>('PSUnregisterPropertySchema');

int PropVariantChangeType(
  Pointer<PROPVARIANT> ppropvarDest,
  Pointer<PROPVARIANT> propvarSrc,
  int flags,
  int vt,
) =>
    _PropVariantChangeType(
      ppropvarDest,
      propvarSrc,
      flags,
      vt,
    );

late final _PropVariantChangeType = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPVARIANT> ppropvarDest,
  Pointer<PROPVARIANT> propvarSrc,
  Uint32 flags,
  Uint16 vt,
),
    int Function(
  Pointer<PROPVARIANT> ppropvarDest,
  Pointer<PROPVARIANT> propvarSrc,
  int flags,
  int vt,
)>('PropVariantChangeType');

int PropVariantCompareEx(
  Pointer<PROPVARIANT> propvar1,
  Pointer<PROPVARIANT> propvar2,
  int unit,
  int flags,
) =>
    _PropVariantCompareEx(
      propvar1,
      propvar2,
      unit,
      flags,
    );

late final _PropVariantCompareEx = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPVARIANT> propvar1,
  Pointer<PROPVARIANT> propvar2,
  Int32 unit,
  Uint32 flags,
),
    int Function(
  Pointer<PROPVARIANT> propvar1,
  Pointer<PROPVARIANT> propvar2,
  int unit,
  int flags,
)>('PropVariantCompareEx');

int PropVariantGetBooleanElem(
  Pointer<PROPVARIANT> propvar,
  int iElem,
  Pointer<Int32> pfVal,
) =>
    _PropVariantGetBooleanElem(
      propvar,
      iElem,
      pfVal,
    );

late final _PropVariantGetBooleanElem = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPVARIANT> propvar,
  Uint32 iElem,
  Pointer<Int32> pfVal,
),
    int Function(
  Pointer<PROPVARIANT> propvar,
  int iElem,
  Pointer<Int32> pfVal,
)>('PropVariantGetBooleanElem');

int PropVariantGetDoubleElem(
  Pointer<PROPVARIANT> propvar,
  int iElem,
  Pointer<Double> pnVal,
) =>
    _PropVariantGetDoubleElem(
      propvar,
      iElem,
      pnVal,
    );

late final _PropVariantGetDoubleElem = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPVARIANT> propvar,
  Uint32 iElem,
  Pointer<Double> pnVal,
),
    int Function(
  Pointer<PROPVARIANT> propvar,
  int iElem,
  Pointer<Double> pnVal,
)>('PropVariantGetDoubleElem');

int PropVariantGetElementCount(
  Pointer<PROPVARIANT> propvar,
) =>
    _PropVariantGetElementCount(
      propvar,
    );

late final _PropVariantGetElementCount = _propsys.lookupFunction<
    Uint32 Function(
  Pointer<PROPVARIANT> propvar,
),
    int Function(
  Pointer<PROPVARIANT> propvar,
)>('PropVariantGetElementCount');

int PropVariantGetFileTimeElem(
  Pointer<PROPVARIANT> propvar,
  int iElem,
  Pointer<FILETIME> pftVal,
) =>
    _PropVariantGetFileTimeElem(
      propvar,
      iElem,
      pftVal,
    );

late final _PropVariantGetFileTimeElem = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPVARIANT> propvar,
  Uint32 iElem,
  Pointer<FILETIME> pftVal,
),
    int Function(
  Pointer<PROPVARIANT> propvar,
  int iElem,
  Pointer<FILETIME> pftVal,
)>('PropVariantGetFileTimeElem');

int PropVariantGetInt16Elem(
  Pointer<PROPVARIANT> propvar,
  int iElem,
  Pointer<Int16> pnVal,
) =>
    _PropVariantGetInt16Elem(
      propvar,
      iElem,
      pnVal,
    );

late final _PropVariantGetInt16Elem = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPVARIANT> propvar,
  Uint32 iElem,
  Pointer<Int16> pnVal,
),
    int Function(
  Pointer<PROPVARIANT> propvar,
  int iElem,
  Pointer<Int16> pnVal,
)>('PropVariantGetInt16Elem');

int PropVariantGetInt32Elem(
  Pointer<PROPVARIANT> propvar,
  int iElem,
  Pointer<Int32> pnVal,
) =>
    _PropVariantGetInt32Elem(
      propvar,
      iElem,
      pnVal,
    );

late final _PropVariantGetInt32Elem = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPVARIANT> propvar,
  Uint32 iElem,
  Pointer<Int32> pnVal,
),
    int Function(
  Pointer<PROPVARIANT> propvar,
  int iElem,
  Pointer<Int32> pnVal,
)>('PropVariantGetInt32Elem');

int PropVariantGetInt64Elem(
  Pointer<PROPVARIANT> propvar,
  int iElem,
  Pointer<Int64> pnVal,
) =>
    _PropVariantGetInt64Elem(
      propvar,
      iElem,
      pnVal,
    );

late final _PropVariantGetInt64Elem = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPVARIANT> propvar,
  Uint32 iElem,
  Pointer<Int64> pnVal,
),
    int Function(
  Pointer<PROPVARIANT> propvar,
  int iElem,
  Pointer<Int64> pnVal,
)>('PropVariantGetInt64Elem');

int PropVariantGetStringElem(
  Pointer<PROPVARIANT> propvar,
  int iElem,
  Pointer<Pointer<Utf16>> ppszVal,
) =>
    _PropVariantGetStringElem(
      propvar,
      iElem,
      ppszVal,
    );

late final _PropVariantGetStringElem = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPVARIANT> propvar,
  Uint32 iElem,
  Pointer<Pointer<Utf16>> ppszVal,
),
    int Function(
  Pointer<PROPVARIANT> propvar,
  int iElem,
  Pointer<Pointer<Utf16>> ppszVal,
)>('PropVariantGetStringElem');

int PropVariantGetUInt16Elem(
  Pointer<PROPVARIANT> propvar,
  int iElem,
  Pointer<Uint16> pnVal,
) =>
    _PropVariantGetUInt16Elem(
      propvar,
      iElem,
      pnVal,
    );

late final _PropVariantGetUInt16Elem = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPVARIANT> propvar,
  Uint32 iElem,
  Pointer<Uint16> pnVal,
),
    int Function(
  Pointer<PROPVARIANT> propvar,
  int iElem,
  Pointer<Uint16> pnVal,
)>('PropVariantGetUInt16Elem');

int PropVariantGetUInt32Elem(
  Pointer<PROPVARIANT> propvar,
  int iElem,
  Pointer<Uint32> pnVal,
) =>
    _PropVariantGetUInt32Elem(
      propvar,
      iElem,
      pnVal,
    );

late final _PropVariantGetUInt32Elem = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPVARIANT> propvar,
  Uint32 iElem,
  Pointer<Uint32> pnVal,
),
    int Function(
  Pointer<PROPVARIANT> propvar,
  int iElem,
  Pointer<Uint32> pnVal,
)>('PropVariantGetUInt32Elem');

int PropVariantGetUInt64Elem(
  Pointer<PROPVARIANT> propvar,
  int iElem,
  Pointer<Uint64> pnVal,
) =>
    _PropVariantGetUInt64Elem(
      propvar,
      iElem,
      pnVal,
    );

late final _PropVariantGetUInt64Elem = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPVARIANT> propvar,
  Uint32 iElem,
  Pointer<Uint64> pnVal,
),
    int Function(
  Pointer<PROPVARIANT> propvar,
  int iElem,
  Pointer<Uint64> pnVal,
)>('PropVariantGetUInt64Elem');

int PropVariantToBSTR(
  Pointer<PROPVARIANT> propvar,
  Pointer<Pointer<Utf16>> pbstrOut,
) =>
    _PropVariantToBSTR(
      propvar,
      pbstrOut,
    );

late final _PropVariantToBSTR = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPVARIANT> propvar,
  Pointer<Pointer<Utf16>> pbstrOut,
),
    int Function(
  Pointer<PROPVARIANT> propvar,
  Pointer<Pointer<Utf16>> pbstrOut,
)>('PropVariantToBSTR');

int PropVariantToBoolean(
  Pointer<PROPVARIANT> propvarIn,
  Pointer<Int32> pfRet,
) =>
    _PropVariantToBoolean(
      propvarIn,
      pfRet,
    );

late final _PropVariantToBoolean = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPVARIANT> propvarIn,
  Pointer<Int32> pfRet,
),
    int Function(
  Pointer<PROPVARIANT> propvarIn,
  Pointer<Int32> pfRet,
)>('PropVariantToBoolean');

int PropVariantToBooleanVector(
  Pointer<PROPVARIANT> propvar,
  Pointer<Int32> prgf,
  int crgf,
  Pointer<Uint32> pcElem,
) =>
    _PropVariantToBooleanVector(
      propvar,
      prgf,
      crgf,
      pcElem,
    );

late final _PropVariantToBooleanVector = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPVARIANT> propvar,
  Pointer<Int32> prgf,
  Uint32 crgf,
  Pointer<Uint32> pcElem,
),
    int Function(
  Pointer<PROPVARIANT> propvar,
  Pointer<Int32> prgf,
  int crgf,
  Pointer<Uint32> pcElem,
)>('PropVariantToBooleanVector');

int PropVariantToBooleanVectorAlloc(
  Pointer<PROPVARIANT> propvar,
  Pointer<Pointer<Int32>> pprgf,
  Pointer<Uint32> pcElem,
) =>
    _PropVariantToBooleanVectorAlloc(
      propvar,
      pprgf,
      pcElem,
    );

late final _PropVariantToBooleanVectorAlloc = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPVARIANT> propvar,
  Pointer<Pointer<Int32>> pprgf,
  Pointer<Uint32> pcElem,
),
    int Function(
  Pointer<PROPVARIANT> propvar,
  Pointer<Pointer<Int32>> pprgf,
  Pointer<Uint32> pcElem,
)>('PropVariantToBooleanVectorAlloc');

int PropVariantToBooleanWithDefault(
  Pointer<PROPVARIANT> propvarIn,
  int fDefault,
) =>
    _PropVariantToBooleanWithDefault(
      propvarIn,
      fDefault,
    );

late final _PropVariantToBooleanWithDefault = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPVARIANT> propvarIn,
  Int32 fDefault,
),
    int Function(
  Pointer<PROPVARIANT> propvarIn,
  int fDefault,
)>('PropVariantToBooleanWithDefault');

int PropVariantToBuffer(
  Pointer<PROPVARIANT> propvar,
  Pointer pv,
  int cb,
) =>
    _PropVariantToBuffer(
      propvar,
      pv,
      cb,
    );

late final _PropVariantToBuffer = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPVARIANT> propvar,
  Pointer pv,
  Uint32 cb,
),
    int Function(
  Pointer<PROPVARIANT> propvar,
  Pointer pv,
  int cb,
)>('PropVariantToBuffer');

int PropVariantToDouble(
  Pointer<PROPVARIANT> propvarIn,
  Pointer<Double> pdblRet,
) =>
    _PropVariantToDouble(
      propvarIn,
      pdblRet,
    );

late final _PropVariantToDouble = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPVARIANT> propvarIn,
  Pointer<Double> pdblRet,
),
    int Function(
  Pointer<PROPVARIANT> propvarIn,
  Pointer<Double> pdblRet,
)>('PropVariantToDouble');

int PropVariantToDoubleVector(
  Pointer<PROPVARIANT> propvar,
  Pointer<Double> prgn,
  int crgn,
  Pointer<Uint32> pcElem,
) =>
    _PropVariantToDoubleVector(
      propvar,
      prgn,
      crgn,
      pcElem,
    );

late final _PropVariantToDoubleVector = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPVARIANT> propvar,
  Pointer<Double> prgn,
  Uint32 crgn,
  Pointer<Uint32> pcElem,
),
    int Function(
  Pointer<PROPVARIANT> propvar,
  Pointer<Double> prgn,
  int crgn,
  Pointer<Uint32> pcElem,
)>('PropVariantToDoubleVector');

int PropVariantToDoubleVectorAlloc(
  Pointer<PROPVARIANT> propvar,
  Pointer<Pointer<Double>> pprgn,
  Pointer<Uint32> pcElem,
) =>
    _PropVariantToDoubleVectorAlloc(
      propvar,
      pprgn,
      pcElem,
    );

late final _PropVariantToDoubleVectorAlloc = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPVARIANT> propvar,
  Pointer<Pointer<Double>> pprgn,
  Pointer<Uint32> pcElem,
),
    int Function(
  Pointer<PROPVARIANT> propvar,
  Pointer<Pointer<Double>> pprgn,
  Pointer<Uint32> pcElem,
)>('PropVariantToDoubleVectorAlloc');

double PropVariantToDoubleWithDefault(
  Pointer<PROPVARIANT> propvarIn,
  double dblDefault,
) =>
    _PropVariantToDoubleWithDefault(
      propvarIn,
      dblDefault,
    );

late final _PropVariantToDoubleWithDefault = _propsys.lookupFunction<
    Double Function(
  Pointer<PROPVARIANT> propvarIn,
  Double dblDefault,
),
    double Function(
  Pointer<PROPVARIANT> propvarIn,
  double dblDefault,
)>('PropVariantToDoubleWithDefault');

int PropVariantToFileTime(
  Pointer<PROPVARIANT> propvar,
  int pstfOut,
  Pointer<FILETIME> pftOut,
) =>
    _PropVariantToFileTime(
      propvar,
      pstfOut,
      pftOut,
    );

late final _PropVariantToFileTime = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPVARIANT> propvar,
  Uint32 pstfOut,
  Pointer<FILETIME> pftOut,
),
    int Function(
  Pointer<PROPVARIANT> propvar,
  int pstfOut,
  Pointer<FILETIME> pftOut,
)>('PropVariantToFileTime');

int PropVariantToFileTimeVector(
  Pointer<PROPVARIANT> propvar,
  Pointer<FILETIME> prgft,
  int crgft,
  Pointer<Uint32> pcElem,
) =>
    _PropVariantToFileTimeVector(
      propvar,
      prgft,
      crgft,
      pcElem,
    );

late final _PropVariantToFileTimeVector = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPVARIANT> propvar,
  Pointer<FILETIME> prgft,
  Uint32 crgft,
  Pointer<Uint32> pcElem,
),
    int Function(
  Pointer<PROPVARIANT> propvar,
  Pointer<FILETIME> prgft,
  int crgft,
  Pointer<Uint32> pcElem,
)>('PropVariantToFileTimeVector');

int PropVariantToFileTimeVectorAlloc(
  Pointer<PROPVARIANT> propvar,
  Pointer<Pointer<FILETIME>> pprgft,
  Pointer<Uint32> pcElem,
) =>
    _PropVariantToFileTimeVectorAlloc(
      propvar,
      pprgft,
      pcElem,
    );

late final _PropVariantToFileTimeVectorAlloc = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPVARIANT> propvar,
  Pointer<Pointer<FILETIME>> pprgft,
  Pointer<Uint32> pcElem,
),
    int Function(
  Pointer<PROPVARIANT> propvar,
  Pointer<Pointer<FILETIME>> pprgft,
  Pointer<Uint32> pcElem,
)>('PropVariantToFileTimeVectorAlloc');

int PropVariantToGUID(
  Pointer<PROPVARIANT> propvar,
  Pointer<GUID> pguid,
) =>
    _PropVariantToGUID(
      propvar,
      pguid,
    );

late final _PropVariantToGUID = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPVARIANT> propvar,
  Pointer<GUID> pguid,
),
    int Function(
  Pointer<PROPVARIANT> propvar,
  Pointer<GUID> pguid,
)>('PropVariantToGUID');

int PropVariantToInt16(
  Pointer<PROPVARIANT> propvarIn,
  Pointer<Int16> piRet,
) =>
    _PropVariantToInt16(
      propvarIn,
      piRet,
    );

late final _PropVariantToInt16 = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPVARIANT> propvarIn,
  Pointer<Int16> piRet,
),
    int Function(
  Pointer<PROPVARIANT> propvarIn,
  Pointer<Int16> piRet,
)>('PropVariantToInt16');

int PropVariantToInt16Vector(
  Pointer<PROPVARIANT> propvar,
  Pointer<Int16> prgn,
  int crgn,
  Pointer<Uint32> pcElem,
) =>
    _PropVariantToInt16Vector(
      propvar,
      prgn,
      crgn,
      pcElem,
    );

late final _PropVariantToInt16Vector = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPVARIANT> propvar,
  Pointer<Int16> prgn,
  Uint32 crgn,
  Pointer<Uint32> pcElem,
),
    int Function(
  Pointer<PROPVARIANT> propvar,
  Pointer<Int16> prgn,
  int crgn,
  Pointer<Uint32> pcElem,
)>('PropVariantToInt16Vector');

int PropVariantToInt16VectorAlloc(
  Pointer<PROPVARIANT> propvar,
  Pointer<Pointer<Int16>> pprgn,
  Pointer<Uint32> pcElem,
) =>
    _PropVariantToInt16VectorAlloc(
      propvar,
      pprgn,
      pcElem,
    );

late final _PropVariantToInt16VectorAlloc = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPVARIANT> propvar,
  Pointer<Pointer<Int16>> pprgn,
  Pointer<Uint32> pcElem,
),
    int Function(
  Pointer<PROPVARIANT> propvar,
  Pointer<Pointer<Int16>> pprgn,
  Pointer<Uint32> pcElem,
)>('PropVariantToInt16VectorAlloc');

int PropVariantToInt16WithDefault(
  Pointer<PROPVARIANT> propvarIn,
  int iDefault,
) =>
    _PropVariantToInt16WithDefault(
      propvarIn,
      iDefault,
    );

late final _PropVariantToInt16WithDefault = _propsys.lookupFunction<
    Int16 Function(
  Pointer<PROPVARIANT> propvarIn,
  Int16 iDefault,
),
    int Function(
  Pointer<PROPVARIANT> propvarIn,
  int iDefault,
)>('PropVariantToInt16WithDefault');

int PropVariantToInt32(
  Pointer<PROPVARIANT> propvarIn,
  Pointer<Int32> plRet,
) =>
    _PropVariantToInt32(
      propvarIn,
      plRet,
    );

late final _PropVariantToInt32 = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPVARIANT> propvarIn,
  Pointer<Int32> plRet,
),
    int Function(
  Pointer<PROPVARIANT> propvarIn,
  Pointer<Int32> plRet,
)>('PropVariantToInt32');

int PropVariantToInt32Vector(
  Pointer<PROPVARIANT> propvar,
  Pointer<Int32> prgn,
  int crgn,
  Pointer<Uint32> pcElem,
) =>
    _PropVariantToInt32Vector(
      propvar,
      prgn,
      crgn,
      pcElem,
    );

late final _PropVariantToInt32Vector = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPVARIANT> propvar,
  Pointer<Int32> prgn,
  Uint32 crgn,
  Pointer<Uint32> pcElem,
),
    int Function(
  Pointer<PROPVARIANT> propvar,
  Pointer<Int32> prgn,
  int crgn,
  Pointer<Uint32> pcElem,
)>('PropVariantToInt32Vector');

int PropVariantToInt32VectorAlloc(
  Pointer<PROPVARIANT> propvar,
  Pointer<Pointer<Int32>> pprgn,
  Pointer<Uint32> pcElem,
) =>
    _PropVariantToInt32VectorAlloc(
      propvar,
      pprgn,
      pcElem,
    );

late final _PropVariantToInt32VectorAlloc = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPVARIANT> propvar,
  Pointer<Pointer<Int32>> pprgn,
  Pointer<Uint32> pcElem,
),
    int Function(
  Pointer<PROPVARIANT> propvar,
  Pointer<Pointer<Int32>> pprgn,
  Pointer<Uint32> pcElem,
)>('PropVariantToInt32VectorAlloc');

int PropVariantToInt32WithDefault(
  Pointer<PROPVARIANT> propvarIn,
  int lDefault,
) =>
    _PropVariantToInt32WithDefault(
      propvarIn,
      lDefault,
    );

late final _PropVariantToInt32WithDefault = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPVARIANT> propvarIn,
  Int32 lDefault,
),
    int Function(
  Pointer<PROPVARIANT> propvarIn,
  int lDefault,
)>('PropVariantToInt32WithDefault');

int PropVariantToInt64(
  Pointer<PROPVARIANT> propvarIn,
  Pointer<Int64> pllRet,
) =>
    _PropVariantToInt64(
      propvarIn,
      pllRet,
    );

late final _PropVariantToInt64 = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPVARIANT> propvarIn,
  Pointer<Int64> pllRet,
),
    int Function(
  Pointer<PROPVARIANT> propvarIn,
  Pointer<Int64> pllRet,
)>('PropVariantToInt64');

int PropVariantToInt64Vector(
  Pointer<PROPVARIANT> propvar,
  Pointer<Int64> prgn,
  int crgn,
  Pointer<Uint32> pcElem,
) =>
    _PropVariantToInt64Vector(
      propvar,
      prgn,
      crgn,
      pcElem,
    );

late final _PropVariantToInt64Vector = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPVARIANT> propvar,
  Pointer<Int64> prgn,
  Uint32 crgn,
  Pointer<Uint32> pcElem,
),
    int Function(
  Pointer<PROPVARIANT> propvar,
  Pointer<Int64> prgn,
  int crgn,
  Pointer<Uint32> pcElem,
)>('PropVariantToInt64Vector');

int PropVariantToInt64VectorAlloc(
  Pointer<PROPVARIANT> propvar,
  Pointer<Pointer<Int64>> pprgn,
  Pointer<Uint32> pcElem,
) =>
    _PropVariantToInt64VectorAlloc(
      propvar,
      pprgn,
      pcElem,
    );

late final _PropVariantToInt64VectorAlloc = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPVARIANT> propvar,
  Pointer<Pointer<Int64>> pprgn,
  Pointer<Uint32> pcElem,
),
    int Function(
  Pointer<PROPVARIANT> propvar,
  Pointer<Pointer<Int64>> pprgn,
  Pointer<Uint32> pcElem,
)>('PropVariantToInt64VectorAlloc');

int PropVariantToInt64WithDefault(
  Pointer<PROPVARIANT> propvarIn,
  int llDefault,
) =>
    _PropVariantToInt64WithDefault(
      propvarIn,
      llDefault,
    );

late final _PropVariantToInt64WithDefault = _propsys.lookupFunction<
    Int64 Function(
  Pointer<PROPVARIANT> propvarIn,
  Int64 llDefault,
),
    int Function(
  Pointer<PROPVARIANT> propvarIn,
  int llDefault,
)>('PropVariantToInt64WithDefault');

int PropVariantToStrRet(
  Pointer<PROPVARIANT> propvar,
  Pointer<STRRET> pstrret,
) =>
    _PropVariantToStrRet(
      propvar,
      pstrret,
    );

late final _PropVariantToStrRet = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPVARIANT> propvar,
  Pointer<STRRET> pstrret,
),
    int Function(
  Pointer<PROPVARIANT> propvar,
  Pointer<STRRET> pstrret,
)>('PropVariantToStrRet');

int PropVariantToString(
  Pointer<PROPVARIANT> propvar,
  Pointer<Utf16> psz,
  int cch,
) =>
    _PropVariantToString(
      propvar,
      psz,
      cch,
    );

late final _PropVariantToString = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPVARIANT> propvar,
  Pointer<Utf16> psz,
  Uint32 cch,
),
    int Function(
  Pointer<PROPVARIANT> propvar,
  Pointer<Utf16> psz,
  int cch,
)>('PropVariantToString');

int PropVariantToStringAlloc(
  Pointer<PROPVARIANT> propvar,
  Pointer<Pointer<Utf16>> ppszOut,
) =>
    _PropVariantToStringAlloc(
      propvar,
      ppszOut,
    );

late final _PropVariantToStringAlloc = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPVARIANT> propvar,
  Pointer<Pointer<Utf16>> ppszOut,
),
    int Function(
  Pointer<PROPVARIANT> propvar,
  Pointer<Pointer<Utf16>> ppszOut,
)>('PropVariantToStringAlloc');

int PropVariantToStringVector(
  Pointer<PROPVARIANT> propvar,
  Pointer<Pointer<Utf16>> prgsz,
  int crgsz,
  Pointer<Uint32> pcElem,
) =>
    _PropVariantToStringVector(
      propvar,
      prgsz,
      crgsz,
      pcElem,
    );

late final _PropVariantToStringVector = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPVARIANT> propvar,
  Pointer<Pointer<Utf16>> prgsz,
  Uint32 crgsz,
  Pointer<Uint32> pcElem,
),
    int Function(
  Pointer<PROPVARIANT> propvar,
  Pointer<Pointer<Utf16>> prgsz,
  int crgsz,
  Pointer<Uint32> pcElem,
)>('PropVariantToStringVector');

int PropVariantToStringVectorAlloc(
  Pointer<PROPVARIANT> propvar,
  Pointer<Pointer<Pointer<Utf16>>> pprgsz,
  Pointer<Uint32> pcElem,
) =>
    _PropVariantToStringVectorAlloc(
      propvar,
      pprgsz,
      pcElem,
    );

late final _PropVariantToStringVectorAlloc = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPVARIANT> propvar,
  Pointer<Pointer<Pointer<Utf16>>> pprgsz,
  Pointer<Uint32> pcElem,
),
    int Function(
  Pointer<PROPVARIANT> propvar,
  Pointer<Pointer<Pointer<Utf16>>> pprgsz,
  Pointer<Uint32> pcElem,
)>('PropVariantToStringVectorAlloc');

Pointer<Utf16> PropVariantToStringWithDefault(
  Pointer<PROPVARIANT> propvarIn,
  Pointer<Utf16> pszDefault,
) =>
    _PropVariantToStringWithDefault(
      propvarIn,
      pszDefault,
    );

late final _PropVariantToStringWithDefault = _propsys.lookupFunction<
    Pointer<Utf16> Function(
  Pointer<PROPVARIANT> propvarIn,
  Pointer<Utf16> pszDefault,
),
    Pointer<Utf16> Function(
  Pointer<PROPVARIANT> propvarIn,
  Pointer<Utf16> pszDefault,
)>('PropVariantToStringWithDefault');

int PropVariantToUInt16(
  Pointer<PROPVARIANT> propvarIn,
  Pointer<Uint16> puiRet,
) =>
    _PropVariantToUInt16(
      propvarIn,
      puiRet,
    );

late final _PropVariantToUInt16 = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPVARIANT> propvarIn,
  Pointer<Uint16> puiRet,
),
    int Function(
  Pointer<PROPVARIANT> propvarIn,
  Pointer<Uint16> puiRet,
)>('PropVariantToUInt16');

int PropVariantToUInt16Vector(
  Pointer<PROPVARIANT> propvar,
  Pointer<Uint16> prgn,
  int crgn,
  Pointer<Uint32> pcElem,
) =>
    _PropVariantToUInt16Vector(
      propvar,
      prgn,
      crgn,
      pcElem,
    );

late final _PropVariantToUInt16Vector = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPVARIANT> propvar,
  Pointer<Uint16> prgn,
  Uint32 crgn,
  Pointer<Uint32> pcElem,
),
    int Function(
  Pointer<PROPVARIANT> propvar,
  Pointer<Uint16> prgn,
  int crgn,
  Pointer<Uint32> pcElem,
)>('PropVariantToUInt16Vector');

int PropVariantToUInt16VectorAlloc(
  Pointer<PROPVARIANT> propvar,
  Pointer<Pointer<Uint16>> pprgn,
  Pointer<Uint32> pcElem,
) =>
    _PropVariantToUInt16VectorAlloc(
      propvar,
      pprgn,
      pcElem,
    );

late final _PropVariantToUInt16VectorAlloc = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPVARIANT> propvar,
  Pointer<Pointer<Uint16>> pprgn,
  Pointer<Uint32> pcElem,
),
    int Function(
  Pointer<PROPVARIANT> propvar,
  Pointer<Pointer<Uint16>> pprgn,
  Pointer<Uint32> pcElem,
)>('PropVariantToUInt16VectorAlloc');

int PropVariantToUInt16WithDefault(
  Pointer<PROPVARIANT> propvarIn,
  int uiDefault,
) =>
    _PropVariantToUInt16WithDefault(
      propvarIn,
      uiDefault,
    );

late final _PropVariantToUInt16WithDefault = _propsys.lookupFunction<
    Uint16 Function(
  Pointer<PROPVARIANT> propvarIn,
  Uint16 uiDefault,
),
    int Function(
  Pointer<PROPVARIANT> propvarIn,
  int uiDefault,
)>('PropVariantToUInt16WithDefault');

int PropVariantToUInt32(
  Pointer<PROPVARIANT> propvarIn,
  Pointer<Uint32> pulRet,
) =>
    _PropVariantToUInt32(
      propvarIn,
      pulRet,
    );

late final _PropVariantToUInt32 = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPVARIANT> propvarIn,
  Pointer<Uint32> pulRet,
),
    int Function(
  Pointer<PROPVARIANT> propvarIn,
  Pointer<Uint32> pulRet,
)>('PropVariantToUInt32');

int PropVariantToUInt32Vector(
  Pointer<PROPVARIANT> propvar,
  Pointer<Uint32> prgn,
  int crgn,
  Pointer<Uint32> pcElem,
) =>
    _PropVariantToUInt32Vector(
      propvar,
      prgn,
      crgn,
      pcElem,
    );

late final _PropVariantToUInt32Vector = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPVARIANT> propvar,
  Pointer<Uint32> prgn,
  Uint32 crgn,
  Pointer<Uint32> pcElem,
),
    int Function(
  Pointer<PROPVARIANT> propvar,
  Pointer<Uint32> prgn,
  int crgn,
  Pointer<Uint32> pcElem,
)>('PropVariantToUInt32Vector');

int PropVariantToUInt32VectorAlloc(
  Pointer<PROPVARIANT> propvar,
  Pointer<Pointer<Uint32>> pprgn,
  Pointer<Uint32> pcElem,
) =>
    _PropVariantToUInt32VectorAlloc(
      propvar,
      pprgn,
      pcElem,
    );

late final _PropVariantToUInt32VectorAlloc = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPVARIANT> propvar,
  Pointer<Pointer<Uint32>> pprgn,
  Pointer<Uint32> pcElem,
),
    int Function(
  Pointer<PROPVARIANT> propvar,
  Pointer<Pointer<Uint32>> pprgn,
  Pointer<Uint32> pcElem,
)>('PropVariantToUInt32VectorAlloc');

int PropVariantToUInt32WithDefault(
  Pointer<PROPVARIANT> propvarIn,
  int ulDefault,
) =>
    _PropVariantToUInt32WithDefault(
      propvarIn,
      ulDefault,
    );

late final _PropVariantToUInt32WithDefault = _propsys.lookupFunction<
    Uint32 Function(
  Pointer<PROPVARIANT> propvarIn,
  Uint32 ulDefault,
),
    int Function(
  Pointer<PROPVARIANT> propvarIn,
  int ulDefault,
)>('PropVariantToUInt32WithDefault');

int PropVariantToUInt64(
  Pointer<PROPVARIANT> propvarIn,
  Pointer<Uint64> pullRet,
) =>
    _PropVariantToUInt64(
      propvarIn,
      pullRet,
    );

late final _PropVariantToUInt64 = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPVARIANT> propvarIn,
  Pointer<Uint64> pullRet,
),
    int Function(
  Pointer<PROPVARIANT> propvarIn,
  Pointer<Uint64> pullRet,
)>('PropVariantToUInt64');

int PropVariantToUInt64Vector(
  Pointer<PROPVARIANT> propvar,
  Pointer<Uint64> prgn,
  int crgn,
  Pointer<Uint32> pcElem,
) =>
    _PropVariantToUInt64Vector(
      propvar,
      prgn,
      crgn,
      pcElem,
    );

late final _PropVariantToUInt64Vector = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPVARIANT> propvar,
  Pointer<Uint64> prgn,
  Uint32 crgn,
  Pointer<Uint32> pcElem,
),
    int Function(
  Pointer<PROPVARIANT> propvar,
  Pointer<Uint64> prgn,
  int crgn,
  Pointer<Uint32> pcElem,
)>('PropVariantToUInt64Vector');

int PropVariantToUInt64VectorAlloc(
  Pointer<PROPVARIANT> propvar,
  Pointer<Pointer<Uint64>> pprgn,
  Pointer<Uint32> pcElem,
) =>
    _PropVariantToUInt64VectorAlloc(
      propvar,
      pprgn,
      pcElem,
    );

late final _PropVariantToUInt64VectorAlloc = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPVARIANT> propvar,
  Pointer<Pointer<Uint64>> pprgn,
  Pointer<Uint32> pcElem,
),
    int Function(
  Pointer<PROPVARIANT> propvar,
  Pointer<Pointer<Uint64>> pprgn,
  Pointer<Uint32> pcElem,
)>('PropVariantToUInt64VectorAlloc');

int PropVariantToUInt64WithDefault(
  Pointer<PROPVARIANT> propvarIn,
  int ullDefault,
) =>
    _PropVariantToUInt64WithDefault(
      propvarIn,
      ullDefault,
    );

late final _PropVariantToUInt64WithDefault = _propsys.lookupFunction<
    Uint64 Function(
  Pointer<PROPVARIANT> propvarIn,
  Uint64 ullDefault,
),
    int Function(
  Pointer<PROPVARIANT> propvarIn,
  int ullDefault,
)>('PropVariantToUInt64WithDefault');

int PropVariantToVariant(
  Pointer<PROPVARIANT> pPropVar,
  Pointer<VARIANT> pVar,
) =>
    _PropVariantToVariant(
      pPropVar,
      pVar,
    );

late final _PropVariantToVariant = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPVARIANT> pPropVar,
  Pointer<VARIANT> pVar,
),
    int Function(
  Pointer<PROPVARIANT> pPropVar,
  Pointer<VARIANT> pVar,
)>('PropVariantToVariant');

int PropVariantToWinRTPropertyValue(
  Pointer<PROPVARIANT> propvar,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) =>
    _PropVariantToWinRTPropertyValue(
      propvar,
      riid,
      ppv,
    );

late final _PropVariantToWinRTPropertyValue = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPVARIANT> propvar,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
),
    int Function(
  Pointer<PROPVARIANT> propvar,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
)>('PropVariantToWinRTPropertyValue');

int VariantCompare(
  Pointer<VARIANT> var1,
  Pointer<VARIANT> var2,
) =>
    _VariantCompare(
      var1,
      var2,
    );

late final _VariantCompare = _propsys.lookupFunction<
    Int32 Function(
  Pointer<VARIANT> var1,
  Pointer<VARIANT> var2,
),
    int Function(
  Pointer<VARIANT> var1,
  Pointer<VARIANT> var2,
)>('VariantCompare');

int VariantGetBooleanElem(
  Pointer<VARIANT> $var,
  int iElem,
  Pointer<Int32> pfVal,
) =>
    _VariantGetBooleanElem(
      $var,
      iElem,
      pfVal,
    );

late final _VariantGetBooleanElem = _propsys.lookupFunction<
    Int32 Function(
  Pointer<VARIANT> $var,
  Uint32 iElem,
  Pointer<Int32> pfVal,
),
    int Function(
  Pointer<VARIANT> $var,
  int iElem,
  Pointer<Int32> pfVal,
)>('VariantGetBooleanElem');

int VariantGetDoubleElem(
  Pointer<VARIANT> $var,
  int iElem,
  Pointer<Double> pnVal,
) =>
    _VariantGetDoubleElem(
      $var,
      iElem,
      pnVal,
    );

late final _VariantGetDoubleElem = _propsys.lookupFunction<
    Int32 Function(
  Pointer<VARIANT> $var,
  Uint32 iElem,
  Pointer<Double> pnVal,
),
    int Function(
  Pointer<VARIANT> $var,
  int iElem,
  Pointer<Double> pnVal,
)>('VariantGetDoubleElem');

int VariantGetElementCount(
  Pointer<VARIANT> varIn,
) =>
    _VariantGetElementCount(
      varIn,
    );

late final _VariantGetElementCount = _propsys.lookupFunction<
    Uint32 Function(
  Pointer<VARIANT> varIn,
),
    int Function(
  Pointer<VARIANT> varIn,
)>('VariantGetElementCount');

int VariantGetInt16Elem(
  Pointer<VARIANT> $var,
  int iElem,
  Pointer<Int16> pnVal,
) =>
    _VariantGetInt16Elem(
      $var,
      iElem,
      pnVal,
    );

late final _VariantGetInt16Elem = _propsys.lookupFunction<
    Int32 Function(
  Pointer<VARIANT> $var,
  Uint32 iElem,
  Pointer<Int16> pnVal,
),
    int Function(
  Pointer<VARIANT> $var,
  int iElem,
  Pointer<Int16> pnVal,
)>('VariantGetInt16Elem');

int VariantGetInt32Elem(
  Pointer<VARIANT> $var,
  int iElem,
  Pointer<Int32> pnVal,
) =>
    _VariantGetInt32Elem(
      $var,
      iElem,
      pnVal,
    );

late final _VariantGetInt32Elem = _propsys.lookupFunction<
    Int32 Function(
  Pointer<VARIANT> $var,
  Uint32 iElem,
  Pointer<Int32> pnVal,
),
    int Function(
  Pointer<VARIANT> $var,
  int iElem,
  Pointer<Int32> pnVal,
)>('VariantGetInt32Elem');

int VariantGetInt64Elem(
  Pointer<VARIANT> $var,
  int iElem,
  Pointer<Int64> pnVal,
) =>
    _VariantGetInt64Elem(
      $var,
      iElem,
      pnVal,
    );

late final _VariantGetInt64Elem = _propsys.lookupFunction<
    Int32 Function(
  Pointer<VARIANT> $var,
  Uint32 iElem,
  Pointer<Int64> pnVal,
),
    int Function(
  Pointer<VARIANT> $var,
  int iElem,
  Pointer<Int64> pnVal,
)>('VariantGetInt64Elem');

int VariantGetStringElem(
  Pointer<VARIANT> $var,
  int iElem,
  Pointer<Pointer<Utf16>> ppszVal,
) =>
    _VariantGetStringElem(
      $var,
      iElem,
      ppszVal,
    );

late final _VariantGetStringElem = _propsys.lookupFunction<
    Int32 Function(
  Pointer<VARIANT> $var,
  Uint32 iElem,
  Pointer<Pointer<Utf16>> ppszVal,
),
    int Function(
  Pointer<VARIANT> $var,
  int iElem,
  Pointer<Pointer<Utf16>> ppszVal,
)>('VariantGetStringElem');

int VariantGetUInt16Elem(
  Pointer<VARIANT> $var,
  int iElem,
  Pointer<Uint16> pnVal,
) =>
    _VariantGetUInt16Elem(
      $var,
      iElem,
      pnVal,
    );

late final _VariantGetUInt16Elem = _propsys.lookupFunction<
    Int32 Function(
  Pointer<VARIANT> $var,
  Uint32 iElem,
  Pointer<Uint16> pnVal,
),
    int Function(
  Pointer<VARIANT> $var,
  int iElem,
  Pointer<Uint16> pnVal,
)>('VariantGetUInt16Elem');

int VariantGetUInt32Elem(
  Pointer<VARIANT> $var,
  int iElem,
  Pointer<Uint32> pnVal,
) =>
    _VariantGetUInt32Elem(
      $var,
      iElem,
      pnVal,
    );

late final _VariantGetUInt32Elem = _propsys.lookupFunction<
    Int32 Function(
  Pointer<VARIANT> $var,
  Uint32 iElem,
  Pointer<Uint32> pnVal,
),
    int Function(
  Pointer<VARIANT> $var,
  int iElem,
  Pointer<Uint32> pnVal,
)>('VariantGetUInt32Elem');

int VariantGetUInt64Elem(
  Pointer<VARIANT> $var,
  int iElem,
  Pointer<Uint64> pnVal,
) =>
    _VariantGetUInt64Elem(
      $var,
      iElem,
      pnVal,
    );

late final _VariantGetUInt64Elem = _propsys.lookupFunction<
    Int32 Function(
  Pointer<VARIANT> $var,
  Uint32 iElem,
  Pointer<Uint64> pnVal,
),
    int Function(
  Pointer<VARIANT> $var,
  int iElem,
  Pointer<Uint64> pnVal,
)>('VariantGetUInt64Elem');

int VariantToBoolean(
  Pointer<VARIANT> varIn,
  Pointer<Int32> pfRet,
) =>
    _VariantToBoolean(
      varIn,
      pfRet,
    );

late final _VariantToBoolean = _propsys.lookupFunction<
    Int32 Function(
  Pointer<VARIANT> varIn,
  Pointer<Int32> pfRet,
),
    int Function(
  Pointer<VARIANT> varIn,
  Pointer<Int32> pfRet,
)>('VariantToBoolean');

int VariantToBooleanArray(
  Pointer<VARIANT> $var,
  Pointer<Int32> prgf,
  int crgn,
  Pointer<Uint32> pcElem,
) =>
    _VariantToBooleanArray(
      $var,
      prgf,
      crgn,
      pcElem,
    );

late final _VariantToBooleanArray = _propsys.lookupFunction<
    Int32 Function(
  Pointer<VARIANT> $var,
  Pointer<Int32> prgf,
  Uint32 crgn,
  Pointer<Uint32> pcElem,
),
    int Function(
  Pointer<VARIANT> $var,
  Pointer<Int32> prgf,
  int crgn,
  Pointer<Uint32> pcElem,
)>('VariantToBooleanArray');

int VariantToBooleanArrayAlloc(
  Pointer<VARIANT> $var,
  Pointer<Pointer<Int32>> pprgf,
  Pointer<Uint32> pcElem,
) =>
    _VariantToBooleanArrayAlloc(
      $var,
      pprgf,
      pcElem,
    );

late final _VariantToBooleanArrayAlloc = _propsys.lookupFunction<
    Int32 Function(
  Pointer<VARIANT> $var,
  Pointer<Pointer<Int32>> pprgf,
  Pointer<Uint32> pcElem,
),
    int Function(
  Pointer<VARIANT> $var,
  Pointer<Pointer<Int32>> pprgf,
  Pointer<Uint32> pcElem,
)>('VariantToBooleanArrayAlloc');

int VariantToBooleanWithDefault(
  Pointer<VARIANT> varIn,
  int fDefault,
) =>
    _VariantToBooleanWithDefault(
      varIn,
      fDefault,
    );

late final _VariantToBooleanWithDefault = _propsys.lookupFunction<
    Int32 Function(
  Pointer<VARIANT> varIn,
  Int32 fDefault,
),
    int Function(
  Pointer<VARIANT> varIn,
  int fDefault,
)>('VariantToBooleanWithDefault');

int VariantToBuffer(
  Pointer<VARIANT> varIn,
  Pointer pv,
  int cb,
) =>
    _VariantToBuffer(
      varIn,
      pv,
      cb,
    );

late final _VariantToBuffer = _propsys.lookupFunction<
    Int32 Function(
  Pointer<VARIANT> varIn,
  Pointer pv,
  Uint32 cb,
),
    int Function(
  Pointer<VARIANT> varIn,
  Pointer pv,
  int cb,
)>('VariantToBuffer');

int VariantToDosDateTime(
  Pointer<VARIANT> varIn,
  Pointer<Uint16> pwDate,
  Pointer<Uint16> pwTime,
) =>
    _VariantToDosDateTime(
      varIn,
      pwDate,
      pwTime,
    );

late final _VariantToDosDateTime = _propsys.lookupFunction<
    Int32 Function(
  Pointer<VARIANT> varIn,
  Pointer<Uint16> pwDate,
  Pointer<Uint16> pwTime,
),
    int Function(
  Pointer<VARIANT> varIn,
  Pointer<Uint16> pwDate,
  Pointer<Uint16> pwTime,
)>('VariantToDosDateTime');

int VariantToDouble(
  Pointer<VARIANT> varIn,
  Pointer<Double> pdblRet,
) =>
    _VariantToDouble(
      varIn,
      pdblRet,
    );

late final _VariantToDouble = _propsys.lookupFunction<
    Int32 Function(
  Pointer<VARIANT> varIn,
  Pointer<Double> pdblRet,
),
    int Function(
  Pointer<VARIANT> varIn,
  Pointer<Double> pdblRet,
)>('VariantToDouble');

int VariantToDoubleArray(
  Pointer<VARIANT> $var,
  Pointer<Double> prgn,
  int crgn,
  Pointer<Uint32> pcElem,
) =>
    _VariantToDoubleArray(
      $var,
      prgn,
      crgn,
      pcElem,
    );

late final _VariantToDoubleArray = _propsys.lookupFunction<
    Int32 Function(
  Pointer<VARIANT> $var,
  Pointer<Double> prgn,
  Uint32 crgn,
  Pointer<Uint32> pcElem,
),
    int Function(
  Pointer<VARIANT> $var,
  Pointer<Double> prgn,
  int crgn,
  Pointer<Uint32> pcElem,
)>('VariantToDoubleArray');

int VariantToDoubleArrayAlloc(
  Pointer<VARIANT> $var,
  Pointer<Pointer<Double>> pprgn,
  Pointer<Uint32> pcElem,
) =>
    _VariantToDoubleArrayAlloc(
      $var,
      pprgn,
      pcElem,
    );

late final _VariantToDoubleArrayAlloc = _propsys.lookupFunction<
    Int32 Function(
  Pointer<VARIANT> $var,
  Pointer<Pointer<Double>> pprgn,
  Pointer<Uint32> pcElem,
),
    int Function(
  Pointer<VARIANT> $var,
  Pointer<Pointer<Double>> pprgn,
  Pointer<Uint32> pcElem,
)>('VariantToDoubleArrayAlloc');

double VariantToDoubleWithDefault(
  Pointer<VARIANT> varIn,
  double dblDefault,
) =>
    _VariantToDoubleWithDefault(
      varIn,
      dblDefault,
    );

late final _VariantToDoubleWithDefault = _propsys.lookupFunction<
    Double Function(
  Pointer<VARIANT> varIn,
  Double dblDefault,
),
    double Function(
  Pointer<VARIANT> varIn,
  double dblDefault,
)>('VariantToDoubleWithDefault');

int VariantToFileTime(
  Pointer<VARIANT> varIn,
  int stfOut,
  Pointer<FILETIME> pftOut,
) =>
    _VariantToFileTime(
      varIn,
      stfOut,
      pftOut,
    );

late final _VariantToFileTime = _propsys.lookupFunction<
    Int32 Function(
  Pointer<VARIANT> varIn,
  Uint32 stfOut,
  Pointer<FILETIME> pftOut,
),
    int Function(
  Pointer<VARIANT> varIn,
  int stfOut,
  Pointer<FILETIME> pftOut,
)>('VariantToFileTime');

int VariantToGUID(
  Pointer<VARIANT> varIn,
  Pointer<GUID> pguid,
) =>
    _VariantToGUID(
      varIn,
      pguid,
    );

late final _VariantToGUID = _propsys.lookupFunction<
    Int32 Function(
  Pointer<VARIANT> varIn,
  Pointer<GUID> pguid,
),
    int Function(
  Pointer<VARIANT> varIn,
  Pointer<GUID> pguid,
)>('VariantToGUID');

int VariantToInt16(
  Pointer<VARIANT> varIn,
  Pointer<Int16> piRet,
) =>
    _VariantToInt16(
      varIn,
      piRet,
    );

late final _VariantToInt16 = _propsys.lookupFunction<
    Int32 Function(
  Pointer<VARIANT> varIn,
  Pointer<Int16> piRet,
),
    int Function(
  Pointer<VARIANT> varIn,
  Pointer<Int16> piRet,
)>('VariantToInt16');

int VariantToInt16Array(
  Pointer<VARIANT> $var,
  Pointer<Int16> prgn,
  int crgn,
  Pointer<Uint32> pcElem,
) =>
    _VariantToInt16Array(
      $var,
      prgn,
      crgn,
      pcElem,
    );

late final _VariantToInt16Array = _propsys.lookupFunction<
    Int32 Function(
  Pointer<VARIANT> $var,
  Pointer<Int16> prgn,
  Uint32 crgn,
  Pointer<Uint32> pcElem,
),
    int Function(
  Pointer<VARIANT> $var,
  Pointer<Int16> prgn,
  int crgn,
  Pointer<Uint32> pcElem,
)>('VariantToInt16Array');

int VariantToInt16ArrayAlloc(
  Pointer<VARIANT> $var,
  Pointer<Pointer<Int16>> pprgn,
  Pointer<Uint32> pcElem,
) =>
    _VariantToInt16ArrayAlloc(
      $var,
      pprgn,
      pcElem,
    );

late final _VariantToInt16ArrayAlloc = _propsys.lookupFunction<
    Int32 Function(
  Pointer<VARIANT> $var,
  Pointer<Pointer<Int16>> pprgn,
  Pointer<Uint32> pcElem,
),
    int Function(
  Pointer<VARIANT> $var,
  Pointer<Pointer<Int16>> pprgn,
  Pointer<Uint32> pcElem,
)>('VariantToInt16ArrayAlloc');

int VariantToInt16WithDefault(
  Pointer<VARIANT> varIn,
  int iDefault,
) =>
    _VariantToInt16WithDefault(
      varIn,
      iDefault,
    );

late final _VariantToInt16WithDefault = _propsys.lookupFunction<
    Int16 Function(
  Pointer<VARIANT> varIn,
  Int16 iDefault,
),
    int Function(
  Pointer<VARIANT> varIn,
  int iDefault,
)>('VariantToInt16WithDefault');

int VariantToInt32(
  Pointer<VARIANT> varIn,
  Pointer<Int32> plRet,
) =>
    _VariantToInt32(
      varIn,
      plRet,
    );

late final _VariantToInt32 = _propsys.lookupFunction<
    Int32 Function(
  Pointer<VARIANT> varIn,
  Pointer<Int32> plRet,
),
    int Function(
  Pointer<VARIANT> varIn,
  Pointer<Int32> plRet,
)>('VariantToInt32');

int VariantToInt32Array(
  Pointer<VARIANT> $var,
  Pointer<Int32> prgn,
  int crgn,
  Pointer<Uint32> pcElem,
) =>
    _VariantToInt32Array(
      $var,
      prgn,
      crgn,
      pcElem,
    );

late final _VariantToInt32Array = _propsys.lookupFunction<
    Int32 Function(
  Pointer<VARIANT> $var,
  Pointer<Int32> prgn,
  Uint32 crgn,
  Pointer<Uint32> pcElem,
),
    int Function(
  Pointer<VARIANT> $var,
  Pointer<Int32> prgn,
  int crgn,
  Pointer<Uint32> pcElem,
)>('VariantToInt32Array');

int VariantToInt32ArrayAlloc(
  Pointer<VARIANT> $var,
  Pointer<Pointer<Int32>> pprgn,
  Pointer<Uint32> pcElem,
) =>
    _VariantToInt32ArrayAlloc(
      $var,
      pprgn,
      pcElem,
    );

late final _VariantToInt32ArrayAlloc = _propsys.lookupFunction<
    Int32 Function(
  Pointer<VARIANT> $var,
  Pointer<Pointer<Int32>> pprgn,
  Pointer<Uint32> pcElem,
),
    int Function(
  Pointer<VARIANT> $var,
  Pointer<Pointer<Int32>> pprgn,
  Pointer<Uint32> pcElem,
)>('VariantToInt32ArrayAlloc');

int VariantToInt32WithDefault(
  Pointer<VARIANT> varIn,
  int lDefault,
) =>
    _VariantToInt32WithDefault(
      varIn,
      lDefault,
    );

late final _VariantToInt32WithDefault = _propsys.lookupFunction<
    Int32 Function(
  Pointer<VARIANT> varIn,
  Int32 lDefault,
),
    int Function(
  Pointer<VARIANT> varIn,
  int lDefault,
)>('VariantToInt32WithDefault');

int VariantToInt64(
  Pointer<VARIANT> varIn,
  Pointer<Int64> pllRet,
) =>
    _VariantToInt64(
      varIn,
      pllRet,
    );

late final _VariantToInt64 = _propsys.lookupFunction<
    Int32 Function(
  Pointer<VARIANT> varIn,
  Pointer<Int64> pllRet,
),
    int Function(
  Pointer<VARIANT> varIn,
  Pointer<Int64> pllRet,
)>('VariantToInt64');

int VariantToInt64Array(
  Pointer<VARIANT> $var,
  Pointer<Int64> prgn,
  int crgn,
  Pointer<Uint32> pcElem,
) =>
    _VariantToInt64Array(
      $var,
      prgn,
      crgn,
      pcElem,
    );

late final _VariantToInt64Array = _propsys.lookupFunction<
    Int32 Function(
  Pointer<VARIANT> $var,
  Pointer<Int64> prgn,
  Uint32 crgn,
  Pointer<Uint32> pcElem,
),
    int Function(
  Pointer<VARIANT> $var,
  Pointer<Int64> prgn,
  int crgn,
  Pointer<Uint32> pcElem,
)>('VariantToInt64Array');

int VariantToInt64ArrayAlloc(
  Pointer<VARIANT> $var,
  Pointer<Pointer<Int64>> pprgn,
  Pointer<Uint32> pcElem,
) =>
    _VariantToInt64ArrayAlloc(
      $var,
      pprgn,
      pcElem,
    );

late final _VariantToInt64ArrayAlloc = _propsys.lookupFunction<
    Int32 Function(
  Pointer<VARIANT> $var,
  Pointer<Pointer<Int64>> pprgn,
  Pointer<Uint32> pcElem,
),
    int Function(
  Pointer<VARIANT> $var,
  Pointer<Pointer<Int64>> pprgn,
  Pointer<Uint32> pcElem,
)>('VariantToInt64ArrayAlloc');

int VariantToInt64WithDefault(
  Pointer<VARIANT> varIn,
  int llDefault,
) =>
    _VariantToInt64WithDefault(
      varIn,
      llDefault,
    );

late final _VariantToInt64WithDefault = _propsys.lookupFunction<
    Int64 Function(
  Pointer<VARIANT> varIn,
  Int64 llDefault,
),
    int Function(
  Pointer<VARIANT> varIn,
  int llDefault,
)>('VariantToInt64WithDefault');

int VariantToPropVariant(
  Pointer<VARIANT> pVar,
  Pointer<PROPVARIANT> pPropVar,
) =>
    _VariantToPropVariant(
      pVar,
      pPropVar,
    );

late final _VariantToPropVariant = _propsys.lookupFunction<
    Int32 Function(
  Pointer<VARIANT> pVar,
  Pointer<PROPVARIANT> pPropVar,
),
    int Function(
  Pointer<VARIANT> pVar,
  Pointer<PROPVARIANT> pPropVar,
)>('VariantToPropVariant');

int VariantToStrRet(
  Pointer<VARIANT> varIn,
  Pointer<STRRET> pstrret,
) =>
    _VariantToStrRet(
      varIn,
      pstrret,
    );

late final _VariantToStrRet = _propsys.lookupFunction<
    Int32 Function(
  Pointer<VARIANT> varIn,
  Pointer<STRRET> pstrret,
),
    int Function(
  Pointer<VARIANT> varIn,
  Pointer<STRRET> pstrret,
)>('VariantToStrRet');

int VariantToString(
  Pointer<VARIANT> varIn,
  Pointer<Utf16> pszBuf,
  int cchBuf,
) =>
    _VariantToString(
      varIn,
      pszBuf,
      cchBuf,
    );

late final _VariantToString = _propsys.lookupFunction<
    Int32 Function(
  Pointer<VARIANT> varIn,
  Pointer<Utf16> pszBuf,
  Uint32 cchBuf,
),
    int Function(
  Pointer<VARIANT> varIn,
  Pointer<Utf16> pszBuf,
  int cchBuf,
)>('VariantToString');

int VariantToStringAlloc(
  Pointer<VARIANT> varIn,
  Pointer<Pointer<Utf16>> ppszBuf,
) =>
    _VariantToStringAlloc(
      varIn,
      ppszBuf,
    );

late final _VariantToStringAlloc = _propsys.lookupFunction<
    Int32 Function(
  Pointer<VARIANT> varIn,
  Pointer<Pointer<Utf16>> ppszBuf,
),
    int Function(
  Pointer<VARIANT> varIn,
  Pointer<Pointer<Utf16>> ppszBuf,
)>('VariantToStringAlloc');

int VariantToStringArray(
  Pointer<VARIANT> $var,
  Pointer<Pointer<Utf16>> prgsz,
  int crgsz,
  Pointer<Uint32> pcElem,
) =>
    _VariantToStringArray(
      $var,
      prgsz,
      crgsz,
      pcElem,
    );

late final _VariantToStringArray = _propsys.lookupFunction<
    Int32 Function(
  Pointer<VARIANT> $var,
  Pointer<Pointer<Utf16>> prgsz,
  Uint32 crgsz,
  Pointer<Uint32> pcElem,
),
    int Function(
  Pointer<VARIANT> $var,
  Pointer<Pointer<Utf16>> prgsz,
  int crgsz,
  Pointer<Uint32> pcElem,
)>('VariantToStringArray');

int VariantToStringArrayAlloc(
  Pointer<VARIANT> $var,
  Pointer<Pointer<Pointer<Utf16>>> pprgsz,
  Pointer<Uint32> pcElem,
) =>
    _VariantToStringArrayAlloc(
      $var,
      pprgsz,
      pcElem,
    );

late final _VariantToStringArrayAlloc = _propsys.lookupFunction<
    Int32 Function(
  Pointer<VARIANT> $var,
  Pointer<Pointer<Pointer<Utf16>>> pprgsz,
  Pointer<Uint32> pcElem,
),
    int Function(
  Pointer<VARIANT> $var,
  Pointer<Pointer<Pointer<Utf16>>> pprgsz,
  Pointer<Uint32> pcElem,
)>('VariantToStringArrayAlloc');

Pointer<Utf16> VariantToStringWithDefault(
  Pointer<VARIANT> varIn,
  Pointer<Utf16> pszDefault,
) =>
    _VariantToStringWithDefault(
      varIn,
      pszDefault,
    );

late final _VariantToStringWithDefault = _propsys.lookupFunction<
    Pointer<Utf16> Function(
  Pointer<VARIANT> varIn,
  Pointer<Utf16> pszDefault,
),
    Pointer<Utf16> Function(
  Pointer<VARIANT> varIn,
  Pointer<Utf16> pszDefault,
)>('VariantToStringWithDefault');

int VariantToUInt16(
  Pointer<VARIANT> varIn,
  Pointer<Uint16> puiRet,
) =>
    _VariantToUInt16(
      varIn,
      puiRet,
    );

late final _VariantToUInt16 = _propsys.lookupFunction<
    Int32 Function(
  Pointer<VARIANT> varIn,
  Pointer<Uint16> puiRet,
),
    int Function(
  Pointer<VARIANT> varIn,
  Pointer<Uint16> puiRet,
)>('VariantToUInt16');

int VariantToUInt16Array(
  Pointer<VARIANT> $var,
  Pointer<Uint16> prgn,
  int crgn,
  Pointer<Uint32> pcElem,
) =>
    _VariantToUInt16Array(
      $var,
      prgn,
      crgn,
      pcElem,
    );

late final _VariantToUInt16Array = _propsys.lookupFunction<
    Int32 Function(
  Pointer<VARIANT> $var,
  Pointer<Uint16> prgn,
  Uint32 crgn,
  Pointer<Uint32> pcElem,
),
    int Function(
  Pointer<VARIANT> $var,
  Pointer<Uint16> prgn,
  int crgn,
  Pointer<Uint32> pcElem,
)>('VariantToUInt16Array');

int VariantToUInt16ArrayAlloc(
  Pointer<VARIANT> $var,
  Pointer<Pointer<Uint16>> pprgn,
  Pointer<Uint32> pcElem,
) =>
    _VariantToUInt16ArrayAlloc(
      $var,
      pprgn,
      pcElem,
    );

late final _VariantToUInt16ArrayAlloc = _propsys.lookupFunction<
    Int32 Function(
  Pointer<VARIANT> $var,
  Pointer<Pointer<Uint16>> pprgn,
  Pointer<Uint32> pcElem,
),
    int Function(
  Pointer<VARIANT> $var,
  Pointer<Pointer<Uint16>> pprgn,
  Pointer<Uint32> pcElem,
)>('VariantToUInt16ArrayAlloc');

int VariantToUInt16WithDefault(
  Pointer<VARIANT> varIn,
  int uiDefault,
) =>
    _VariantToUInt16WithDefault(
      varIn,
      uiDefault,
    );

late final _VariantToUInt16WithDefault = _propsys.lookupFunction<
    Uint16 Function(
  Pointer<VARIANT> varIn,
  Uint16 uiDefault,
),
    int Function(
  Pointer<VARIANT> varIn,
  int uiDefault,
)>('VariantToUInt16WithDefault');

int VariantToUInt32(
  Pointer<VARIANT> varIn,
  Pointer<Uint32> pulRet,
) =>
    _VariantToUInt32(
      varIn,
      pulRet,
    );

late final _VariantToUInt32 = _propsys.lookupFunction<
    Int32 Function(
  Pointer<VARIANT> varIn,
  Pointer<Uint32> pulRet,
),
    int Function(
  Pointer<VARIANT> varIn,
  Pointer<Uint32> pulRet,
)>('VariantToUInt32');

int VariantToUInt32Array(
  Pointer<VARIANT> $var,
  Pointer<Uint32> prgn,
  int crgn,
  Pointer<Uint32> pcElem,
) =>
    _VariantToUInt32Array(
      $var,
      prgn,
      crgn,
      pcElem,
    );

late final _VariantToUInt32Array = _propsys.lookupFunction<
    Int32 Function(
  Pointer<VARIANT> $var,
  Pointer<Uint32> prgn,
  Uint32 crgn,
  Pointer<Uint32> pcElem,
),
    int Function(
  Pointer<VARIANT> $var,
  Pointer<Uint32> prgn,
  int crgn,
  Pointer<Uint32> pcElem,
)>('VariantToUInt32Array');

int VariantToUInt32ArrayAlloc(
  Pointer<VARIANT> $var,
  Pointer<Pointer<Uint32>> pprgn,
  Pointer<Uint32> pcElem,
) =>
    _VariantToUInt32ArrayAlloc(
      $var,
      pprgn,
      pcElem,
    );

late final _VariantToUInt32ArrayAlloc = _propsys.lookupFunction<
    Int32 Function(
  Pointer<VARIANT> $var,
  Pointer<Pointer<Uint32>> pprgn,
  Pointer<Uint32> pcElem,
),
    int Function(
  Pointer<VARIANT> $var,
  Pointer<Pointer<Uint32>> pprgn,
  Pointer<Uint32> pcElem,
)>('VariantToUInt32ArrayAlloc');

int VariantToUInt32WithDefault(
  Pointer<VARIANT> varIn,
  int ulDefault,
) =>
    _VariantToUInt32WithDefault(
      varIn,
      ulDefault,
    );

late final _VariantToUInt32WithDefault = _propsys.lookupFunction<
    Uint32 Function(
  Pointer<VARIANT> varIn,
  Uint32 ulDefault,
),
    int Function(
  Pointer<VARIANT> varIn,
  int ulDefault,
)>('VariantToUInt32WithDefault');

int VariantToUInt64(
  Pointer<VARIANT> varIn,
  Pointer<Uint64> pullRet,
) =>
    _VariantToUInt64(
      varIn,
      pullRet,
    );

late final _VariantToUInt64 = _propsys.lookupFunction<
    Int32 Function(
  Pointer<VARIANT> varIn,
  Pointer<Uint64> pullRet,
),
    int Function(
  Pointer<VARIANT> varIn,
  Pointer<Uint64> pullRet,
)>('VariantToUInt64');

int VariantToUInt64Array(
  Pointer<VARIANT> $var,
  Pointer<Uint64> prgn,
  int crgn,
  Pointer<Uint32> pcElem,
) =>
    _VariantToUInt64Array(
      $var,
      prgn,
      crgn,
      pcElem,
    );

late final _VariantToUInt64Array = _propsys.lookupFunction<
    Int32 Function(
  Pointer<VARIANT> $var,
  Pointer<Uint64> prgn,
  Uint32 crgn,
  Pointer<Uint32> pcElem,
),
    int Function(
  Pointer<VARIANT> $var,
  Pointer<Uint64> prgn,
  int crgn,
  Pointer<Uint32> pcElem,
)>('VariantToUInt64Array');

int VariantToUInt64ArrayAlloc(
  Pointer<VARIANT> $var,
  Pointer<Pointer<Uint64>> pprgn,
  Pointer<Uint32> pcElem,
) =>
    _VariantToUInt64ArrayAlloc(
      $var,
      pprgn,
      pcElem,
    );

late final _VariantToUInt64ArrayAlloc = _propsys.lookupFunction<
    Int32 Function(
  Pointer<VARIANT> $var,
  Pointer<Pointer<Uint64>> pprgn,
  Pointer<Uint32> pcElem,
),
    int Function(
  Pointer<VARIANT> $var,
  Pointer<Pointer<Uint64>> pprgn,
  Pointer<Uint32> pcElem,
)>('VariantToUInt64ArrayAlloc');

int VariantToUInt64WithDefault(
  Pointer<VARIANT> varIn,
  int ullDefault,
) =>
    _VariantToUInt64WithDefault(
      varIn,
      ullDefault,
    );

late final _VariantToUInt64WithDefault = _propsys.lookupFunction<
    Uint64 Function(
  Pointer<VARIANT> varIn,
  Uint64 ullDefault,
),
    int Function(
  Pointer<VARIANT> varIn,
  int ullDefault,
)>('VariantToUInt64WithDefault');

int WinRTPropertyValueToPropVariant(
  Pointer<COMObject> punkPropertyValue,
  Pointer<PROPVARIANT> ppropvar,
) =>
    _WinRTPropertyValueToPropVariant(
      punkPropertyValue,
      ppropvar,
    );

late final _WinRTPropertyValueToPropVariant = _propsys.lookupFunction<
    Int32 Function(
  Pointer<COMObject> punkPropertyValue,
  Pointer<PROPVARIANT> ppropvar,
),
    int Function(
  Pointer<COMObject> punkPropertyValue,
  Pointer<PROPVARIANT> ppropvar,
)>('WinRTPropertyValueToPropVariant');

// -----------------------------------------------------------------------
// shell32.dll
// -----------------------------------------------------------------------
final _shell32 = DynamicLibrary.open('shell32.dll');

int PifMgr_CloseProperties(
  int hProps,
  int flOpt,
) =>
    _PifMgr_CloseProperties(
      hProps,
      flOpt,
    );

late final _PifMgr_CloseProperties = _shell32.lookupFunction<
    IntPtr Function(
  IntPtr hProps,
  Uint32 flOpt,
),
    int Function(
  int hProps,
  int flOpt,
)>('PifMgr_CloseProperties');

int PifMgr_GetProperties(
  int hProps,
  Pointer<Utf8> pszGroup,
  Pointer lpProps,
  int cbProps,
  int flOpt,
) =>
    _PifMgr_GetProperties(
      hProps,
      pszGroup,
      lpProps,
      cbProps,
      flOpt,
    );

late final _PifMgr_GetProperties = _shell32.lookupFunction<
    Int32 Function(
  IntPtr hProps,
  Pointer<Utf8> pszGroup,
  Pointer lpProps,
  Int32 cbProps,
  Uint32 flOpt,
),
    int Function(
  int hProps,
  Pointer<Utf8> pszGroup,
  Pointer lpProps,
  int cbProps,
  int flOpt,
)>('PifMgr_GetProperties');

int PifMgr_OpenProperties(
  Pointer<Utf16> pszApp,
  Pointer<Utf16> pszPIF,
  int hInf,
  int flOpt,
) =>
    _PifMgr_OpenProperties(
      pszApp,
      pszPIF,
      hInf,
      flOpt,
    );

late final _PifMgr_OpenProperties = _shell32.lookupFunction<
    IntPtr Function(
  Pointer<Utf16> pszApp,
  Pointer<Utf16> pszPIF,
  Uint32 hInf,
  Uint32 flOpt,
),
    int Function(
  Pointer<Utf16> pszApp,
  Pointer<Utf16> pszPIF,
  int hInf,
  int flOpt,
)>('PifMgr_OpenProperties');

int PifMgr_SetProperties(
  int hProps,
  Pointer<Utf8> pszGroup,
  Pointer lpProps,
  int cbProps,
  int flOpt,
) =>
    _PifMgr_SetProperties(
      hProps,
      pszGroup,
      lpProps,
      cbProps,
      flOpt,
    );

late final _PifMgr_SetProperties = _shell32.lookupFunction<
    Int32 Function(
  IntPtr hProps,
  Pointer<Utf8> pszGroup,
  Pointer lpProps,
  Int32 cbProps,
  Uint32 flOpt,
),
    int Function(
  int hProps,
  Pointer<Utf8> pszGroup,
  Pointer lpProps,
  int cbProps,
  int flOpt,
)>('PifMgr_SetProperties');

int SHAddDefaultPropertiesByExt(
  Pointer<Utf16> pszExt,
  Pointer<COMObject> pPropStore,
) =>
    _SHAddDefaultPropertiesByExt(
      pszExt,
      pPropStore,
    );

late final _SHAddDefaultPropertiesByExt = _shell32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszExt,
  Pointer<COMObject> pPropStore,
),
    int Function(
  Pointer<Utf16> pszExt,
  Pointer<COMObject> pPropStore,
)>('SHAddDefaultPropertiesByExt');

int SHGetPropertyStoreForWindow(
  int hwnd,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) =>
    _SHGetPropertyStoreForWindow(
      hwnd,
      riid,
      ppv,
    );

late final _SHGetPropertyStoreForWindow = _shell32.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
),
    int Function(
  int hwnd,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
)>('SHGetPropertyStoreForWindow');

int SHGetPropertyStoreFromIDList(
  Pointer<ITEMIDLIST> pidl,
  int flags,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) =>
    _SHGetPropertyStoreFromIDList(
      pidl,
      flags,
      riid,
      ppv,
    );

late final _SHGetPropertyStoreFromIDList = _shell32.lookupFunction<
    Int32 Function(
  Pointer<ITEMIDLIST> pidl,
  Uint32 flags,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
),
    int Function(
  Pointer<ITEMIDLIST> pidl,
  int flags,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
)>('SHGetPropertyStoreFromIDList');

int SHGetPropertyStoreFromParsingName(
  Pointer<Utf16> pszPath,
  Pointer<COMObject> pbc,
  int flags,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) =>
    _SHGetPropertyStoreFromParsingName(
      pszPath,
      pbc,
      flags,
      riid,
      ppv,
    );

late final _SHGetPropertyStoreFromParsingName = _shell32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPath,
  Pointer<COMObject> pbc,
  Uint32 flags,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
),
    int Function(
  Pointer<Utf16> pszPath,
  Pointer<COMObject> pbc,
  int flags,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
)>('SHGetPropertyStoreFromParsingName');

int SHPropStgCreate(
  Pointer<COMObject> psstg,
  Pointer<GUID> fmtid,
  Pointer<GUID> pclsid,
  int grfFlags,
  int grfMode,
  int dwDisposition,
  Pointer<Pointer<COMObject>> ppstg,
  Pointer<Uint32> puCodePage,
) =>
    _SHPropStgCreate(
      psstg,
      fmtid,
      pclsid,
      grfFlags,
      grfMode,
      dwDisposition,
      ppstg,
      puCodePage,
    );

late final _SHPropStgCreate = _shell32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> psstg,
  Pointer<GUID> fmtid,
  Pointer<GUID> pclsid,
  Uint32 grfFlags,
  Uint32 grfMode,
  Uint32 dwDisposition,
  Pointer<Pointer<COMObject>> ppstg,
  Pointer<Uint32> puCodePage,
),
    int Function(
  Pointer<COMObject> psstg,
  Pointer<GUID> fmtid,
  Pointer<GUID> pclsid,
  int grfFlags,
  int grfMode,
  int dwDisposition,
  Pointer<Pointer<COMObject>> ppstg,
  Pointer<Uint32> puCodePage,
)>('SHPropStgCreate');

int SHPropStgReadMultiple(
  Pointer<COMObject> pps,
  int uCodePage,
  int cpspec,
  Pointer<PROPSPEC> rgpspec,
  Pointer<PROPVARIANT> rgvar,
) =>
    _SHPropStgReadMultiple(
      pps,
      uCodePage,
      cpspec,
      rgpspec,
      rgvar,
    );

late final _SHPropStgReadMultiple = _shell32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pps,
  Uint32 uCodePage,
  Uint32 cpspec,
  Pointer<PROPSPEC> rgpspec,
  Pointer<PROPVARIANT> rgvar,
),
    int Function(
  Pointer<COMObject> pps,
  int uCodePage,
  int cpspec,
  Pointer<PROPSPEC> rgpspec,
  Pointer<PROPVARIANT> rgvar,
)>('SHPropStgReadMultiple');

int SHPropStgWriteMultiple(
  Pointer<COMObject> pps,
  Pointer<Uint32> puCodePage,
  int cpspec,
  Pointer<PROPSPEC> rgpspec,
  Pointer<PROPVARIANT> rgvar,
  int propidNameFirst,
) =>
    _SHPropStgWriteMultiple(
      pps,
      puCodePage,
      cpspec,
      rgpspec,
      rgvar,
      propidNameFirst,
    );

late final _SHPropStgWriteMultiple = _shell32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pps,
  Pointer<Uint32> puCodePage,
  Uint32 cpspec,
  Pointer<PROPSPEC> rgpspec,
  Pointer<PROPVARIANT> rgvar,
  Uint32 propidNameFirst,
),
    int Function(
  Pointer<COMObject> pps,
  Pointer<Uint32> puCodePage,
  int cpspec,
  Pointer<PROPSPEC> rgpspec,
  Pointer<PROPVARIANT> rgvar,
  int propidNameFirst,
)>('SHPropStgWriteMultiple');
