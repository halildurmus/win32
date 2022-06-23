// iiterable.dart

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../com/iinspectable.dart';
import '../../../combase.dart';
import '../../../exceptions.dart';
import '../../../macros.dart';
import '../../../types.dart';
import 'iiterator.dart';

/// @nodoc
const IID_IIterable_String = '{E2FCC7C1-3BFC-5A0B-B2B0-72E769D1CB7E}';

/// {@category Interface}
/// {@category winrt}
class IIterable<T> extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  final T Function(Pointer<COMObject>)? _creator;
  final Allocator _allocator;

  /// Creates an instance of `IIterable<T>` using the given `ptr`.
  ///
  /// `T` must be a either a `String` or a `WinRT` type. e.g. `IHostName`,
  /// `IStorageFile` etc.
  ///
  /// ```dart
  /// ...
  /// final iterable = IIterable<String>.fromRawPointer(ptr);
  /// ```
  ///
  /// `creator` must be specified if the `T` is a `WinRT` type.
  /// e.g. `IHostName.fromRawPointer`, `IStorageFile.fromRawPointer` etc.
  ///
  /// ```dart
  /// ...
  /// final allocator = Arena();
  /// final iterable = IIterable<IHostName>.fromRawPointer(ptr,
  ///     creator: IHostName.fromRawPointer, allocator: allocator);
  /// ```
  ///
  /// It is the caller's responsibility to deallocate the returned pointer
  /// from the `First` method when they are finished with it. A FFI `Arena`
  /// may be passed as a custom allocator for ease of memory management.
  ///
  /// {@category winrt}
  IIterable.fromRawPointer(super.ptr,
      {T Function(Pointer<COMObject>)? creator, Allocator allocator = calloc})
      : _creator = creator,
        _allocator = allocator {
    // TODO: Need to update this once we add support for types like `int`,
    // `bool`, `double`, `GUID`, `DateTime`, `Point`, `Size` etc.
    if (![String].contains(T) && creator == null) {
      throw ArgumentError(
          '`creator` parameter must be specified for WinRT types!');
    }
  }

  /// Returns an iterator for the items in the collection.
  IIterator<T> first() {
    final retValuePtr = _allocator<COMObject>();

    final hr = ptr.ref.lpVtbl.value
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<COMObject>)>>>()
            .value
            .asFunction<int Function(Pointer, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return IIterator.fromRawPointer(retValuePtr,
        creator: _creator, allocator: _allocator);
  }
}
