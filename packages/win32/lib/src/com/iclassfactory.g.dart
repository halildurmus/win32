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
final IID_IClassFactory = GUID.fromComponents(
  0x1,
  0x0,
  0x0,
  .fromList(const [0xc0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x46]),
);

/// Enables a class of objects to be created.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/unknwn/nn-unknwn-iclassfactory>.
///
/// {@category com}
class IClassFactory extends IUnknown implements ComInterface {
  /// Creates a new instance of [IClassFactory] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IClassFactory]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  IClassFactory(super.ptr) : _vtable = ptr.value.cast<IClassFactoryVtbl>().ref;

  /// Creates a new instance of [IClassFactory] from an existing [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IClassFactory] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IClassFactory.from(IUnknown interface) => interface.queryInterface();

  final IClassFactoryVtbl _vtable;
  late final _CreateInstanceFn =
      _vtable.CreateInstance.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          Pointer<GUID>,
          Pointer<Pointer>,
        )
      >();
  late final _LockServerFn =
      _vtable.LockServer.asFunction<int Function(VTablePointer, int)>();

  /// Creates an uninitialized object.
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
  /// <https://learn.microsoft.com/windows/win32/api/unknwn/nf-unknwn-iclassfactory-createinstance>.
  T createInstance<T extends IUnknown>(IUnknown? pUnkOuter) {
    final companion = ComInterface.type<T>();
    final riid = companion.iid.toNative();
    final ppvObject = adaptiveCalloc<Pointer>();
    final hr$ = HRESULT(
      _CreateInstanceFn(ptr, pUnkOuter?.ptr ?? nullptr, riid, ppvObject),
    );
    free(riid);
    if (hr$.isError) {
      free(ppvObject);
      throw WindowsException(hr$);
    }
    final result = companion.fromPointer(ppvObject.value.cast());
    free(ppvObject);
    return result;
  }

  /// Locks an object application open in memory.
  ///
  /// This enables instances to be created more quickly.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/unknwn/nf-unknwn-iclassfactory-lockserver>.
  @pragma('vm:prefer-inline')
  void lockServer(bool fLock) {
    final hr$ = HRESULT(_LockServerFn(ptr, fLock ? TRUE : FALSE));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IClassFactory(ptr: $ptr)';
}

/// @nodoc
base class IClassFactoryVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pUnkOuter,
        Pointer<GUID> riid,
        Pointer<Pointer> ppvObject,
      )
    >
  >
  CreateInstance;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 fLock)>
  >
  LockServer;
}

@internal
final class IClassFactoryCompanion extends ComCompanion<IClassFactory> {
  const IClassFactoryCompanion();

  @pragma('vm:prefer-inline')
  @override
  IClassFactory Function(VTablePointer) get fromPointer => IClassFactory.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IClassFactory;
}
