// iiterator.dart

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../api_ms_win_core_winrt_string_l1_1_0.dart';
import '../com/iinspectable.dart';
import '../combase.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../types.dart';
import '../utils.dart';
import '../winrt_helpers.dart';

/// @nodoc
const IID_IIterator_String = '{8C304EBB-6615-50A4-8829-879ECD443236}';

/// {@category Interface}
/// {@category winrt}
class IIterator<T> extends IInspectable {
  // vtable begins at 6, is 4 entries long.
  final T Function(Pointer<COMObject>)? _creator;
  final Allocator _allocator;

  /// Creates an instance of `Iterator<T>` using the given `ptr`.
  ///
  /// `T` must be a either a `String` or a `WinRT` type. e.g. `IHostName`,
  /// `IStorageFile` etc.
  ///
  /// ```dart
  /// ...
  /// final iterator = IIterator<String>(ptr);
  /// ```
  ///
  /// `creator` must be specified if the `T` is a `WinRT` type.
  /// e.g. `IHostName.new`, `IStorageFile.new` etc.
  ///
  /// ```dart
  /// ...
  /// final allocator = Arena();
  /// final iterator = IIterator<IHostName>(ptr, creator: IHostName.new,
  ///     allocator: allocator);
  /// ```
  ///
  /// It is the caller's responsibility to deallocate the returned pointer
  /// from the `Current` method when they are finished with it. A FFI `Arena`
  /// may be passed as a custom allocator for ease of memory management.
  ///
  /// {@category winrt}
  IIterator(super.ptr,
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

  /// Gets the current item in the collection.
  T get Current {
    switch (T) {
      // TODO: Need to update this once we add support for types like `int`,
      // `bool`, `double`, `GUID`, `DateTime`, `Point`, `Size` etc.
      case String:
        return _Current_String() as T;
      // Handle WinRT types
      default:
        return _creator!(_Current_COMObject());
    }
  }

  Pointer<COMObject> _Current_COMObject() {
    final retValuePtr = _allocator<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<COMObject>)>>>()
            .value
            .asFunction<int Function(Pointer, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr;
  }

  String _Current_String() {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.lpVtbl.value
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(Pointer, Pointer<HSTRING>)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<HSTRING>)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.toDartString();
      return retValue;
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  /// Gets a value that indicates whether the iterator refers to a current item
  /// or is at the end of the collection.
  bool get HasCurrent {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<Bool>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Bool>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  /// Advances the iterator to the next item in the collection.
  bool MoveNext() {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<Bool>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Bool>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  /// Retrieves multiple items from the iterator.
  ///
  /// `capacity` must be equal to the capacity of the `items` pointer.
  int GetMany(Pointer<NativeType> items, int capacity) {
    switch (T) {
      // TODO: Need to update this once we add support for types like `int`,
      // `bool`, `double`, `GUID`, `DateTime`, `Point`, `Size` etc.
      case String:
        return _GetMany_String(items.cast(), capacity);
      // Handle WinRT types
      default:
        return _GetMany_COMObject(items.cast(), capacity);
    }
  }

  int _GetMany_COMObject(Pointer<COMObject> items, int capacity) {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(Pointer, Uint32, Pointer<COMObject>,
                              Pointer<Uint32>)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer, int, Pointer<COMObject>, Pointer<Uint32>)>()(
          ptr.ref.lpVtbl, capacity, items, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int _GetMany_String(Pointer<HSTRING> items, int capacity) {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(Pointer, Uint32, Pointer<HSTRING>,
                              Pointer<Uint32>)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer, int, Pointer<HSTRING>, Pointer<Uint32>)>()(
          ptr.ref.lpVtbl, capacity, items, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
