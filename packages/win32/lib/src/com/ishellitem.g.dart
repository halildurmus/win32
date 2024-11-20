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
import 'ibindctx.g.dart';
import 'interface.g.dart';
import 'ishellitem.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IShellItem = Guid.fromComponents(
  0x43826d1e,
  0xe718,
  0x42ee,
  Uint8List.fromList(const [0xbc, 0x55, 0xa1, 0xe2, 0x61, 0xc3, 0x7b, 0xfe]),
);

/// Exposes methods that retrieve information about a Shell item.
///
/// IShellItem and IShellItem2 are the preferred representations of items in any
/// new code.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nn-shobjidl_core-ishellitem>.
///
/// {@category com}
class IShellItem extends IUnknown implements ComInterface {
  /// Creates a new instance of [IShellItem] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IShellItem] interface.
  /// The [ptr] must not be [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IShellItem(super.ptr) : _vtable = ptr.value.cast<IShellItemVtbl>().ref;

  /// Creates a new instance of [IShellItem] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IShellItem] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IShellItem.from(IUnknown interface, {bool releaseOriginal = false}) =>
      interface.cast(releaseOriginal: releaseOriginal);

  final IShellItemVtbl _vtable;
  late final _BindToHandlerFn =
      _vtable.BindToHandler.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          Pointer<GUID>,
          Pointer<GUID>,
          Pointer<Pointer>,
        )
      >();
  late final _GetParentFn =
      _vtable.GetParent.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _GetDisplayNameFn =
      _vtable.GetDisplayName.asFunction<
        int Function(VTablePointer, int, Pointer<PWSTR>)
      >();
  late final _GetAttributesFn =
      _vtable.GetAttributes.asFunction<
        int Function(VTablePointer, int, Pointer<Uint32>)
      >();
  late final _CompareFn =
      _vtable.Compare.asFunction<
        int Function(VTablePointer, VTablePointer, int, Pointer<Int32>)
      >();

  /// Binds to a handler for an item as specified by the handler ID value
  /// (BHID).
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
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitem-bindtohandler>.
  T bindToHandler<T extends IUnknown>(IBindCtx? pbc, Pointer<GUID> bhid) {
    final companion = ComInterface.type<T>();
    final riid = companion.iid;
    final ppv = loggingCalloc<Pointer>();
    final hr$ = HRESULT(
      _BindToHandlerFn(ptr, pbc?.ptr ?? nullptr, bhid, riid.ptr, ppv),
    );
    if (hr$.isError) {
      free(ppv);
      throw WindowsException(hr$);
    }
    final result = companion.fromPointer(ppv.value.cast());
    free(ppv);
    return result;
  }

  /// Gets the parent of an IShellItem object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitem-getparent>.
  IShellItem? getParent() {
    final ppsi = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetParentFn(ptr, ppsi));
    if (hr$.isError) {
      free(ppsi);
      throw WindowsException(hr$);
    }
    final result$ = ppsi.value;
    free(ppsi);
    if (result$.isNull) return null;
    return IShellItem(result$);
  }

  /// Gets the display name of the IShellItem object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitem-getdisplayname>.
  PWSTR getDisplayName(SIGDN sigdnName) {
    final ppszName = loggingCalloc<PWSTR>();
    final hr$ = HRESULT(_GetDisplayNameFn(ptr, sigdnName, ppszName));
    if (hr$.isError) {
      free(ppszName);
      throw WindowsException(hr$);
    }
    final result$ = ppszName.value;
    free(ppszName);
    return result$;
  }

  /// Gets a requested set of attributes of the IShellItem object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitem-getattributes>.
  SFGAO_FLAGS getAttributes(SFGAO_FLAGS sfgaoMask) {
    final psfgaoAttribs = loggingCalloc<Uint32>();
    final hr$ = HRESULT(_GetAttributesFn(ptr, sfgaoMask, psfgaoAttribs));
    if (hr$.isError) {
      free(psfgaoAttribs);
      throw WindowsException(hr$);
    }
    final result$ = psfgaoAttribs.value;
    free(psfgaoAttribs);
    return SFGAO_FLAGS(result$);
  }

  /// Compares two IShellItem objects.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitem-compare>.
  int compare(IShellItem? psi, int hint) {
    final piOrder = loggingCalloc<Int32>();
    final hr$ = HRESULT(_CompareFn(ptr, psi?.ptr ?? nullptr, hint, piOrder));
    if (hr$.isError) {
      free(piOrder);
      throw WindowsException(hr$);
    }
    final result$ = piOrder.value;
    free(piOrder);
    return result$;
  }

  @override
  String toString() => 'IShellItem(ptr: $ptr)';
}

/// @nodoc
base class IShellItemVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pbc,
        Pointer<GUID> bhid,
        Pointer<GUID> riid,
        Pointer<Pointer> ppv,
      )
    >
  >
  BindToHandler;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> ppsi)
    >
  >
  GetParent;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 sigdnName,
        Pointer<PWSTR> ppszName,
      )
    >
  >
  GetDisplayName;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 sfgaoMask,
        Pointer<Uint32> psfgaoAttribs,
      )
    >
  >
  GetAttributes;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer psi,
        Uint32 hint,
        Pointer<Int32> piOrder,
      )
    >
  >
  Compare;
}

@internal
final class IShellItemCompanion extends ComCompanion<IShellItem> {
  const IShellItemCompanion();

  @pragma('vm:prefer-inline')
  @override
  IShellItem Function(VTablePointer) get fromPointer => IShellItem.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IShellItem;
}
