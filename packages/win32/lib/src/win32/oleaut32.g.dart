// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';

import '../bstr.dart';
import '../com/interface.g.dart';
import '../com/irecordinfo.g.dart';
import '../com/iunknown.g.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../enums.g.dart';
import '../exception.dart';
import '../extensions/pointer.dart';
import '../functions.dart';
import '../guid.dart';
import '../hresult.dart';
import '../hstring.dart';
import '../macros.dart';
import '../ntstatus.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../rpc_status.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import '../variant.dart';
import '../win32_error.dart';
import '../win32_result.dart';

final _oleaut32 = DynamicLibrary.open('oleaut32.dll');

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

final _DosDateTimeToVariantTime = _oleaut32
    .lookupFunction<
      Int32 Function(Uint16, Uint16, Pointer<Double>),
      int Function(int, int, Pointer<Double>)
    >('DosDateTimeToVariantTime');

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

final _GetActiveObject = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<GUID>, Pointer, Pointer<VTablePointer>),
      int Function(Pointer<GUID>, Pointer, Pointer<VTablePointer>)
    >('GetActiveObject');

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

final _SafeArrayAccessData = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<SAFEARRAY>, Pointer<Pointer>),
      int Function(Pointer<SAFEARRAY>, Pointer<Pointer>)
    >('SafeArrayAccessData');

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

final _SafeArrayAddRef = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<SAFEARRAY>, Pointer<Pointer>),
      int Function(Pointer<SAFEARRAY>, Pointer<Pointer>)
    >('SafeArrayAddRef');

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

final _SafeArrayAllocData = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<SAFEARRAY>),
      int Function(Pointer<SAFEARRAY>)
    >('SafeArrayAllocData');

/// Allocates memory for a safe array descriptor.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-safearrayallocdescriptor>.
///
/// {@category oleaut32}
Pointer<SAFEARRAY> SafeArrayAllocDescriptor(int cDims) {
  final ppsaOut = adaptiveCalloc<Pointer<SAFEARRAY>>();
  final hr$ = HRESULT(_SafeArrayAllocDescriptor(cDims, ppsaOut));
  if (hr$.isError) {
    free(ppsaOut);
    throw WindowsException(hr$);
  }
  final result$ = ppsaOut.value;
  free(ppsaOut);
  return result$;
}

final _SafeArrayAllocDescriptor = _oleaut32
    .lookupFunction<
      Int32 Function(Uint32, Pointer<Pointer<SAFEARRAY>>),
      int Function(int, Pointer<Pointer<SAFEARRAY>>)
    >('SafeArrayAllocDescriptor');

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
  final ppsaOut = adaptiveCalloc<Pointer<SAFEARRAY>>();
  final hr$ = HRESULT(_SafeArrayAllocDescriptorEx(vt, cDims, ppsaOut));
  if (hr$.isError) {
    free(ppsaOut);
    throw WindowsException(hr$);
  }
  final result$ = ppsaOut.value;
  free(ppsaOut);
  return result$;
}

final _SafeArrayAllocDescriptorEx = _oleaut32
    .lookupFunction<
      Int32 Function(Uint16, Uint32, Pointer<Pointer<SAFEARRAY>>),
      int Function(int, int, Pointer<Pointer<SAFEARRAY>>)
    >('SafeArrayAllocDescriptorEx');

/// Creates a copy of an existing safe array.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-safearraycopy>.
///
/// {@category oleaut32}
Pointer<SAFEARRAY> SafeArrayCopy(Pointer<SAFEARRAY> psa) {
  final ppsaOut = adaptiveCalloc<Pointer<SAFEARRAY>>();
  final hr$ = HRESULT(_SafeArrayCopy(psa, ppsaOut));
  if (hr$.isError) {
    free(ppsaOut);
    throw WindowsException(hr$);
  }
  final result$ = ppsaOut.value;
  free(ppsaOut);
  return result$;
}

