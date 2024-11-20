// Dart representation of a COM interface.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';

import '../allocator.dart';
import '../bstr.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../exception.dart';
import '../extensions/iunknown.dart';
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
import 'interface.g.dart';
import 'iunknown.g.dart';
import 'iwbemclassobject.g.dart';

/// @nodoc
final IID_IWbemObjectAccess = Guid.fromComponents(
  0x49353c9a,
  0x516b,
  0x11d1,
  Uint8List.fromList(const [0xae, 0xa6, 0x0, 0xc0, 0x4f, 0xb6, 0x88, 0x20]),
);

/// Provides access to the methods and properties of an object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wbemcli/nn-wbemcli-iwbemobjectaccess>.
///
/// {@category com}
class IWbemObjectAccess extends IWbemClassObject implements ComInterface {
  /// Creates a new instance of [IWbemObjectAccess] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IWbemObjectAccess]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IWbemObjectAccess(super.ptr)
    : _vtable = ptr.value.cast<IWbemObjectAccessVtbl>().ref;

  /// Creates a new instance of [IWbemObjectAccess] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IWbemObjectAccess] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IWbemObjectAccess.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IWbemObjectAccessVtbl _vtable;
  late final _GetPropertyHandleFn =
      _vtable.GetPropertyHandle.asFunction<
        int Function(VTablePointer, PCWSTR, Pointer<Int32>, Pointer<Int32>)
      >();
  late final _WritePropertyValueFn =
      _vtable.WritePropertyValue.asFunction<
        int Function(VTablePointer, int, int, Pointer<Uint8>)
      >();
  late final _ReadPropertyValueFn =
      _vtable.ReadPropertyValue.asFunction<
        int Function(VTablePointer, int, int, Pointer<Int32>, Pointer<Uint8>)
      >();
  late final _ReadDWORDFn =
      _vtable.ReadDWORD.asFunction<
        int Function(VTablePointer, int, Pointer<Uint32>)
      >();
  late final _WriteDWORDFn =
      _vtable.WriteDWORD.asFunction<int Function(VTablePointer, int, int)>();
  late final _ReadQWORDFn =
      _vtable.ReadQWORD.asFunction<
        int Function(VTablePointer, int, Pointer<Uint64>)
      >();
  late final _WriteQWORDFn =
      _vtable.WriteQWORD.asFunction<int Function(VTablePointer, int, int)>();
  late final _GetPropertyInfoByHandleFn =
      _vtable.GetPropertyInfoByHandle.asFunction<
        int Function(VTablePointer, int, Pointer<BSTR>, Pointer<Int32>)
      >();
  late final _LockFn =
      _vtable.Lock.asFunction<int Function(VTablePointer, int)>();
  late final _UnlockFn =
      _vtable.Unlock.asFunction<int Function(VTablePointer, int)>();

