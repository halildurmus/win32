// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, non_constant_identifier_names
// ignore_for_file: constant_identifier_names, camel_case_types
// ignore_for_file: specify_nonobvious_property_types

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../callbacks.dart';
import '../combase.dart';
import '../guid.dart';
import '../structs.g.dart';
import '../variant.dart';

final _oleaut32 = DynamicLibrary.open('oleaut32.dll');

/// Converts the MS-DOS representation of time to the date and time
/// representation stored in a variant.
///
/// ```c
/// INT DosDateTimeToVariantTime(
///   USHORT wDosDate,
///   USHORT wDosTime,
///   DOUBLE *pvtime
/// );
/// ```
/// {@category oleaut32}
int DosDateTimeToVariantTime(
  int wDosDate,
  int wDosTime,
  Pointer<Double> pvtime,
) => _DosDateTimeToVariantTime(wDosDate, wDosTime, pvtime);

final _DosDateTimeToVariantTime = _oleaut32
    .lookupFunction<
      Int32 Function(Uint16 wDosDate, Uint16 wDosTime, Pointer<Double> pvtime),
      int Function(int wDosDate, int wDosTime, Pointer<Double> pvtime)
    >('DosDateTimeToVariantTime');

/// Retrieves a pointer to a running object that has been registered with
/// OLE.
///
/// ```c
/// HRESULT GetActiveObject(
///   REFCLSID rclsid,
///   void     *pvReserved,
///   IUnknown **ppunk
/// );
/// ```
/// {@category oleaut32}
int GetActiveObject(
  Pointer<GUID> rclsid,
  Pointer pvReserved,
  Pointer<Pointer<COMObject>> ppunk,
) => _GetActiveObject(rclsid, pvReserved, ppunk);

final _GetActiveObject = _oleaut32
    .lookupFunction<
      Int32 Function(
        Pointer<GUID> rclsid,
        Pointer pvReserved,
        Pointer<Pointer<COMObject>> ppunk,
      ),
      int Function(
        Pointer<GUID> rclsid,
        Pointer pvReserved,
        Pointer<Pointer<COMObject>> ppunk,
      )
    >('GetActiveObject');

/// Increments the lock count of an array, and retrieves a pointer to the
/// array data.
///
/// ```c
/// HRESULT SafeArrayAccessData(
///   [in]  SAFEARRAY *psa,
///   [out] void **ppvData
/// );
/// ```
/// {@category oleaut32}
int SafeArrayAccessData(Pointer<SAFEARRAY> psa, Pointer<Pointer> ppvData) =>
    _SafeArrayAccessData(psa, ppvData);

final _SafeArrayAccessData = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<SAFEARRAY> psa, Pointer<Pointer> ppvData),
      int Function(Pointer<SAFEARRAY> psa, Pointer<Pointer> ppvData)
    >('SafeArrayAccessData');

/// Increases the pinning reference count of the descriptor for the
/// specified safe array by one, and may increase the pinning reference
/// count of the data for the specified safe array by one if that data was
/// dynamically allocated, as determined by the descriptor of the safe
/// array.
///
/// ```c
/// HRESULT SafeArrayAddRef(
///   [in]  SAFEARRAY *psa,
///   [out] PVOID     *ppDataToRelease
/// );
/// ```
/// {@category oleaut32}
int SafeArrayAddRef(Pointer<SAFEARRAY> psa, Pointer<Pointer> ppDataToRelease) =>
    _SafeArrayAddRef(psa, ppDataToRelease);

final _SafeArrayAddRef = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<SAFEARRAY> psa, Pointer<Pointer> ppDataToRelease),
      int Function(Pointer<SAFEARRAY> psa, Pointer<Pointer> ppDataToRelease)
    >('SafeArrayAddRef');

/// Allocates memory for a safe array, based on a descriptor created with
/// SafeArrayAllocDescriptor.
///
/// ```c
/// HRESULT SafeArrayAllocData(
///   [in] SAFEARRAY *psa
/// );
/// ```
/// {@category oleaut32}
int SafeArrayAllocData(Pointer<SAFEARRAY> psa) => _SafeArrayAllocData(psa);

final _SafeArrayAllocData = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<SAFEARRAY> psa),
      int Function(Pointer<SAFEARRAY> psa)
    >('SafeArrayAllocData');

/// Allocates memory for a safe array descriptor.
///
/// ```c
/// HRESULT SafeArrayAllocDescriptor(
///   [in]  UINT      cDims,
///   [out] SAFEARRAY **ppsaOut
/// );
/// ```
/// {@category oleaut32}
int SafeArrayAllocDescriptor(int cDims, Pointer<Pointer<SAFEARRAY>> ppsaOut) =>
    _SafeArrayAllocDescriptor(cDims, ppsaOut);