final _SafeArrayCopy = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<SAFEARRAY>, Pointer<Pointer<SAFEARRAY>>),
      int Function(Pointer<SAFEARRAY>, Pointer<Pointer<SAFEARRAY>>)
    >('SafeArrayCopy');

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

final _SafeArrayCopyData = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<SAFEARRAY>, Pointer<SAFEARRAY>),
      int Function(Pointer<SAFEARRAY>, Pointer<SAFEARRAY>)
    >('SafeArrayCopyData');

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

final _SafeArrayCreate = _oleaut32
    .lookupFunction<
      Pointer<SAFEARRAY> Function(Uint16, Uint32, Pointer<SAFEARRAYBOUND>),
      Pointer<SAFEARRAY> Function(int, int, Pointer<SAFEARRAYBOUND>)
    >('SafeArrayCreate');

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

final _SafeArrayCreateEx = _oleaut32
    .lookupFunction<
      Pointer<SAFEARRAY> Function(
        Uint16,
        Uint32,
        Pointer<SAFEARRAYBOUND>,
        Pointer,
      ),
      Pointer<SAFEARRAY> Function(int, int, Pointer<SAFEARRAYBOUND>, Pointer)
    >('SafeArrayCreateEx');

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

final _SafeArrayCreateVector = _oleaut32
    .lookupFunction<
      Pointer<SAFEARRAY> Function(Uint16, Int32, Uint32),
      Pointer<SAFEARRAY> Function(int, int, int)
    >('SafeArrayCreateVector');

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

final _SafeArrayCreateVectorEx = _oleaut32
    .lookupFunction<
      Pointer<SAFEARRAY> Function(Uint16, Int32, Uint32, Pointer),
      Pointer<SAFEARRAY> Function(int, int, int, Pointer)
    >('SafeArrayCreateVectorEx');

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

final _SafeArrayDestroy = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<SAFEARRAY>),
      int Function(Pointer<SAFEARRAY>)
    >('SafeArrayDestroy');

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

final _SafeArrayDestroyData = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<SAFEARRAY>),
      int Function(Pointer<SAFEARRAY>)
    >('SafeArrayDestroyData');

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

final _SafeArrayDestroyDescriptor = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<SAFEARRAY>),
      int Function(Pointer<SAFEARRAY>)
    >('SafeArrayDestroyDescriptor');

/// Gets the number of dimensions in the array.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-safearraygetdim>.
///
/// {@category oleaut32}
@pragma('vm:prefer-inline')
int SafeArrayGetDim(Pointer<SAFEARRAY> psa) => _SafeArrayGetDim(psa);

final _SafeArrayGetDim = _oleaut32
    .lookupFunction<
      Uint32 Function(Pointer<SAFEARRAY>),
      int Function(Pointer<SAFEARRAY>)
    >('SafeArrayGetDim');

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

final _SafeArrayGetElement = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<SAFEARRAY>, Pointer<Int32>, Pointer),
      int Function(Pointer<SAFEARRAY>, Pointer<Int32>, Pointer)
    >('SafeArrayGetElement');

/// Gets the size of an element.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-safearraygetelemsize>.
///
/// {@category oleaut32}
@pragma('vm:prefer-inline')
int SafeArrayGetElemsize(Pointer<SAFEARRAY> psa) => _SafeArrayGetElemsize(psa);

final _SafeArrayGetElemsize = _oleaut32
    .lookupFunction<
      Uint32 Function(Pointer<SAFEARRAY>),
      int Function(Pointer<SAFEARRAY>)
    >('SafeArrayGetElemsize');

/// Gets the GUID of the interface contained within the specified safe array.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-safearraygetiid>.
///
/// {@category oleaut32}
Pointer<GUID> SafeArrayGetIID(Pointer<SAFEARRAY> psa) {
  final pguid = adaptiveCalloc<GUID>();
  final hr$ = HRESULT(_SafeArrayGetIID(psa, pguid));
  if (hr$.isError) {
    free(pguid);
    throw WindowsException(hr$);
  }
  return pguid;
}

