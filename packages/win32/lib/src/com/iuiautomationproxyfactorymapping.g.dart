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
import 'iuiautomationproxyfactoryentry.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IUIAutomationProxyFactoryMapping = Guid.fromComponents(
  0x9e31e18,
  0x872d,
  0x4873,
  Uint8List.fromList(const [0x93, 0xd1, 0x1e, 0x54, 0x1e, 0xc1, 0x33, 0xfd]),
);

/// Exposes properties and methods for a table of proxy factories.
///
/// Each table entry is represented by an IUIAutomationProxyFactoryEntry
/// interface. The entries are in the order in which the system will attempt to
/// use the proxies.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationproxyfactorymapping>.
///
/// {@category com}
class IUIAutomationProxyFactoryMapping extends IUnknown
    implements ComInterface {
  /// Creates a new instance of [IUIAutomationProxyFactoryMapping] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IUIAutomationProxyFactoryMapping] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationProxyFactoryMapping(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationProxyFactoryMappingVtbl>().ref;

  /// Creates a new instance of [IUIAutomationProxyFactoryMapping] from an
  /// existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationProxyFactoryMapping] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationProxyFactoryMapping.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomationProxyFactoryMappingVtbl _vtable;
  late final _get_CountFn = _vtable.get_Count
      .asFunction<int Function(VTablePointer, Pointer<Uint32>)>();
  late final _GetTableFn =
      _vtable.GetTable.asFunction<
        int Function(VTablePointer, Pointer<Pointer<SAFEARRAY>>)
      >();
  late final _GetEntryFn =
      _vtable.GetEntry.asFunction<
        int Function(VTablePointer, int, Pointer<VTablePointer>)
      >();
  late final _SetTableFn = _vtable
      .SetTable.asFunction<int Function(VTablePointer, Pointer<SAFEARRAY>)>();
  late final _InsertEntriesFn =
      _vtable.InsertEntries.asFunction<
        int Function(VTablePointer, int, Pointer<SAFEARRAY>)
      >();
  late final _InsertEntryFn =
      _vtable.InsertEntry.asFunction<
        int Function(VTablePointer, int, VTablePointer)
      >();
  late final _RemoveEntryFn =
      _vtable.RemoveEntry.asFunction<int Function(VTablePointer, int)>();
  late final _ClearTableFn =
      _vtable.ClearTable.asFunction<int Function(VTablePointer)>();
  late final _RestoreDefaultTableFn =
      _vtable.RestoreDefaultTable.asFunction<int Function(VTablePointer)>();

  /// Retrieves the number of entries in the proxy factory table.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationproxyfactorymapping-get_count>.
  int get count {
    final count = loggingCalloc<Uint32>();
    final hr$ = HRESULT(_get_CountFn(ptr, count));
    if (hr$.isError) {
      free(count);
      throw WindowsException(hr$);
    }
    final result$ = count.value;
    free(count);
    return result$;
  }

  /// Retrieves all entries in the proxy factory table.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationproxyfactorymapping-gettable>.
  Pointer<SAFEARRAY> getTable() {
    final table = loggingCalloc<Pointer<SAFEARRAY>>();
    final hr$ = HRESULT(_GetTableFn(ptr, table));
    if (hr$.isError) {
      free(table);
      throw WindowsException(hr$);
    }
    final result$ = table.value;
    free(table);
    return result$;
  }

  /// Retrieves an entry from the proxy factory table.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationproxyfactorymapping-getentry>.
  IUIAutomationProxyFactoryEntry? getEntry(int index) {
    final entry = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetEntryFn(ptr, index, entry));
    if (hr$.isError) {
      free(entry);
      throw WindowsException(hr$);
    }
    final result$ = entry.value;
    free(entry);
    if (result$.isNull) return null;
    return IUIAutomationProxyFactoryEntry(result$);
  }

  /// Sets the table of proxy factories.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationproxyfactorymapping-settable>.
  @pragma('vm:prefer-inline')
  void setTable(Pointer<SAFEARRAY> factoryList) {
    final hr$ = HRESULT(_SetTableFn(ptr, factoryList));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Inserts entries into the table of proxy factories.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationproxyfactorymapping-insertentries>.
  @pragma('vm:prefer-inline')
  void insertEntries(int before, Pointer<SAFEARRAY> factoryList) {
    final hr$ = HRESULT(_InsertEntriesFn(ptr, before, factoryList));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Insert an entry into the table of proxy factories.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationproxyfactorymapping-insertentry>.
  @pragma('vm:prefer-inline')
  void insertEntry(int before, IUIAutomationProxyFactoryEntry? factory) {
    final hr$ = HRESULT(_InsertEntryFn(ptr, before, factory?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Removes an entry from the table of proxy factories.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationproxyfactorymapping-removeentry>.
  @pragma('vm:prefer-inline')
  void removeEntry(int index) {
    final hr$ = HRESULT(_RemoveEntryFn(ptr, index));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Removes all entries from the proxy factory table.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationproxyfactorymapping-cleartable>.
  @pragma('vm:prefer-inline')
  void clearTable() {
    final hr$ = HRESULT(_ClearTableFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Restores the default table of proxy factories.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationproxyfactorymapping-restoredefaulttable>.
  @pragma('vm:prefer-inline')
  void restoreDefaultTable() {
    final hr$ = HRESULT(_RestoreDefaultTableFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IUIAutomationProxyFactoryMapping(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationProxyFactoryMappingVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Uint32> count)>
  >
  get_Count;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Pointer<SAFEARRAY>> table)
    >
  >
  GetTable;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 index,
        Pointer<VTablePointer> entry,
      )
    >
  >
  GetEntry;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<SAFEARRAY> factoryList)
    >
  >
  SetTable;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 before,
        Pointer<SAFEARRAY> factoryList,
      )
    >
  >
  InsertEntries;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Uint32 before, VTablePointer factory)
    >
  >
  InsertEntry;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Uint32 index)>
  >
  RemoveEntry;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>>
  ClearTable;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>>
  RestoreDefaultTable;
}

@internal
final class IUIAutomationProxyFactoryMappingCompanion
    extends ComCompanion<IUIAutomationProxyFactoryMapping> {
  const IUIAutomationProxyFactoryMappingCompanion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationProxyFactoryMapping Function(VTablePointer) get fromPointer =>
      IUIAutomationProxyFactoryMapping.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationProxyFactoryMapping;
}
