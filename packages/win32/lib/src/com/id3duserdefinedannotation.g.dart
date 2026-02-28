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
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ID3DUserDefinedAnnotation = GUID.fromComponents(
  0xb2daad8b,
  0x3d4,
  0x4dbf,
  Uint8List.fromList(const [0x95, 0xeb, 0x32, 0xab, 0x4b, 0x63, 0xd0, 0xab]),
);

/// Enables an application to describe conceptual sections and markers within
/// the application's code flow.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11_1/nn-d3d11_1-id3duserdefinedannotation>.
///
/// {@category com}
class ID3DUserDefinedAnnotation extends IUnknown implements ComInterface {
  /// Creates a new instance of [ID3DUserDefinedAnnotation] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [ID3DUserDefinedAnnotation] interface. The [ptr] must not be [nullptr];
  /// otherwise, an assertion error is thrown.
  ID3DUserDefinedAnnotation(super.ptr)
    : _vtable = ptr.value.cast<ID3DUserDefinedAnnotationVtbl>().ref;

  /// Creates a new instance of [ID3DUserDefinedAnnotation] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3DUserDefinedAnnotation] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3DUserDefinedAnnotation.from(IUnknown interface) =>
      interface.queryInterface();

  final ID3DUserDefinedAnnotationVtbl _vtable;
  late final _BeginEventFn = _vtable
      .BeginEvent.asFunction<int Function(VTablePointer, Pointer<Utf16>)>();
  late final _EndEventFn =
      _vtable.EndEvent.asFunction<int Function(VTablePointer)>();
  late final _SetMarkerFn = _vtable
      .SetMarker.asFunction<void Function(VTablePointer, Pointer<Utf16>)>();
  late final _GetStatusFn =
      _vtable.GetStatus.asFunction<int Function(VTablePointer)>();

  /// Marks the beginning of a section of event code.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_1/nf-d3d11_1-id3duserdefinedannotation-beginevent>.
  @pragma('vm:prefer-inline')
  int beginEvent(PCWSTR name) => _BeginEventFn(ptr, name);

  /// Marks the end of a section of event code.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_1/nf-d3d11_1-id3duserdefinedannotation-endevent>.
  @pragma('vm:prefer-inline')
  int endEvent() => _EndEventFn(ptr);

  /// Marks a single point of execution in code.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_1/nf-d3d11_1-id3duserdefinedannotation-setmarker>.
  @pragma('vm:prefer-inline')
  void setMarker(PCWSTR name) => _SetMarkerFn(ptr, name);

  /// Determines whether the calling application is running under a Microsoft
  /// Direct3D profiling tool.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_1/nf-d3d11_1-id3duserdefinedannotation-getstatus>.
  @pragma('vm:prefer-inline')
  bool getStatus() => _GetStatusFn(ptr) != FALSE;

  @override
  String toString() => 'ID3DUserDefinedAnnotation(ptr: $ptr)';
}

/// @nodoc
base class ID3DUserDefinedAnnotationVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Utf16> name)>
  >
  BeginEvent;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>>
  EndEvent;
  external Pointer<
    NativeFunction<Void Function(VTablePointer this$, Pointer<Utf16> name)>
  >
  SetMarker;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>>
  GetStatus;
}

@internal
final class ID3DUserDefinedAnnotationCompanion
    extends ComCompanion<ID3DUserDefinedAnnotation> {
  const ID3DUserDefinedAnnotationCompanion();

  @pragma('vm:prefer-inline')
  @override
  ID3DUserDefinedAnnotation Function(VTablePointer) get fromPointer =>
      ID3DUserDefinedAnnotation.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3DUserDefinedAnnotation;
}
