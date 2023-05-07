// iunknown.dart

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../utils.dart';

/// @nodoc
const IID_IUnknown = '{00000000-0000-0000-c000-000000000046}';

/// Enables clients to get pointers to other interfaces on a given object
/// through the QueryInterface method, and manage the existence of the
/// object through the AddRef and Release methods. All other COM interfaces
/// are inherited, directly or indirectly, from IUnknown. Therefore, the
/// three methods in IUnknown are the first entries in the vtable for every
/// interface.
///
/// {@category Interface}
/// {@category com}
class IUnknown {
  // vtable begins at 0, is 3 entries long.
  Pointer<COMObject> ptr;

  IUnknown(this.ptr) {
    if (!ptr.ref.isNull) {
      _finalizer.attach(this, ptr, detach: this);
    }
  }

  static final _finalizer = Finalizer<Pointer<COMObject>>((ptr) {
    _release(ptr);
    free(ptr);
  });

  static int _release(Pointer<COMObject> ptr) => ptr.ref.vtable
      .elementAt(2)
      .cast<Pointer<NativeFunction<Uint32 Function(VTablePointer lpVtbl)>>>()
      .value
      .asFunction<int Function(VTablePointer lpVtbl)>()(ptr.ref.lpVtbl);

  factory IUnknown.from(IUnknown interface) =>
      IUnknown(interface.toInterface(IID_IUnknown));

  /// Queries a COM object for a pointer to one of its interface; identifying
  /// the interface by a reference to its interface identifier (IID).
  ///
  /// If the COM object implements the interface, then it returns a pointer to
  /// that interface after calling `addRef` on it.
  int queryInterface(Pointer<GUID> riid, Pointer<Pointer> ppvObject) => ptr
      .ref.vtable
      .elementAt(0)
      .cast<
          Pointer<
              NativeFunction<
                  Int32 Function(Pointer, Pointer<GUID> riid,
                      Pointer<Pointer> ppvObject)>>>()
      .value
      .asFunction<
          int Function(Pointer, Pointer<GUID> riid,
              Pointer<Pointer> ppvObject)>()(ptr.ref.lpVtbl, riid, ppvObject);

  /// Increments the reference count for an interface pointer to a COM object.
  ///
  /// You should call this method whenever you make a copy of an interface
  /// pointer.
  int addRef() => ptr.ref.vtable
      .elementAt(1)
      .cast<Pointer<NativeFunction<Uint32 Function(Pointer)>>>()
      .value
      .asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

  /// Decrements the reference count for an interface on a COM object.
  ///
  /// This method is automatically called by [Finalizer] when the object goes
  /// out of scope. Therefore, you should never call this method unless you're
  /// manually managing the lifetime of the object (i.e. by calling the
  /// [detach] method).
  ///
  /// Calling this method with [Finalizer] attached may result in use after
  /// free and cause the process to crash.
  int release() => ptr.ref.vtable
      .elementAt(2)
      .cast<Pointer<NativeFunction<Uint32 Function(Pointer)>>>()
      .value
      .asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

  /// Detaches the object from the `Finalizer`.
  ///
  /// Call this method only if you want to manually manage the lifetime of the
  /// object.
  void detach() => _finalizer.detach(this);

  /// Cast an existing COM object to a specified interface.
  ///
  /// Takes a string (typically a constant such as `IID_IModalWindow`) and does
  /// a COM QueryInterface to return a reference to that interface.
  Pointer<COMObject> toInterface(String iid) {
    final pIID = convertToIID(iid);
    final objectPtr = calloc<COMObject>();

    try {
      final hr = queryInterface(pIID, objectPtr.cast());
      if (FAILED(hr)) throw WindowsException(hr);
      return objectPtr;
    } finally {
      free(pIID);
    }
  }
}
