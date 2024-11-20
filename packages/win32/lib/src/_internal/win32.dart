// ignore_for_file: non_constant_identifier_names

@DefaultAsset('package:win32/win32.dart')
library;

import 'dart:ffi';

import 'package:meta/meta.dart';

import '../structs.g.dart';
import '../types.dart';
import '../win32/ole32.g.dart';
import '../win32/oleaut32.g.dart';

/// Returns the calling thread's last-error code value.
@internal
@Native<DWORD Function()>(isLeaf: true)
external int getLastError();

/// Sets the calling thread's last-error code value.
@internal
@Native<Void Function(DWORD)>(isLeaf: true)
external void setLastError(int dwErrCode);

/// Frees a block of task memory previously allocated through a call to the
/// [CoTaskMemAlloc] or [CoTaskMemRealloc] function.
@internal
@Native(isLeaf: true)
external void coTaskMemFree(Pointer<Void> ptr);

/// Deallocates a string allocated previously by [SysAllocString],
/// [SysAllocStringByteLen], [SysReAllocString], [SysAllocStringLen], or
/// [SysReAllocStringLen].
@internal
@Native(isLeaf: true)
external void deleteBSTR(BSTR bstr);

/// Decrements the reference count of a string buffer.
@internal
@Native(isLeaf: true)
external void deleteHSTRING(Pointer<HSTRING> string);

/// Frees all elements that can be freed in a given [PROPVARIANT] structure
/// and frees the memory allocated for the structure itself.
@internal
@Native(isLeaf: true)
external void freePROPVARIANT(Pointer<PROPVARIANT> propVariant);

/// Frees all elements that can be freed in a given [VARIANT] structure and
/// frees the memory allocated for the structure itself.
@internal
@Native(isLeaf: true)
external void freeVARIANT(Pointer<VARIANT> variant);

/// Decrements the reference count for an interface on a COM object.
@internal
@Native()
external void releaseIUnknown(VTablePointer obj);

/// The native address of the [coTaskMemFree] function.
@internal
final Pointer<NativeFunction<Void Function(Pointer<Void>)>>
coTaskMemFreeAddress =
    Native.addressOf<NativeFunction<Void Function(Pointer<Void>)>>(
      coTaskMemFree,
    );

/// The native address of the [deleteBSTR] function.
@internal
final Pointer<NativeFunction<Void Function(BSTR)>> deleteBSTRAddress =
    Native.addressOf<NativeFunction<Void Function(BSTR)>>(deleteBSTR);

/// The native address of the [deleteHSTRING] function.
@internal
final Pointer<NativeFunction<Void Function(Pointer<HSTRING>)>>
deleteHSTRINGAddress =
    Native.addressOf<NativeFunction<Void Function(Pointer<HSTRING>)>>(
      deleteHSTRING,
    );

/// The native address of the [freePROPVARIANT] function.
@internal
final Pointer<NativeFunction<Void Function(Pointer<PROPVARIANT>)>>
freePROPVARIANTAddress =
    Native.addressOf<NativeFunction<Void Function(Pointer<PROPVARIANT>)>>(
      freePROPVARIANT,
    );

/// The native address of the [freeVARIANT] function.
@internal
final Pointer<NativeFunction<Void Function(Pointer<VARIANT>)>>
freeVARIANTAddress =
    Native.addressOf<NativeFunction<Void Function(Pointer<VARIANT>)>>(
      freeVARIANT,
    );

/// The native address of the [releaseIUnknown] function.
@internal
final Pointer<NativeFunction<Void Function(VTablePointer)>>
releaseIUnknownAddress =
    Native.addressOf<NativeFunction<Void Function(VTablePointer)>>(
      releaseIUnknown,
    );

@internal
@Native<Void Function(Pointer, Size)>()
external void registerAllocation(Pointer ptr, int size);

@internal
@Native()
external void unregisterAllocation(Pointer ptr);

@internal
@Native()
external void validateAllocations();