final _SafeArrayAllocDescriptor = _oleaut32
    .lookupFunction<
      Int32 Function(Uint32 cDims, Pointer<Pointer<SAFEARRAY>> ppsaOut),
      int Function(int cDims, Pointer<Pointer<SAFEARRAY>> ppsaOut)
    >('SafeArrayAllocDescriptor');

/// Creates a safe array descriptor for an array of any valid variant type,
/// including VT_RECORD, without allocating the array data.
///
/// ```c
/// HRESULT SafeArrayAllocDescriptorEx(
///   [in]  VARTYPE   vt,
///   [in]  UINT      cDims,
///   [out] SAFEARRAY **ppsaOut
/// );
/// ```
/// {@category oleaut32}
int SafeArrayAllocDescriptorEx(
  int vt,
  int cDims,
  Pointer<Pointer<SAFEARRAY>> ppsaOut,
) => _SafeArrayAllocDescriptorEx(vt, cDims, ppsaOut);

final _SafeArrayAllocDescriptorEx = _oleaut32
    .lookupFunction<
      Int32 Function(
        Uint16 vt,
        Uint32 cDims,
        Pointer<Pointer<SAFEARRAY>> ppsaOut,
      ),
      int Function(int vt, int cDims, Pointer<Pointer<SAFEARRAY>> ppsaOut)
    >('SafeArrayAllocDescriptorEx');

/// Creates a copy of an existing safe array.
///
/// ```c
/// HRESULT SafeArrayCopy(
///   [in]  SAFEARRAY *psa,
///   [out] SAFEARRAY **ppsaOut
/// );
/// ```
/// {@category oleaut32}
int SafeArrayCopy(
  Pointer<SAFEARRAY> psa,
  Pointer<Pointer<SAFEARRAY>> ppsaOut,
) => _SafeArrayCopy(psa, ppsaOut);

final _SafeArrayCopy = _oleaut32
    .lookupFunction<
      Int32 Function(
        Pointer<SAFEARRAY> psa,
        Pointer<Pointer<SAFEARRAY>> ppsaOut,
      ),
      int Function(Pointer<SAFEARRAY> psa, Pointer<Pointer<SAFEARRAY>> ppsaOut)
    >('SafeArrayCopy');

/// Copies the source array to the specified target array after releasing
/// any resources in the target array. This is similar to SafeArrayCopy,
/// except that the target array has to be set up by the caller. The target
/// is not allocated or reallocated.
///
/// ```c
/// HRESULT SafeArrayCopyData(
///   [in] SAFEARRAY *psaSource,
///   [in] SAFEARRAY *psaTarget
/// );
/// ```
/// {@category oleaut32}
int SafeArrayCopyData(
  Pointer<SAFEARRAY> psaSource,
  Pointer<SAFEARRAY> psaTarget,
) => _SafeArrayCopyData(psaSource, psaTarget);

final _SafeArrayCopyData = _oleaut32
    .lookupFunction<
      Int32 Function(
        Pointer<SAFEARRAY> psaSource,
        Pointer<SAFEARRAY> psaTarget,
      ),
      int Function(Pointer<SAFEARRAY> psaSource, Pointer<SAFEARRAY> psaTarget)
    >('SafeArrayCopyData');

/// Creates a new array descriptor, allocates and initializes the data for
/// the array, and returns a pointer to the new array descriptor.
///
/// ```c
/// SAFEARRAY * SafeArrayCreate(
///   [in] VARTYPE        vt,
///   [in] UINT           cDims,
///   [in] SAFEARRAYBOUND *rgsabound
/// );
/// ```
/// {@category oleaut32}
Pointer<SAFEARRAY> SafeArrayCreate(
  int vt,
  int cDims,
  Pointer<SAFEARRAYBOUND> rgsabound,
) => _SafeArrayCreate(vt, cDims, rgsabound);

final _SafeArrayCreate = _oleaut32
    .lookupFunction<
      Pointer<SAFEARRAY> Function(
        Uint16 vt,
        Uint32 cDims,
        Pointer<SAFEARRAYBOUND> rgsabound,
      ),
      Pointer<SAFEARRAY> Function(
        int vt,
        int cDims,
        Pointer<SAFEARRAYBOUND> rgsabound,
      )
    >('SafeArrayCreate');

/// Creates and returns a safe array descriptor from the specified VARTYPE,
/// number of dimensions and bounds.
///
/// ```c
/// SAFEARRAY * SafeArrayCreateEx(
///   [in] VARTYPE        vt,
///   [in] UINT           cDims,
///   [in] SAFEARRAYBOUND *rgsabound,
///   [in] PVOID          pvExtra
/// );
/// ```
/// {@category oleaut32}
Pointer<SAFEARRAY> SafeArrayCreateEx(
  int vt,
  int cDims,
  Pointer<SAFEARRAYBOUND> rgsabound,
  Pointer pvExtra,
) => _SafeArrayCreateEx(vt, cDims, rgsabound, pvExtra);

