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
import 'ifiledialog.g.dart';
import 'interface.g.dart';
import 'ishellitem.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IFileDialogEvents = Guid.fromComponents(
  0x973510db,
  0x7d7f,
  0x452b,
  Uint8List.fromList(const [0x89, 0x75, 0x74, 0xa8, 0x58, 0x28, 0xd3, 0x54]),
);

/// Exposes methods that allow notification of events within a common file
/// dialog.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nn-shobjidl_core-ifiledialogevents>.
///
/// {@category com}
class IFileDialogEvents extends IUnknown implements ComInterface {
  /// Creates a new instance of [IFileDialogEvents] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IFileDialogEvents]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IFileDialogEvents(super.ptr)
    : _vtable = ptr.value.cast<IFileDialogEventsVtbl>().ref;

  /// Creates a new instance of [IFileDialogEvents] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IFileDialogEvents] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IFileDialogEvents.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IFileDialogEventsVtbl _vtable;
  late final _OnFileOkFn =
      _vtable.OnFileOk.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _OnFolderChangingFn =
      _vtable.OnFolderChanging.asFunction<
        int Function(VTablePointer, VTablePointer, VTablePointer)
      >();
  late final _OnFolderChangeFn = _vtable
      .OnFolderChange.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _OnSelectionChangeFn =
      _vtable.OnSelectionChange.asFunction<
        int Function(VTablePointer, VTablePointer)
      >();
  late final _OnShareViolationFn =
      _vtable.OnShareViolation.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          VTablePointer,
          Pointer<Int32>,
        )
      >();
  late final _OnTypeChangeFn = _vtable
      .OnTypeChange.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _OnOverwriteFn =
      _vtable.OnOverwrite.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          VTablePointer,
          Pointer<Int32>,
        )
      >();

  /// Called just before the dialog is about to return with a result.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogevents-onfileok>.
  @pragma('vm:prefer-inline')
  void onFileOk(IFileDialog? pfd) {
    final hr$ = HRESULT(_OnFileOkFn(ptr, pfd?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Called before `IFileDialogEvents.onFolderChange`.
  ///
  /// This allows the implementer to stop navigation to a particular location.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogevents-onfolderchanging>.
  @pragma('vm:prefer-inline')
  void onFolderChanging(IFileDialog? pfd, IShellItem? psiFolder) {
    final hr$ = HRESULT(
      _OnFolderChangingFn(ptr, pfd?.ptr ?? nullptr, psiFolder?.ptr ?? nullptr),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Called when the user navigates to a new folder.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogevents-onfolderchange>.
  @pragma('vm:prefer-inline')
  void onFolderChange(IFileDialog? pfd) {
    final hr$ = HRESULT(_OnFolderChangeFn(ptr, pfd?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Called when the user changes the selection in the dialog's view.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogevents-onselectionchange>.
  @pragma('vm:prefer-inline')
  void onSelectionChange(IFileDialog? pfd) {
    final hr$ = HRESULT(_OnSelectionChangeFn(ptr, pfd?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Enables an application to respond to sharing violations that arise from
  /// Open or Save operations.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogevents-onshareviolation>.
  FDE_SHAREVIOLATION_RESPONSE onShareViolation(
    IFileDialog? pfd,
    IShellItem? psi,
  ) {
    final pResponse = loggingCalloc<Int32>();
    final hr$ = HRESULT(
      _OnShareViolationFn(
        ptr,
        pfd?.ptr ?? nullptr,
        psi?.ptr ?? nullptr,
        pResponse,
      ),
    );
    if (hr$.isError) {
      free(pResponse);
      throw WindowsException(hr$);
    }
    final result$ = pResponse.value;
    free(pResponse);
    return FDE_SHAREVIOLATION_RESPONSE(result$);
  }

  /// Called when the dialog is opened to notify the application of the initial
  /// chosen filetype.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogevents-ontypechange>.
  @pragma('vm:prefer-inline')
  void onTypeChange(IFileDialog? pfd) {
    final hr$ = HRESULT(_OnTypeChangeFn(ptr, pfd?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Called from the save dialog when the user chooses to overwrite a file.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogevents-onoverwrite>.
  FDE_OVERWRITE_RESPONSE onOverwrite(IFileDialog? pfd, IShellItem? psi) {
    final pResponse = loggingCalloc<Int32>();
    final hr$ = HRESULT(
      _OnOverwriteFn(ptr, pfd?.ptr ?? nullptr, psi?.ptr ?? nullptr, pResponse),
    );
    if (hr$.isError) {
      free(pResponse);
      throw WindowsException(hr$);
    }
    final result$ = pResponse.value;
    free(pResponse);
    return FDE_OVERWRITE_RESPONSE(result$);
  }

  @override
  String toString() => 'IFileDialogEvents(ptr: $ptr)';
}

/// @nodoc
base class IFileDialogEventsVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer pfd)>
  >
  OnFileOk;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pfd,
        VTablePointer psiFolder,
      )
    >
  >
  OnFolderChanging;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer pfd)>
  >
  OnFolderChange;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer pfd)>
  >
  OnSelectionChange;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pfd,
        VTablePointer psi,
        Pointer<Int32> pResponse,
      )
    >
  >
  OnShareViolation;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer pfd)>
  >
  OnTypeChange;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pfd,
        VTablePointer psi,
        Pointer<Int32> pResponse,
      )
    >
  >
  OnOverwrite;
}

@internal
final class IFileDialogEventsCompanion extends ComCompanion<IFileDialogEvents> {
  const IFileDialogEventsCompanion();

  @pragma('vm:prefer-inline')
  @override
  IFileDialogEvents Function(VTablePointer) get fromPointer =>
      IFileDialogEvents.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IFileDialogEvents;
}
