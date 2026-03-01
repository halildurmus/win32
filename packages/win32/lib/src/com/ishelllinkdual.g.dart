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
import '../variant.dart';
import 'idispatch.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IShellLinkDual = GUID.fromComponents(
  0x88a05c00,
  0xf000,
  0x11ce,
  .fromList(const [0x83, 0x50, 0x44, 0x45, 0x53, 0x54, 0x0, 0x0]),
);

/// {@category com}
class IShellLinkDual extends IDispatch implements ComInterface {
  /// Creates a new instance of [IShellLinkDual] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IShellLinkDual]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  IShellLinkDual(super.ptr)
    : _vtable = ptr.value.cast<IShellLinkDualVtbl>().ref;

  /// Creates a new instance of [IShellLinkDual] from an existing [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IShellLinkDual] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IShellLinkDual.from(IUnknown interface) => interface.queryInterface();

  final IShellLinkDualVtbl _vtable;
  late final _get_PathFn = _vtable.get_Path
      .asFunction<int Function(VTablePointer, Pointer<Pointer<Utf16>>)>();
  late final _put_PathFn = _vtable.put_Path
      .asFunction<int Function(VTablePointer, Pointer<Utf16>)>();
  late final _get_DescriptionFn = _vtable.get_Description
      .asFunction<int Function(VTablePointer, Pointer<Pointer<Utf16>>)>();
  late final _put_DescriptionFn = _vtable.put_Description
      .asFunction<int Function(VTablePointer, Pointer<Utf16>)>();
  late final _get_WorkingDirectoryFn = _vtable.get_WorkingDirectory
      .asFunction<int Function(VTablePointer, Pointer<Pointer<Utf16>>)>();
  late final _put_WorkingDirectoryFn = _vtable.put_WorkingDirectory
      .asFunction<int Function(VTablePointer, Pointer<Utf16>)>();
  late final _get_ArgumentsFn = _vtable.get_Arguments
      .asFunction<int Function(VTablePointer, Pointer<Pointer<Utf16>>)>();
  late final _put_ArgumentsFn = _vtable.put_Arguments
      .asFunction<int Function(VTablePointer, Pointer<Utf16>)>();
  late final _get_HotkeyFn = _vtable.get_Hotkey
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _put_HotkeyFn = _vtable.put_Hotkey
      .asFunction<int Function(VTablePointer, int)>();
  late final _get_ShowCommandFn = _vtable.get_ShowCommand
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _put_ShowCommandFn = _vtable.put_ShowCommand
      .asFunction<int Function(VTablePointer, int)>();
  late final _ResolveFn =
      _vtable.Resolve.asFunction<int Function(VTablePointer, int)>();
  late final _GetIconLocationFn =
      _vtable.GetIconLocation.asFunction<
        int Function(VTablePointer, Pointer<Pointer<Utf16>>, Pointer<Int32>)
      >();
  late final _SetIconLocationFn =
      _vtable.SetIconLocation.asFunction<
        int Function(VTablePointer, Pointer<Utf16>, int)
      >();
  late final _SaveFn =
      _vtable.Save.asFunction<int Function(VTablePointer, VARIANT)>();

  BSTR get path {
    final pbs = adaptiveCalloc<Pointer<Utf16>>();
    final hr$ = HRESULT(_get_PathFn(ptr, pbs));
    if (hr$.isError) {
      free(pbs);
      throw WindowsException(hr$);
    }
    final result$ = pbs.value;
    free(pbs);
    return .new(result$);
  }

  set path(BSTR bs) {
    final hr$ = HRESULT(_put_PathFn(ptr, bs));
    if (hr$.isError) throw WindowsException(hr$);
  }

  BSTR get description {
    final pbs = adaptiveCalloc<Pointer<Utf16>>();
    final hr$ = HRESULT(_get_DescriptionFn(ptr, pbs));
    if (hr$.isError) {
      free(pbs);
      throw WindowsException(hr$);
    }
    final result$ = pbs.value;
    free(pbs);
    return .new(result$);
  }

  set description(BSTR bs) {
    final hr$ = HRESULT(_put_DescriptionFn(ptr, bs));
    if (hr$.isError) throw WindowsException(hr$);
  }

