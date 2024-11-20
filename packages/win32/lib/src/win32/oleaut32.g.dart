// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../allocator.dart';
import '../bstr.dart';
import '../com/interface.g.dart';
import '../com/irecordinfo.g.dart';
import '../com/iunknown.g.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../enums.g.dart';
import '../exception.dart';
import '../extensions/pointer.dart';
import '../guid.dart';
import '../hresult.dart';
import '../hstring.dart';
import '../macros.dart';
import '../ntstatus.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import '../variant.dart';

/// Converts the MS-DOS representation of time to the date and time
/// representation stored in a variant.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-dosdatetimetovarianttime>.
///
/// {@category oleaut32}
@pragma('vm:prefer-inline')
int DosDateTimeToVariantTime(
  int wDosDate,
  int wDosTime,
  Pointer<Double> pvtime,
) => _DosDateTimeToVariantTime(wDosDate, wDosTime, pvtime);

@Native<Int32 Function(Uint16, Uint16, Pointer<Double>)>(
  symbol: 'DosDateTimeToVariantTime',
)
external int _DosDateTimeToVariantTime(
  int wDosDate,
  int wDosTime,
  Pointer<Double> pvtime,
);

/// Retrieves a pointer to a running object that has been registered with OLE.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-getactiveobject>.
///
/// {@category oleaut32}
@pragma('vm:prefer-inline')
void GetActiveObject(Pointer<GUID> rclsid, Pointer<VTablePointer> ppunk) {
  final hr$ = HRESULT(_GetActiveObject(rclsid, nullptr, ppunk));
  if (hr$.isError) throw WindowsException(hr$);
}

@Native<Int32 Function(Pointer<GUID>, Pointer, Pointer<VTablePointer>)>(
  symbol: 'GetActiveObject',
)
external int _GetActiveObject(
  Pointer<GUID> rclsid,
  Pointer pvReserved,
  Pointer<VTablePointer> ppunk,
);

/// Increments the lock count of an array, and retrieves a pointer to the array
/// data.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-safearrayaccessdata>.
///
/// {@category oleaut32}
@pragma('vm:prefer-inline')
void SafeArrayAccessData(Pointer<SAFEARRAY> psa, Pointer<Pointer> ppvData) {
  final hr$ = HRESULT(_SafeArrayAccessData(psa, ppvData));
  if (hr$.isError) throw WindowsException(hr$);
}

@Native<Int32 Function(Pointer<SAFEARRAY>, Pointer<Pointer>)>(
  symbol: 'SafeArrayAccessData',
)
external int _SafeArrayAccessData(
  Pointer<SAFEARRAY> psa,
  Pointer<Pointer> ppvData,
);

/// Increases the pinning reference count of the descriptor for the specified
/// safe array by one, and may increase the pinning reference count of the data
/// for the specified safe array by one if that data was dynamically allocated,
/// as determined by the descriptor of the safe array.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-safearrayaddref>.
///
/// {@category oleaut32}
@pragma('vm:prefer-inline')
void SafeArrayAddRef(Pointer<SAFEARRAY> psa, Pointer<Pointer> ppDataToRelease) {
  final hr$ = HRESULT(_SafeArrayAddRef(psa, ppDataToRelease));
  if (hr$.isError) throw WindowsException(hr$);
}

@Native<Int32 Function(Pointer<SAFEARRAY>, Pointer<Pointer>)>(
  symbol: 'SafeArrayAddRef',
)
external int _SafeArrayAddRef(
  Pointer<SAFEARRAY> psa,
  Pointer<Pointer> ppDataToRelease,
);

/// Allocates memory for a safe array, based on a descriptor created with
/// SafeArrayAllocDescriptor.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-safearrayallocdata>.
///
/// {@category oleaut32}
@pragma('vm:prefer-inline')
void SafeArrayAllocData(Pointer<SAFEARRAY> psa) {
  final hr$ = HRESULT(_SafeArrayAllocData(psa));
  if (hr$.isError) throw WindowsException(hr$);
}

@Native<Int32 Function(Pointer<SAFEARRAY>)>(symbol: 'SafeArrayAllocData')
external int _SafeArrayAllocData(Pointer<SAFEARRAY> psa);

