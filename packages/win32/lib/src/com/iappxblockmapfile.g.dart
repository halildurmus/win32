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
import 'iappxblockmapblocksenumerator.g.dart';
import 'interface.g.dart';
import 'istream.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IAppxBlockMapFile = Guid.fromComponents(
  0x277672ac,
  0x4f63,
  0x42c1,
  Uint8List.fromList(const [0x8a, 0xbc, 0xbe, 0xae, 0x36, 0x0, 0xeb, 0x59]),
);

/// Represents a file in the block map.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nn-appxpackaging-iappxblockmapfile>.
///
/// {@category com}
class IAppxBlockMapFile extends IUnknown implements ComInterface {
  /// Creates a new instance of [IAppxBlockMapFile] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IAppxBlockMapFile]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IAppxBlockMapFile(super.ptr)
    : _vtable = ptr.value.cast<IAppxBlockMapFileVtbl>().ref;

  /// Creates a new instance of [IAppxBlockMapFile] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IAppxBlockMapFile] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IAppxBlockMapFile.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IAppxBlockMapFileVtbl _vtable;
  late final _GetBlocksFn =
      _vtable.GetBlocks.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _GetLocalFileHeaderSizeFn =
      _vtable.GetLocalFileHeaderSize.asFunction<
        int Function(VTablePointer, Pointer<Uint32>)
      >();
  late final _GetNameFn =
      _vtable.GetName.asFunction<int Function(VTablePointer, Pointer<PWSTR>)>();
  late final _GetUncompressedSizeFn =
      _vtable.GetUncompressedSize.asFunction<
        int Function(VTablePointer, Pointer<Uint64>)
      >();
  late final _ValidateFileHashFn =
      _vtable.ValidateFileHash.asFunction<
        int Function(VTablePointer, VTablePointer, Pointer<BOOL>)
      >();

  /// Retrieves an enumerator for traversing the blocks of a file listed in the
  /// block map.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxblockmapfile-getblocks>.
  IAppxBlockMapBlocksEnumerator? getBlocks() {
    final blocks = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetBlocksFn(ptr, blocks));
    if (hr$.isError) {
      free(blocks);
      throw WindowsException(hr$);
    }
    final result$ = blocks.value;
    free(blocks);
    if (result$.isNull) return null;
    return IAppxBlockMapBlocksEnumerator(result$);
  }

  /// Retrieves the size of the zip local file header of the associated zip file
  /// item.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxblockmapfile-getlocalfileheadersize>.
  int getLocalFileHeaderSize() {
    final lfhSize = loggingCalloc<Uint32>();
    final hr$ = HRESULT(_GetLocalFileHeaderSizeFn(ptr, lfhSize));
    if (hr$.isError) {
      free(lfhSize);
      throw WindowsException(hr$);
    }
    final result$ = lfhSize.value;
    free(lfhSize);
    return result$;
  }

  /// Retrieves the name of the associated zip file item.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxblockmapfile-getname>.
  PWSTR getName() {
    final name = loggingCalloc<PWSTR>();
    final hr$ = HRESULT(_GetNameFn(ptr, name));
    if (hr$.isError) {
      free(name);
      throw WindowsException(hr$);
    }
    final result$ = name.value;
    free(name);
    return result$;
  }

  /// Retrieves the uncompressed size of the associated zip file item.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxblockmapfile-getuncompressedsize>.
  int getUncompressedSize() {
    final size = loggingCalloc<Uint64>();
    final hr$ = HRESULT(_GetUncompressedSizeFn(ptr, size));
    if (hr$.isError) {
      free(size);
      throw WindowsException(hr$);
    }
    final result$ = size.value;
    free(size);
    return result$;
  }

  /// Validates the content of a file against the hashes stored in the block
  /// elements for this block map file.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxblockmapfile-validatefilehash>.
  bool validateFileHash(IStream? fileStream) {
    final isValid = loggingCalloc<BOOL>();
    final hr$ = HRESULT(
      _ValidateFileHashFn(ptr, fileStream?.ptr ?? nullptr, isValid),
    );
    if (hr$.isError) {
      free(isValid);
      throw WindowsException(hr$);
    }
    final result$ = isValid.value;
    free(isValid);
    return result$ != FALSE;
  }

  @override
  String toString() => 'IAppxBlockMapFile(ptr: $ptr)';
}

/// @nodoc
base class IAppxBlockMapFileVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> blocks)
    >
  >
  GetBlocks;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Uint32> lfhSize)>
  >
  GetLocalFileHeaderSize;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<PWSTR> name)>
  >
  GetName;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Uint64> size)>
  >
  GetUncompressedSize;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer fileStream,
        Pointer<BOOL> isValid,
      )
    >
  >
  ValidateFileHash;
}

@internal
final class IAppxBlockMapFileCompanion extends ComCompanion<IAppxBlockMapFile> {
  const IAppxBlockMapFileCompanion();

  @pragma('vm:prefer-inline')
  @override
  IAppxBlockMapFile Function(VTablePointer) get fromPointer =>
      IAppxBlockMapFile.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IAppxBlockMapFile;
}
