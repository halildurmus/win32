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
import '../enums.g.dart';
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
import '../variant.dart';
import 'interface.g.dart';
import 'itypeinfo.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IDispatch = Guid.fromComponents(
  0x20400,
  0x0,
  0x0,
  Uint8List.fromList(const [0xc0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x46]),
);

/// Exposes objects, methods and properties to programming tools and other
/// applications that support Automation.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oaidl/nn-oaidl-idispatch>.
///
/// {@category com}
class IDispatch extends IUnknown implements ComInterface {
  /// Creates a new instance of [IDispatch] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IDispatch] interface.
  /// The [ptr] must not be [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IDispatch(super.ptr) : _vtable = ptr.value.cast<IDispatchVtbl>().ref;

  /// Creates a new instance of [IDispatch] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IDispatch] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IDispatch.from(IUnknown interface, {bool releaseOriginal = false}) =>
      interface.cast(releaseOriginal: releaseOriginal);

  final IDispatchVtbl _vtable;
  late final _GetTypeInfoCountFn =
      _vtable.GetTypeInfoCount.asFunction<
        int Function(VTablePointer, Pointer<Uint32>)
      >();
  late final _GetTypeInfoFn =
      _vtable.GetTypeInfo.asFunction<
        int Function(VTablePointer, int, int, Pointer<VTablePointer>)
      >();
  late final _GetIDsOfNamesFn =
      _vtable.GetIDsOfNames.asFunction<
        int Function(
          VTablePointer,
          Pointer<GUID>,
          Pointer<PCWSTR>,
          int,
          int,
          Pointer<Int32>,
        )
      >();
  late final _InvokeFn =
      _vtable.Invoke.asFunction<
        int Function(
          VTablePointer,
          int,
          Pointer<GUID>,
          int,
          int,
          Pointer<DISPPARAMS>,
          Pointer<VARIANT>,
          Pointer<EXCEPINFO>,
          Pointer<Uint32>,
        )
      >();

  /// Retrieves the number of type information interfaces that an object
  /// provides (either 0 or 1).
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-idispatch-gettypeinfocount>.
  int getTypeInfoCount() {
    final pctinfo = loggingCalloc<Uint32>();
    final hr$ = HRESULT(_GetTypeInfoCountFn(ptr, pctinfo));
    if (hr$.isError) {
      free(pctinfo);
      throw WindowsException(hr$);
    }
    final result$ = pctinfo.value;
    free(pctinfo);
    return result$;
  }

  /// Retrieves the type information for an object, which can then be used to
  /// get the type information for an interface.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-idispatch-gettypeinfo>.
  ITypeInfo? getTypeInfo(int iTInfo, int lcid) {
    final ppTInfo = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetTypeInfoFn(ptr, iTInfo, lcid, ppTInfo));
    if (hr$.isError) {
      free(ppTInfo);
      throw WindowsException(hr$);
    }
    final result$ = ppTInfo.value;
    free(ppTInfo);
    if (result$.isNull) return null;
    return ITypeInfo(result$);
  }

  /// Maps a single member and an optional set of argument names to a
  /// corresponding set of integer DISPIDs, which can be used on subsequent
  /// calls to Invoke.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-idispatch-getidsofnames>.
  @pragma('vm:prefer-inline')
  void getIDsOfNames(
    Pointer<GUID> riid,
    Pointer<PCWSTR> rgszNames,
    int cNames,
    int lcid,
    Pointer<Int32> rgDispId,
  ) {
    final hr$ = HRESULT(
      _GetIDsOfNamesFn(ptr, riid, rgszNames, cNames, lcid, rgDispId),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Provides access to properties and methods exposed by an object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-idispatch-invoke>.
  @pragma('vm:prefer-inline')
  void invoke(
    int dispIdMember,
    Pointer<GUID> riid,
    int lcid,
    DISPATCH_FLAGS wFlags,
    Pointer<DISPPARAMS> pDispParams,
    Pointer<VARIANT>? pVarResult,
    Pointer<EXCEPINFO>? pExcepInfo,
    Pointer<Uint32>? puArgErr,
  ) {
    final hr$ = HRESULT(
      _InvokeFn(
        ptr,
        dispIdMember,
        riid,
        lcid,
        wFlags,
        pDispParams,
        pVarResult ?? nullptr,
        pExcepInfo ?? nullptr,
        puArgErr ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IDispatch(ptr: $ptr)';
}

/// @nodoc
base class IDispatchVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Uint32> pctinfo)>
  >
  GetTypeInfoCount;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 iTInfo,
        Uint32 lcid,
        Pointer<VTablePointer> ppTInfo,
      )
    >
  >
  GetTypeInfo;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<GUID> riid,
        Pointer<PCWSTR> rgszNames,
        Uint32 cNames,
        Uint32 lcid,
        Pointer<Int32> rgDispId,
      )
    >
  >
  GetIDsOfNames;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 dispIdMember,
        Pointer<GUID> riid,
        Uint32 lcid,
        Uint16 wFlags,
        Pointer<DISPPARAMS> pDispParams,
        Pointer<VARIANT> pVarResult,
        Pointer<EXCEPINFO> pExcepInfo,
        Pointer<Uint32> puArgErr,
      )
    >
  >
  Invoke;
}

@internal
final class IDispatchCompanion extends ComCompanion<IDispatch> {
  const IDispatchCompanion();

  @pragma('vm:prefer-inline')
  @override
  IDispatch Function(VTablePointer) get fromPointer => IDispatch.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IDispatch;
}
