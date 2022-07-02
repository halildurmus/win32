// ivector.dart

// ignore_for_file: constant_identifier_names, non_constant_identifier_names,
// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../api_ms_win_core_winrt_string_l1_1_0.dart';
import '../../../com/iinspectable.dart';
import '../../../combase.dart';
import '../../../exceptions.dart';
import '../../../extensions/comobject_pointer.dart';
import '../../../macros.dart';
import '../../../types.dart';
import '../../../utils.dart';
import '../../../winrt/internal/winrt_vector_helper.dart';
import '../../../winrt_helpers.dart';
import 'iiterable.dart';
import 'iiterator.dart';
import 'ivectorview.dart';

/// @nodoc
const IID_IVector = '{913337E9-11A1-4345-A3A2-4E7F956E222D}';

/// {@category Interface}
/// {@category winrt}
class IVector<T> extends IInspectable implements IIterable<T> {
  // vtable begins at 6, is 12 entries long.
  final T Function(Pointer<COMObject>)? _creator;
  final Allocator _allocator;

  /// Creates an instance of `IVector<T>` using the given `ptr`.
  ///
  /// `T` must be a either a `String` or a `WinRT` type. e.g. `IHostName`,
  /// `IStorageFile` etc.
  ///
  /// ```dart
  /// ...
  /// final vector = IVector<String>.fromRawPointer(ptr);
  /// ```
  ///
  /// `creator` must be specified if the `T` is a `WinRT` type.
  /// e.g. `IHostName.fromRawPointer`, `IStorageFile.fromRawPointer` etc.
  ///
  /// ```dart
  /// ...
  /// final allocator = Arena();
  /// final vector = IVector<IHostName>.fromRawPointer(ptr,
  ///     creator: IHostName.fromRawPointer, allocator: allocator);
  /// ```
  ///
  /// It is the caller's responsibility to deallocate the returned pointers
  /// from methods like `GetAt`, `GetView` and `toList` when they are finished
  /// with it. A FFI `Arena` may be passed as a custom allocator for ease of
  /// memory management.
  ///
  /// {@category winrt}
  IVector.fromRawPointer(super.ptr,
      {T Function(Pointer<COMObject>)? creator, Allocator allocator = calloc})
      : _creator = creator,
        _allocator = allocator {
    // TODO: Need to update this once we add support for types like `int`,
    // `bool`, `double`, `GUID`, `DateTime`, `Point`, `Size` etc.
    if (![String].contains(T) && _creator == null) {
      throw ArgumentError(
          '`creator` parameter must be specified for WinRT types!');
    }
  }

  /// Returns the item at the specified index in the vector.
  T getAt(int index) {
    switch (T) {
      // TODO: Need to update this once we add support for types like `int`,
      // `bool`, `double`, `GUID`, `DateTime`, `Point`, `Size` etc.
      case String:
        return _getAt_String(index) as T;
      // Handle WinRT types
      default:
        return _creator!(_getAt_COMObject(index));
    }
  }

  Pointer<COMObject> _getAt_COMObject(int index) {
    final retValuePtr = _allocator<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
          Pointer,
          Uint32,
          Pointer<COMObject>,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int,
          Pointer<COMObject>,
        )>()(ptr.ref.lpVtbl, index, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr;
  }

