// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';

import '../exception.dart';
import '../guid.dart';
import '../macros.dart';
import '../structs.dart';
import '../types.dart';
import '../utils.dart';

final IID_IUnknown = Guid.fromComponents(
  0x0,
  0x0,
  0x0,
  Uint8List.fromList(const [0xc0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x46]),
);

class IUnknown {
  IUnknown(this.ptr)
    : assert(ptr != nullptr, "Pointer must not be 'nullptr'."),
      _vtable = ptr.value.cast<IUnknownVtbl>().ref;

  final VTablePointer ptr;
  final IUnknownVtbl _vtable;
  late final _QueryInterfaceFn =
      _vtable.QueryInterface.asFunction<
        int Function(VTablePointer, Pointer<GUID>, Pointer<Pointer>)
      >();
  late final _AddRefFn =
      _vtable.AddRef.asFunction<int Function(VTablePointer)>();
  late final _ReleaseFn =
      _vtable.Release.asFunction<int Function(VTablePointer)>();

  T queryInterface<T extends IUnknown>(
    Pointer<GUID> riid,
    T Function(VTablePointer) creator,
  ) {
    final ppvObject = calloc<Pointer>();
    final hr$ = HRESULT(_QueryInterfaceFn(ptr, riid, ppvObject));
    if (FAILED(hr$)) {
      free(ppvObject);
      throw WindowsException(hr$);
    }
    final result = creator(ppvObject.value.cast());
    free(ppvObject);
    return result;
  }

  @pragma('vm:prefer-inline')
  int addRef() => _AddRefFn(ptr);

  @pragma('vm:prefer-inline')
  int release() => _ReleaseFn(ptr);

  @override
  String toString() => 'IUnknown(ptr: $ptr)';
}

base class IUnknownVtbl extends Struct {
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<GUID> riid,
        Pointer<Pointer> ppvObject,
      )
    >
  >
  QueryInterface;
  external Pointer<NativeFunction<Uint32 Function(VTablePointer this$)>> AddRef;
  external Pointer<NativeFunction<Uint32 Function(VTablePointer this$)>>
  Release;
}