final _SafeArrayCreateEx = _oleaut32
    .lookupFunction<
      Pointer<SAFEARRAY> Function(
        Uint16 vt,
        Uint32 cDims,
        Pointer<SAFEARRAYBOUND> rgsabound,
        Pointer pvExtra,
      ),
      Pointer<SAFEARRAY> Function(
        int vt,
        int cDims,
        Pointer<SAFEARRAYBOUND> rgsabound,
        Pointer pvExtra,
      )
    >('SafeArrayCreateEx');

/// Creates a one-dimensional array. A safe array created with
/// SafeArrayCreateVector is a fixed size, so the constant FADF_FIXEDSIZE is
/// always set.
///
/// ```c
/// SAFEARRAY * SafeArrayCreateVector(
///   [in] VARTYPE vt,
///   [in] int lLbound,
///   [in] int cElements
/// );
/// ```
/// {@category oleaut32}
Pointer<SAFEARRAY> SafeArrayCreateVector(int vt, int lLbound, int cElements) =>
    _SafeArrayCreateVector(vt, lLbound, cElements);

final _SafeArrayCreateVector = _oleaut32
    .lookupFunction<
      Pointer<SAFEARRAY> Function(Uint16 vt, Int32 lLbound, Uint32 cElements),
      Pointer<SAFEARRAY> Function(int vt, int lLbound, int cElements)
    >('SafeArrayCreateVector');

/// Creates and returns a one-dimensional safe array of the specified
/// VARTYPE and bounds.
///
/// ```c
/// SAFEARRAY * SafeArrayCreateVectorEx(
///   [in] VARTYPE vt,
///   [in] LONG    lLbound,
///   [in] ULONG   cElements,
///   [in] PVOID   pvExtra
/// );
/// ```
/// {@category oleaut32}
Pointer<SAFEARRAY> SafeArrayCreateVectorEx(
  int vt,
  int lLbound,
  int cElements,
  Pointer pvExtra,
) => _SafeArrayCreateVectorEx(vt, lLbound, cElements, pvExtra);

final _SafeArrayCreateVectorEx = _oleaut32
    .lookupFunction<
      Pointer<SAFEARRAY> Function(
        Uint16 vt,
        Int32 lLbound,
        Uint32 cElements,
        Pointer pvExtra,
      ),
      Pointer<SAFEARRAY> Function(
        int vt,
        int lLbound,
        int cElements,
        Pointer pvExtra,
      )
    >('SafeArrayCreateVectorEx');

/// Destroys an existing array descriptor and all of the data in the array.
/// If objects are stored in the array, Release is called on each object in
/// the array.
///
/// ```c
/// HRESULT SafeArrayDestroy(
///   [in] SAFEARRAY *psa
/// );
/// ```
/// {@category oleaut32}
int SafeArrayDestroy(Pointer<SAFEARRAY> psa) => _SafeArrayDestroy(psa);

final _SafeArrayDestroy = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<SAFEARRAY> psa),
      int Function(Pointer<SAFEARRAY> psa)
    >('SafeArrayDestroy');

/// Destroys all the data in the specified safe array.
///
/// ```c
/// HRESULT SafeArrayDestroyData(
///   [in] SAFEARRAY *psa
/// );
/// ```
/// {@category oleaut32}
int SafeArrayDestroyData(Pointer<SAFEARRAY> psa) => _SafeArrayDestroyData(psa);

final _SafeArrayDestroyData = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<SAFEARRAY> psa),
      int Function(Pointer<SAFEARRAY> psa)
    >('SafeArrayDestroyData');

/// Destroys the descriptor of the specified safe array.
///
/// ```c
/// HRESULT SafeArrayDestroyDescriptor(
///   [in] SAFEARRAY *psa
/// );
/// ```
/// {@category oleaut32}
int SafeArrayDestroyDescriptor(Pointer<SAFEARRAY> psa) =>
    _SafeArrayDestroyDescriptor(psa);

final _SafeArrayDestroyDescriptor = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<SAFEARRAY> psa),
      int Function(Pointer<SAFEARRAY> psa)
    >('SafeArrayDestroyDescriptor');

/// Gets the number of dimensions in the array.
///
/// ```c
/// UINT SafeArrayGetDim(
///   [in] SAFEARRAY *psa
/// );
/// ```
/// {@category oleaut32}
int SafeArrayGetDim(Pointer<SAFEARRAY> psa) => _SafeArrayGetDim(psa);

final _SafeArrayGetDim = _oleaut32
    .lookupFunction<
      Uint32 Function(Pointer<SAFEARRAY> psa),
      int Function(Pointer<SAFEARRAY> psa)
    >('SafeArrayGetDim');

