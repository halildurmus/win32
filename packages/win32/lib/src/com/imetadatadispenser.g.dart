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

/// @nodoc
final IID_IMetaDataDispenser = Guid.fromComponents(
  0x809c652e,
  0x7396,
  0x11d2,
  Uint8List.fromList(const [0x97, 0x71, 0x0, 0xa0, 0xc9, 0xb4, 0xd5, 0xc]),
);

/// Provides methods to create a new metadata scope, or open an existing one.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nn-rometadataapi-imetadatadispenser>.
///
/// {@category com}
class IMetaDataDispenser extends IUnknown implements ComInterface {
  /// Creates a new instance of [IMetaDataDispenser] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IMetaDataDispenser]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IMetaDataDispenser(super.ptr)
    : _vtable = ptr.value.cast<IMetaDataDispenserVtbl>().ref;

  /// Creates a new instance of [IMetaDataDispenser] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IMetaDataDispenser] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IMetaDataDispenser.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IMetaDataDispenserVtbl _vtable;
  late final _DefineScopeFn =
      _vtable.DefineScope.asFunction<
        int Function(
          VTablePointer,
          Pointer<GUID>,
          int,
          Pointer<GUID>,
          Pointer<VTablePointer>,
        )
      >();
  late final _OpenScopeFn =
      _vtable.OpenScope.asFunction<
        int Function(
          VTablePointer,
          PCWSTR,
          int,
          Pointer<GUID>,
          Pointer<VTablePointer>,
        )
      >();
  late final _OpenScopeOnMemoryFn =
      _vtable.OpenScopeOnMemory.asFunction<
        int Function(
          VTablePointer,
          Pointer,
          int,
          int,
          Pointer<GUID>,
          Pointer<VTablePointer>,
        )
      >();

  /// Creates a new area in memory in which you can create new metadata.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadatadispenser-definescope>.
  IUnknown? defineScope(
    Pointer<GUID> rclsid,
    int dwCreateFlags,
    Pointer<GUID> riid,
  ) {
    final ppIUnk = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _DefineScopeFn(ptr, rclsid, dwCreateFlags, riid, ppIUnk),
    );
    if (hr$.isError) {
      free(ppIUnk);
      throw WindowsException(hr$);
    }
    final result$ = ppIUnk.value;
    free(ppIUnk);
    if (result$.isNull) return null;
    return IUnknown(result$);
  }

  /// Opens an existing file from disk, and maps its metadata into memory for
  /// reading.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadatadispenser-openscope>.
  IUnknown? openScope(PCWSTR szScope, int dwOpenFlags, Pointer<GUID> riid) {
    final ppIUnk = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_OpenScopeFn(ptr, szScope, dwOpenFlags, riid, ppIUnk));
    if (hr$.isError) {
      free(ppIUnk);
      throw WindowsException(hr$);
    }
    final result$ = ppIUnk.value;
    free(ppIUnk);
    if (result$.isNull) return null;
    return IUnknown(result$);
  }

  /// Opens an area of memory that contains existing metadata.
  ///
  /// That is, this method opens a specified area of memory in which the
  /// existing data is treated as metadata.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadatadispenser-openscopeonmemory>.
  IUnknown? openScopeOnMemory(
    Pointer pData,
    int cbData,
    int dwOpenFlags,
    Pointer<GUID> riid,
  ) {
    final ppIUnk = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _OpenScopeOnMemoryFn(ptr, pData, cbData, dwOpenFlags, riid, ppIUnk),
    );
    if (hr$.isError) {
      free(ppIUnk);
      throw WindowsException(hr$);
    }
    final result$ = ppIUnk.value;
    free(ppIUnk);
    if (result$.isNull) return null;
    return IUnknown(result$);
  }

  @override
  String toString() => 'IMetaDataDispenser(ptr: $ptr)';
}

/// @nodoc
base class IMetaDataDispenserVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<GUID> rclsid,
        Uint32 dwCreateFlags,
        Pointer<GUID> riid,
        Pointer<VTablePointer> ppIUnk,
      )
    >
  >
  DefineScope;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR szScope,
        Uint32 dwOpenFlags,
        Pointer<GUID> riid,
        Pointer<VTablePointer> ppIUnk,
      )
    >
  >
  OpenScope;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer pData,
        Uint32 cbData,
        Uint32 dwOpenFlags,
        Pointer<GUID> riid,
        Pointer<VTablePointer> ppIUnk,
      )
    >
  >
  OpenScopeOnMemory;
}

@internal
final class IMetaDataDispenserCompanion
    extends ComCompanion<IMetaDataDispenser> {
  const IMetaDataDispenserCompanion();

  @pragma('vm:prefer-inline')
  @override
  IMetaDataDispenser Function(VTablePointer) get fromPointer =>
      IMetaDataDispenser.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IMetaDataDispenser;
}