final _SafeArrayGetIID = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<SAFEARRAY>, Pointer<GUID>),
      int Function(Pointer<SAFEARRAY>, Pointer<GUID>)
    >('SafeArrayGetIID');

/// Gets the lower bound for any dimension of the specified safe array.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-safearraygetlbound>.
///
/// {@category oleaut32}
int SafeArrayGetLBound(Pointer<SAFEARRAY> psa, int nDim) {
  final plLbound = adaptiveCalloc<Int32>();
  final hr$ = HRESULT(_SafeArrayGetLBound(psa, nDim, plLbound));
  if (hr$.isError) {
    free(plLbound);
    throw WindowsException(hr$);
  }
  final result$ = plLbound.value;
  free(plLbound);
  return result$;
}

final _SafeArrayGetLBound = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<SAFEARRAY>, Uint32, Pointer<Int32>),
      int Function(Pointer<SAFEARRAY>, int, Pointer<Int32>)
    >('SafeArrayGetLBound');

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
  final prinfo = adaptiveCalloc<VTablePointer>();
  final hr$ = HRESULT(_SafeArrayGetRecordInfo(psa, prinfo));
  if (hr$.isError) {
    free(prinfo);
    throw WindowsException(hr$);
  }
  final result$ = prinfo.value;
  free(prinfo);
  if (result$.isNull) return null;
  return .new(result$);
}

final _SafeArrayGetRecordInfo = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<SAFEARRAY>, Pointer<VTablePointer>),
      int Function(Pointer<SAFEARRAY>, Pointer<VTablePointer>)
    >('SafeArrayGetRecordInfo');

/// Gets the upper bound for any dimension of the specified safe array.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-safearraygetubound>.
///
/// {@category oleaut32}
int SafeArrayGetUBound(Pointer<SAFEARRAY> psa, int nDim) {
  final plUbound = adaptiveCalloc<Int32>();
  final hr$ = HRESULT(_SafeArrayGetUBound(psa, nDim, plUbound));
  if (hr$.isError) {
    free(plUbound);
    throw WindowsException(hr$);
  }
  final result$ = plUbound.value;
  free(plUbound);
  return result$;
}

final _SafeArrayGetUBound = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<SAFEARRAY>, Uint32, Pointer<Int32>),
      int Function(Pointer<SAFEARRAY>, int, Pointer<Int32>)
    >('SafeArrayGetUBound');

/// Gets the VARTYPE stored in the specified safe array.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-safearraygetvartype>.
///
/// {@category oleaut32}
VARENUM SafeArrayGetVartype(Pointer<SAFEARRAY> psa) {
  final pvt = adaptiveCalloc<Uint16>();
  final hr$ = HRESULT(_SafeArrayGetVartype(psa, pvt));
  if (hr$.isError) {
    free(pvt);
    throw WindowsException(hr$);
  }
  final result$ = pvt.value;
  free(pvt);
  return .new(result$);
}

final _SafeArrayGetVartype = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<SAFEARRAY>, Pointer<Uint16>),
      int Function(Pointer<SAFEARRAY>, Pointer<Uint16>)
    >('SafeArrayGetVartype');

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

final _SafeArrayLock = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<SAFEARRAY>),
      int Function(Pointer<SAFEARRAY>)
    >('SafeArrayLock');

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

final _SafeArrayPtrOfIndex = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<SAFEARRAY>, Pointer<Int32>, Pointer<Pointer>),
      int Function(Pointer<SAFEARRAY>, Pointer<Int32>, Pointer<Pointer>)
    >('SafeArrayPtrOfIndex');

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

final _SafeArrayPutElement = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<SAFEARRAY>, Pointer<Int32>, Pointer),
      int Function(Pointer<SAFEARRAY>, Pointer<Int32>, Pointer)
    >('SafeArrayPutElement');

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

final _SafeArrayRedim = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<SAFEARRAY>, Pointer<SAFEARRAYBOUND>),
      int Function(Pointer<SAFEARRAY>, Pointer<SAFEARRAYBOUND>)
    >('SafeArrayRedim');

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

