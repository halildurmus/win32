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
import 'interface.g.dart';
import 'istream.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IAppxFile = Guid.fromComponents(
  0x91df827b,
  0x94fd,
  0x468f,
  Uint8List.fromList(const [0x82, 0x7b, 0x57, 0xf4, 0x1b, 0x2f, 0x6f, 0x2e]),
);

/// Retrieves information about a payload or footprint file in a package.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nn-appxpackaging-iappxfile>.
///
/// {@category com}
class IAppxFile extends IUnknown implements ComInterface {
  /// Creates a new instance of [IAppxFile] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IAppxFile] interface.
  /// The [ptr] must not be [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IAppxFile(super.ptr) : _vtable = ptr.value.cast<IAppxFileVtbl>().ref;

  /// Creates a new instance of [IAppxFile] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IAppxFile] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IAppxFile.from(IUnknown interface, {bool releaseOriginal = false}) =>
      interface.cast(releaseOriginal: releaseOriginal);

  final IAppxFileVtbl _vtable;
  late final _GetCompressionOptionFn =
      _vtable.GetCompressionOption.asFunction<
        int Function(VTablePointer, Pointer<Int32>)
      >();
  late final _GetContentTypeFn = _vtable
      .GetContentType.asFunction<int Function(VTablePointer, Pointer<PWSTR>)>();
  late final _GetNameFn =
      _vtable.GetName.asFunction<int Function(VTablePointer, Pointer<PWSTR>)>();
  late final _GetSizeFn = _vtable
      .GetSize.asFunction<int Function(VTablePointer, Pointer<Uint64>)>();
  late final _GetStreamFn =
      _vtable.GetStream.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();

  /// Retrieves the compression option that is used to store the file in the
  /// package.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxfile-getcompressionoption>.
  APPX_COMPRESSION_OPTION getCompressionOption() {
    final compressionOption = loggingCalloc<Int32>();
    final hr$ = HRESULT(_GetCompressionOptionFn(ptr, compressionOption));
    if (hr$.isError) {
      free(compressionOption);
      throw WindowsException(hr$);
    }
    final result$ = compressionOption.value;
    free(compressionOption);
    return APPX_COMPRESSION_OPTION(result$);
  }

  /// Retrieves the content type of the file.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxfile-getcontenttype>.
  PWSTR getContentType() {
    final contentType = loggingCalloc<PWSTR>();
    final hr$ = HRESULT(_GetContentTypeFn(ptr, contentType));
    if (hr$.isError) {
      free(contentType);
      throw WindowsException(hr$);
    }
    final result$ = contentType.value;
    free(contentType);
    return result$;
  }

  /// Retrieves the name of the file, including its path relative to the package
  /// root directory.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxfile-getname>.
  PWSTR getName() {
    final fileName = loggingCalloc<PWSTR>();
    final hr$ = HRESULT(_GetNameFn(ptr, fileName));
    if (hr$.isError) {
      free(fileName);
      throw WindowsException(hr$);
    }
    final result$ = fileName.value;
    free(fileName);
    return result$;
  }

  /// Retrieves the uncompressed size of the file.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxfile-getsize>.
  int getSize() {
    final size = loggingCalloc<Uint64>();
    final hr$ = HRESULT(_GetSizeFn(ptr, size));
    if (hr$.isError) {
      free(size);
      throw WindowsException(hr$);
    }
    final result$ = size.value;
    free(size);
    return result$;
  }

  /// Gets a read-only stream that contains the uncompressed content of the
  /// file.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxfile-getstream>.
  IStream? getStream() {
    final stream = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetStreamFn(ptr, stream));
    if (hr$.isError) {
      free(stream);
      throw WindowsException(hr$);
    }
    final result$ = stream.value;
    free(stream);
    if (result$.isNull) return null;
    return IStream(result$);
  }

  @override
  String toString() => 'IAppxFile(ptr: $ptr)';
}

/// @nodoc
base class IAppxFileVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Int32> compressionOption)
    >
  >
  GetCompressionOption;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<PWSTR> contentType)
    >
  >
  GetContentType;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<PWSTR> fileName)>
  >
  GetName;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Uint64> size)>
  >
  GetSize;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> stream)
    >
  >
  GetStream;
}

@internal
final class IAppxFileCompanion extends ComCompanion<IAppxFile> {
  const IAppxFileCompanion();

  @pragma('vm:prefer-inline')
  @override
  IAppxFile Function(VTablePointer) get fromPointer => IAppxFile.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IAppxFile;
}