/// Allocates memory for a safe array descriptor.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-safearrayallocdescriptor>.
///
/// {@category oleaut32}
Pointer<SAFEARRAY> SafeArrayAllocDescriptor(int cDims) {
  final ppsaOut = loggingCalloc<Pointer<SAFEARRAY>>();
  final hr$ = HRESULT(_SafeArrayAllocDescriptor(cDims, ppsaOut));
  if (hr$.isError) {
    free(ppsaOut);
    throw WindowsException(hr$);
  }
  final result$ = ppsaOut.value;
  free(ppsaOut);
  return result$;
}

@Native<Int32 Function(Uint32, Pointer<Pointer<SAFEARRAY>>)>(
  symbol: 'SafeArrayAllocDescriptor',
)
external int _SafeArrayAllocDescriptor(
  int cDims,
  Pointer<Pointer<SAFEARRAY>> ppsaOut,
);

/// Creates a safe array descriptor for an array of any valid variant type,
/// including VT_RECORD, without allocating the array data.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-safearrayallocdescriptorex>.
///
/// {@category oleaut32}
Pointer<SAFEARRAY> SafeArrayAllocDescriptorEx(VARENUM vt, int cDims) {
  final ppsaOut = loggingCalloc<Pointer<SAFEARRAY>>();
  final hr$ = HRESULT(_SafeArrayAllocDescriptorEx(vt, cDims, ppsaOut));
  if (hr$.isError) {
    free(ppsaOut);
    throw WindowsException(hr$);
  }
  final result$ = ppsaOut.value;
  free(ppsaOut);
  return result$;
}

@Native<Int32 Function(Uint16, Uint32, Pointer<Pointer<SAFEARRAY>>)>(
  symbol: 'SafeArrayAllocDescriptorEx',
)
external int _SafeArrayAllocDescriptorEx(
  int vt,
  int cDims,
  Pointer<Pointer<SAFEARRAY>> ppsaOut,
);

/// Creates a copy of an existing safe array.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-safearraycopy>.
///
/// {@category oleaut32}
Pointer<SAFEARRAY> SafeArrayCopy(Pointer<SAFEARRAY> psa) {
  final ppsaOut = loggingCalloc<Pointer<SAFEARRAY>>();
  final hr$ = HRESULT(_SafeArrayCopy(psa, ppsaOut));
  if (hr$.isError) {
    free(ppsaOut);
    throw WindowsException(hr$);
  }
  final result$ = ppsaOut.value;
  free(ppsaOut);
  return result$;
}

@Native<Int32 Function(Pointer<SAFEARRAY>, Pointer<Pointer<SAFEARRAY>>)>(
  symbol: 'SafeArrayCopy',
)
external int _SafeArrayCopy(
  Pointer<SAFEARRAY> psa,
  Pointer<Pointer<SAFEARRAY>> ppsaOut,
);

/// Copies the source array to the specified target array after releasing any
/// resources in the target array.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-safearraycopydata>.
///
/// {@category oleaut32}
@pragma('vm:prefer-inline')
void SafeArrayCopyData(
  Pointer<SAFEARRAY> psaSource,
  Pointer<SAFEARRAY> psaTarget,
) {
  final hr$ = HRESULT(_SafeArrayCopyData(psaSource, psaTarget));
  if (hr$.isError) throw WindowsException(hr$);
}

@Native<Int32 Function(Pointer<SAFEARRAY>, Pointer<SAFEARRAY>)>(
  symbol: 'SafeArrayCopyData',
)
external int _SafeArrayCopyData(
  Pointer<SAFEARRAY> psaSource,
  Pointer<SAFEARRAY> psaTarget,
);

/// Creates a new array descriptor, allocates and initializes the data for the
/// array, and returns a pointer to the new array descriptor.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-safearraycreate>.
///
/// {@category oleaut32}
@pragma('vm:prefer-inline')
Pointer<SAFEARRAY> SafeArrayCreate(
  VARENUM vt,
  int cDims,
  Pointer<SAFEARRAYBOUND> rgsabound,
) => _SafeArrayCreate(vt, cDims, rgsabound);

@Native<Pointer<SAFEARRAY> Function(Uint16, Uint32, Pointer<SAFEARRAYBOUND>)>(
  symbol: 'SafeArrayCreate',
)
external Pointer<SAFEARRAY> _SafeArrayCreate(
  int vt,
  int cDims,
  Pointer<SAFEARRAYBOUND> rgsabound,
);

