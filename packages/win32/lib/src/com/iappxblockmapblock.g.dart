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
final IID_IAppxBlockMapBlock = Guid.fromComponents(
  0x75cf3930,
  0x3244,
  0x4fe0,
  Uint8List.fromList(const [0xa8, 0xc8, 0xe0, 0xbc, 0xb2, 0x70, 0xb8, 0x89]),
);

/// Provides a read-only object that represents an individual block within a
/// file contained in the block map file (AppxBlockMap.xml) for the App package.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nn-appxpackaging-iappxblockmapblock>.
///
/// {@category com}
class IAppxBlockMapBlock extends IUnknown implements ComInterface {
  /// Creates a new instance of [IAppxBlockMapBlock] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IAppxBlockMapBlock]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IAppxBlockMapBlock(super.ptr)
    : _vtable = ptr.value.cast<IAppxBlockMapBlockVtbl>().ref;

  /// Creates a new instance of [IAppxBlockMapBlock] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IAppxBlockMapBlock] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IAppxBlockMapBlock.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IAppxBlockMapBlockVtbl _vtable;
  late final _GetHashFn =
      _vtable.GetHash.asFunction<
        int Function(VTablePointer, Pointer<Uint32>, Pointer<Pointer<Uint8>>)
      >();
  late final _GetCompressedSizeFn =
      _vtable.GetCompressedSize.asFunction<
        int Function(VTablePointer, Pointer<Uint32>)
      >();

  /// Retrieves the hash value of the block.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxblockmapblock-gethash>.
  @pragma('vm:prefer-inline')
  void getHash(Pointer<Uint32> bufferSize, Pointer<Pointer<Uint8>> buffer) {
    final hr$ = HRESULT(_GetHashFn(ptr, bufferSize, buffer));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves compressed size of the block.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxblockmapblock-getcompressedsize>.
  int getCompressedSize() {
    final size = loggingCalloc<Uint32>();
    final hr$ = HRESULT(_GetCompressedSizeFn(ptr, size));
    if (hr$.isError) {
      free(size);
      throw WindowsException(hr$);
    }
    final result$ = size.value;
    free(size);
    return result$;
  }

  @override
  String toString() => 'IAppxBlockMapBlock(ptr: $ptr)';
}

/// @nodoc
base class IAppxBlockMapBlockVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Uint32> bufferSize,
        Pointer<Pointer<Uint8>> buffer,
      )
    >
  >
  GetHash;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Uint32> size)>
  >
  GetCompressedSize;
}

@internal
final class IAppxBlockMapBlockCompanion
    extends ComCompanion<IAppxBlockMapBlock> {
  const IAppxBlockMapBlockCompanion();

  @pragma('vm:prefer-inline')
  @override
  IAppxBlockMapBlock Function(VTablePointer) get fromPointer =>
      IAppxBlockMapBlock.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IAppxBlockMapBlock;
}