/// Retrieves a single element of the array.
///
/// ```c
/// HRESULT SafeArrayGetElement(
///   [in]  SAFEARRAY *psa,
///   [in]  LONG      *rgIndices,
///   [out] void      *pv
/// );
/// ```
/// {@category oleaut32}
int SafeArrayGetElement(
  Pointer<SAFEARRAY> psa,
  Pointer<Int32> rgIndices,
  Pointer pv,
) => _SafeArrayGetElement(psa, rgIndices, pv);

final _SafeArrayGetElement = _oleaut32
    .lookupFunction<
      Int32 Function(
        Pointer<SAFEARRAY> psa,
        Pointer<Int32> rgIndices,
        Pointer pv,
      ),
      int Function(Pointer<SAFEARRAY> psa, Pointer<Int32> rgIndices, Pointer pv)
    >('SafeArrayGetElement');

/// Gets the size of an element.
///
/// ```c
/// UINT SafeArrayGetElemsize(
///   [in] SAFEARRAY *psa
/// );
/// ```
/// {@category oleaut32}
int SafeArrayGetElemsize(Pointer<SAFEARRAY> psa) => _SafeArrayGetElemsize(psa);

final _SafeArrayGetElemsize = _oleaut32
    .lookupFunction<
      Uint32 Function(Pointer<SAFEARRAY> psa),
      int Function(Pointer<SAFEARRAY> psa)
    >('SafeArrayGetElemsize');

/// Gets the GUID of the interface contained within the specified safe
/// array.
///
/// ```c
/// HRESULT SafeArrayGetIID(
///   [in]  SAFEARRAY *psa,
///   [out] GUID      *pguid
/// );
/// ```
/// {@category oleaut32}
int SafeArrayGetIID(Pointer<SAFEARRAY> psa, Pointer<GUID> pguid) =>
    _SafeArrayGetIID(psa, pguid);

final _SafeArrayGetIID = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<SAFEARRAY> psa, Pointer<GUID> pguid),
      int Function(Pointer<SAFEARRAY> psa, Pointer<GUID> pguid)
    >('SafeArrayGetIID');

/// Gets the lower bound for any dimension of the specified safe array.
///
/// ```c
/// HRESULT SafeArrayGetLBound(
///   [in]  SAFEARRAY *psa,
///   [in]  UINT      nDim,
///   [out] LONG      *plLbound
/// );
/// ```
/// {@category oleaut32}
int SafeArrayGetLBound(
  Pointer<SAFEARRAY> psa,
  int nDim,
  Pointer<Int32> plLbound,
) => _SafeArrayGetLBound(psa, nDim, plLbound);

final _SafeArrayGetLBound = _oleaut32
    .lookupFunction<
      Int32 Function(
        Pointer<SAFEARRAY> psa,
        Uint32 nDim,
        Pointer<Int32> plLbound,
      ),
      int Function(Pointer<SAFEARRAY> psa, int nDim, Pointer<Int32> plLbound)
    >('SafeArrayGetLBound');

/// Retrieves the IRecordInfo interface of the UDT contained in the
/// specified safe array.
///
/// ```c
/// HRESULT SafeArrayGetRecordInfo(
///   [in]  SAFEARRAY   *psa,
///   [out] IRecordInfo **prinfo
/// );
/// ```
/// {@category oleaut32}
int SafeArrayGetRecordInfo(
  Pointer<SAFEARRAY> psa,
  Pointer<Pointer<COMObject>> prinfo,
) => _SafeArrayGetRecordInfo(psa, prinfo);

final _SafeArrayGetRecordInfo = _oleaut32
    .lookupFunction<
      Int32 Function(
        Pointer<SAFEARRAY> psa,
        Pointer<Pointer<COMObject>> prinfo,
      ),
      int Function(Pointer<SAFEARRAY> psa, Pointer<Pointer<COMObject>> prinfo)
    >('SafeArrayGetRecordInfo');

/// Gets the upper bound for any dimension of the specified safe array.
///
/// ```c
/// HRESULT SafeArrayGetUBound(
///   [in]  SAFEARRAY *psa,
///   [in]  UINT      nDim,
///   [out] LONG      *plUbound
/// );
/// ```
/// {@category oleaut32}
int SafeArrayGetUBound(
  Pointer<SAFEARRAY> psa,
  int nDim,
  Pointer<Int32> plUbound,
) => _SafeArrayGetUBound(psa, nDim, plUbound);

final _SafeArrayGetUBound = _oleaut32
    .lookupFunction<
      Int32 Function(
        Pointer<SAFEARRAY> psa,
        Uint32 nDim,
        Pointer<Int32> plUbound,
      ),
      int Function(Pointer<SAFEARRAY> psa, int nDim, Pointer<Int32> plUbound)
    >('SafeArrayGetUBound');

/// Gets the VARTYPE stored in the specified safe array.
///
/// ```c
/// HRESULT SafeArrayGetVartype(
///   [in]  SAFEARRAY *psa,
///   [out] VARTYPE   *pvt
/// );
/// ```
/// {@category oleaut32}
int SafeArrayGetVartype(Pointer<SAFEARRAY> psa, Pointer<Uint16> pvt) =>
    _SafeArrayGetVartype(psa, pvt);