/// Creates and returns a safe array descriptor from the specified VARTYPE,
/// number of dimensions and bounds.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-safearraycreateex>.
///
/// {@category oleaut32}
@pragma('vm:prefer-inline')
Pointer<SAFEARRAY> SafeArrayCreateEx(
  VARENUM vt,
  int cDims,
  Pointer<SAFEARRAYBOUND> rgsabound,
  Pointer pvExtra,
) => _SafeArrayCreateEx(vt, cDims, rgsabound, pvExtra);

@Native<
  Pointer<SAFEARRAY> Function(Uint16, Uint32, Pointer<SAFEARRAYBOUND>, Pointer)
>(symbol: 'SafeArrayCreateEx')
external Pointer<SAFEARRAY> _SafeArrayCreateEx(
  int vt,
  int cDims,
  Pointer<SAFEARRAYBOUND> rgsabound,
  Pointer pvExtra,
);

/// Creates a one-dimensional array.
///
/// A safe array created with SafeArrayCreateVector is a fixed size, so the
/// constant FADF_FIXEDSIZE is always set.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-safearraycreatevector>.
///
/// {@category oleaut32}
@pragma('vm:prefer-inline')
Pointer<SAFEARRAY> SafeArrayCreateVector(
  VARENUM vt,
  int lLbound,
  int cElements,
) => _SafeArrayCreateVector(vt, lLbound, cElements);

@Native<Pointer<SAFEARRAY> Function(Uint16, Int32, Uint32)>(
  symbol: 'SafeArrayCreateVector',
)
external Pointer<SAFEARRAY> _SafeArrayCreateVector(
  int vt,
  int lLbound,
  int cElements,
);

/// Creates and returns a one-dimensional safe array of the specified VARTYPE
/// and bounds.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-safearraycreatevectorex>.
///
/// {@category oleaut32}
@pragma('vm:prefer-inline')
Pointer<SAFEARRAY> SafeArrayCreateVectorEx(
  VARENUM vt,
  int lLbound,
  int cElements,
  Pointer pvExtra,
) => _SafeArrayCreateVectorEx(vt, lLbound, cElements, pvExtra);

@Native<Pointer<SAFEARRAY> Function(Uint16, Int32, Uint32, Pointer)>(
  symbol: 'SafeArrayCreateVectorEx',
)
external Pointer<SAFEARRAY> _SafeArrayCreateVectorEx(
  int vt,
  int lLbound,
  int cElements,
  Pointer pvExtra,
);

/// Destroys an existing array descriptor and all of the data in the array.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-safearraydestroy>.
///
/// {@category oleaut32}
@pragma('vm:prefer-inline')
void SafeArrayDestroy(Pointer<SAFEARRAY> psa) {
  final hr$ = HRESULT(_SafeArrayDestroy(psa));
  if (hr$.isError) throw WindowsException(hr$);
}

@Native<Int32 Function(Pointer<SAFEARRAY>)>(symbol: 'SafeArrayDestroy')
external int _SafeArrayDestroy(Pointer<SAFEARRAY> psa);

/// Destroys all the data in the specified safe array.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-safearraydestroydata>.
///
/// {@category oleaut32}
@pragma('vm:prefer-inline')
void SafeArrayDestroyData(Pointer<SAFEARRAY> psa) {
  final hr$ = HRESULT(_SafeArrayDestroyData(psa));
  if (hr$.isError) throw WindowsException(hr$);
}

@Native<Int32 Function(Pointer<SAFEARRAY>)>(symbol: 'SafeArrayDestroyData')
external int _SafeArrayDestroyData(Pointer<SAFEARRAY> psa);

/// Destroys the descriptor of the specified safe array.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-safearraydestroydescriptor>.
///
/// {@category oleaut32}
@pragma('vm:prefer-inline')
void SafeArrayDestroyDescriptor(Pointer<SAFEARRAY> psa) {
  final hr$ = HRESULT(_SafeArrayDestroyDescriptor(psa));
  if (hr$.isError) throw WindowsException(hr$);
}

@Native<Int32 Function(Pointer<SAFEARRAY>)>(
  symbol: 'SafeArrayDestroyDescriptor',
)
external int _SafeArrayDestroyDescriptor(Pointer<SAFEARRAY> psa);

/// Gets the number of dimensions in the array.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-safearraygetdim>.
///
/// {@category oleaut32}
@pragma('vm:prefer-inline')
int SafeArrayGetDim(Pointer<SAFEARRAY> psa) => _SafeArrayGetDim(psa);

@Native<Uint32 Function(Pointer<SAFEARRAY>)>(symbol: 'SafeArrayGetDim')
external int _SafeArrayGetDim(Pointer<SAFEARRAY> psa);