  String _getAt_String(int index) {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
            Pointer,
            Uint32,
            Pointer<HSTRING>,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int,
            Pointer<HSTRING>,
          )>()(ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.toDartString();
      return retValue;
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  /// Gets the number of items in the vector.
  int get size {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
            Pointer,
            Pointer<Uint32>,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32>,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  /// Returns an immutable view of the vector.
  List<T> get getView {
    final retValuePtr = _allocator<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(8)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
          Pointer,
          Pointer<COMObject>,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<COMObject>,
        )>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return IVectorView.fromRawPointer(retValuePtr,
            creator: _creator, allocator: _allocator)
        .toList();
  }

  /// Retrieves the index of a specified item in the vector.
  bool indexOf(T value, Pointer<Uint32> index) {
    switch (T) {
      // TODO: Need to update this once we add support for types like `int`,
      // `bool`, `double`, `GUID`, `DateTime`, `Point`, `Size` etc.
      case String:
        return _indexOf_String(value as String, index);
      // Handle WinRT types
      default:
        return _indexOf_COMObject(value, index);
    }
  }

  bool _indexOf_COMObject(T value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
            Pointer,
            COMObject,
            Pointer<Uint32>,
            Pointer<Bool>,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            COMObject,
            Pointer<Uint32>,
            Pointer<Bool>,
          )>()(
        ptr.ref.lpVtbl,
        (value as IInspectable).ptr.ref,
        index,
        retValuePtr,
      );

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  bool _indexOf_String(String value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();
    final hValue = convertToHString(value);

    try {
      final hr = ptr.ref.vtable
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
            Pointer,
            HSTRING,
            Pointer<Uint32>,
            Pointer<Bool>,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int,
            Pointer<Uint32>,
            Pointer<Bool>,
          )>()(ptr.ref.lpVtbl, hValue, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
      WindowsDeleteString(hValue);
    }
  }

  /// Sets the value at the specified index in the vector.
  void setAt(int index, T value) {
    switch (T) {
      // TODO: Need to update this once we add support for types like `int`,
      // `bool`, `double`, `GUID`, `DateTime`, `Point`, `Size` etc.
      case String:
        return _setAt_String(index, value as String);
      // Handle WinRT types
      default:
        return _setAt_COMObject(index, value);
    }
  }

  void _setAt_COMObject(int index, T value) {
    final hr = ptr.ref.vtable
        .elementAt(10)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
          Pointer,
          Uint32,
          COMObject,
        )>>>()
        .value
        .asFunction<int Function(Pointer, int, COMObject)>()(
      ptr.ref.lpVtbl,
      index,
      (value as IInspectable).ptr.ref,
    );

    if (FAILED(hr)) throw WindowsException(hr);
  }