final _SafeArrayGetVartype = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<SAFEARRAY> psa, Pointer<Uint16> pvt),
      int Function(Pointer<SAFEARRAY> psa, Pointer<Uint16> pvt)
    >('SafeArrayGetVartype');

/// Increments the lock count of an array, and places a pointer to the array
/// data in pvData of the array descriptor.
///
/// ```c
/// HRESULT SafeArrayLock(
///   [in] SAFEARRAY *psa
/// );
/// ```
/// {@category oleaut32}
int SafeArrayLock(Pointer<SAFEARRAY> psa) => _SafeArrayLock(psa);

final _SafeArrayLock = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<SAFEARRAY> psa),
      int Function(Pointer<SAFEARRAY> psa)
    >('SafeArrayLock');

/// Gets a pointer to an array element.
///
/// ```c
/// HRESULT SafeArrayPtrOfIndex(
///   [in]  SAFEARRAY *psa,
///   [in]  LONG      *rgIndices,
///   [out] void      **ppvData
/// );
/// ```
/// {@category oleaut32}
int SafeArrayPtrOfIndex(
  Pointer<SAFEARRAY> psa,
  Pointer<Int32> rgIndices,
  Pointer<Pointer> ppvData,
) => _SafeArrayPtrOfIndex(psa, rgIndices, ppvData);

final _SafeArrayPtrOfIndex = _oleaut32
    .lookupFunction<
      Int32 Function(
        Pointer<SAFEARRAY> psa,
        Pointer<Int32> rgIndices,
        Pointer<Pointer> ppvData,
      ),
      int Function(
        Pointer<SAFEARRAY> psa,
        Pointer<Int32> rgIndices,
        Pointer<Pointer> ppvData,
      )
    >('SafeArrayPtrOfIndex');

/// Stores the data element at the specified location in the array.
///
/// ```c
/// HRESULT SafeArrayPutElement(
///   [in] SAFEARRAY *psa,
///   [in] LONG      *rgIndices,
///   [in] void      *pv
/// );
/// ```
/// {@category oleaut32}
int SafeArrayPutElement(
  Pointer<SAFEARRAY> psa,
  Pointer<Int32> rgIndices,
  Pointer pv,
) => _SafeArrayPutElement(psa, rgIndices, pv);

final _SafeArrayPutElement = _oleaut32
    .lookupFunction<
      Int32 Function(
        Pointer<SAFEARRAY> psa,
        Pointer<Int32> rgIndices,
        Pointer pv,
      ),
      int Function(Pointer<SAFEARRAY> psa, Pointer<Int32> rgIndices, Pointer pv)
    >('SafeArrayPutElement');

/// Changes the right-most (least significant) bound of the specified safe
/// array.
///
/// ```c
/// HRESULT SafeArrayRedim(
///   [in, out] SAFEARRAY      *psa,
///   [in]      SAFEARRAYBOUND *psaboundNew
/// );
/// ```
/// {@category oleaut32}
int SafeArrayRedim(
  Pointer<SAFEARRAY> psa,
  Pointer<SAFEARRAYBOUND> psaboundNew,
) => _SafeArrayRedim(psa, psaboundNew);

final _SafeArrayRedim = _oleaut32
    .lookupFunction<
      Int32 Function(
        Pointer<SAFEARRAY> psa,
        Pointer<SAFEARRAYBOUND> psaboundNew,
      ),
      int Function(Pointer<SAFEARRAY> psa, Pointer<SAFEARRAYBOUND> psaboundNew)
    >('SafeArrayRedim');

/// Decreases the pinning reference count for the specified safe array data
/// by one. When that count reaches 0, the memory for that data is no longer
/// prevented from being freed.
///
/// ```c
/// void SafeArrayReleaseData(
///   [in] PVOID pData
/// );
/// ```
/// {@category oleaut32}
void SafeArrayReleaseData(Pointer pData) => _SafeArrayReleaseData(pData);

final _SafeArrayReleaseData = _oleaut32
    .lookupFunction<Void Function(Pointer pData), void Function(Pointer pData)>(
      'SafeArrayReleaseData',
    );

/// Decreases the pinning reference count for the descriptor of the
/// specified safe array by one. When that count reaches 0, the memory for
/// that descriptor is no longer prevented from being freed.
///
/// ```c
/// void SafeArrayReleaseDescriptor(
///   [in] SAFEARRAY *psa
/// );
/// ```
/// {@category oleaut32}
void SafeArrayReleaseDescriptor(Pointer<SAFEARRAY> psa) =>
    _SafeArrayReleaseDescriptor(psa);