final _SafeArrayReleaseData = _oleaut32
    .lookupFunction<Void Function(Pointer), void Function(Pointer)>(
      'SafeArrayReleaseData',
    );

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

final _SafeArrayReleaseDescriptor = _oleaut32
    .lookupFunction<
      Void Function(Pointer<SAFEARRAY>),
      void Function(Pointer<SAFEARRAY>)
    >('SafeArrayReleaseDescriptor');

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

final _SafeArraySetIID = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<SAFEARRAY>, Pointer<GUID>),
      int Function(Pointer<SAFEARRAY>, Pointer<GUID>)
    >('SafeArraySetIID');

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

final _SafeArraySetRecordInfo = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<SAFEARRAY>, VTablePointer),
      int Function(Pointer<SAFEARRAY>, VTablePointer)
    >('SafeArraySetRecordInfo');

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

final _SafeArrayUnaccessData = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<SAFEARRAY>),
      int Function(Pointer<SAFEARRAY>)
    >('SafeArrayUnaccessData');

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

final _SafeArrayUnlock = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<SAFEARRAY>),
      int Function(Pointer<SAFEARRAY>)
    >('SafeArrayUnlock');

/// Allocates a new string and copies the passed string into it.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-sysallocstring>.
///
/// {@category oleaut32}
@pragma('vm:prefer-inline')
BSTR SysAllocString(PCWSTR? psz) => BSTR(_SysAllocString(psz ?? nullptr));

final _SysAllocString = _oleaut32
    .lookupFunction<
      Pointer<Utf16> Function(Pointer<Utf16>),
      Pointer<Utf16> Function(Pointer<Utf16>)
    >('SysAllocString');

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
    BSTR(_SysAllocStringByteLen(psz ?? nullptr, len));

final _SysAllocStringByteLen = _oleaut32
    .lookupFunction<
      Pointer<Utf16> Function(Pointer<Utf8>, Uint32),
      Pointer<Utf16> Function(Pointer<Utf8>, int)
    >('SysAllocStringByteLen');

/// Allocates a new string, copies the specified number of characters from the
/// passed string, and appends a null-terminating character.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-sysallocstringlen>.
///
/// {@category oleaut32}
@pragma('vm:prefer-inline')
BSTR SysAllocStringLen(PCWSTR? strIn, int ui) =>
    BSTR(_SysAllocStringLen(strIn ?? nullptr, ui));

final _SysAllocStringLen = _oleaut32
    .lookupFunction<
      Pointer<Utf16> Function(Pointer<Utf16>, Uint32),
      Pointer<Utf16> Function(Pointer<Utf16>, int)
    >('SysAllocStringLen');

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

final _SysFreeString = _oleaut32
    .lookupFunction<
      Void Function(Pointer<Utf16>),
      void Function(Pointer<Utf16>)
    >('SysFreeString');

/// Reallocates a previously allocated string to be the size of a second string
/// and copies the second string into the reallocated memory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-sysreallocstring>.
///
/// {@category oleaut32}
@pragma('vm:prefer-inline')
int SysReAllocString(Pointer<Pointer<Utf16>> pbstr, PCWSTR? psz) =>
    _SysReAllocString(pbstr, psz ?? nullptr);

final _SysReAllocString = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<Pointer<Utf16>>, Pointer<Utf16>),
      int Function(Pointer<Pointer<Utf16>>, Pointer<Utf16>)
    >('SysReAllocString');

/// Creates a new BSTR containing a specified number of characters from an old
/// BSTR, and frees the old BSTR.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-sysreallocstringlen>.
///
/// {@category oleaut32}
@pragma('vm:prefer-inline')
int SysReAllocStringLen(Pointer<Pointer<Utf16>> pbstr, PCWSTR? psz, int len) =>
    _SysReAllocStringLen(pbstr, psz ?? nullptr, len);

final _SysReAllocStringLen = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<Pointer<Utf16>>, Pointer<Utf16>, Uint32),
      int Function(Pointer<Pointer<Utf16>>, Pointer<Utf16>, int)
    >('SysReAllocStringLen');

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

