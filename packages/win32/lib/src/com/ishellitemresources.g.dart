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
import 'ienumresources.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IShellItemResources = Guid.fromComponents(
  0xff5693be,
  0x2ce0,
  0x4d48,
  Uint8List.fromList(const [0xb5, 0xc5, 0x40, 0x81, 0x7d, 0x1a, 0xcd, 0xb9]),
);

/// Exposes methods to manipulate and query Shell item resources.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nn-shobjidl_core-ishellitemresources>.
///
/// {@category com}
class IShellItemResources extends IUnknown implements ComInterface {
  /// Creates a new instance of [IShellItemResources] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IShellItemResources]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IShellItemResources(super.ptr)
    : _vtable = ptr.value.cast<IShellItemResourcesVtbl>().ref;

  /// Creates a new instance of [IShellItemResources] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IShellItemResources] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IShellItemResources.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IShellItemResourcesVtbl _vtable;
  late final _GetAttributesFn = _vtable
      .GetAttributes.asFunction<int Function(VTablePointer, Pointer<Uint32>)>();
  late final _GetSizeFn = _vtable
      .GetSize.asFunction<int Function(VTablePointer, Pointer<Uint64>)>();
  late final _GetTimesFn =
      _vtable.GetTimes.asFunction<
        int Function(
          VTablePointer,
          Pointer<FILETIME>,
          Pointer<FILETIME>,
          Pointer<FILETIME>,
        )
      >();
  late final _SetTimesFn =
      _vtable.SetTimes.asFunction<
        int Function(
          VTablePointer,
          Pointer<FILETIME>,
          Pointer<FILETIME>,
          Pointer<FILETIME>,
        )
      >();
  late final _GetResourceDescriptionFn =
      _vtable.GetResourceDescription.asFunction<
        int Function(
          VTablePointer,
          Pointer<SHELL_ITEM_RESOURCE>,
          Pointer<PWSTR>,
        )
      >();
  late final _EnumResourcesFn =
      _vtable.EnumResources.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _SupportsResourceFn =
      _vtable.SupportsResource.asFunction<
        int Function(VTablePointer, Pointer<SHELL_ITEM_RESOURCE>)
      >();
  late final _OpenResourceFn =
      _vtable.OpenResource.asFunction<
        int Function(
          VTablePointer,
          Pointer<SHELL_ITEM_RESOURCE>,
          Pointer<GUID>,
          Pointer<Pointer>,
        )
      >();
  late final _CreateResourceFn =
      _vtable.CreateResource.asFunction<
        int Function(
          VTablePointer,
          Pointer<SHELL_ITEM_RESOURCE>,
          Pointer<GUID>,
          Pointer<Pointer>,
        )
      >();
  late final _MarkForDeleteFn =
      _vtable.MarkForDelete.asFunction<int Function(VTablePointer)>();

  /// Gets resource attributes.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitemresources-getattributes>.
  int getAttributes() {
    final pdwAttributes = loggingCalloc<Uint32>();
    final hr$ = HRESULT(_GetAttributesFn(ptr, pdwAttributes));
    if (hr$.isError) {
      free(pdwAttributes);
      throw WindowsException(hr$);
    }
    final result$ = pdwAttributes.value;
    free(pdwAttributes);
    return result$;
  }

  /// Gets the source size.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitemresources-getsize>.
  int getSize() {
    final pullSize = loggingCalloc<Uint64>();
    final hr$ = HRESULT(_GetSizeFn(ptr, pullSize));
    if (hr$.isError) {
      free(pullSize);
      throw WindowsException(hr$);
    }
    final result$ = pullSize.value;
    free(pullSize);
    return result$;
  }