final _SafeArrayReleaseDescriptor = _oleaut32
    .lookupFunction<
      Void Function(Pointer<SAFEARRAY> psa),
      void Function(Pointer<SAFEARRAY> psa)
    >('SafeArrayReleaseDescriptor');

/// Sets the GUID of the interface for the specified safe array.
///
/// ```c
/// HRESULT SafeArraySetIID(
///   [in] SAFEARRAY *psa,
///   [in] REFGUID   guid
/// );
/// ```
/// {@category oleaut32}
int SafeArraySetIID(Pointer<SAFEARRAY> psa, Pointer<GUID> guid) =>
    _SafeArraySetIID(psa, guid);

final _SafeArraySetIID = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<SAFEARRAY> psa, Pointer<GUID> guid),
      int Function(Pointer<SAFEARRAY> psa, Pointer<GUID> guid)
    >('SafeArraySetIID');

/// Sets the record info in the specified safe array.
///
/// ```c
/// HRESULT SafeArraySetRecordInfo(
///   [in] SAFEARRAY   *psa,
///   [in] IRecordInfo *prinfo
/// );
/// ```
/// {@category oleaut32}
int SafeArraySetRecordInfo(Pointer<SAFEARRAY> psa, Pointer<COMObject> prinfo) =>
    _SafeArraySetRecordInfo(psa, prinfo);

final _SafeArraySetRecordInfo = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<SAFEARRAY> psa, Pointer<COMObject> prinfo),
      int Function(Pointer<SAFEARRAY> psa, Pointer<COMObject> prinfo)
    >('SafeArraySetRecordInfo');

/// Decrements the lock count of an array, and invalidates the pointer
/// retrieved by SafeArrayAccessData.
///
/// ```c
/// HRESULT SafeArrayUnaccessData(
///   SAFEARRAY *psa
/// );
/// ```
/// {@category oleaut32}
int SafeArrayUnaccessData(Pointer<SAFEARRAY> psa) =>
    _SafeArrayUnaccessData(psa);

final _SafeArrayUnaccessData = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<SAFEARRAY> psa),
      int Function(Pointer<SAFEARRAY> psa)
    >('SafeArrayUnaccessData');

/// Decrements the lock count of an array so it can be freed or resized.
///
/// ```c
/// HRESULT SafeArrayUnlock(
///   SAFEARRAY *psa
/// );
/// ```
/// {@category oleaut32}
int SafeArrayUnlock(Pointer<SAFEARRAY> psa) => _SafeArrayUnlock(psa);

final _SafeArrayUnlock = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<SAFEARRAY> psa),
      int Function(Pointer<SAFEARRAY> psa)
    >('SafeArrayUnlock');

/// Allocates a new string and copies the passed string into it.
///
/// ```c
/// BSTR SysAllocString(
///   const OLECHAR *psz
/// );
/// ```
/// {@category oleaut32}
Pointer<Utf16> SysAllocString(Pointer<Utf16> psz) => _SysAllocString(psz);

final _SysAllocString = _oleaut32
    .lookupFunction<
      Pointer<Utf16> Function(Pointer<Utf16> psz),
      Pointer<Utf16> Function(Pointer<Utf16> psz)
    >('SysAllocString');

/// Takes an ANSI string as input, and returns a BSTR that contains an ANSI
/// string. Does not perform any ANSI-to-Unicode translation.
///
/// ```c
/// BSTR SysAllocStringByteLen(
///   LPCSTR psz,
///   UINT   len
/// );
/// ```
/// {@category oleaut32}
Pointer<Utf16> SysAllocStringByteLen(Pointer<Utf8> psz, int len) =>
    _SysAllocStringByteLen(psz, len);

final _SysAllocStringByteLen = _oleaut32
    .lookupFunction<
      Pointer<Utf16> Function(Pointer<Utf8> psz, Uint32 len),
      Pointer<Utf16> Function(Pointer<Utf8> psz, int len)
    >('SysAllocStringByteLen');

/// Allocates a new string, copies the specified number of characters from
/// the passed string, and appends a null-terminating character.
///
/// ```c
/// BSTR SysAllocStringLen(
///   const OLECHAR *strIn,
///   UINT          ui
/// );
/// ```
/// {@category oleaut32}
Pointer<Utf16> SysAllocStringLen(Pointer<Utf16> strIn, int ui) =>
    _SysAllocStringLen(strIn, ui);

final _SysAllocStringLen = _oleaut32
    .lookupFunction<
      Pointer<Utf16> Function(Pointer<Utf16> strIn, Uint32 ui),
      Pointer<Utf16> Function(Pointer<Utf16> strIn, int ui)
    >('SysAllocStringLen');

/// Deallocates a string allocated previously by SysAllocString,
/// SysAllocStringByteLen, SysReAllocString, SysAllocStringLen, or
/// SysReAllocStringLen.
///
/// ```c
/// void SysFreeString(
///   BSTR bstrString
/// );
/// ```
/// {@category oleaut32}
void SysFreeString(Pointer<Utf16> bstrString) => _SysFreeString(bstrString);

