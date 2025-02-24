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
import 'iunknown.dart';

final IID_IMetaDataDispenser = Guid.fromComponents(
  0x809c652e,
  0x7396,
  0x11d2,
  Uint8List.fromList(const [0x97, 0x71, 0x0, 0xa0, 0xc9, 0xb4, 0xd5, 0xc]),
);

class IMetaDataDispenser extends IUnknown {
  IMetaDataDispenser(super.ptr)
    : _vtable = ptr.value.cast<IMetaDataDispenserVtbl>().ref;

  final IMetaDataDispenserVtbl _vtable;
  late final _DefineScopeFn =
      _vtable.DefineScope.asFunction<
        int Function(
          VTablePointer,
          Pointer<GUID>,
          int,
          Pointer<GUID>,
          Pointer<VTablePointer>,
        )
      >();
  late final _OpenScopeFn =
      _vtable.OpenScope.asFunction<
        int Function(
          VTablePointer,
          PCWSTR,
          int,
          Pointer<GUID>,
          Pointer<VTablePointer>,
        )
      >();
  late final _OpenScopeOnMemoryFn =
      _vtable.OpenScopeOnMemory.asFunction<
        int Function(
          VTablePointer,
          Pointer,
          int,
          int,
          Pointer<GUID>,
          Pointer<VTablePointer>,
        )
      >();

  IUnknown? defineScope(
    Pointer<GUID> rclsid,
    int dwCreateFlags,
    Pointer<GUID> riid,
  ) {
    final ppIUnk = calloc<VTablePointer>();
    final hr$ = HRESULT(
      _DefineScopeFn(ptr, rclsid, dwCreateFlags, riid, ppIUnk),
    );
    if (FAILED(hr$)) {
      free(ppIUnk);
      throw WindowsException(hr$);
    }
    final result$ = ppIUnk.value;
    free(ppIUnk);
    if (result$.address == 0) return null;
    return IUnknown(result$);
  }

  IUnknown? openScope(PCWSTR szScope, int dwOpenFlags, Pointer<GUID> riid) {
    final ppIUnk = calloc<VTablePointer>();
    final hr$ = HRESULT(_OpenScopeFn(ptr, szScope, dwOpenFlags, riid, ppIUnk));
    if (FAILED(hr$)) {
      free(ppIUnk);
      throw WindowsException(hr$);
    }
    final result$ = ppIUnk.value;
    free(ppIUnk);
    if (result$.address == 0) return null;
    return IUnknown(result$);
  }

  IUnknown? openScopeOnMemory(
    Pointer pData,
    int cbData,
    int dwOpenFlags,
    Pointer<GUID> riid,
  ) {
    final ppIUnk = calloc<VTablePointer>();
    final hr$ = HRESULT(
      _OpenScopeOnMemoryFn(ptr, pData, cbData, dwOpenFlags, riid, ppIUnk),
    );
    if (FAILED(hr$)) {
      free(ppIUnk);
      throw WindowsException(hr$);
    }
    final result$ = ppIUnk.value;
    free(ppIUnk);
    if (result$.address == 0) return null;
    return IUnknown(result$);
  }

  @override
  String toString() => 'IMetaDataDispenser(ptr: $ptr)';
}

base class IMetaDataDispenserVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<GUID> rclsid,
        Uint32 dwCreateFlags,
        Pointer<GUID> riid,
        Pointer<VTablePointer> ppIUnk,
      )
    >
  >
  DefineScope;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR szScope,
        Uint32 dwOpenFlags,
        Pointer<GUID> riid,
        Pointer<VTablePointer> ppIUnk,
      )
    >
  >
  OpenScope;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer pData,
        Uint32 cbData,
        Uint32 dwOpenFlags,
        Pointer<GUID> riid,
        Pointer<VTablePointer> ppIUnk,
      )
    >
  >
  OpenScopeOnMemory;
}
