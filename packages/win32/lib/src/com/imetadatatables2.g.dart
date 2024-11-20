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
import 'imetadatatables.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IMetaDataTables2 = Guid.fromComponents(
  0xbadb5f70,
  0x58da,
  0x43a9,
  Uint8List.fromList(const [0xa1, 0xc6, 0xd7, 0x48, 0x19, 0xf1, 0x9b, 0x15]),
);

/// Extends IMetaDataTables to include methods for working with metadata
/// streams.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nn-rometadataapi-imetadatatables2>.
///
/// {@category com}
class IMetaDataTables2 extends IMetaDataTables implements ComInterface {
  /// Creates a new instance of [IMetaDataTables2] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IMetaDataTables2]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IMetaDataTables2(super.ptr)
    : _vtable = ptr.value.cast<IMetaDataTables2Vtbl>().ref;

  /// Creates a new instance of [IMetaDataTables2] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IMetaDataTables2] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IMetaDataTables2.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IMetaDataTables2Vtbl _vtable;
  late final _GetMetaDataStorageFn =
      _vtable.GetMetaDataStorage.asFunction<
        int Function(VTablePointer, Pointer<Pointer>, Pointer<Uint32>)
      >();
  late final _GetMetaDataStreamInfoFn =
      _vtable.GetMetaDataStreamInfo.asFunction<
        int Function(
          VTablePointer,
          int,
          Pointer<Pointer<Int8>>,
          Pointer<Pointer>,
          Pointer<Uint32>,
        )
      >();

  /// Gets the size and contents of the metadata stored in the specified
  /// section.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadatatables2-getmetadatastorage>.
  @pragma('vm:prefer-inline')
  void getMetaDataStorage(Pointer<Pointer> ppvMd, Pointer<Uint32> pcbMd) {
    final hr$ = HRESULT(_GetMetaDataStorageFn(ptr, ppvMd, pcbMd));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets the name, size, and contents of the metadata stream at the specified
  /// index.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadatatables2-getmetadatastreaminfo>.
  @pragma('vm:prefer-inline')
  void getMetaDataStreamInfo(
    int ix,
    Pointer<Pointer<Int8>> ppchName,
    Pointer<Pointer> ppv,
    Pointer<Uint32> pcb,
  ) {
    final hr$ = HRESULT(_GetMetaDataStreamInfoFn(ptr, ix, ppchName, ppv, pcb));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IMetaDataTables2(ptr: $ptr)';
}

/// @nodoc
base class IMetaDataTables2Vtbl extends Struct {
  external IMetaDataTablesVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Pointer> ppvMd,
        Pointer<Uint32> pcbMd,
      )
    >
  >
  GetMetaDataStorage;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 ix,
        Pointer<Pointer<Int8>> ppchName,
        Pointer<Pointer> ppv,
        Pointer<Uint32> pcb,
      )
    >
  >
  GetMetaDataStreamInfo;
}

@internal
final class IMetaDataTables2Companion extends ComCompanion<IMetaDataTables2> {
  const IMetaDataTables2Companion();

  @pragma('vm:prefer-inline')
  @override
  IMetaDataTables2 Function(VTablePointer) get fromPointer =>
      IMetaDataTables2.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IMetaDataTables2;
}
