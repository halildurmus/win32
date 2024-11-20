// Dart representation of a COM interface.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';

import '../allocator.dart';
import '../bstr.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../enums.g.dart';
import '../exception.dart';
import '../extensions/iunknown.dart';
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
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'interface.g.dart';
import 'ishellitemarray.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IApplicationActivationManager = Guid.fromComponents(
  0x2e941141,
  0x7f97,
  0x4756,
  Uint8List.fromList(const [0xba, 0x1d, 0x9d, 0xec, 0xde, 0x89, 0x4a, 0x3d]),
);

/// Provides methods which activate Windows Store apps for the Launch, File, and
/// Protocol extensions.
///
/// You will normally use this interface in debuggers and design tools.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nn-shobjidl_core-iapplicationactivationmanager>.
///
/// {@category com}
class IApplicationActivationManager extends IUnknown implements ComInterface {
  /// Creates a new instance of [IApplicationActivationManager] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IApplicationActivationManager] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IApplicationActivationManager(super.ptr)
    : _vtable = ptr.value.cast<IApplicationActivationManagerVtbl>().ref;

  /// Creates a new instance of [IApplicationActivationManager] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IApplicationActivationManager] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IApplicationActivationManager.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IApplicationActivationManagerVtbl _vtable;
  late final _ActivateApplicationFn =
      _vtable.ActivateApplication.asFunction<
        int Function(VTablePointer, PCWSTR, PCWSTR, int, Pointer<Uint32>)
      >();
  late final _ActivateForFileFn =
      _vtable.ActivateForFile.asFunction<
        int Function(
          VTablePointer,
          PCWSTR,
          VTablePointer,
          PCWSTR,
          Pointer<Uint32>,
        )
      >();
  late final _ActivateForProtocolFn =
      _vtable.ActivateForProtocol.asFunction<
        int Function(VTablePointer, PCWSTR, VTablePointer, Pointer<Uint32>)
      >();

  /// Activates the specified Windows Store app for the generic launch contract
  /// (Windows.Launch) in the current session.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-iapplicationactivationmanager-activateapplication>.
  int activateApplication(
    PCWSTR appUserModelId,
    PCWSTR arguments,
    ACTIVATEOPTIONS options,
  ) {
    final processId = loggingCalloc<Uint32>();
    final hr$ = HRESULT(
      _ActivateApplicationFn(
        ptr,
        appUserModelId,
        arguments,
        options,
        processId,
      ),
    );
    if (hr$.isError) {
      free(processId);
      throw WindowsException(hr$);
    }
    final result$ = processId.value;
    free(processId);
    return result$;
  }

  /// Activates the specified Windows Store app for the file contract
  /// (Windows.File).
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-iapplicationactivationmanager-activateforfile>.
  int activateForFile(
    PCWSTR appUserModelId,
    IShellItemArray? itemArray,
    PCWSTR verb,
  ) {
    final processId = loggingCalloc<Uint32>();
    final hr$ = HRESULT(
      _ActivateForFileFn(
        ptr,
        appUserModelId,
        itemArray?.ptr ?? nullptr,
        verb,
        processId,
      ),
    );
    if (hr$.isError) {
      free(processId);
      throw WindowsException(hr$);
    }
    final result$ = processId.value;
    free(processId);
    return result$;
  }

  /// Activates the specified Windows Store app for the protocol contract
  /// (Windows.Protocol).
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-iapplicationactivationmanager-activateforprotocol>.
  int activateForProtocol(PCWSTR appUserModelId, IShellItemArray? itemArray) {
    final processId = loggingCalloc<Uint32>();
    final hr$ = HRESULT(
      _ActivateForProtocolFn(
        ptr,
        appUserModelId,
        itemArray?.ptr ?? nullptr,
        processId,
      ),
    );
    if (hr$.isError) {
      free(processId);
      throw WindowsException(hr$);
    }
    final result$ = processId.value;
    free(processId);
    return result$;
  }

  @override
  String toString() => 'IApplicationActivationManager(ptr: $ptr)';
}

/// @nodoc
base class IApplicationActivationManagerVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR appUserModelId,
        PCWSTR arguments,
        Int32 options,
        Pointer<Uint32> processId,
      )
    >
  >
  ActivateApplication;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR appUserModelId,
        VTablePointer itemArray,
        PCWSTR verb,
        Pointer<Uint32> processId,
      )
    >
  >
  ActivateForFile;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR appUserModelId,
        VTablePointer itemArray,
        Pointer<Uint32> processId,
      )
    >
  >
  ActivateForProtocol;
}

@internal
final class IApplicationActivationManagerCompanion
    extends ComCompanion<IApplicationActivationManager> {
  const IApplicationActivationManagerCompanion();

  @pragma('vm:prefer-inline')
  @override
  IApplicationActivationManager Function(VTablePointer) get fromPointer =>
      IApplicationActivationManager.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IApplicationActivationManager;
}
