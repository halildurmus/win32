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
final IID_IShellLinkDataList = Guid.fromComponents(
  0x45e2b4ae,
  0xb1c3,
  0x11d0,
  Uint8List.fromList(const [0xb9, 0x2f, 0x0, 0xa0, 0xc9, 0x3, 0x12, 0xe1]),
);

/// Exposes methods that allow an application to attach extra data blocks to a
/// Shell link.
///
/// These methods add, copy, or remove data blocks.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nn-shobjidl_core-ishelllinkdatalist>.
///
/// {@category com}
class IShellLinkDataList extends IUnknown implements ComInterface {
  /// Creates a new instance of [IShellLinkDataList] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IShellLinkDataList]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IShellLinkDataList(super.ptr)
    : _vtable = ptr.value.cast<IShellLinkDataListVtbl>().ref;

  /// Creates a new instance of [IShellLinkDataList] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IShellLinkDataList] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IShellLinkDataList.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IShellLinkDataListVtbl _vtable;
  late final _AddDataBlockFn =
      _vtable.AddDataBlock.asFunction<int Function(VTablePointer, Pointer)>();
  late final _CopyDataBlockFn =
      _vtable.CopyDataBlock.asFunction<
        int Function(VTablePointer, int, Pointer<Pointer>)
      >();
  late final _RemoveDataBlockFn =
      _vtable.RemoveDataBlock.asFunction<int Function(VTablePointer, int)>();
  late final _GetFlagsFn = _vtable
      .GetFlags.asFunction<int Function(VTablePointer, Pointer<Uint32>)>();
  late final _SetFlagsFn =
      _vtable.SetFlags.asFunction<int Function(VTablePointer, int)>();

  /// Adds a data block to a link.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishelllinkdatalist-adddatablock>.
  @pragma('vm:prefer-inline')
  void addDataBlock(Pointer pDataBlock) {
    final hr$ = HRESULT(_AddDataBlockFn(ptr, pDataBlock));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves a copy of a link's data block.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishelllinkdatalist-copydatablock>.
  @pragma('vm:prefer-inline')
  void copyDataBlock(int dwSig, Pointer<Pointer> ppDataBlock) {
    final hr$ = HRESULT(_CopyDataBlockFn(ptr, dwSig, ppDataBlock));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Removes a data block from a link.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishelllinkdatalist-removedatablock>.
  @pragma('vm:prefer-inline')
  void removeDataBlock(int dwSig) {
    final hr$ = HRESULT(_RemoveDataBlockFn(ptr, dwSig));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets the current option settings.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishelllinkdatalist-getflags>.
  int getFlags() {
    final pdwFlags = loggingCalloc<Uint32>();
    final hr$ = HRESULT(_GetFlagsFn(ptr, pdwFlags));
    if (hr$.isError) {
      free(pdwFlags);
      throw WindowsException(hr$);
    }
    final result$ = pdwFlags.value;
    free(pdwFlags);
    return result$;
  }

  /// Sets the current option settings.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishelllinkdatalist-setflags>.
  @pragma('vm:prefer-inline')
  void setFlags(int dwFlags) {
    final hr$ = HRESULT(_SetFlagsFn(ptr, dwFlags));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IShellLinkDataList(ptr: $ptr)';
}

/// @nodoc
base class IShellLinkDataListVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer pDataBlock)>
  >
  AddDataBlock;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 dwSig,
        Pointer<Pointer> ppDataBlock,
      )
    >
  >
  CopyDataBlock;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Uint32 dwSig)>
  >
  RemoveDataBlock;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Uint32> pdwFlags)
    >
  >
  GetFlags;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Uint32 dwFlags)>
  >
  SetFlags;
}

@internal
final class IShellLinkDataListCompanion
    extends ComCompanion<IShellLinkDataList> {
  const IShellLinkDataListCompanion();

  @pragma('vm:prefer-inline')
  @override
  IShellLinkDataList Function(VTablePointer) get fromPointer =>
      IShellLinkDataList.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IShellLinkDataList;
}
