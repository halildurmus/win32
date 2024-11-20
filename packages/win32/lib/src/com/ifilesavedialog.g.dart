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
import 'ifileoperationprogresssink.g.dart';
import 'interface.g.dart';
import 'ipropertydescriptionlist.g.dart';
import 'ipropertystore.g.dart';
import 'ishellitem.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IFileSaveDialog = Guid.fromComponents(
  0x84bccd23,
  0x5fde,
  0x4cdb,
  Uint8List.fromList(const [0xae, 0xa4, 0xaf, 0x64, 0xb8, 0x3d, 0x78, 0xab]),
);

/// Extends the IFileDialog interface by adding methods specific to the save
/// dialog, which include those that provide support for the collection of
/// metadata to be persisted with the file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nn-shobjidl_core-ifilesavedialog>.
///
/// {@category com}
class IFileSaveDialog extends IFileDialog implements ComInterface {
  /// Creates a new instance of [IFileSaveDialog] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IFileSaveDialog]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IFileSaveDialog(super.ptr)
    : _vtable = ptr.value.cast<IFileSaveDialogVtbl>().ref;

  /// Creates a new instance of [IFileSaveDialog] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IFileSaveDialog] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IFileSaveDialog.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IFileSaveDialogVtbl _vtable;
  late final _SetSaveAsItemFn = _vtable
      .SetSaveAsItem.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetPropertiesFn = _vtable
      .SetProperties.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetCollectedPropertiesFn =
      _vtable.SetCollectedProperties.asFunction<
        int Function(VTablePointer, VTablePointer, int)
      >();
  late final _GetPropertiesFn =
      _vtable.GetProperties.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _ApplyPropertiesFn =
      _vtable.ApplyProperties.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          VTablePointer,
          int,
          VTablePointer,
        )
      >();

  /// Sets an item to be used as the initial entry in a Save As dialog.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifilesavedialog-setsaveasitem>.
  @pragma('vm:prefer-inline')
  void setSaveAsItem(IShellItem? psi) {
    final hr$ = HRESULT(_SetSaveAsItemFn(ptr, psi?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Provides a property store that defines the default values to be used for
  /// the item being saved.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifilesavedialog-setproperties>.
  @pragma('vm:prefer-inline')
  void setProperties(IPropertyStore? pStore) {
    final hr$ = HRESULT(_SetPropertiesFn(ptr, pStore?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Specifies which properties will be collected in the save dialog.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifilesavedialog-setcollectedproperties>.
  @pragma('vm:prefer-inline')
  void setCollectedProperties(
    IPropertyDescriptionList? pList,
    bool fAppendDefault,
  ) {
    final hr$ = HRESULT(
      _SetCollectedPropertiesFn(
        ptr,
        pList?.ptr ?? nullptr,
        fAppendDefault ? TRUE : FALSE,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves the set of property values for a saved item or an item in the
  /// process of being saved.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifilesavedialog-getproperties>.
  IPropertyStore? getProperties() {
    final ppStore = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetPropertiesFn(ptr, ppStore));
    if (hr$.isError) {
      free(ppStore);
      throw WindowsException(hr$);
    }
    final result$ = ppStore.value;
    free(ppStore);
    if (result$.isNull) return null;
    return IPropertyStore(result$);
  }

  /// Applies a set of properties to an item using the Shell's copy engine.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifilesavedialog-applyproperties>.
  @pragma('vm:prefer-inline')
  void applyProperties(
    IShellItem? psi,
    IPropertyStore? pStore,
    int hwnd,
    IFileOperationProgressSink? pSink,
  ) {
    final hr$ = HRESULT(
      _ApplyPropertiesFn(
        ptr,
        psi?.ptr ?? nullptr,
        pStore?.ptr ?? nullptr,
        hwnd,
        pSink?.ptr ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IFileSaveDialog(ptr: $ptr)';
}

/// @nodoc
base class IFileSaveDialogVtbl extends Struct {
  external IFileDialogVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer psi)>
  >
  SetSaveAsItem;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer pStore)>
  >
  SetProperties;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pList,
        BOOL fAppendDefault,
      )
    >
  >
  SetCollectedProperties;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> ppStore)
    >
  >
  GetProperties;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer psi,
        VTablePointer pStore,
        HWND hwnd,
        VTablePointer pSink,
      )
    >
  >
  ApplyProperties;
}

@internal
final class IFileSaveDialogCompanion extends ComCompanion<IFileSaveDialog> {
  const IFileSaveDialogCompanion();

  @pragma('vm:prefer-inline')
  @override
  IFileSaveDialog Function(VTablePointer) get fromPointer =>
      IFileSaveDialog.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IFileSaveDialog;
}