/// Retrieves a single element of the array.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-safearraygetelement>.
///
/// {@category oleaut32}
@pragma('vm:prefer-inline')
void SafeArrayGetElement(
  Pointer<SAFEARRAY> psa,
  Pointer<Int32> rgIndices,
  Pointer pv,
) {
  final hr$ = HRESULT(_SafeArrayGetElement(psa, rgIndices, pv));
  if (hr$.isError) throw WindowsException(hr$);
}

@Native<Int32 Function(Pointer<SAFEARRAY>, Pointer<Int32>, Pointer)>(
  symbol: 'SafeArrayGetElement',
)
external int _SafeArrayGetElement(
  Pointer<SAFEARRAY> psa,
  Pointer<Int32> rgIndices,
  Pointer pv,
);

/// Gets the size of an element.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-safearraygetelemsize>.
///
/// {@category oleaut32}
@pragma('vm:prefer-inline')
int SafeArrayGetElemsize(Pointer<SAFEARRAY> psa) => _SafeArrayGetElemsize(psa);

@Native<Uint32 Function(Pointer<SAFEARRAY>)>(symbol: 'SafeArrayGetElemsize')
external int _SafeArrayGetElemsize(Pointer<SAFEARRAY> psa);

/// Gets the GUID of the interface contained within the specified safe array.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-safearraygetiid>.
///
/// {@category oleaut32}
Pointer<GUID> SafeArrayGetIID(Pointer<SAFEARRAY> psa) {
  final pguid = loggingCalloc<GUID>();
  final hr$ = HRESULT(_SafeArrayGetIID(psa, pguid));
  if (hr$.isError) {
    free(pguid);
    throw WindowsException(hr$);
  }
  return pguid;
}

@Native<Int32 Function(Pointer<SAFEARRAY>, Pointer<GUID>)>(
  symbol: 'SafeArrayGetIID',
)
external int _SafeArrayGetIID(Pointer<SAFEARRAY> psa, Pointer<GUID> pguid);

/// Gets the lower bound for any dimension of the specified safe array.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-safearraygetlbound>.
///
/// {@category oleaut32}
int SafeArrayGetLBound(Pointer<SAFEARRAY> psa, int nDim) {
  final plLbound = loggingCalloc<Int32>();
  final hr$ = HRESULT(_SafeArrayGetLBound(psa, nDim, plLbound));
  if (hr$.isError) {
    free(plLbound);
    throw WindowsException(hr$);
  }
  final result$ = plLbound.value;
  free(plLbound);
  return result$;
}

@Native<Int32 Function(Pointer<SAFEARRAY>, Uint32, Pointer<Int32>)>(
  symbol: 'SafeArrayGetLBound',
)
external int _SafeArrayGetLBound(
  Pointer<SAFEARRAY> psa,
  int nDim,
  Pointer<Int32> plLbound,
);

/// Retrieves the IRecordInfo interface of the UDT contained in the specified
/// safe array.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-safearraygetrecordinfo>.
///
/// {@category oleaut32}
IRecordInfo? SafeArrayGetRecordInfo(Pointer<SAFEARRAY> psa) {
  final prinfo = loggingCalloc<VTablePointer>();
  final hr$ = HRESULT(_SafeArrayGetRecordInfo(psa, prinfo));
  if (hr$.isError) {
    free(prinfo);
    throw WindowsException(hr$);
  }
  final result$ = prinfo.value;
  free(prinfo);
  if (result$.isNull) return null;
  return IRecordInfo(result$);
}

@Native<Int32 Function(Pointer<SAFEARRAY>, Pointer<VTablePointer>)>(
  symbol: 'SafeArrayGetRecordInfo',
)
external int _SafeArrayGetRecordInfo(
  Pointer<SAFEARRAY> psa,
  Pointer<VTablePointer> prinfo,
);

/// Gets the upper bound for any dimension of the specified safe array.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-safearraygetubound>.
///
/// {@category oleaut32}
int SafeArrayGetUBound(Pointer<SAFEARRAY> psa, int nDim) {
  final plUbound = loggingCalloc<Int32>();
  final hr$ = HRESULT(_SafeArrayGetUBound(psa, nDim, plUbound));
  if (hr$.isError) {
    free(plUbound);
    throw WindowsException(hr$);
  }
  final result$ = plUbound.value;
  free(plUbound);
  return result$;
}

