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
final IID_IRestrictedErrorInfo = GUID.fromComponents(
  0x82ba7092,
  0x4c88,
  0x427d,
  Uint8List.fromList(const [0xa7, 0xbc, 0x16, 0xdd, 0x93, 0xfe, 0xb6, 0x7e]),
);

/// Represents the details of an error, including restricted error information.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/restrictederrorinfo/nn-restrictederrorinfo-irestrictederrorinfo>.
///
/// {@category com}
class IRestrictedErrorInfo extends IUnknown implements ComInterface {
  /// Creates a new instance of [IRestrictedErrorInfo] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IRestrictedErrorInfo]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  IRestrictedErrorInfo(super.ptr)
    : _vtable = ptr.value.cast<IRestrictedErrorInfoVtbl>().ref;

  /// Creates a new instance of [IRestrictedErrorInfo] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IRestrictedErrorInfo] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IRestrictedErrorInfo.from(IUnknown interface) =>
      interface.queryInterface();

  final IRestrictedErrorInfoVtbl _vtable;
  late final _GetErrorDetailsFn =
      _vtable.GetErrorDetails.asFunction<
        int Function(
          VTablePointer,
          Pointer<Pointer<Utf16>>,
          Pointer<Int32>,
          Pointer<Pointer<Utf16>>,
          Pointer<Pointer<Utf16>>,
        )
      >();
  late final _GetReferenceFn =
      _vtable.GetReference.asFunction<
        int Function(VTablePointer, Pointer<Pointer<Utf16>>)
      >();

  /// Returns information about an error, including the restricted error
  /// description.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/restrictederrorinfo/nf-restrictederrorinfo-irestrictederrorinfo-geterrordetails>.
  @pragma('vm:prefer-inline')
  void getErrorDetails(
    Pointer<Pointer<Utf16>> description,
    Pointer<Int32> error,
    Pointer<Pointer<Utf16>> restrictedDescription,
    Pointer<Pointer<Utf16>> capabilitySid,
  ) {
    final hr$ = HRESULT(
      _GetErrorDetailsFn(
        ptr,
        description,
        error,
        restrictedDescription,
        capabilitySid,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Returns a reference to restricted error information.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/restrictederrorinfo/nf-restrictederrorinfo-irestrictederrorinfo-getreference>.
  BSTR getReference() {
    final reference = adaptiveCalloc<Pointer<Utf16>>();
    final hr$ = HRESULT(_GetReferenceFn(ptr, reference));
    if (hr$.isError) {
      free(reference);
      throw WindowsException(hr$);
    }
    final result$ = reference.value;
    free(reference);
    return BSTR(result$);
  }

  @override
  String toString() => 'IRestrictedErrorInfo(ptr: $ptr)';
}

/// @nodoc
base class IRestrictedErrorInfoVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Pointer<Utf16>> description,
        Pointer<Int32> error,
        Pointer<Pointer<Utf16>> restrictedDescription,
        Pointer<Pointer<Utf16>> capabilitySid,
      )
    >
  >
  GetErrorDetails;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Pointer<Utf16>> reference)
    >
  >
  GetReference;
}

@internal
final class IRestrictedErrorInfoCompanion
    extends ComCompanion<IRestrictedErrorInfo> {
  const IRestrictedErrorInfoCompanion();

  @pragma('vm:prefer-inline')
  @override
  IRestrictedErrorInfo Function(VTablePointer) get fromPointer =>
      IRestrictedErrorInfo.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IRestrictedErrorInfo;
}
