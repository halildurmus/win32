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
import 'ishellitem.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IFileDialog2 = Guid.fromComponents(
  0x61744fc7,
  0x85b5,
  0x4791,
  Uint8List.fromList(const [0xa9, 0xb0, 0x27, 0x22, 0x76, 0x30, 0x9b, 0x13]),
);

/// Extends the IFileDialog interface by providing methods that allow the caller
/// to name a specific, restricted location that can be browsed in the common
/// file dialog as well as to specify alternate text to display as a label on
/// the Cancel button.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl/nn-shobjidl-ifiledialog2>.
///
/// {@category com}
class IFileDialog2 extends IFileDialog implements ComInterface {
  /// Creates a new instance of [IFileDialog2] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IFileDialog2] interface.
  /// The [ptr] must not be [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IFileDialog2(super.ptr) : _vtable = ptr.value.cast<IFileDialog2Vtbl>().ref;

  /// Creates a new instance of [IFileDialog2] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IFileDialog2] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IFileDialog2.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IFileDialog2Vtbl _vtable;
  late final _SetCancelButtonLabelFn = _vtable
      .SetCancelButtonLabel.asFunction<int Function(VTablePointer, PCWSTR)>();
  late final _SetNavigationRootFn =
      _vtable.SetNavigationRoot.asFunction<
        int Function(VTablePointer, VTablePointer)
      >();

  /// Replaces the default text `Cancel` on the common file dialog's Cancel
  /// button.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl/nf-shobjidl-ifiledialog2-setcancelbuttonlabel>.
  @pragma('vm:prefer-inline')
  void setCancelButtonLabel(PCWSTR pszLabel) {
    final hr$ = HRESULT(_SetCancelButtonLabelFn(ptr, pszLabel));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Specifies a top-level location from which to begin browsing a namespace,
  /// for instance in the Save dialog's Browse folder option.
  ///
  /// Users cannot navigate above this location.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl/nf-shobjidl-ifiledialog2-setnavigationroot>.
  @pragma('vm:prefer-inline')
  void setNavigationRoot(IShellItem? psi) {
    final hr$ = HRESULT(_SetNavigationRootFn(ptr, psi?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IFileDialog2(ptr: $ptr)';
}

/// @nodoc
base class IFileDialog2Vtbl extends Struct {
  external IFileDialogVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, PCWSTR pszLabel)>
  >
  SetCancelButtonLabel;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer psi)>
  >
  SetNavigationRoot;
}

@internal
final class IFileDialog2Companion extends ComCompanion<IFileDialog2> {
  const IFileDialog2Companion();

  @pragma('vm:prefer-inline')
  @override
  IFileDialog2 Function(VTablePointer) get fromPointer => IFileDialog2.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IFileDialog2;
}