  void _setAt_String(int index, String value) {
    final hValue = convertToHString(value);

    try {
      final hr = ptr.ref.vtable
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
            Pointer,
            Uint32,
            HSTRING,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int,
            int,
          )>()(
        ptr.ref.lpVtbl,
        index,
        hValue,
      );

      if (FAILED(hr)) throw WindowsException(hr);
    } finally {
      WindowsDeleteString(hValue);
    }
  }

  /// Inserts an item at a specified index in the vector.
  void insertAt(int index, T value) {
    switch (T) {
      // TODO: Need to update this once we add support for types like `int`,
      // `bool`, `double`, `GUID`, `DateTime`, `Point`, `Size` etc.
      case String:
        return _insertAt_String(index, value as String);
      // Handle WinRT types
      default:
        return _insertAt_COMObject(index, value);
    }
  }

  void _insertAt_COMObject(int index, T value) {
    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
          Pointer,
          Uint32,
          COMObject,
        )>>>()
        .value
        .asFunction<int Function(Pointer, int, COMObject)>()(
      ptr.ref.lpVtbl,
      index,
      (value as IInspectable).ptr.ref,
    );

    if (FAILED(hr)) throw WindowsException(hr);
  }

  void _insertAt_String(int index, String value) {
    final hValue = convertToHString(value);

    try {
      final hr = ptr.ref.vtable
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
            Pointer,
            Uint32,
            HSTRING,
          )>>>()
          .value
          .asFunction<int Function(Pointer, int, int)>()(
        ptr.ref.lpVtbl,
        index,
        hValue,
      );

      if (FAILED(hr)) throw WindowsException(hr);
    } finally {
      WindowsDeleteString(hValue);
    }
  }

  /// Removes the item at the specified index in the vector.
  void removeAt(int index) {
    final hr = ptr.ref.vtable
        .elementAt(12)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
          Pointer,
          Uint32,
        )>>>()
        .value
        .asFunction<int Function(Pointer, int)>()(
      ptr.ref.lpVtbl,
      index,
    );

    if (FAILED(hr)) throw WindowsException(hr);
  }

  /// Appends an item to the end of the vector.
  void append(T value) {
    switch (T) {
      // TODO: Need to update this once we add support for types like `int`,
      // `bool`, `double`, `GUID`, `DateTime`, `Point`, `Size` etc.
      case String:
        return _append_String(value as String);
      // Handle WinRT types
      default:
        return _append_COMObject(value);
    }
  }

  void _append_COMObject(T value) {
    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
              Pointer,
              COMObject,
            )>>>()
            .value
            .asFunction<int Function(Pointer, COMObject)>()(
        ptr.ref.lpVtbl, (value as IInspectable).ptr.ref);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  void _append_String(String value) {
    final hValue = convertToHString(value);

    try {
      final hr = ptr.ref.vtable
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
            Pointer,
            HSTRING,
          )>>>()
          .value
          .asFunction<int Function(Pointer, int)>()(ptr.ref.lpVtbl, hValue);

      if (FAILED(hr)) throw WindowsException(hr);
    } finally {
      WindowsDeleteString(hValue);
    }
  }

  /// Removes the last item from the vector.
  void removeAtEnd() {
    final hr = ptr.ref.vtable
        .elementAt(14)
        .cast<Pointer<NativeFunction<HRESULT Function(Pointer)>>>()
        .value
        .asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  /// Removes all items from the vector.
  void clear() {
    final hr = ptr.ref.vtable
        .elementAt(15)
        .cast<Pointer<NativeFunction<HRESULT Function(Pointer)>>>()
        .value
        .asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  /// Retrieves multiple items from the the vector beginning at the given index.
  int getMany(int startIndex, Pointer<NativeType> items) {
    switch (T) {
      // TODO: Need to update this once we add support for types like `int`,
      // `bool`, `double`, `GUID`, `DateTime`, `Point`, `Size` etc.
      case String:
        return _getMany_String(startIndex, items.cast());
      // Handle WinRT types
      default:
        return _getMany_COMObject(startIndex, items.cast());
    }
  }

  int _getMany_COMObject(int startIndex, Pointer<COMObject> items) {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(16)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                Pointer,
                Uint32,
                Uint32,
                Pointer<COMObject>,
                Pointer<Uint32>,
              )>>>()
              .value
              .asFunction<
                  int Function(
                Pointer,
                int,
                int,
                Pointer<COMObject>,
                Pointer<Uint32>,
              )>()(
          ptr.ref.lpVtbl, startIndex, size - startIndex, items, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int _getMany_String(int startIndex, Pointer<HSTRING> items) {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(16)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                Pointer,
                Uint32,
                Uint32,
                Pointer<HSTRING>,
                Pointer<Uint32>,
              )>>>()
              .value
              .asFunction<
                  int Function(
                Pointer,
                int,
                int,
                Pointer<HSTRING>,
                Pointer<Uint32>,
              )>()(
          ptr.ref.lpVtbl, startIndex, size - startIndex, items, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  /// Replaces all the items in the vector with the specified items.
  void replaceAll(List<T> items) {
    switch (T) {
      // TODO: Need to update this once we add support for types like `int`,
      // `bool`, `double`, `GUID`, `DateTime`, `Point`, `Size` etc.
      case String:
        return _replaceAll_String(items as List<String>);
      // Handle WinRT types
      default:
        return _replaceAll_COMObject(items as List<IInspectable>);
    }
  }

  void _replaceAll_COMObject(List<IInspectable> items) {
    final pArray = calloc<COMObject>(items.length);
    for (var i = 0; i < items.length; i++) {
      pArray[i] = items.elementAt(i).ptr.ref;
    }

    try {
      final hr = ptr.ref.vtable
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
            Pointer,
            Uint32,
            Pointer<COMObject>,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int,
            Pointer<COMObject>,
          )>()(ptr.ref.lpVtbl, items.length, pArray);

      if (FAILED(hr)) throw WindowsException(hr);
    } finally {
      free(pArray);
    }
  }

  void _replaceAll_String(List<String> items) {
    final handles = <int>[];
    final pArray = calloc<HSTRING>(items.length);
    for (var i = 0; i < items.length; i++) {
      pArray[i] = convertToHString(items.elementAt(i));
      handles.add(pArray[i]);
    }

    try {
      final hr = ptr.ref.vtable
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
            Pointer,
            Uint32,
            Pointer<HSTRING>,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int,
            Pointer<HSTRING>,
          )>()(ptr.ref.lpVtbl, items.length, pArray);

      if (FAILED(hr)) throw WindowsException(hr);
    } finally {
      free(pArray);
      for (final handle in handles) {
        WindowsDeleteString(handle);
      }
    }
  }

  /// Creates a `List<T>` from the `IVector<T>`.
  List<T> toList() {
    if (size == 0) return [];
    return VectorHelper(_creator, getMany, size, allocator: _allocator)
        .toList();
  }

  // IID_IIterable is always the second item on the iids list for IVector
  late final _iIterable = IIterable<T>.fromRawPointer(toInterface(iids[1]),
      creator: _creator, allocator: _allocator);

  @override
  IIterator<T> first() => _iIterable.first();
}
