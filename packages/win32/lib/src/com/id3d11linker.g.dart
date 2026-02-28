// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Dart representation of a COM interface.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:meta/meta.dart';

import '../bstr.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../exception.dart';
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
import '../rpc_status.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'id3d11moduleinstance.g.dart';
import 'id3dblob.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ID3D11Linker = GUID.fromComponents(
  0x59a6cd0e,
  0xe10d,
  0x4c1f,
  Uint8List.fromList(const [0x88, 0xc0, 0x63, 0xab, 0xa1, 0xda, 0xf3, 0xe]),
);

/// Used to link a shader module.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nn-d3d11shader-id3d11linker>.
///
/// {@category com}
class ID3D11Linker extends IUnknown implements ComInterface {
  /// Creates a new instance of [ID3D11Linker] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ID3D11Linker] interface.
  /// The [ptr] must not be [nullptr]; otherwise, an assertion error is thrown.
  ID3D11Linker(super.ptr) : _vtable = ptr.value.cast<ID3D11LinkerVtbl>().ref;

  /// Creates a new instance of [ID3D11Linker] from an existing [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3D11Linker] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3D11Linker.from(IUnknown interface) => interface.queryInterface();

  final ID3D11LinkerVtbl _vtable;
  late final _LinkFn =
      _vtable.Link.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          Pointer<Utf8>,
          Pointer<Utf8>,
          int,
          Pointer<VTablePointer>,
          Pointer<VTablePointer>,
        )
      >();
  late final _UseLibraryFn = _vtable
      .UseLibrary.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _AddClipPlaneFromCBufferFn =
      _vtable.AddClipPlaneFromCBuffer.asFunction<
        int Function(VTablePointer, int, int)
      >();

  /// Links the shader and produces a shader blob that the Direct3D runtime can
  /// use.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11linker-link>.
  @pragma('vm:prefer-inline')
  void link(
    ID3D11ModuleInstance? pEntry,
    PCSTR pEntryName,
    PCSTR pTargetName,
    int uFlags,
    Pointer<VTablePointer> ppShaderBlob,
    Pointer<VTablePointer>? ppErrorBuffer,
  ) {
    final hr$ = HRESULT(
      _LinkFn(
        ptr,
        pEntry?.ptr ?? nullptr,
        pEntryName,
        pTargetName,
        uFlags,
        ppShaderBlob,
        ppErrorBuffer ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Adds an instance of a library module to be used for linking.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11linker-uselibrary>.
  @pragma('vm:prefer-inline')
  void useLibrary(ID3D11ModuleInstance? pLibraryMI) {
    final hr$ = HRESULT(_UseLibraryFn(ptr, pLibraryMI?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Adds a clip plane with the plane coefficients taken from a cbuffer entry
  /// for 10Level9 shaders.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11linker-addclipplanefromcbuffer>.
  @pragma('vm:prefer-inline')
  void addClipPlaneFromCBuffer(int uCBufferSlot, int uCBufferEntry) {
    final hr$ = HRESULT(
      _AddClipPlaneFromCBufferFn(ptr, uCBufferSlot, uCBufferEntry),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'ID3D11Linker(ptr: $ptr)';
}

/// @nodoc
base class ID3D11LinkerVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pEntry,
        Pointer<Utf8> pEntryName,
        Pointer<Utf8> pTargetName,
        Uint32 uFlags,
        Pointer<VTablePointer> ppShaderBlob,
        Pointer<VTablePointer> ppErrorBuffer,
      )
    >
  >
  Link;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, VTablePointer pLibraryMI)
    >
  >
  UseLibrary;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 uCBufferSlot,
        Uint32 uCBufferEntry,
      )
    >
  >
  AddClipPlaneFromCBuffer;
}

@internal
final class ID3D11LinkerCompanion extends ComCompanion<ID3D11Linker> {
  const ID3D11LinkerCompanion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11Linker Function(VTablePointer) get fromPointer => ID3D11Linker.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11Linker;
}
