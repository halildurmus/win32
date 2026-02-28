// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Dart representation of a COM interface.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:meta/meta.dart';

import '../bstr.dart';
import '../constants.dart';
import '../constants.g.dart';
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
import '../rpc_status.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IDXGIObject = GUID.fromComponents(
  0xaec22fb8,
  0x76f3,
  0x4639,
  Uint8List.fromList(const [0x9b, 0xe0, 0x28, 0xeb, 0x43, 0xa6, 0x7a, 0x2e]),
);

/// A base interface for all DXGI objects; IDXGIObject supports associating
/// caller-defined (private data) with an object and retrieval of an interface
/// to the parent object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dxgi/nn-dxgi-idxgiobject>.
///
/// {@category com}
class IDXGIObject extends IUnknown implements ComInterface {
  /// Creates a new instance of [IDXGIObject] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IDXGIObject] interface.
  /// The [ptr] must not be [nullptr]; otherwise, an assertion error is thrown.
  IDXGIObject(super.ptr) : _vtable = ptr.value.cast<IDXGIObjectVtbl>().ref;

  /// Creates a new instance of [IDXGIObject] from an existing [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IDXGIObject] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IDXGIObject.from(IUnknown interface) => interface.queryInterface();

  final IDXGIObjectVtbl _vtable;
  late final _SetPrivateDataFn =
      _vtable.SetPrivateData.asFunction<
        int Function(VTablePointer, Pointer<GUID>, int, Pointer)
      >();
  late final _SetPrivateDataInterfaceFn =
      _vtable.SetPrivateDataInterface.asFunction<
        int Function(VTablePointer, Pointer<GUID>, VTablePointer)
      >();
  late final _GetPrivateDataFn =
      _vtable.GetPrivateData.asFunction<
        int Function(VTablePointer, Pointer<GUID>, Pointer<Uint32>, Pointer)
      >();
  late final _GetParentFn =
      _vtable.GetParent.asFunction<
        int Function(VTablePointer, Pointer<GUID>, Pointer<Pointer>)
      >();

  /// Sets application-defined data to the object and associates that data with
  /// a GUID.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dxgi/nf-dxgi-idxgiobject-setprivatedata>.
  @pragma('vm:prefer-inline')
  void setPrivateData(Pointer<GUID> name, int dataSize, Pointer pData) {
    final hr$ = HRESULT(_SetPrivateDataFn(ptr, name, dataSize, pData));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Set an interface in the object's private data.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dxgi/nf-dxgi-idxgiobject-setprivatedatainterface>.
  @pragma('vm:prefer-inline')
  void setPrivateDataInterface(Pointer<GUID> name, IUnknown? pUnknown) {
    final hr$ = HRESULT(
      _SetPrivateDataInterfaceFn(ptr, name, pUnknown?.ptr ?? nullptr),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Get a pointer to the object's data.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dxgi/nf-dxgi-idxgiobject-getprivatedata>.
  @pragma('vm:prefer-inline')
  void getPrivateData(
    Pointer<GUID> name,
    Pointer<Uint32> pDataSize,
    Pointer pData,
  ) {
    final hr$ = HRESULT(_GetPrivateDataFn(ptr, name, pDataSize, pData));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets the parent of the object.
  ///
  /// This method uses the [ComInterface.type] method to retrieve metadata about
  /// the target interface defined by [T], including its IID (Interface ID) and
  /// instantiation logic.
  ///
  /// All COM interfaces provided by this package are pre-registered. Custom COM
  /// interfaces must be registered manually using the [ComInterface.register]
  /// method before calling this method.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dxgi/nf-dxgi-idxgiobject-getparent>.
  T getParent<T extends IUnknown>() {
    final companion = ComInterface.type<T>();
    final riid = companion.iid.toNative();
    final ppParent = adaptiveCalloc<Pointer>();
    final hr$ = HRESULT(_GetParentFn(ptr, riid, ppParent));
    free(riid);
    if (hr$.isError) {
      free(ppParent);
      throw WindowsException(hr$);
    }
    final result = companion.fromPointer(ppParent.value.cast());
    free(ppParent);
    return result;
  }

  @override
  String toString() => 'IDXGIObject(ptr: $ptr)';
}

/// @nodoc
base class IDXGIObjectVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<GUID> name,
        Uint32 dataSize,
        Pointer pData,
      )
    >
  >
  SetPrivateData;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<GUID> name,
        VTablePointer pUnknown,
      )
    >
  >
  SetPrivateDataInterface;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<GUID> name,
        Pointer<Uint32> pDataSize,
        Pointer pData,
      )
    >
  >
  GetPrivateData;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<GUID> riid,
        Pointer<Pointer> ppParent,
      )
    >
  >
  GetParent;
}

@internal
final class IDXGIObjectCompanion extends ComCompanion<IDXGIObject> {
  const IDXGIObjectCompanion();

  @pragma('vm:prefer-inline')
  @override
  IDXGIObject Function(VTablePointer) get fromPointer => IDXGIObject.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IDXGIObject;
}