  /// Gets file times.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitemresources-gettimes>.
  @pragma('vm:prefer-inline')
  void getTimes(
    Pointer<FILETIME> pftCreation,
    Pointer<FILETIME> pftWrite,
    Pointer<FILETIME> pftAccess,
  ) {
    final hr$ = HRESULT(_GetTimesFn(ptr, pftCreation, pftWrite, pftAccess));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets file times.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitemresources-settimes>.
  @pragma('vm:prefer-inline')
  void setTimes(
    Pointer<FILETIME> pftCreation,
    Pointer<FILETIME> pftWrite,
    Pointer<FILETIME> pftAccess,
  ) {
    final hr$ = HRESULT(_SetTimesFn(ptr, pftCreation, pftWrite, pftAccess));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets a resource description.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitemresources-getresourcedescription>.
  PWSTR getResourceDescription(Pointer<SHELL_ITEM_RESOURCE> pcsir) {
    final ppszDescription = loggingCalloc<PWSTR>();
    final hr$ = HRESULT(_GetResourceDescriptionFn(ptr, pcsir, ppszDescription));
    if (hr$.isError) {
      free(ppszDescription);
      throw WindowsException(hr$);
    }
    final result$ = ppszDescription.value;
    free(ppszDescription);
    return result$;
  }

  /// Gets a resource enumerator object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitemresources-enumresources>.
  IEnumResources? enumResources() {
    final ppenumr = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_EnumResourcesFn(ptr, ppenumr));
    if (hr$.isError) {
      free(ppenumr);
      throw WindowsException(hr$);
    }
    final result$ = ppenumr.value;
    free(ppenumr);
    if (result$.isNull) return null;
    return IEnumResources(result$);
  }

  /// Retrieves whether an item supports a specified resource.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitemresources-supportsresource>.
  @pragma('vm:prefer-inline')
  void supportsResource(Pointer<SHELL_ITEM_RESOURCE> pcsir) {
    final hr$ = HRESULT(_SupportsResourceFn(ptr, pcsir));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Opens a specified resource.
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
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitemresources-openresource>.
  T openResource<T extends IUnknown>(Pointer<SHELL_ITEM_RESOURCE> pcsir) {
    final companion = ComInterface.type<T>();
    final riid = companion.iid;
    final ppv = loggingCalloc<Pointer>();
    final hr$ = HRESULT(_OpenResourceFn(ptr, pcsir, riid.ptr, ppv));
    if (hr$.isError) {
      free(ppv);
      throw WindowsException(hr$);
    }
    final result = companion.fromPointer(ppv.value.cast());
    free(ppv);
    return result;
  }

  /// Creates a specified resource.
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
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitemresources-createresource>.
  T createResource<T extends IUnknown>(Pointer<SHELL_ITEM_RESOURCE> pcsir) {
    final companion = ComInterface.type<T>();
    final riid = companion.iid;
    final ppv = loggingCalloc<Pointer>();
    final hr$ = HRESULT(_CreateResourceFn(ptr, pcsir, riid.ptr, ppv));
    if (hr$.isError) {
      free(ppv);
      throw WindowsException(hr$);
    }
    final result = companion.fromPointer(ppv.value.cast());
    free(ppv);
    return result;
  }

  /// Marks for delete.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitemresources-markfordelete>.
  @pragma('vm:prefer-inline')
  void markForDelete() {
    final hr$ = HRESULT(_MarkForDeleteFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IShellItemResources(ptr: $ptr)';
}

/// @nodoc
base class IShellItemResourcesVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Uint32> pdwAttributes)
    >
  >
  GetAttributes;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Uint64> pullSize)
    >
  >
  GetSize;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<FILETIME> pftCreation,
        Pointer<FILETIME> pftWrite,
        Pointer<FILETIME> pftAccess,
      )
    >
  >
  GetTimes;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<FILETIME> pftCreation,
        Pointer<FILETIME> pftWrite,
        Pointer<FILETIME> pftAccess,
      )
    >
  >
  SetTimes;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<SHELL_ITEM_RESOURCE> pcsir,
        Pointer<PWSTR> ppszDescription,
      )
    >
  >
  GetResourceDescription;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> ppenumr)
    >
  >
  EnumResources;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<SHELL_ITEM_RESOURCE> pcsir)
    >
  >
  SupportsResource;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<SHELL_ITEM_RESOURCE> pcsir,
        Pointer<GUID> riid,
        Pointer<Pointer> ppv,
      )
    >
  >
  OpenResource;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<SHELL_ITEM_RESOURCE> pcsir,
        Pointer<GUID> riid,
        Pointer<Pointer> ppv,
      )
    >
  >
  CreateResource;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>>
  MarkForDelete;
}

@internal
final class IShellItemResourcesCompanion
    extends ComCompanion<IShellItemResources> {
  const IShellItemResourcesCompanion();

  @pragma('vm:prefer-inline')
  @override
  IShellItemResources Function(VTablePointer) get fromPointer =>
      IShellItemResources.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IShellItemResources;
}
