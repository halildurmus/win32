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
final IID_IErrorInfo = GUID.fromComponents(
  0x1cf2b120,
  0x547d,
  0x101b,
  .fromList(const [0x8e, 0x65, 0x8, 0x0, 0x2b, 0x2b, 0xd1, 0x19]),
);

/// Provides detailed contextual error information.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oaidl/nn-oaidl-ierrorinfo>.
///
/// {@category com}
class IErrorInfo extends IUnknown implements ComInterface {
  /// Creates a new instance of [IErrorInfo] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IErrorInfo] interface.
  /// The [ptr] must not be [nullptr]; otherwise, an assertion error is thrown.
  IErrorInfo(super.ptr) : _vtable = ptr.value.cast<IErrorInfoVtbl>().ref;

  /// Creates a new instance of [IErrorInfo] from an existing [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IErrorInfo] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IErrorInfo.from(IUnknown interface) => interface.queryInterface();

  final IErrorInfoVtbl _vtable;
  late final _GetGUIDFn =
      _vtable.GetGUID.asFunction<int Function(VTablePointer, Pointer<GUID>)>();
  late final _GetSourceFn =
      _vtable.GetSource.asFunction<
        int Function(VTablePointer, Pointer<Pointer<Utf16>>)
      >();
  late final _GetDescriptionFn =
      _vtable.GetDescription.asFunction<
        int Function(VTablePointer, Pointer<Pointer<Utf16>>)
      >();
  late final _GetHelpFileFn =
      _vtable.GetHelpFile.asFunction<
        int Function(VTablePointer, Pointer<Pointer<Utf16>>)
      >();
  late final _GetHelpContextFn =
      _vtable.GetHelpContext.asFunction<
        int Function(VTablePointer, Pointer<Uint32>)
      >();

  /// Returns the globally unique identifier (GUID) of the interface that
  /// defined the error.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-ierrorinfo-getguid>.
  Pointer<GUID> getGUID() {
    final pGUID = adaptiveCalloc<GUID>();
    final hr$ = HRESULT(_GetGUIDFn(ptr, pGUID));
    if (hr$.isError) {
      free(pGUID);
      throw WindowsException(hr$);
    }
    return pGUID;
  }

  /// Returns the language-dependent programmatic ID (ProgID) for the class or
  /// application that raised the error.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-ierrorinfo-getsource>.
  BSTR getSource() {
    final pBstrSource = adaptiveCalloc<Pointer<Utf16>>();
    final hr$ = HRESULT(_GetSourceFn(ptr, pBstrSource));
    if (hr$.isError) {
      free(pBstrSource);
      throw WindowsException(hr$);
    }
    final result$ = pBstrSource.value;
    free(pBstrSource);
    return .new(result$);
  }

  /// Returns a textual description of the error.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-ierrorinfo-getdescription>.
  BSTR getDescription() {
    final pBstrDescription = adaptiveCalloc<Pointer<Utf16>>();
    final hr$ = HRESULT(_GetDescriptionFn(ptr, pBstrDescription));
    if (hr$.isError) {
      free(pBstrDescription);
      throw WindowsException(hr$);
    }
    final result$ = pBstrDescription.value;
    free(pBstrDescription);
    return .new(result$);
  }

  /// Returns the path of the Help file that describes the error.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-ierrorinfo-gethelpfile>.
  BSTR getHelpFile() {
    final pBstrHelpFile = adaptiveCalloc<Pointer<Utf16>>();
    final hr$ = HRESULT(_GetHelpFileFn(ptr, pBstrHelpFile));
    if (hr$.isError) {
      free(pBstrHelpFile);
      throw WindowsException(hr$);
    }
    final result$ = pBstrHelpFile.value;
    free(pBstrHelpFile);
    return .new(result$);
  }

  /// Returns the Help context identifier (ID) for the error.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-ierrorinfo-gethelpcontext>.
  int getHelpContext() {
    final pdwHelpContext = adaptiveCalloc<Uint32>();
    final hr$ = HRESULT(_GetHelpContextFn(ptr, pdwHelpContext));
    if (hr$.isError) {
      free(pdwHelpContext);
      throw WindowsException(hr$);
    }
    final result$ = pdwHelpContext.value;
    free(pdwHelpContext);
    return result$;
  }

  @override
  String toString() => 'IErrorInfo(ptr: $ptr)';
}

/// @nodoc
base class IErrorInfoVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<GUID> pGUID)>
  >
  GetGUID;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Pointer<Utf16>> pBstrSource)
    >
  >
  GetSource;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Pointer<Utf16>> pBstrDescription,
      )
    >
  >
  GetDescription;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Pointer<Utf16>> pBstrHelpFile)
    >
  >
  GetHelpFile;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Uint32> pdwHelpContext)
    >
  >
  GetHelpContext;
}

@internal
final class IErrorInfoCompanion extends ComCompanion<IErrorInfo> {
  const IErrorInfoCompanion();

  @pragma('vm:prefer-inline')
  @override
  IErrorInfo Function(VTablePointer) get fromPointer => IErrorInfo.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IErrorInfo;
}