@Native<Int32 Function(Pointer<SAFEARRAY>, Uint32, Pointer<Int32>)>(
  symbol: 'SafeArrayGetUBound',
)
external int _SafeArrayGetUBound(
  Pointer<SAFEARRAY> psa,
  int nDim,
  Pointer<Int32> plUbound,
);

/// Gets the VARTYPE stored in the specified safe array.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-safearraygetvartype>.
///
/// {@category oleaut32}
VARENUM SafeArrayGetVartype(Pointer<SAFEARRAY> psa) {
  final pvt = loggingCalloc<Uint16>();
  final hr$ = HRESULT(_SafeArrayGetVartype(psa, pvt));
  if (hr$.isError) {
    free(pvt);
    throw WindowsException(hr$);
  }
  final result$ = pvt.value;
  free(pvt);
  return VARENUM(result$);
}

@Native<Int32 Function(Pointer<SAFEARRAY>, Pointer<Uint16>)>(
  symbol: 'SafeArrayGetVartype',
)
external int _SafeArrayGetVartype(Pointer<SAFEARRAY> psa, Pointer<Uint16> pvt);

/// Increments the lock count of an array, and places a pointer to the array
/// data in pvData of the array descriptor.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-safearraylock>.
///
/// {@category oleaut32}
@pragma('vm:prefer-inline')
void SafeArrayLock(Pointer<SAFEARRAY> psa) {
  final hr$ = HRESULT(_SafeArrayLock(psa));
  if (hr$.isError) throw WindowsException(hr$);
}

@Native<Int32 Function(Pointer<SAFEARRAY>)>(symbol: 'SafeArrayLock')
external int _SafeArrayLock(Pointer<SAFEARRAY> psa);

/// Gets a pointer to an array element.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-safearrayptrofindex>.
///
/// {@category oleaut32}
@pragma('vm:prefer-inline')
void SafeArrayPtrOfIndex(
  Pointer<SAFEARRAY> psa,
  Pointer<Int32> rgIndices,
  Pointer<Pointer> ppvData,
) {
  final hr$ = HRESULT(_SafeArrayPtrOfIndex(psa, rgIndices, ppvData));
  if (hr$.isError) throw WindowsException(hr$);
}

@Native<Int32 Function(Pointer<SAFEARRAY>, Pointer<Int32>, Pointer<Pointer>)>(
  symbol: 'SafeArrayPtrOfIndex',
)
external int _SafeArrayPtrOfIndex(
  Pointer<SAFEARRAY> psa,
  Pointer<Int32> rgIndices,
  Pointer<Pointer> ppvData,
);

/// Stores the data element at the specified location in the array.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-safearrayputelement>.
///
/// {@category oleaut32}
@pragma('vm:prefer-inline')
void SafeArrayPutElement(
  Pointer<SAFEARRAY> psa,
  Pointer<Int32> rgIndices,
  Pointer pv,
) {
  final hr$ = HRESULT(_SafeArrayPutElement(psa, rgIndices, pv));
  if (hr$.isError) throw WindowsException(hr$);
}

@Native<Int32 Function(Pointer<SAFEARRAY>, Pointer<Int32>, Pointer)>(
  symbol: 'SafeArrayPutElement',
)
external int _SafeArrayPutElement(
  Pointer<SAFEARRAY> psa,
  Pointer<Int32> rgIndices,
  Pointer pv,
);

/// Changes the right-most (least significant) bound of the specified safe
/// array.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-safearrayredim>.
///
/// {@category oleaut32}
@pragma('vm:prefer-inline')
void SafeArrayRedim(
  Pointer<SAFEARRAY> psa,
  Pointer<SAFEARRAYBOUND> psaboundNew,
) {
  final hr$ = HRESULT(_SafeArrayRedim(psa, psaboundNew));
  if (hr$.isError) throw WindowsException(hr$);
}

@Native<Int32 Function(Pointer<SAFEARRAY>, Pointer<SAFEARRAYBOUND>)>(
  symbol: 'SafeArrayRedim',
)
external int _SafeArrayRedim(
  Pointer<SAFEARRAY> psa,
  Pointer<SAFEARRAYBOUND> psaboundNew,
);

/// Decreases the pinning reference count for the specified safe array data by
/// one.
///
/// When that count reaches 0, the memory for that data is no longer prevented
/// from being freed.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-safearrayreleasedata>.
///
/// {@category oleaut32}
@pragma('vm:prefer-inline')
void SafeArrayReleaseData(Pointer pData) => _SafeArrayReleaseData(pData);

