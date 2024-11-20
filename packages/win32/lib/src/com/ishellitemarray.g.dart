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
import '../propertykey.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'ibindctx.g.dart';
import 'ienumshellitems.g.dart';
import 'interface.g.dart';
import 'ishellitem.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IShellItemArray = Guid.fromComponents(
  0xb63ea76d,
  0x1f85,
  0x456f,
  Uint8List.fromList(const [0xa1, 0x9c, 0x48, 0x15, 0x9e, 0xfa, 0x85, 0x8b]),
);

/// Exposes methods that create and manipulate Shell item arrays.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nn-shobjidl_core-ishellitemarray>.
///
/// {@category com}
class IShellItemArray extends IUnknown implements ComInterface {
  /// Creates a new instance of [IShellItemArray] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IShellItemArray]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IShellItemArray(super.ptr)
    : _vtable = ptr.value.cast<IShellItemArrayVtbl>().ref;

  /// Creates a new instance of [IShellItemArray] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IShellItemArray] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IShellItemArray.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IShellItemArrayVtbl _vtable;
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
  late final _GetPropertyStoreFn =
      _vtable.GetPropertyStore.asFunction<
        int Function(VTablePointer, int, Pointer<GUID>, Pointer<Pointer>)
      >();
  late final _GetPropertyDescriptionListFn =
      _vtable.GetPropertyDescriptionList.asFunction<
        int Function(
          VTablePointer,
          Pointer<PROPERTYKEY>,
          Pointer<GUID>,
          Pointer<Pointer>,
        )
      >();
  late final _GetAttributesFn =
      _vtable.GetAttributes.asFunction<
        int Function(VTablePointer, int, int, Pointer<Uint32>)
      >();
  late final _GetCountFn = _vtable
      .GetCount.asFunction<int Function(VTablePointer, Pointer<Uint32>)>();
  late final _GetItemAtFn =
      _vtable.GetItemAt.asFunction<
        int Function(VTablePointer, int, Pointer<VTablePointer>)
      >();
  late final _EnumItemsFn =
      _vtable.EnumItems.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();

  /// Binds to an object by means of the specified handler.
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
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitemarray-bindtohandler>.
  T bindToHandler<T extends IUnknown>(IBindCtx? pbc, Pointer<GUID> bhid) {
    final companion = ComInterface.type<T>();
    final riid = companion.iid;
    final ppvOut = loggingCalloc<Pointer>();
    final hr$ = HRESULT(
      _BindToHandlerFn(ptr, pbc?.ptr ?? nullptr, bhid, riid.ptr, ppvOut),
    );
    if (hr$.isError) {
      free(ppvOut);
      throw WindowsException(hr$);
    }
    final result = companion.fromPointer(ppvOut.value.cast());
    free(ppvOut);
    return result;
  }

  /// Gets a property store.
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
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitemarray-getpropertystore>.
  T getPropertyStore<T extends IUnknown>(GETPROPERTYSTOREFLAGS flags) {
    final companion = ComInterface.type<T>();
    final riid = companion.iid;
    final ppv = loggingCalloc<Pointer>();
    final hr$ = HRESULT(_GetPropertyStoreFn(ptr, flags, riid.ptr, ppv));
    if (hr$.isError) {
      free(ppv);
      throw WindowsException(hr$);
    }
    final result = companion.fromPointer(ppv.value.cast());
    free(ppv);
    return result;
  }

  /// Gets a property description list for the items in the shell item array.
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
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitemarray-getpropertydescriptionlist>.
  T getPropertyDescriptionList<T extends IUnknown>(
    Pointer<PROPERTYKEY> keyType,
  ) {
    final companion = ComInterface.type<T>();
    final riid = companion.iid;
    final ppv = loggingCalloc<Pointer>();
    final hr$ = HRESULT(
      _GetPropertyDescriptionListFn(ptr, keyType, riid.ptr, ppv),
    );
    if (hr$.isError) {
      free(ppv);
      throw WindowsException(hr$);
    }
    final result = companion.fromPointer(ppv.value.cast());
    free(ppv);
    return result;
  }

  /// Gets the attributes of the set of items contained in an IShellItemArray.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitemarray-getattributes>.
  SFGAO_FLAGS getAttributes(SIATTRIBFLAGS attribFlags, SFGAO_FLAGS sfgaoMask) {
    final psfgaoAttribs = loggingCalloc<Uint32>();
    final hr$ = HRESULT(
      _GetAttributesFn(ptr, attribFlags, sfgaoMask, psfgaoAttribs),
    );
    if (hr$.isError) {
      free(psfgaoAttribs);
      throw WindowsException(hr$);
    }
    final result$ = psfgaoAttribs.value;
    free(psfgaoAttribs);
    return SFGAO_FLAGS(result$);
  }

  /// Gets the number of items in the given IShellItem array.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitemarray-getcount>.
  int getCount() {
    final pdwNumItems = loggingCalloc<Uint32>();
    final hr$ = HRESULT(_GetCountFn(ptr, pdwNumItems));
    if (hr$.isError) {
      free(pdwNumItems);
      throw WindowsException(hr$);
    }
    final result$ = pdwNumItems.value;
    free(pdwNumItems);
    return result$;
  }

  /// Gets the item at the given index in the IShellItemArray.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitemarray-getitemat>.
  IShellItem? getItemAt(int dwIndex) {
    final ppsi = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetItemAtFn(ptr, dwIndex, ppsi));
    if (hr$.isError) {
      free(ppsi);
      throw WindowsException(hr$);
    }
    final result$ = ppsi.value;
    free(ppsi);
    if (result$.isNull) return null;
    return IShellItem(result$);
  }

  /// Gets an enumerator of the items in the array.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitemarray-enumitems>.
  IEnumShellItems? enumItems() {
    final ppenumShellItems = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_EnumItemsFn(ptr, ppenumShellItems));
    if (hr$.isError) {
      free(ppenumShellItems);
      throw WindowsException(hr$);
    }
    final result$ = ppenumShellItems.value;
    free(ppenumShellItems);
    if (result$.isNull) return null;
    return IEnumShellItems(result$);
  }

  @override
  String toString() => 'IShellItemArray(ptr: $ptr)';
}

/// @nodoc
base class IShellItemArrayVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pbc,
        Pointer<GUID> bhid,
        Pointer<GUID> riid,
        Pointer<Pointer> ppvOut,
      )
    >
  >
  BindToHandler;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 flags,
        Pointer<GUID> riid,
        Pointer<Pointer> ppv,
      )
    >
  >
  GetPropertyStore;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<PROPERTYKEY> keyType,
        Pointer<GUID> riid,
        Pointer<Pointer> ppv,
      )
    >
  >
  GetPropertyDescriptionList;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 attribFlags,
        Uint32 sfgaoMask,
        Pointer<Uint32> psfgaoAttribs,
      )
    >
  >
  GetAttributes;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Uint32> pdwNumItems)
    >
  >
  GetCount;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 dwIndex,
        Pointer<VTablePointer> ppsi,
      )
    >
  >
  GetItemAt;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<VTablePointer> ppenumShellItems,
      )
    >
  >
  EnumItems;
}

@internal
final class IShellItemArrayCompanion extends ComCompanion<IShellItemArray> {
  const IShellItemArrayCompanion();

  @pragma('vm:prefer-inline')
  @override
  IShellItemArray Function(VTablePointer) get fromPointer =>
      IShellItemArray.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IShellItemArray;
}
