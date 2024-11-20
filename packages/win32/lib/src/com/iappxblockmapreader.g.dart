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
import 'iappxblockmapfile.g.dart';
import 'iappxblockmapfilesenumerator.g.dart';
import 'interface.g.dart';
import 'istream.g.dart';
import 'iunknown.g.dart';
import 'iuri.g.dart';

/// @nodoc
final IID_IAppxBlockMapReader = Guid.fromComponents(
  0x5efec991,
  0xbca3,
  0x42d1,
  Uint8List.fromList(const [0x9e, 0xc2, 0xe9, 0x2d, 0x60, 0x9e, 0xc2, 0x2a]),
);

/// Represents a read-only object model for block maps that provides access to
/// the file attributes and block hashes.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nn-appxpackaging-iappxblockmapreader>.
///
/// {@category com}
class IAppxBlockMapReader extends IUnknown implements ComInterface {
  /// Creates a new instance of [IAppxBlockMapReader] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IAppxBlockMapReader]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IAppxBlockMapReader(super.ptr)
    : _vtable = ptr.value.cast<IAppxBlockMapReaderVtbl>().ref;

  /// Creates a new instance of [IAppxBlockMapReader] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IAppxBlockMapReader] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IAppxBlockMapReader.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IAppxBlockMapReaderVtbl _vtable;
  late final _GetFileFn =
      _vtable.GetFile.asFunction<
        int Function(VTablePointer, PCWSTR, Pointer<VTablePointer>)
      >();
  late final _GetFilesFn =
      _vtable.GetFiles.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _GetHashMethodFn =
      _vtable.GetHashMethod.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _GetStreamFn =
      _vtable.GetStream.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();

  /// Retrieves data corresponding to a file in the block map with the specified
  /// file name.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxblockmapreader-getfile>.
  IAppxBlockMapFile? getFile(PCWSTR filename) {
    final file = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetFileFn(ptr, filename, file));
    if (hr$.isError) {
      free(file);
      throw WindowsException(hr$);
    }
    final result$ = file.value;
    free(file);
    if (result$.isNull) return null;
    return IAppxBlockMapFile(result$);
  }

  /// Retrieves an enumerator for traversing the files listed in the block map.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxblockmapreader-getfiles>.
  IAppxBlockMapFilesEnumerator? getFiles() {
    final enumerator = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetFilesFn(ptr, enumerator));
    if (hr$.isError) {
      free(enumerator);
      throw WindowsException(hr$);
    }
    final result$ = enumerator.value;
    free(enumerator);
    if (result$.isNull) return null;
    return IAppxBlockMapFilesEnumerator(result$);
  }

  /// Retrieves the URI for the hash algorithm used to create block hashes in
  /// the block map.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxblockmapreader-gethashmethod>.
  IUri? getHashMethod() {
    final hashMethod = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetHashMethodFn(ptr, hashMethod));
    if (hr$.isError) {
      free(hashMethod);
      throw WindowsException(hr$);
    }
    final result$ = hashMethod.value;
    free(hashMethod);
    if (result$.isNull) return null;
    return IUri(result$);
  }

  /// Retrieves a read-only stream that represents the XML content of the block
  /// map.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxblockmapreader-getstream>.
  IStream? getStream() {
    final blockMapStream = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetStreamFn(ptr, blockMapStream));
    if (hr$.isError) {
      free(blockMapStream);
      throw WindowsException(hr$);
    }
    final result$ = blockMapStream.value;
    free(blockMapStream);
    if (result$.isNull) return null;
    return IStream(result$);
  }

  @override
  String toString() => 'IAppxBlockMapReader(ptr: $ptr)';
}

/// @nodoc
base class IAppxBlockMapReaderVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR filename,
        Pointer<VTablePointer> file,
      )
    >
  >
  GetFile;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> enumerator)
    >
  >
  GetFiles;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> hashMethod)
    >
  >
  GetHashMethod;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> blockMapStream)
    >
  >
  GetStream;
}

@internal
final class IAppxBlockMapReaderCompanion
    extends ComCompanion<IAppxBlockMapReader> {
  const IAppxBlockMapReaderCompanion();

  @pragma('vm:prefer-inline')
  @override
  IAppxBlockMapReader Function(VTablePointer) get fromPointer =>
      IAppxBlockMapReader.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IAppxBlockMapReader;
}