@Native<Void Function(Pointer)>(symbol: 'SafeArrayReleaseData')
external void _SafeArrayReleaseData(Pointer pData);

/// Decreases the pinning reference count for the descriptor of the specified
/// safe array by one.
///
/// When that count reaches 0, the memory for that descriptor is no longer
/// prevented from being freed.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-safearrayreleasedescriptor>.
///
/// {@category oleaut32}
@pragma('vm:prefer-inline')
void SafeArrayReleaseDescriptor(Pointer<SAFEARRAY> psa) =>
    _SafeArrayReleaseDescriptor(psa);

@Native<Void Function(Pointer<SAFEARRAY>)>(symbol: 'SafeArrayReleaseDescriptor')
external void _SafeArrayReleaseDescriptor(Pointer<SAFEARRAY> psa);

/// Sets the GUID of the interface for the specified safe array.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-safearraysetiid>.
///
/// {@category oleaut32}
@pragma('vm:prefer-inline')
void SafeArraySetIID(Pointer<SAFEARRAY> psa, Pointer<GUID> guid) {
  final hr$ = HRESULT(_SafeArraySetIID(psa, guid));
  if (hr$.isError) throw WindowsException(hr$);
}

@Native<Int32 Function(Pointer<SAFEARRAY>, Pointer<GUID>)>(
  symbol: 'SafeArraySetIID',
)
external int _SafeArraySetIID(Pointer<SAFEARRAY> psa, Pointer<GUID> guid);

/// Sets the record info in the specified safe array.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-safearraysetrecordinfo>.
///
/// {@category oleaut32}
@pragma('vm:prefer-inline')
void SafeArraySetRecordInfo(Pointer<SAFEARRAY> psa, IRecordInfo? prinfo) {
  final hr$ = HRESULT(_SafeArraySetRecordInfo(psa, prinfo?.ptr ?? nullptr));
  if (hr$.isError) throw WindowsException(hr$);
}

@Native<Int32 Function(Pointer<SAFEARRAY>, VTablePointer)>(
  symbol: 'SafeArraySetRecordInfo',
)
external int _SafeArraySetRecordInfo(
  Pointer<SAFEARRAY> psa,
  VTablePointer prinfo,
);

/// Decrements the lock count of an array, and invalidates the pointer retrieved
/// by SafeArrayAccessData.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-safearrayunaccessdata>.
///
/// {@category oleaut32}
@pragma('vm:prefer-inline')
void SafeArrayUnaccessData(Pointer<SAFEARRAY> psa) {
  final hr$ = HRESULT(_SafeArrayUnaccessData(psa));
  if (hr$.isError) throw WindowsException(hr$);
}

@Native<Int32 Function(Pointer<SAFEARRAY>)>(symbol: 'SafeArrayUnaccessData')
external int _SafeArrayUnaccessData(Pointer<SAFEARRAY> psa);

/// Decrements the lock count of an array so it can be freed or resized.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-safearrayunlock>.
///
/// {@category oleaut32}
@pragma('vm:prefer-inline')
void SafeArrayUnlock(Pointer<SAFEARRAY> psa) {
  final hr$ = HRESULT(_SafeArrayUnlock(psa));
  if (hr$.isError) throw WindowsException(hr$);
}

@Native<Int32 Function(Pointer<SAFEARRAY>)>(symbol: 'SafeArrayUnlock')
external int _SafeArrayUnlock(Pointer<SAFEARRAY> psa);

/// Allocates a new string and copies the passed string into it.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-sysallocstring>.
///
/// {@category oleaut32}
@pragma('vm:prefer-inline')
BSTR SysAllocString(PCWSTR? psz) => _SysAllocString(psz ?? nullptr);

@Native<BSTR Function(PCWSTR)>(symbol: 'SysAllocString')
external BSTR _SysAllocString(PCWSTR psz);

/// Takes an ANSI string as input, and returns a BSTR that contains an ANSI
/// string.
///
/// Does not perform any ANSI-to-Unicode translation.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-sysallocstringbytelen>.
///
/// {@category oleaut32}
@pragma('vm:prefer-inline')
BSTR SysAllocStringByteLen(PCSTR? psz, int len) =>
    _SysAllocStringByteLen(psz ?? nullptr, len);

@Native<BSTR Function(PCSTR, Uint32)>(symbol: 'SysAllocStringByteLen')
external BSTR _SysAllocStringByteLen(PCSTR psz, int len);

