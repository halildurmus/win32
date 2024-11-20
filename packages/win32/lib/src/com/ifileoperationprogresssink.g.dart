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
import 'ishellitem.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IFileOperationProgressSink = Guid.fromComponents(
  0x4b0f1a7,
  0x9490,
  0x44bc,
  Uint8List.fromList(const [0x96, 0xe1, 0x42, 0x96, 0xa3, 0x12, 0x52, 0xe2]),
);

/// Exposes methods that provide a rich notification system used by callers of
/// IFileOperation to monitor the details of the operations they are performing
/// through that interface.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nn-shobjidl_core-ifileoperationprogresssink>.
///
/// {@category com}
class IFileOperationProgressSink extends IUnknown implements ComInterface {
  /// Creates a new instance of [IFileOperationProgressSink] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IFileOperationProgressSink] interface. The [ptr] must not be [nullptr];
  /// otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IFileOperationProgressSink(super.ptr)
    : _vtable = ptr.value.cast<IFileOperationProgressSinkVtbl>().ref;

  /// Creates a new instance of [IFileOperationProgressSink] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IFileOperationProgressSink] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IFileOperationProgressSink.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IFileOperationProgressSinkVtbl _vtable;
  late final _StartOperationsFn =
      _vtable.StartOperations.asFunction<int Function(VTablePointer)>();
  late final _FinishOperationsFn =
      _vtable.FinishOperations.asFunction<int Function(VTablePointer, int)>();
  late final _PreRenameItemFn =
      _vtable.PreRenameItem.asFunction<
        int Function(VTablePointer, int, VTablePointer, PCWSTR)
      >();
  late final _PostRenameItemFn =
      _vtable.PostRenameItem.asFunction<
        int Function(
          VTablePointer,
          int,
          VTablePointer,
          PCWSTR,
          int,
          VTablePointer,
        )
      >();
  late final _PreMoveItemFn =
      _vtable.PreMoveItem.asFunction<
        int Function(VTablePointer, int, VTablePointer, VTablePointer, PCWSTR)
      >();
  late final _PostMoveItemFn =
      _vtable.PostMoveItem.asFunction<
        int Function(
          VTablePointer,
          int,
          VTablePointer,
          VTablePointer,
          PCWSTR,
          int,
          VTablePointer,
        )
      >();
  late final _PreCopyItemFn =
      _vtable.PreCopyItem.asFunction<
        int Function(VTablePointer, int, VTablePointer, VTablePointer, PCWSTR)
      >();
  late final _PostCopyItemFn =
      _vtable.PostCopyItem.asFunction<
        int Function(
          VTablePointer,
          int,
          VTablePointer,
          VTablePointer,
          PCWSTR,
          int,
          VTablePointer,
        )
      >();
  late final _PreDeleteItemFn =
      _vtable.PreDeleteItem.asFunction<
        int Function(VTablePointer, int, VTablePointer)
      >();
  late final _PostDeleteItemFn =
      _vtable.PostDeleteItem.asFunction<
        int Function(VTablePointer, int, VTablePointer, int, VTablePointer)
      >();
  late final _PreNewItemFn =
      _vtable.PreNewItem.asFunction<
        int Function(VTablePointer, int, VTablePointer, PCWSTR)
      >();
  late final _PostNewItemFn =
      _vtable.PostNewItem.asFunction<
        int Function(
          VTablePointer,
          int,
          VTablePointer,
          PCWSTR,
          PCWSTR,
          int,
          int,
          VTablePointer,
        )
      >();
  late final _UpdateProgressFn = _vtable
      .UpdateProgress.asFunction<int Function(VTablePointer, int, int)>();
  late final _ResetTimerFn =
      _vtable.ResetTimer.asFunction<int Function(VTablePointer)>();
  late final _PauseTimerFn =
      _vtable.PauseTimer.asFunction<int Function(VTablePointer)>();
  late final _ResumeTimerFn =
      _vtable.ResumeTimer.asFunction<int Function(VTablePointer)>();