final _SysFreeString = _oleaut32
    .lookupFunction<
      Void Function(Pointer<Utf16> bstrString),
      void Function(Pointer<Utf16> bstrString)
    >('SysFreeString');

/// Reallocates a previously allocated string to be the size of a second
/// string and copies the second string into the reallocated memory.
///
/// ```c
/// INT SysReAllocString(
///   BSTR          *pbstr,
///   const OLECHAR *psz
/// );
/// ```
/// {@category oleaut32}
int SysReAllocString(Pointer<Pointer<Utf16>> pbstr, Pointer<Utf16> psz) =>
    _SysReAllocString(pbstr, psz);

final _SysReAllocString = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<Pointer<Utf16>> pbstr, Pointer<Utf16> psz),
      int Function(Pointer<Pointer<Utf16>> pbstr, Pointer<Utf16> psz)
    >('SysReAllocString');

/// Creates a new BSTR containing a specified number of characters from an
/// old BSTR, and frees the old BSTR.
///
/// ```c
/// INT SysReAllocStringLen(
///   BSTR          *pbstr,
///   const OLECHAR *psz,
///   UINT  len
/// );
/// ```
/// {@category oleaut32}
int SysReAllocStringLen(
  Pointer<Pointer<Utf16>> pbstr,
  Pointer<Utf16> psz,
  int len,
) => _SysReAllocStringLen(pbstr, psz, len);

final _SysReAllocStringLen = _oleaut32
    .lookupFunction<
      Int32 Function(
        Pointer<Pointer<Utf16>> pbstr,
        Pointer<Utf16> psz,
        Uint32 len,
      ),
      int Function(Pointer<Pointer<Utf16>> pbstr, Pointer<Utf16> psz, int len)
    >('SysReAllocStringLen');

/// Decreases the pinning reference count for the specified string by one.
/// When that count reaches 0, the memory for that string is no longer
/// prevented from being freed.
///
/// ```c
/// void SysReleaseString(
/// BSTR bstrString
/// );
/// ```
/// {@category oleaut32}
void SysReleaseString(Pointer<Utf16> bstrString) =>
    _SysReleaseString(bstrString);

final _SysReleaseString = _oleaut32
    .lookupFunction<
      Void Function(Pointer<Utf16> bstrString),
      void Function(Pointer<Utf16> bstrString)
    >('SysReleaseString');

/// Returns the length (in bytes) of a BSTR.
///
/// ```c
/// UINT SysStringByteLen(
///   BSTR bstr
/// );
/// ```
/// {@category oleaut32}
int SysStringByteLen(Pointer<Utf16> bstr) => _SysStringByteLen(bstr);

final _SysStringByteLen = _oleaut32
    .lookupFunction<
      Uint32 Function(Pointer<Utf16> bstr),
      int Function(Pointer<Utf16> bstr)
    >('SysStringByteLen');

/// Returns the length of a BSTR.
///
/// ```c
/// UINT SysStringLen(
///   BSTR pbstr
/// );
/// ```
/// {@category oleaut32}
int SysStringLen(Pointer<Utf16> pbstr) => _SysStringLen(pbstr);

final _SysStringLen = _oleaut32
    .lookupFunction<
      Uint32 Function(Pointer<Utf16> pbstr),
      int Function(Pointer<Utf16> pbstr)
    >('SysStringLen');

/// Converts a variant from one type to another.
///
/// ```c
/// HRESULT VarBstrCat(
///   [in]  BSTR   bstrLeft,
///   [in]  BSTR   bstrRight,
///   [out] LPBSTR pbstrResult
/// );
/// ```
/// {@category oleaut32}
int VarBstrCat(
  Pointer<Utf16> bstrLeft,
  Pointer<Utf16> bstrRight,
  Pointer<Pointer<Utf16>> pbstrResult,
) => _VarBstrCat(bstrLeft, bstrRight, pbstrResult);

final _VarBstrCat = _oleaut32
    .lookupFunction<
      Int32 Function(
        Pointer<Utf16> bstrLeft,
        Pointer<Utf16> bstrRight,
        Pointer<Pointer<Utf16>> pbstrResult,
      ),
      int Function(
        Pointer<Utf16> bstrLeft,
        Pointer<Utf16> bstrRight,
        Pointer<Pointer<Utf16>> pbstrResult,
      )
    >('VarBstrCat');

/// Compares two variants of type BSTR.
///
/// ```c
/// HRESULT VarBstrCmp(
///   [in] BSTR  bstrLeft,
///   [in] BSTR  bstrRight,
///   [in] LCID  lcid,
///   [in] ULONG dwFlags
/// );
/// ```
/// {@category oleaut32}
int VarBstrCmp(
  Pointer<Utf16> bstrLeft,
  Pointer<Utf16> bstrRight,
  int lcid,
  int dwFlags,
) => _VarBstrCmp(bstrLeft, bstrRight, lcid, dwFlags);