/// Allocates a new string, copies the specified number of characters from the
/// passed string, and appends a null-terminating character.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-sysallocstringlen>.
///
/// {@category oleaut32}
@pragma('vm:prefer-inline')
BSTR SysAllocStringLen(PCWSTR? strIn, int ui) =>
    _SysAllocStringLen(strIn ?? nullptr, ui);

@Native<BSTR Function(PCWSTR, Uint32)>(symbol: 'SysAllocStringLen')
external BSTR _SysAllocStringLen(PCWSTR strIn, int ui);

/// Deallocates a string allocated previously by SysAllocString,
/// SysAllocStringByteLen, SysReAllocString, SysAllocStringLen, or
/// SysReAllocStringLen.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-sysfreestring>.
///
/// {@category oleaut32}
@pragma('vm:prefer-inline')
void SysFreeString(BSTR? bstrString) => _SysFreeString(bstrString ?? nullptr);

@Native<Void Function(BSTR)>(symbol: 'SysFreeString')
external void _SysFreeString(BSTR bstrString);

/// Reallocates a previously allocated string to be the size of a second string
/// and copies the second string into the reallocated memory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-sysreallocstring>.
///
/// {@category oleaut32}
@pragma('vm:prefer-inline')
int SysReAllocString(Pointer<BSTR> pbstr, PCWSTR? psz) =>
    _SysReAllocString(pbstr, psz ?? nullptr);

@Native<Int32 Function(Pointer<BSTR>, PCWSTR)>(symbol: 'SysReAllocString')
external int _SysReAllocString(Pointer<BSTR> pbstr, PCWSTR psz);

/// Creates a new BSTR containing a specified number of characters from an old
/// BSTR, and frees the old BSTR.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-sysreallocstringlen>.
///
/// {@category oleaut32}
@pragma('vm:prefer-inline')
int SysReAllocStringLen(Pointer<BSTR> pbstr, PCWSTR? psz, int len) =>
    _SysReAllocStringLen(pbstr, psz ?? nullptr, len);

@Native<Int32 Function(Pointer<BSTR>, PCWSTR, Uint32)>(
  symbol: 'SysReAllocStringLen',
)
external int _SysReAllocStringLen(Pointer<BSTR> pbstr, PCWSTR psz, int len);

/// Decreases the pinning reference count for the specified string by one.
///
/// When that count reaches 0, the memory for that string is no longer prevented
/// from being freed.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-sysreleasestring>.
///
/// {@category oleaut32}
@pragma('vm:prefer-inline')
void SysReleaseString(BSTR bstrString) => _SysReleaseString(bstrString);

@Native<Void Function(BSTR)>(symbol: 'SysReleaseString')
external void _SysReleaseString(BSTR bstrString);

/// Returns the length (in bytes) of a BSTR.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-sysstringbytelen>.
///
/// {@category oleaut32}
@pragma('vm:prefer-inline')
int SysStringByteLen(BSTR? bstr) => _SysStringByteLen(bstr ?? nullptr);

@Native<Uint32 Function(BSTR)>(symbol: 'SysStringByteLen')
external int _SysStringByteLen(BSTR bstr);

/// Returns the length of a BSTR.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-sysstringlen>.
///
/// {@category oleaut32}
@pragma('vm:prefer-inline')
int SysStringLen(BSTR? pbstr) => _SysStringLen(pbstr ?? nullptr);

@Native<Uint32 Function(BSTR)>(symbol: 'SysStringLen')
external int _SysStringLen(BSTR pbstr);

/// Concatenates two variants of type BSTR and returns the resulting BSTR.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-varbstrcat>.
///
/// {@category oleaut32}
BSTR VarBstrCat(BSTR bstrLeft, BSTR bstrRight) {
  final pbstrResult = loggingCalloc<BSTR>();
  final hr$ = HRESULT(_VarBstrCat(bstrLeft, bstrRight, pbstrResult));
  if (hr$.isError) {
    free(pbstrResult);
    throw WindowsException(hr$);
  }
  final result$ = pbstrResult.value;
  free(pbstrResult);
  return result$;
}

@Native<Int32 Function(BSTR, BSTR, Pointer<BSTR>)>(symbol: 'VarBstrCat')
external int _VarBstrCat(
  BSTR bstrLeft,
  BSTR bstrRight,
  Pointer<BSTR> pbstrResult,
);