  /// Performs caller-implemented actions before any specific file operations
  /// are performed.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifileoperationprogresssink-startoperations>.
  @pragma('vm:prefer-inline')
  void startOperations() {
    final hr$ = HRESULT(_StartOperationsFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Performs caller-implemented actions after the last operation performed by
  /// the call to IFileOperation is complete.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifileoperationprogresssink-finishoperations>.
  @pragma('vm:prefer-inline')
  void finishOperations(HRESULT hrResult) {
    final hr$ = HRESULT(_FinishOperationsFn(ptr, hrResult));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Performs caller-implemented actions before the rename process for each
  /// item begins.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifileoperationprogresssink-prerenameitem>.
  @pragma('vm:prefer-inline')
  void preRenameItem(int dwFlags, IShellItem? psiItem, PCWSTR pszNewName) {
    final hr$ = HRESULT(
      _PreRenameItemFn(ptr, dwFlags, psiItem?.ptr ?? nullptr, pszNewName),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Performs caller-implemented actions after the rename process for each item
  /// is complete.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifileoperationprogresssink-postrenameitem>.
  @pragma('vm:prefer-inline')
  void postRenameItem(
    int dwFlags,
    IShellItem? psiItem,
    PCWSTR pszNewName,
    HRESULT hrRename,
    IShellItem? psiNewlyCreated,
  ) {
    final hr$ = HRESULT(
      _PostRenameItemFn(
        ptr,
        dwFlags,
        psiItem?.ptr ?? nullptr,
        pszNewName,
        hrRename,
        psiNewlyCreated?.ptr ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Performs caller-implemented actions before the move process for each item
  /// begins.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifileoperationprogresssink-premoveitem>.
  @pragma('vm:prefer-inline')
  void preMoveItem(
    int dwFlags,
    IShellItem? psiItem,
    IShellItem? psiDestinationFolder,
    PCWSTR pszNewName,
  ) {
    final hr$ = HRESULT(
      _PreMoveItemFn(
        ptr,
        dwFlags,
        psiItem?.ptr ?? nullptr,
        psiDestinationFolder?.ptr ?? nullptr,
        pszNewName,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Performs caller-implemented actions after the move process for each item
  /// is complete.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifileoperationprogresssink-postmoveitem>.
  @pragma('vm:prefer-inline')
  void postMoveItem(
    int dwFlags,
    IShellItem? psiItem,
    IShellItem? psiDestinationFolder,
    PCWSTR pszNewName,
    HRESULT hrMove,
    IShellItem? psiNewlyCreated,
  ) {
    final hr$ = HRESULT(
      _PostMoveItemFn(
        ptr,
        dwFlags,
        psiItem?.ptr ?? nullptr,
        psiDestinationFolder?.ptr ?? nullptr,
        pszNewName,
        hrMove,
        psiNewlyCreated?.ptr ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Performs caller-implemented actions before the copy process for each item
  /// begins.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifileoperationprogresssink-precopyitem>.
  @pragma('vm:prefer-inline')
  void preCopyItem(
    int dwFlags,
    IShellItem? psiItem,
    IShellItem? psiDestinationFolder,
    PCWSTR pszNewName,
  ) {
    final hr$ = HRESULT(
      _PreCopyItemFn(
        ptr,
        dwFlags,
        psiItem?.ptr ?? nullptr,
        psiDestinationFolder?.ptr ?? nullptr,
        pszNewName,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Performs caller-implemented actions after the copy process for each item
  /// is complete.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifileoperationprogresssink-postcopyitem>.
  @pragma('vm:prefer-inline')
  void postCopyItem(
    int dwFlags,
    IShellItem? psiItem,
    IShellItem? psiDestinationFolder,
    PCWSTR pszNewName,
    HRESULT hrCopy,
    IShellItem? psiNewlyCreated,
  ) {
    final hr$ = HRESULT(
      _PostCopyItemFn(
        ptr,
        dwFlags,
        psiItem?.ptr ?? nullptr,
        psiDestinationFolder?.ptr ?? nullptr,
        pszNewName,
        hrCopy,
        psiNewlyCreated?.ptr ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Performs caller-implemented actions before the delete process for each
  /// item begins.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifileoperationprogresssink-predeleteitem>.
  @pragma('vm:prefer-inline')
  void preDeleteItem(int dwFlags, IShellItem? psiItem) {
    final hr$ = HRESULT(
      _PreDeleteItemFn(ptr, dwFlags, psiItem?.ptr ?? nullptr),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Performs caller-implemented actions after the delete process for each item
  /// is complete.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifileoperationprogresssink-postdeleteitem>.
  @pragma('vm:prefer-inline')
  void postDeleteItem(
    int dwFlags,
    IShellItem? psiItem,
    HRESULT hrDelete,
    IShellItem? psiNewlyCreated,
  ) {
    final hr$ = HRESULT(
      _PostDeleteItemFn(
        ptr,
        dwFlags,
        psiItem?.ptr ?? nullptr,
        hrDelete,
        psiNewlyCreated?.ptr ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Performs caller-implemented actions before the process to create a new
  /// item begins.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifileoperationprogresssink-prenewitem>.
  @pragma('vm:prefer-inline')
  void preNewItem(
    int dwFlags,
    IShellItem? psiDestinationFolder,
    PCWSTR pszNewName,
  ) {
    final hr$ = HRESULT(
      _PreNewItemFn(
        ptr,
        dwFlags,
        psiDestinationFolder?.ptr ?? nullptr,
        pszNewName,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Performs caller-implemented actions after the new item is created.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifileoperationprogresssink-postnewitem>.
  @pragma('vm:prefer-inline')
  void postNewItem(
    int dwFlags,
    IShellItem? psiDestinationFolder,
    PCWSTR pszNewName,
    PCWSTR pszTemplateName,
    int dwFileAttributes,
    HRESULT hrNew,
    IShellItem? psiNewItem,
  ) {
    final hr$ = HRESULT(
      _PostNewItemFn(
        ptr,
        dwFlags,
        psiDestinationFolder?.ptr ?? nullptr,
        pszNewName,
        pszTemplateName,
        dwFileAttributes,
        hrNew,
        psiNewItem?.ptr ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Provides an estimate of the total amount of work currently done in
  /// relation to the total amount of work.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifileoperationprogresssink-updateprogress>.
  @pragma('vm:prefer-inline')
  void updateProgress(int iWorkTotal, int iWorkSoFar) {
    final hr$ = HRESULT(_UpdateProgressFn(ptr, iWorkTotal, iWorkSoFar));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Not supported.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifileoperationprogresssink-resettimer>.
  @pragma('vm:prefer-inline')
  void resetTimer() {
    final hr$ = HRESULT(_ResetTimerFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Not supported.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifileoperationprogresssink-pausetimer>.
  @pragma('vm:prefer-inline')
  void pauseTimer() {
    final hr$ = HRESULT(_PauseTimerFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Not supported.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifileoperationprogresssink-resumetimer>.
  @pragma('vm:prefer-inline')
  void resumeTimer() {
    final hr$ = HRESULT(_ResumeTimerFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IFileOperationProgressSink(ptr: $ptr)';
}

/// @nodoc
base class IFileOperationProgressSinkVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>>
  StartOperations;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 hrResult)>
  >
  FinishOperations;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 dwFlags,
        VTablePointer psiItem,
        PCWSTR pszNewName,
      )
    >
  >
  PreRenameItem;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 dwFlags,
        VTablePointer psiItem,
        PCWSTR pszNewName,
        Int32 hrRename,
        VTablePointer psiNewlyCreated,
      )
    >
  >
  PostRenameItem;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 dwFlags,
        VTablePointer psiItem,
        VTablePointer psiDestinationFolder,
        PCWSTR pszNewName,
      )
    >
  >
  PreMoveItem;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 dwFlags,
        VTablePointer psiItem,
        VTablePointer psiDestinationFolder,
        PCWSTR pszNewName,
        Int32 hrMove,
        VTablePointer psiNewlyCreated,
      )
    >
  >
  PostMoveItem;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 dwFlags,
        VTablePointer psiItem,
        VTablePointer psiDestinationFolder,
        PCWSTR pszNewName,
      )
    >
  >
  PreCopyItem;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 dwFlags,
        VTablePointer psiItem,
        VTablePointer psiDestinationFolder,
        PCWSTR pszNewName,
        Int32 hrCopy,
        VTablePointer psiNewlyCreated,
      )
    >
  >
  PostCopyItem;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Uint32 dwFlags, VTablePointer psiItem)
    >
  >
  PreDeleteItem;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 dwFlags,
        VTablePointer psiItem,
        Int32 hrDelete,
        VTablePointer psiNewlyCreated,
      )
    >
  >
  PostDeleteItem;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 dwFlags,
        VTablePointer psiDestinationFolder,
        PCWSTR pszNewName,
      )
    >
  >
  PreNewItem;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 dwFlags,
        VTablePointer psiDestinationFolder,
        PCWSTR pszNewName,
        PCWSTR pszTemplateName,
        Uint32 dwFileAttributes,
        Int32 hrNew,
        VTablePointer psiNewItem,
      )
    >
  >
  PostNewItem;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Uint32 iWorkTotal, Uint32 iWorkSoFar)
    >
  >
  UpdateProgress;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>>
  ResetTimer;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>>
  PauseTimer;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>>
  ResumeTimer;
}

@internal
final class IFileOperationProgressSinkCompanion
    extends ComCompanion<IFileOperationProgressSink> {
  const IFileOperationProgressSinkCompanion();

  @pragma('vm:prefer-inline')
  @override
  IFileOperationProgressSink Function(VTablePointer) get fromPointer =>
      IFileOperationProgressSink.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IFileOperationProgressSink;
}
