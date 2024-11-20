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
import 'ifiledialog.g.dart';
import 'interface.g.dart';
import 'ishellitemarray.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IFileOpenDialog = Guid.fromComponents(
  0xd57c7288,
  0xd4ad,
  0x4768,
  Uint8List.fromList(const [0xbe, 0x2, 0x9d, 0x96, 0x95, 0x32, 0xd9, 0x60]),
);

/// Extends the IFileDialog interface by adding methods specific to the open
/// dialog.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nn-shobjidl_core-ifileopendialog>.
///
/// {@category com}
class IFileOpenDialog extends IFileDialog implements ComInterface {
  /// Creates a new instance of [IFileOpenDialog] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IFileOpenDialog]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IFileOpenDialog(super.ptr)
    : _vtable = ptr.value.cast<IFileOpenDialogVtbl>().ref;

  /// Creates a new instance of [IFileOpenDialog] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IFileOpenDialog] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IFileOpenDialog.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IFileOpenDialogVtbl _vtable;
  late final _GetResultsFn =
      _vtable.GetResults.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _GetSelectedItemsFn =
      _vtable.GetSelectedItems.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();

  /// Gets the user's choices in a dialog that allows multiple selection.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifileopendialog-getresults>.
  IShellItemArray? getResults() {
    final ppenum = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetResultsFn(ptr, ppenum));
    if (hr$.isError) {
      free(ppenum);
      throw WindowsException(hr$);
    }
    final result$ = ppenum.value;
    free(ppenum);
    if (result$.isNull) return null;
    return IShellItemArray(result$);
  }

  /// Gets the currently selected items in the dialog.
  ///
  /// These items may be items selected in the view, or text selected in the
  /// file name edit box.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifileopendialog-getselecteditems>.
  IShellItemArray? getSelectedItems() {
    final ppsai = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetSelectedItemsFn(ptr, ppsai));
    if (hr$.isError) {
      free(ppsai);
      throw WindowsException(hr$);
    }
    final result$ = ppsai.value;
    free(ppsai);
    if (result$.isNull) return null;
    return IShellItemArray(result$);
  }

  @override
  String toString() => 'IFileOpenDialog(ptr: $ptr)';
}

/// @nodoc
base class IFileOpenDialogVtbl extends Struct {
  external IFileDialogVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> ppenum)
    >
  >
  GetResults;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> ppsai)
    >
  >
  GetSelectedItems;
}

@internal
final class IFileOpenDialogCompanion extends ComCompanion<IFileOpenDialog> {
  const IFileOpenDialogCompanion();

  @pragma('vm:prefer-inline')
  @override
  IFileOpenDialog Function(VTablePointer) get fromPointer =>
      IFileOpenDialog.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IFileOpenDialog;
}