final _SysReleaseString = _oleaut32
    .lookupFunction<
      Void Function(Pointer<Utf16>),
      void Function(Pointer<Utf16>)
    >('SysReleaseString');

/// Returns the length (in bytes) of a BSTR.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-sysstringbytelen>.
///
/// {@category oleaut32}
@pragma('vm:prefer-inline')
int SysStringByteLen(BSTR? bstr) => _SysStringByteLen(bstr ?? nullptr);

final _SysStringByteLen = _oleaut32
    .lookupFunction<
      Uint32 Function(Pointer<Utf16>),
      int Function(Pointer<Utf16>)
    >('SysStringByteLen');

/// Returns the length of a BSTR.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-sysstringlen>.
///
/// {@category oleaut32}
@pragma('vm:prefer-inline')
int SysStringLen(BSTR? pbstr) => _SysStringLen(pbstr ?? nullptr);

final _SysStringLen = _oleaut32
    .lookupFunction<
      Uint32 Function(Pointer<Utf16>),
      int Function(Pointer<Utf16>)
    >('SysStringLen');

/// Concatenates two variants of type BSTR and returns the resulting BSTR.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-varbstrcat>.
///
/// {@category oleaut32}
BSTR VarBstrCat(BSTR bstrLeft, BSTR bstrRight) {
  final pbstrResult = adaptiveCalloc<Pointer<Utf16>>();
  final hr$ = HRESULT(_VarBstrCat(bstrLeft, bstrRight, pbstrResult));
  if (hr$.isError) {
    free(pbstrResult);
    throw WindowsException(hr$);
  }
  final result$ = pbstrResult.value;
  free(pbstrResult);
  return .new(result$);
}

final _VarBstrCat = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<Utf16>, Pointer<Pointer<Utf16>>),
      int Function(Pointer<Utf16>, Pointer<Utf16>, Pointer<Pointer<Utf16>>)
    >('VarBstrCat');

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

final _VarBstrCmp = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<Utf16>, Uint32, Uint32),
      int Function(Pointer<Utf16>, Pointer<Utf16>, int, int)
    >('VarBstrCmp');

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

final _VariantChangeType = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<VARIANT>, Pointer<VARIANT>, Uint16, Uint16),
      int Function(Pointer<VARIANT>, Pointer<VARIANT>, int, int)
    >('VariantChangeType');

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

final _VariantClear = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<VARIANT>),
      int Function(Pointer<VARIANT>)
    >('VariantClear');

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

final _VariantCopy = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<VARIANT>, Pointer<VARIANT>),
      int Function(Pointer<VARIANT>, Pointer<VARIANT>)
    >('VariantCopy');

/// Initializes a variant.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-variantinit>.
///
/// {@category oleaut32}
@pragma('vm:prefer-inline')
void VariantInit(Pointer<VARIANT> pvarg) => _VariantInit(pvarg);

final _VariantInit = _oleaut32
    .lookupFunction<
      Void Function(Pointer<VARIANT>),
      void Function(Pointer<VARIANT>)
    >('VariantInit');

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

final _VariantTimeToDosDateTime = _oleaut32
    .lookupFunction<
      Int32 Function(Double, Pointer<Uint16>, Pointer<Uint16>),
      int Function(double, Pointer<Uint16>, Pointer<Uint16>)
    >('VariantTimeToDosDateTime');

/// Converts the variant representation of time to system time values.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-varianttimetosystemtime>.
///
/// {@category oleaut32}
@pragma('vm:prefer-inline')
int VariantTimeToSystemTime(double vtime, Pointer<SYSTEMTIME> lpSystemTime) =>
    _VariantTimeToSystemTime(vtime, lpSystemTime);

final _VariantTimeToSystemTime = _oleaut32
    .lookupFunction<
      Int32 Function(Double, Pointer<SYSTEMTIME>),
      int Function(double, Pointer<SYSTEMTIME>)
    >('VariantTimeToSystemTime');