  BSTR get workingDirectory {
    final pbs = adaptiveCalloc<Pointer<Utf16>>();
    final hr$ = HRESULT(_get_WorkingDirectoryFn(ptr, pbs));
    if (hr$.isError) {
      free(pbs);
      throw WindowsException(hr$);
    }
    final result$ = pbs.value;
    free(pbs);
    return .new(result$);
  }

  set workingDirectory(BSTR bs) {
    final hr$ = HRESULT(_put_WorkingDirectoryFn(ptr, bs));
    if (hr$.isError) throw WindowsException(hr$);
  }

  BSTR get arguments {
    final pbs = adaptiveCalloc<Pointer<Utf16>>();
    final hr$ = HRESULT(_get_ArgumentsFn(ptr, pbs));
    if (hr$.isError) {
      free(pbs);
      throw WindowsException(hr$);
    }
    final result$ = pbs.value;
    free(pbs);
    return .new(result$);
  }

  set arguments(BSTR bs) {
    final hr$ = HRESULT(_put_ArgumentsFn(ptr, bs));
    if (hr$.isError) throw WindowsException(hr$);
  }

  int get hotkey {
    final piHK = adaptiveCalloc<Int32>();
    final hr$ = HRESULT(_get_HotkeyFn(ptr, piHK));
    if (hr$.isError) {
      free(piHK);
      throw WindowsException(hr$);
    }
    final result$ = piHK.value;
    free(piHK);
    return result$;
  }

  set hotkey(int iHK) {
    final hr$ = HRESULT(_put_HotkeyFn(ptr, iHK));
    if (hr$.isError) throw WindowsException(hr$);
  }

  int get showCommand {
    final piShowCommand = adaptiveCalloc<Int32>();
    final hr$ = HRESULT(_get_ShowCommandFn(ptr, piShowCommand));
    if (hr$.isError) {
      free(piShowCommand);
      throw WindowsException(hr$);
    }
    final result$ = piShowCommand.value;
    free(piShowCommand);
    return result$;
  }

  set showCommand(int iShowCommand) {
    final hr$ = HRESULT(_put_ShowCommandFn(ptr, iShowCommand));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void resolve(int fFlags) {
    final hr$ = HRESULT(_ResolveFn(ptr, fFlags));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void getIconLocation(Pointer<Pointer<Utf16>> pbs, Pointer<Int32> piIcon) {
    final hr$ = HRESULT(_GetIconLocationFn(ptr, pbs, piIcon));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void setIconLocation(BSTR bs, int iIcon) {
    final hr$ = HRESULT(_SetIconLocationFn(ptr, bs, iIcon));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void save(VARIANT vWhere) {
    final hr$ = HRESULT(_SaveFn(ptr, vWhere));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IShellLinkDual(ptr: $ptr)';
}

/// @nodoc
base class IShellLinkDualVtbl extends Struct {
  external IDispatchVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Pointer<Utf16>> pbs)
    >
  >
  get_Path;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Utf16> bs)>
  >
  put_Path;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Pointer<Utf16>> pbs)
    >
  >
  get_Description;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Utf16> bs)>
  >
  put_Description;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Pointer<Utf16>> pbs)
    >
  >
  get_WorkingDirectory;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Utf16> bs)>
  >
  put_WorkingDirectory;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Pointer<Utf16>> pbs)
    >
  >
  get_Arguments;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Utf16> bs)>
  >
  put_Arguments;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> piHK)>
  >
  get_Hotkey;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 iHK)>
  >
  put_Hotkey;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Int32> piShowCommand)
    >
  >
  get_ShowCommand;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 iShowCommand)>
  >
  put_ShowCommand;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 fFlags)>
  >
  Resolve;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Pointer<Utf16>> pbs,
        Pointer<Int32> piIcon,
      )
    >
  >
  GetIconLocation;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Utf16> bs, Int32 iIcon)
    >
  >
  SetIconLocation;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VARIANT vWhere)>
  >
  Save;
}

@internal
final class IShellLinkDualCompanion extends ComCompanion<IShellLinkDual> {
  const IShellLinkDualCompanion();

  @pragma('vm:prefer-inline')
  @override
  IShellLinkDual Function(VTablePointer) get fromPointer => IShellLinkDual.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IShellLinkDual;
}