final _VarBstrCmp = _oleaut32
    .lookupFunction<
      Int32 Function(
        Pointer<Utf16> bstrLeft,
        Pointer<Utf16> bstrRight,
        Uint32 lcid,
        Uint32 dwFlags,
      ),
      int Function(
        Pointer<Utf16> bstrLeft,
        Pointer<Utf16> bstrRight,
        int lcid,
        int dwFlags,
      )
    >('VarBstrCmp');

/// Converts a variant from one type to another.
///
/// ```c
/// HRESULT VariantChangeType(
///   VARIANTARG       *pvargDest,
///   const VARIANTARG *pvarSrc,
///   USHORT           wFlags,
///   VARTYPE          vt
/// );
/// ```
/// {@category oleaut32}
int VariantChangeType(
  Pointer<VARIANT> pvargDest,
  Pointer<VARIANT> pvarSrc,
  int wFlags,
  int vt,
) => _VariantChangeType(pvargDest, pvarSrc, wFlags, vt);

final _VariantChangeType = _oleaut32
    .lookupFunction<
      Int32 Function(
        Pointer<VARIANT> pvargDest,
        Pointer<VARIANT> pvarSrc,
        Uint16 wFlags,
        Uint16 vt,
      ),
      int Function(
        Pointer<VARIANT> pvargDest,
        Pointer<VARIANT> pvarSrc,
        int wFlags,
        int vt,
      )
    >('VariantChangeType');

/// Clears a variant.
///
/// ```c
/// HRESULT VariantClear(
///   VARIANTARG *pvarg
/// );
/// ```
/// {@category oleaut32}
int VariantClear(Pointer<VARIANT> pvarg) => _VariantClear(pvarg);

final _VariantClear = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<VARIANT> pvarg),
      int Function(Pointer<VARIANT> pvarg)
    >('VariantClear');

/// Frees the destination variant and makes a copy of the source variant.
///
/// ```c
/// HRESULT VariantCopy(
///   VARIANTARG       *pvargDest,
///   const VARIANTARG *pvargSrc
/// );
/// ```
/// {@category oleaut32}
int VariantCopy(Pointer<VARIANT> pvargDest, Pointer<VARIANT> pvargSrc) =>
    _VariantCopy(pvargDest, pvargSrc);

final _VariantCopy = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<VARIANT> pvargDest, Pointer<VARIANT> pvargSrc),
      int Function(Pointer<VARIANT> pvargDest, Pointer<VARIANT> pvargSrc)
    >('VariantCopy');

/// Initializes a variant.
///
/// ```c
/// void VariantInit(
///   VARIANTARG *pvarg
/// );
/// ```
/// {@category oleaut32}
void VariantInit(Pointer<VARIANT> pvarg) => _VariantInit(pvarg);

final _VariantInit = _oleaut32
    .lookupFunction<
      Void Function(Pointer<VARIANT> pvarg),
      void Function(Pointer<VARIANT> pvarg)
    >('VariantInit');

/// Converts the variant representation of a date and time to MS-DOS date
/// and time values.
///
/// ```c
/// INT VariantTimeToDosDateTime(
///   DOUBLE vtime,
///   USHORT *pwDosDate,
///   USHORT *pwDosTime
/// );
/// ```
/// {@category oleaut32}
int VariantTimeToDosDateTime(
  double vtime,
  Pointer<Uint16> pwDosDate,
  Pointer<Uint16> pwDosTime,
) => _VariantTimeToDosDateTime(vtime, pwDosDate, pwDosTime);

final _VariantTimeToDosDateTime = _oleaut32
    .lookupFunction<
      Int32 Function(
        Double vtime,
        Pointer<Uint16> pwDosDate,
        Pointer<Uint16> pwDosTime,
      ),
      int Function(
        double vtime,
        Pointer<Uint16> pwDosDate,
        Pointer<Uint16> pwDosTime,
      )
    >('VariantTimeToDosDateTime');

/// Converts the variant representation of time to system time values.
///
/// ```c
/// INT VariantTimeToSystemTime(
///   DOUBLE       vtime,
///   LPSYSTEMTIME lpSystemTime
/// );
/// ```
/// {@category oleaut32}
int VariantTimeToSystemTime(double vtime, Pointer<SYSTEMTIME> lpSystemTime) =>
    _VariantTimeToSystemTime(vtime, lpSystemTime);

final _VariantTimeToSystemTime = _oleaut32
    .lookupFunction<
      Int32 Function(Double vtime, Pointer<SYSTEMTIME> lpSystemTime),
      int Function(double vtime, Pointer<SYSTEMTIME> lpSystemTime)
    >('VariantTimeToSystemTime');
