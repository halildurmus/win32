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
import 'ienumstring.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IOptionDescription = GUID.fromComponents(
  0x432e5f85,
  0x35cf,
  0x4606,
  .fromList(const [0xa8, 0x1, 0x6f, 0x70, 0x27, 0x7e, 0x1d, 0x7a]),
);

/// Represents the description of a spell checker option.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/spellcheck/nn-spellcheck-ioptiondescription>.
///
/// {@category com}
class IOptionDescription extends IUnknown implements ComInterface {
  /// Creates a new instance of [IOptionDescription] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IOptionDescription]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  IOptionDescription(super.ptr)
    : _vtable = ptr.value.cast<IOptionDescriptionVtbl>().ref;

  /// Creates a new instance of [IOptionDescription] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IOptionDescription] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IOptionDescription.from(IUnknown interface) =>
      interface.queryInterface();

  final IOptionDescriptionVtbl _vtable;
  late final _get_IdFn = _vtable.get_Id
      .asFunction<int Function(VTablePointer, Pointer<Pointer<Utf16>>)>();
  late final _get_HeadingFn = _vtable.get_Heading
      .asFunction<int Function(VTablePointer, Pointer<Pointer<Utf16>>)>();
  late final _get_DescriptionFn = _vtable.get_Description
      .asFunction<int Function(VTablePointer, Pointer<Pointer<Utf16>>)>();
  late final _get_LabelsFn = _vtable.get_Labels
      .asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();

  /// Gets the identifier of the spell checker option.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/spellcheck/nf-spellcheck-ioptiondescription-get_id>.
  PWSTR get id {
    final value = adaptiveCalloc<Pointer<Utf16>>();
    final hr$ = HRESULT(_get_IdFn(ptr, value));
    if (hr$.isError) {
      free(value);
      throw WindowsException(hr$);
    }
    final result$ = value.value;
    free(value);
    return .new(result$);
  }

  /// Gets the heading for the spell checker option.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/spellcheck/nf-spellcheck-ioptiondescription-get_heading>.
  PWSTR get heading {
    final value = adaptiveCalloc<Pointer<Utf16>>();
    final hr$ = HRESULT(_get_HeadingFn(ptr, value));
    if (hr$.isError) {
      free(value);
      throw WindowsException(hr$);
    }
    final result$ = value.value;
    free(value);
    return .new(result$);
  }

  /// Get the description of the spell checker option.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/spellcheck/nf-spellcheck-ioptiondescription-get_description>.
  PWSTR get description {
    final value = adaptiveCalloc<Pointer<Utf16>>();
    final hr$ = HRESULT(_get_DescriptionFn(ptr, value));
    if (hr$.isError) {
      free(value);
      throw WindowsException(hr$);
    }
    final result$ = value.value;
    free(value);
    return .new(result$);
  }

  /// Gets the label enumerator for the spell checker option.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/spellcheck/nf-spellcheck-ioptiondescription-get_labels>.
  IEnumString? get labels {
    final value = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_get_LabelsFn(ptr, value));
    if (hr$.isError) {
      free(value);
      throw WindowsException(hr$);
    }
    final result$ = value.value;
    free(value);
    if (result$.isNull) return null;
    return .new(result$);
  }

  @override
  String toString() => 'IOptionDescription(ptr: $ptr)';
}

/// @nodoc
base class IOptionDescriptionVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Pointer<Utf16>> value)
    >
  >
  get_Id;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Pointer<Utf16>> value)
    >
  >
  get_Heading;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Pointer<Utf16>> value)
    >
  >
  get_Description;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> value)
    >
  >
  get_Labels;
}

@internal
final class IOptionDescriptionCompanion
    extends ComCompanion<IOptionDescription> {
  const IOptionDescriptionCompanion();

  @pragma('vm:prefer-inline')
  @override
  IOptionDescription Function(VTablePointer) get fromPointer =>
      IOptionDescription.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IOptionDescription;
}
