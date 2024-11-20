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
import 'ienumstring.g.dart';
import 'interface.g.dart';
import 'irunningobjecttable.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IBindCtx = Guid.fromComponents(
  0xe,
  0x0,
  0x0,
  Uint8List.fromList(const [0xc0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x46]),
);

/// Provides access to a bind context, which is an object that stores
/// information about a particular moniker binding operation.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/objidl/nn-objidl-ibindctx>.
///
/// {@category com}
class IBindCtx extends IUnknown implements ComInterface {
  /// Creates a new instance of [IBindCtx] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IBindCtx] interface. The
  /// [ptr] must not be [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IBindCtx(super.ptr) : _vtable = ptr.value.cast<IBindCtxVtbl>().ref;

  /// Creates a new instance of [IBindCtx] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IBindCtx] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IBindCtx.from(IUnknown interface, {bool releaseOriginal = false}) =>
      interface.cast(releaseOriginal: releaseOriginal);

  final IBindCtxVtbl _vtable;
  late final _RegisterObjectBoundFn =
      _vtable.RegisterObjectBound.asFunction<
        int Function(VTablePointer, VTablePointer)
      >();
  late final _RevokeObjectBoundFn =
      _vtable.RevokeObjectBound.asFunction<
        int Function(VTablePointer, VTablePointer)
      >();
  late final _ReleaseBoundObjectsFn =
      _vtable.ReleaseBoundObjects.asFunction<int Function(VTablePointer)>();
  late final _SetBindOptionsFn =
      _vtable.SetBindOptions.asFunction<
        int Function(VTablePointer, Pointer<BIND_OPTS>)
      >();
  late final _GetBindOptionsFn =
      _vtable.GetBindOptions.asFunction<
        int Function(VTablePointer, Pointer<BIND_OPTS>)
      >();
  late final _GetRunningObjectTableFn =
      _vtable.GetRunningObjectTable.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _RegisterObjectParamFn =
      _vtable.RegisterObjectParam.asFunction<
        int Function(VTablePointer, PCWSTR, VTablePointer)
      >();
  late final _GetObjectParamFn =
      _vtable.GetObjectParam.asFunction<
        int Function(VTablePointer, PCWSTR, Pointer<VTablePointer>)
      >();
  late final _EnumObjectParamFn =
      _vtable.EnumObjectParam.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _RevokeObjectParamFn = _vtable
      .RevokeObjectParam.asFunction<int Function(VTablePointer, PCWSTR)>();

  /// Registers an object with the bind context to ensure that the object
  /// remains active until the bind context is released.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-ibindctx-registerobjectbound>.
  @pragma('vm:prefer-inline')
  void registerObjectBound(IUnknown? punk) {
    final hr$ = HRESULT(_RegisterObjectBoundFn(ptr, punk?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Removes the object from the bind context, undoing a previous call to
  /// RegisterObjectBound.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-ibindctx-revokeobjectbound>.
  @pragma('vm:prefer-inline')
  void revokeObjectBound(IUnknown? punk) {
    final hr$ = HRESULT(_RevokeObjectBoundFn(ptr, punk?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Releases all pointers to all objects that were previously registered by
  /// calls to RegisterObjectBound.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-ibindctx-releaseboundobjects>.
  @pragma('vm:prefer-inline')
  void releaseBoundObjects() {
    final hr$ = HRESULT(_ReleaseBoundObjectsFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets new values for the binding parameters stored in the bind context.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-ibindctx-setbindoptions>.
  @pragma('vm:prefer-inline')
  void setBindOptions(Pointer<BIND_OPTS> pbindopts) {
    final hr$ = HRESULT(_SetBindOptionsFn(ptr, pbindopts));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves the binding options stored in this bind context.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-ibindctx-getbindoptions>.
  @pragma('vm:prefer-inline')
  void getBindOptions(Pointer<BIND_OPTS> pbindopts) {
    final hr$ = HRESULT(_GetBindOptionsFn(ptr, pbindopts));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves an interface pointer to the running object table (ROT) for the
  /// computer on which this bind context is running.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-ibindctx-getrunningobjecttable>.
  IRunningObjectTable? getRunningObjectTable() {
    final pprot = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetRunningObjectTableFn(ptr, pprot));
    if (hr$.isError) {
      free(pprot);
      throw WindowsException(hr$);
    }
    final result$ = pprot.value;
    free(pprot);
    if (result$.isNull) return null;
    return IRunningObjectTable(result$);
  }

  /// Associates an object with a string key in the bind context's string-keyed
  /// table of pointers.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-ibindctx-registerobjectparam>.
  @pragma('vm:prefer-inline')
  void registerObjectParam(PCWSTR pszKey, IUnknown? punk) {
    final hr$ = HRESULT(
      _RegisterObjectParamFn(ptr, pszKey, punk?.ptr ?? nullptr),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves an interface pointer to the object associated with the specified
  /// key in the bind context's string-keyed table of pointers.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-ibindctx-getobjectparam>.
  IUnknown? getObjectParam(PCWSTR pszKey) {
    final ppunk = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetObjectParamFn(ptr, pszKey, ppunk));
    if (hr$.isError) {
      free(ppunk);
      throw WindowsException(hr$);
    }
    final result$ = ppunk.value;
    free(ppunk);
    if (result$.isNull) return null;
    return IUnknown(result$);
  }

  /// Retrieves a pointer to an interface that can be used to enumerate the keys
  /// of the bind context's string-keyed table of pointers.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-ibindctx-enumobjectparam>.
  IEnumString? enumObjectParam() {
    final ppenum = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_EnumObjectParamFn(ptr, ppenum));
    if (hr$.isError) {
      free(ppenum);
      throw WindowsException(hr$);
    }
    final result$ = ppenum.value;
    free(ppenum);
    if (result$.isNull) return null;
    return IEnumString(result$);
  }

  /// Removes the specified key and its associated pointer from the bind
  /// context's string-keyed table of objects.
  ///
  /// The key must have previously been inserted into the table with a call to
  /// RegisterObjectParam.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-ibindctx-revokeobjectparam>.
  @pragma('vm:prefer-inline')
  void revokeObjectParam(PCWSTR pszKey) {
    final hr$ = HRESULT(_RevokeObjectParamFn(ptr, pszKey));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IBindCtx(ptr: $ptr)';
}

/// @nodoc
base class IBindCtxVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer punk)>
  >
  RegisterObjectBound;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer punk)>
  >
  RevokeObjectBound;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>>
  ReleaseBoundObjects;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<BIND_OPTS> pbindopts)
    >
  >
  SetBindOptions;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<BIND_OPTS> pbindopts)
    >
  >
  GetBindOptions;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> pprot)
    >
  >
  GetRunningObjectTable;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, PCWSTR pszKey, VTablePointer punk)
    >
  >
  RegisterObjectParam;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR pszKey,
        Pointer<VTablePointer> ppunk,
      )
    >
  >
  GetObjectParam;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> ppenum)
    >
  >
  EnumObjectParam;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, PCWSTR pszKey)>
  >
  RevokeObjectParam;
}

@internal
final class IBindCtxCompanion extends ComCompanion<IBindCtx> {
  const IBindCtxCompanion();

  @pragma('vm:prefer-inline')
  @override
  IBindCtx Function(VTablePointer) get fromPointer => IBindCtx.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IBindCtx;
}