/// Compares two variants of type BSTR.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-varbstrcmp>.
///
/// {@category oleaut32}
@pragma('vm:prefer-inline')
void VarBstrCmp(BSTR bstrLeft, BSTR bstrRight, int lcid, int dwFlags) {
  final hr$ = HRESULT(_VarBstrCmp(bstrLeft, bstrRight, lcid, dwFlags));
  if (hr$.isError) throw WindowsException(hr$);
}

@Native<Int32 Function(BSTR, BSTR, Uint32, Uint32)>(symbol: 'VarBstrCmp')
external int _VarBstrCmp(BSTR bstrLeft, BSTR bstrRight, int lcid, int dwFlags);

/// Converts a variant from one type to another.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-variantchangetype>.
///
/// {@category oleaut32}
@pragma('vm:prefer-inline')
void VariantChangeType(
  Pointer<VARIANT> pvargDest,
  Pointer<VARIANT> pvarSrc,
  VAR_CHANGE_FLAGS wFlags,
  VARENUM vt,
) {
  final hr$ = HRESULT(_VariantChangeType(pvargDest, pvarSrc, wFlags, vt));
  if (hr$.isError) throw WindowsException(hr$);
}

@Native<Int32 Function(Pointer<VARIANT>, Pointer<VARIANT>, Uint16, Uint16)>(
  symbol: 'VariantChangeType',
)
external int _VariantChangeType(
  Pointer<VARIANT> pvargDest,
  Pointer<VARIANT> pvarSrc,
  int wFlags,
  int vt,
);

/// Clears a variant.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-variantclear>.
///
/// {@category oleaut32}
@pragma('vm:prefer-inline')
void VariantClear(Pointer<VARIANT> pvarg) {
  final hr$ = HRESULT(_VariantClear(pvarg));
  if (hr$.isError) throw WindowsException(hr$);
}

@Native<Int32 Function(Pointer<VARIANT>)>(symbol: 'VariantClear')
external int _VariantClear(Pointer<VARIANT> pvarg);

/// Frees the destination variant and makes a copy of the source variant.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-variantcopy>.
///
/// {@category oleaut32}
@pragma('vm:prefer-inline')
void VariantCopy(Pointer<VARIANT> pvargDest, Pointer<VARIANT> pvargSrc) {
  final hr$ = HRESULT(_VariantCopy(pvargDest, pvargSrc));
  if (hr$.isError) throw WindowsException(hr$);
}

@Native<Int32 Function(Pointer<VARIANT>, Pointer<VARIANT>)>(
  symbol: 'VariantCopy',
)
external int _VariantCopy(
  Pointer<VARIANT> pvargDest,
  Pointer<VARIANT> pvargSrc,
);

/// Initializes a variant.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-variantinit>.
///
/// {@category oleaut32}
@pragma('vm:prefer-inline')
void VariantInit(Pointer<VARIANT> pvarg) => _VariantInit(pvarg);

@Native<Void Function(Pointer<VARIANT>)>(symbol: 'VariantInit')
external void _VariantInit(Pointer<VARIANT> pvarg);

/// Converts the variant representation of a date and time to MS-DOS date and
/// time values.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-varianttimetodosdatetime>.
///
/// {@category oleaut32}
@pragma('vm:prefer-inline')
int VariantTimeToDosDateTime(
  double vtime,
  Pointer<Uint16> pwDosDate,
  Pointer<Uint16> pwDosTime,
) => _VariantTimeToDosDateTime(vtime, pwDosDate, pwDosTime);

@Native<Int32 Function(Double, Pointer<Uint16>, Pointer<Uint16>)>(
  symbol: 'VariantTimeToDosDateTime',
)
external int _VariantTimeToDosDateTime(
  double vtime,
  Pointer<Uint16> pwDosDate,
  Pointer<Uint16> pwDosTime,
);

/// Converts the variant representation of time to system time values.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-varianttimetosystemtime>.
///
/// {@category oleaut32}
@pragma('vm:prefer-inline')
int VariantTimeToSystemTime(double vtime, Pointer<SYSTEMTIME> lpSystemTime) =>
    _VariantTimeToSystemTime(vtime, lpSystemTime);

@Native<Int32 Function(Double, Pointer<SYSTEMTIME>)>(
  symbol: 'VariantTimeToSystemTime',
)
external int _VariantTimeToSystemTime(
  double vtime,
  Pointer<SYSTEMTIME> lpSystemTime,
);
