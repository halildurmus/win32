// ivector.dart

// ignore_for_file: constant_identifier_names, non_constant_identifier_names,
// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../api_ms_win_core_winrt_string_l1_1_0.dart';
import '../com/iinspectable.dart';
import '../combase.dart';
import '../exceptions.dart';
import '../extensions/comobject_pointer.dart';
import '../macros.dart';
import '../types.dart';
import '../utils.dart';
import '../winrt/internal/winrt_vector_helper.dart';
import '../winrt_helpers.dart';
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
  /// final vector = IVector<String>(ptr);
  /// ```
  ///
  /// `creator` must be specified if the `T` is a `WinRT` type.
  /// e.g. `IHostName.new`, `IStorageFile.new` etc.
  ///
  /// ```dart
  /// ...
  /// final allocator = Arena();
  /// final vector =
  ///     IVector<IHostName>(ptr, creator: IHostName.new, allocator: allocator);
  /// ```
  ///
  /// It is the caller's responsibility to deallocate the returned pointers
  /// from methods like `GetAt`, `GetView` and `toList` when they are finished
  /// with it. A FFI `Arena` may be passed as a custom allocator for ease of
  /// memory management.
  ///
  /// {@category winrt}
  IVector(super.ptr,
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
  T GetAt(int index) {
    switch (T) {
      // TODO: Need to update this once we add support for types like `int`,
      // `bool`, `double`, `GUID`, `DateTime`, `Point`, `Size` etc.
      case String:
        return _GetAt_String(index) as T;
      // Handle WinRT types
      default:
        return _creator!(_GetAt_COMObject(index));
    }
  }

  Pointer<COMObject> _GetAt_COMObject(int index) {
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

  String _GetAt_String(int index) {
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
  int get Size {
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
  List<T> get GetView {
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

    return IVectorView(retValuePtr, creator: _creator, allocator: _allocator)
        .toList();
  }

  /// Retrieves the index of a specified item in the vector.
  bool IndexOf(T value, Pointer<Uint32> index) {
    switch (T) {
      // TODO: Need to update this once we add support for types like `int`,
      // `bool`, `double`, `GUID`, `DateTime`, `Point`, `Size` etc.
      case String:
        return _IndexOf_String(value as String, index);
      // Handle WinRT types
      default:
        return _IndexOf_COMObject(value, index);
    }
  }

  bool _IndexOf_COMObject(T value, Pointer<Uint32> index) {
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

  bool _IndexOf_String(String value, Pointer<Uint32> index) {
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
  void SetAt(int index, T value) {
    switch (T) {
      // TODO: Need to update this once we add support for types like `int`,
      // `bool`, `double`, `GUID`, `DateTime`, `Point`, `Size` etc.
      case String:
        return _SetAt_String(index, value as String);
      // Handle WinRT types
      default:
        return _SetAt_COMObject(index, value);
    }
  }

  void _SetAt_COMObject(int index, T value) {
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

  void _SetAt_String(int index, String value) {
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
  void InsertAt(int index, T value) {
    switch (T) {
      // TODO: Need to update this once we add support for types like `int`,
      // `bool`, `double`, `GUID`, `DateTime`, `Point`, `Size` etc.
      case String:
        return _InsertAt_String(index, value as String);
      // Handle WinRT types
      default:
        return _InsertAt_COMObject(index, value);
    }
  }

  void _InsertAt_COMObject(int index, T value) {
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

  void _InsertAt_String(int index, String value) {
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
  void RemoveAt(int index) {
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
  void Append(T value) {
    switch (T) {
      // TODO: Need to update this once we add support for types like `int`,
      // `bool`, `double`, `GUID`, `DateTime`, `Point`, `Size` etc.
      case String:
        return _Append_String(value as String);
      // Handle WinRT types
      default:
        return _Append_COMObject(value);
    }
  }

  void _Append_COMObject(T value) {
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

  void _Append_String(String value) {
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
  void RemoveAtEnd() {
    final hr = ptr.ref.vtable
        .elementAt(14)
        .cast<Pointer<NativeFunction<HRESULT Function(Pointer)>>>()
        .value
        .asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  /// Removes all items from the vector.
  void Clear() {
    final hr = ptr.ref.vtable
        .elementAt(15)
        .cast<Pointer<NativeFunction<HRESULT Function(Pointer)>>>()
        .value
        .asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  /// Retrieves multiple items from the the vector beginning at the given index.
  int GetMany(int startIndex, Pointer<NativeType> items) {
    switch (T) {
      // TODO: Need to update this once we add support for types like `int`,
      // `bool`, `double`, `GUID`, `DateTime`, `Point`, `Size` etc.
      case String:
        return _GetMany_String(startIndex, items.cast());
      // Handle WinRT types
      default:
        return _GetMany_COMObject(startIndex, items.cast());
    }
  }

  int _GetMany_COMObject(int startIndex, Pointer<COMObject> items) {
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
          ptr.ref.lpVtbl, startIndex, Size - startIndex, items, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int _GetMany_String(int startIndex, Pointer<HSTRING> items) {
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
          ptr.ref.lpVtbl, startIndex, Size - startIndex, items, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  /// Replaces all the items in the vector with the specified items.
  void ReplaceAll(List<T> items) {
    switch (T) {
      // TODO: Need to update this once we add support for types like `int`,
      // `bool`, `double`, `GUID`, `DateTime`, `Point`, `Size` etc.
      case String:
        return _ReplaceAll_String(items as List<String>);
      // Handle WinRT types
      default:
        return _ReplaceAll_COMObject(items as List<IInspectable>);
    }
  }

  void _ReplaceAll_COMObject(List<IInspectable> items) {
    final pArray = calloc<COMObject>(items.length);
    for (var i = 0; i < items.length; i++) {
      final pElement = items.elementAt(i).ptr;
      pArray[i] = pElement.ref.lpVtbl;
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

  void _ReplaceAll_String(List<String> items) {
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
    if (Size == 0) return [];
    return VectorHelper(_creator, GetMany, Size, allocator: _allocator)
        .toList();
  }

  // IID_IIterable is always the second item on the iids list for IVector
  late final _iIterable =
      IIterable<T>(toInterface(iids[1]), creator: _creator, length: Size);

  @override
  IIterator<T> First() => _iIterable.First();
}