  /// Returns a unique handle that identifies a property.
  ///
  /// You can use this handle to identify properties when using
  /// IWbemObjectAccess methods to read or write property values.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemobjectaccess-getpropertyhandle>.
  @pragma('vm:prefer-inline')
  void getPropertyHandle(
    PCWSTR wszPropertyName,
    Pointer<Int32> pType,
    Pointer<Int32> plHandle,
  ) {
    final hr$ = HRESULT(
      _GetPropertyHandleFn(ptr, wszPropertyName, pType, plHandle),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Writes a specified number of bytes to a property identified by a property
  /// handle.
  ///
  /// Use this method to set string and all other non-DWORD or non-QWORD data.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemobjectaccess-writepropertyvalue>.
  @pragma('vm:prefer-inline')
  void writePropertyValue(int lHandle, int lNumBytes, Pointer<Uint8> aData) {
    final hr$ = HRESULT(_WritePropertyValueFn(ptr, lHandle, lNumBytes, aData));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Returns a specified number of bytes of a property associated with a
  /// property handle.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemobjectaccess-readpropertyvalue>.
  @pragma('vm:prefer-inline')
  void readPropertyValue(
    int lHandle,
    int lBufferSize,
    Pointer<Int32> plNumBytes,
    Pointer<Uint8> aData,
  ) {
    final hr$ = HRESULT(
      _ReadPropertyValueFn(ptr, lHandle, lBufferSize, plNumBytes, aData),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Reads 32 bits of property data using a property handle.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemobjectaccess-readdword>.
  int readDWORD(int lHandle) {
    final pdw = loggingCalloc<Uint32>();
    final hr$ = HRESULT(_ReadDWORDFn(ptr, lHandle, pdw));
    if (hr$.isError) {
      free(pdw);
      throw WindowsException(hr$);
    }
    final result$ = pdw.value;
    free(pdw);
    return result$;
  }

  /// Writes 32 bits of data to a property identified by a property handle.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemobjectaccess-writedword>.
  @pragma('vm:prefer-inline')
  void writeDWORD(int lHandle, int dw) {
    final hr$ = HRESULT(_WriteDWORDFn(ptr, lHandle, dw));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Reads 64 bits of property data identified by a property handle.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemobjectaccess-readqword>.
  int readQWORD(int lHandle) {
    final pqw = loggingCalloc<Uint64>();
    final hr$ = HRESULT(_ReadQWORDFn(ptr, lHandle, pqw));
    if (hr$.isError) {
      free(pqw);
      throw WindowsException(hr$);
    }
    final result$ = pqw.value;
    free(pqw);
    return result$;
  }

  /// Writes 64 bits of data to a property by using a property handle.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemobjectaccess-writeqword>.
  @pragma('vm:prefer-inline')
  void writeQWORD(int lHandle, int pw) {
    final hr$ = HRESULT(_WriteQWORDFn(ptr, lHandle, pw));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Returns the name and data type of the property that is associated with a
  /// property handle.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemobjectaccess-getpropertyinfobyhandle>.
  @pragma('vm:prefer-inline')
  void getPropertyInfoByHandle(
    int lHandle,
    Pointer<BSTR> pstrName,
    Pointer<Int32> pType,
  ) {
    final hr$ = HRESULT(
      _GetPropertyInfoByHandleFn(ptr, lHandle, pstrName, pType),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Prevents other threads from updating an IWbemObjectAccess object until it
  /// is unlocked.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemobjectaccess-lock>.
  @pragma('vm:prefer-inline')
  void lock(int lFlags) {
    final hr$ = HRESULT(_LockFn(ptr, lFlags));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Allows other threads to update the property values of an IWbemObjectAccess
  /// object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemobjectaccess-unlock>.
  @pragma('vm:prefer-inline')
  void unlock(int lFlags) {
    final hr$ = HRESULT(_UnlockFn(ptr, lFlags));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IWbemObjectAccess(ptr: $ptr)';
}

/// @nodoc
base class IWbemObjectAccessVtbl extends Struct {
  external IWbemClassObjectVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR wszPropertyName,
        Pointer<Int32> pType,
        Pointer<Int32> plHandle,
      )
    >
  >
  GetPropertyHandle;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 lHandle,
        Int32 lNumBytes,
        Pointer<Uint8> aData,
      )
    >
  >
  WritePropertyValue;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 lHandle,
        Int32 lBufferSize,
        Pointer<Int32> plNumBytes,
        Pointer<Uint8> aData,
      )
    >
  >
  ReadPropertyValue;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Int32 lHandle, Pointer<Uint32> pdw)
    >
  >
  ReadDWORD;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Int32 lHandle, Uint32 dw)
    >
  >
  WriteDWORD;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Int32 lHandle, Pointer<Uint64> pqw)
    >
  >
  ReadQWORD;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Int32 lHandle, Uint64 pw)
    >
  >
  WriteQWORD;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 lHandle,
        Pointer<BSTR> pstrName,
        Pointer<Int32> pType,
      )
    >
  >
  GetPropertyInfoByHandle;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 lFlags)>
  >
  Lock;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 lFlags)>
  >
  Unlock;
}

@internal
final class IWbemObjectAccessCompanion extends ComCompanion<IWbemObjectAccess> {
  const IWbemObjectAccessCompanion();

  @pragma('vm:prefer-inline')
  @override
  IWbemObjectAccess Function(VTablePointer) get fromPointer =>
      IWbemObjectAccess.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IWbemObjectAccess;
}
