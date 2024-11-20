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
import 'iappxblockmapreader.g.dart';
import 'iappxmanifestreader.g.dart';
import 'iappxpackagereader.g.dart';
import 'iappxpackagewriter.g.dart';
import 'interface.g.dart';
import 'istream.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IAppxFactory = Guid.fromComponents(
  0xbeb94909,
  0xe451,
  0x438b,
  Uint8List.fromList(const [0xb5, 0xa7, 0xd7, 0x9e, 0x76, 0x7b, 0x75, 0xd8]),
);

/// Creates objects for reading and writing app packages.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nn-appxpackaging-iappxfactory>.
///
/// {@category com}
class IAppxFactory extends IUnknown implements ComInterface {
  /// Creates a new instance of [IAppxFactory] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IAppxFactory] interface.
  /// The [ptr] must not be [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IAppxFactory(super.ptr) : _vtable = ptr.value.cast<IAppxFactoryVtbl>().ref;

  /// Creates a new instance of [IAppxFactory] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IAppxFactory] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IAppxFactory.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IAppxFactoryVtbl _vtable;
  late final _CreatePackageWriterFn =
      _vtable.CreatePackageWriter.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          Pointer<APPX_PACKAGE_SETTINGS>,
          Pointer<VTablePointer>,
        )
      >();
  late final _CreatePackageReaderFn =
      _vtable.CreatePackageReader.asFunction<
        int Function(VTablePointer, VTablePointer, Pointer<VTablePointer>)
      >();
  late final _CreateManifestReaderFn =
      _vtable.CreateManifestReader.asFunction<
        int Function(VTablePointer, VTablePointer, Pointer<VTablePointer>)
      >();
  late final _CreateBlockMapReaderFn =
      _vtable.CreateBlockMapReader.asFunction<
        int Function(VTablePointer, VTablePointer, Pointer<VTablePointer>)
      >();
  late final _CreateValidatedBlockMapReaderFn =
      _vtable.CreateValidatedBlockMapReader.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          PCWSTR,
          Pointer<VTablePointer>,
        )
      >();

  /// Creates a write-only package object to which files can be added.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxfactory-createpackagewriter>.
  IAppxPackageWriter? createPackageWriter(
    IStream? outputStream,
    Pointer<APPX_PACKAGE_SETTINGS> settings,
  ) {
    final packageWriter = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _CreatePackageWriterFn(
        ptr,
        outputStream?.ptr ?? nullptr,
        settings,
        packageWriter,
      ),
    );
    if (hr$.isError) {
      free(packageWriter);
      throw WindowsException(hr$);
    }
    final result$ = packageWriter.value;
    free(packageWriter);
    if (result$.isNull) return null;
    return IAppxPackageWriter(result$);
  }

  /// Creates a read-only package reader from the contents provided by an
  /// IStream.
  ///
  /// This method does not validate the digital signature.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxfactory-createpackagereader>.
  IAppxPackageReader? createPackageReader(IStream? inputStream) {
    final packageReader = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _CreatePackageReaderFn(ptr, inputStream?.ptr ?? nullptr, packageReader),
    );
    if (hr$.isError) {
      free(packageReader);
      throw WindowsException(hr$);
    }
    final result$ = packageReader.value;
    free(packageReader);
    if (result$.isNull) return null;
    return IAppxPackageReader(result$);
  }

  /// Creates a read-only manifest object model from contents provided by an
  /// IStream.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxfactory-createmanifestreader>.
  IAppxManifestReader? createManifestReader(IStream? inputStream) {
    final manifestReader = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _CreateManifestReaderFn(ptr, inputStream?.ptr ?? nullptr, manifestReader),
    );
    if (hr$.isError) {
      free(manifestReader);
      throw WindowsException(hr$);
    }
    final result$ = manifestReader.value;
    free(manifestReader);
    if (result$.isNull) return null;
    return IAppxManifestReader(result$);
  }

  /// Creates a read-only block map object model from contents provided by an
  /// IStream.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxfactory-createblockmapreader>.
  IAppxBlockMapReader? createBlockMapReader(IStream? inputStream) {
    final blockMapReader = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _CreateBlockMapReaderFn(ptr, inputStream?.ptr ?? nullptr, blockMapReader),
    );
    if (hr$.isError) {
      free(blockMapReader);
      throw WindowsException(hr$);
    }
    final result$ = blockMapReader.value;
    free(blockMapReader);
    if (result$.isNull) return null;
    return IAppxBlockMapReader(result$);
  }

  /// Creates a read-only block map object model from contents provided by an
  /// IStream and a digital signature.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxfactory-createvalidatedblockmapreader>.
  IAppxBlockMapReader? createValidatedBlockMapReader(
    IStream? blockMapStream,
    PCWSTR signatureFileName,
  ) {
    final blockMapReader = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _CreateValidatedBlockMapReaderFn(
        ptr,
        blockMapStream?.ptr ?? nullptr,
        signatureFileName,
        blockMapReader,
      ),
    );
    if (hr$.isError) {
      free(blockMapReader);
      throw WindowsException(hr$);
    }
    final result$ = blockMapReader.value;
    free(blockMapReader);
    if (result$.isNull) return null;
    return IAppxBlockMapReader(result$);
  }

  @override
  String toString() => 'IAppxFactory(ptr: $ptr)';
}

/// @nodoc
base class IAppxFactoryVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer outputStream,
        Pointer<APPX_PACKAGE_SETTINGS> settings,
        Pointer<VTablePointer> packageWriter,
      )
    >
  >
  CreatePackageWriter;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer inputStream,
        Pointer<VTablePointer> packageReader,
      )
    >
  >
  CreatePackageReader;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer inputStream,
        Pointer<VTablePointer> manifestReader,
      )
    >
  >
  CreateManifestReader;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer inputStream,
        Pointer<VTablePointer> blockMapReader,
      )
    >
  >
  CreateBlockMapReader;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer blockMapStream,
        PCWSTR signatureFileName,
        Pointer<VTablePointer> blockMapReader,
      )
    >
  >
  CreateValidatedBlockMapReader;
}

@internal
final class IAppxFactoryCompanion extends ComCompanion<IAppxFactory> {
  const IAppxFactoryCompanion();

  @pragma('vm:prefer-inline')
  @override
  IAppxFactory Function(VTablePointer) get fromPointer => IAppxFactory.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IAppxFactory;
}
