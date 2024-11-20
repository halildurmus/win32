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
import '../variant.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';
import 'iwbemcontext.g.dart';

/// @nodoc
final IID_IWbemContext = Guid.fromComponents(
  0x44aca674,
  0xe8fc,
  0x11d0,
  Uint8List.fromList(const [0xa0, 0x7c, 0x0, 0xc0, 0x4f, 0xb6, 0x88, 0x20]),
);

/// Used to communicate additional context information to providers when
/// submitting IWbemServices calls to WMI.
///
/// All primary calls in IWbemServices take an optional parameter pointing to an
/// object of this type.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wbemcli/nn-wbemcli-iwbemcontext>.
///
/// {@category com}
class IWbemContext extends IUnknown implements ComInterface {
  /// Creates a new instance of [IWbemContext] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IWbemContext] interface.
  /// The [ptr] must not be [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IWbemContext(super.ptr) : _vtable = ptr.value.cast<IWbemContextVtbl>().ref;

  /// Creates a new instance of [IWbemContext] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IWbemContext] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IWbemContext.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IWbemContextVtbl _vtable;
  late final _CloneFn = _vtable
      .Clone.asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();
  late final _GetNamesFn =
      _vtable.GetNames.asFunction<
        int Function(VTablePointer, int, Pointer<Pointer<SAFEARRAY>>)
      >();
  late final _BeginEnumerationFn =
      _vtable.BeginEnumeration.asFunction<int Function(VTablePointer, int)>();
  late final _NextFn =
      _vtable.Next.asFunction<
        int Function(VTablePointer, int, Pointer<BSTR>, Pointer<VARIANT>)
      >();
  late final _EndEnumerationFn =
      _vtable.EndEnumeration.asFunction<int Function(VTablePointer)>();
  late final _SetValueFn =
      _vtable.SetValue.asFunction<
        int Function(VTablePointer, PCWSTR, int, Pointer<VARIANT>)
      >();
  late final _GetValueFn =
      _vtable.GetValue.asFunction<
        int Function(VTablePointer, PCWSTR, int, Pointer<VARIANT>)
      >();
  late final _DeleteValueFn = _vtable
      .DeleteValue.asFunction<int Function(VTablePointer, PCWSTR, int)>();
  late final _DeleteAllFn =
      _vtable.DeleteAll.asFunction<int Function(VTablePointer)>();

  /// Makes a logical copy of the current IWbemContext object.
  ///
  /// This method can be useful when many calls must be made which have largely
  /// identical IWbemContext objects.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemcontext-clone>.
  IWbemContext? clone() {
    final ppNewCopy = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_CloneFn(ptr, ppNewCopy));
    if (hr$.isError) {
      free(ppNewCopy);
      throw WindowsException(hr$);
    }
    final result$ = ppNewCopy.value;
    free(ppNewCopy);
    if (result$.isNull) return null;
    return IWbemContext(result$);
  }

  /// Returns a SAFEARRAY structure of all of the names of the named context
  /// values.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemcontext-getnames>.
  Pointer<SAFEARRAY> getNames(int lFlags) {
    final pNames = loggingCalloc<Pointer<SAFEARRAY>>();
    final hr$ = HRESULT(_GetNamesFn(ptr, lFlags, pNames));
    if (hr$.isError) {
      free(pNames);
      throw WindowsException(hr$);
    }
    final result$ = pNames.value;
    free(pNames);
    return result$;
  }

  /// Resets the enumeration of all the context values in the object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemcontext-beginenumeration>.
  @pragma('vm:prefer-inline')
  void beginEnumeration(int lFlags) {
    final hr$ = HRESULT(_BeginEnumerationFn(ptr, lFlags));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves the next value in an enumeration of all context values beginning
  /// with `IWbemContext.beginEnumeration`.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemcontext-next>.
  @pragma('vm:prefer-inline')
  void next(int lFlags, Pointer<BSTR> pstrName, Pointer<VARIANT> pValue) {
    final hr$ = HRESULT(_NextFn(ptr, lFlags, pstrName, pValue));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Ends an enumeration sequence that begins with
  /// `IWbemContext.beginEnumeration`.
  ///
  /// This call is not required, but it releases as early as possible any system
  /// resources associated with the enumeration.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemcontext-endenumeration>.
  @pragma('vm:prefer-inline')
  void endEnumeration() {
    final hr$ = HRESULT(_EndEnumerationFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Creates or overwrites a named context value.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemcontext-setvalue>.
  @pragma('vm:prefer-inline')
  void setValue(PCWSTR wszName, int lFlags, Pointer<VARIANT> pValue) {
    final hr$ = HRESULT(_SetValueFn(ptr, wszName, lFlags, pValue));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Used to retrieve a specific named context value by name.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemcontext-getvalue>.
  Pointer<VARIANT> getValue(PCWSTR wszName, int lFlags) {
    final pValue = loggingCalloc<VARIANT>();
    final hr$ = HRESULT(_GetValueFn(ptr, wszName, lFlags, pValue));
    if (hr$.isError) {
      free(pValue);
      throw WindowsException(hr$);
    }
    return pValue;
  }

  /// Deletes a named context value created by `IWbemContext.setValue`.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemcontext-deletevalue>.
  @pragma('vm:prefer-inline')
  void deleteValue(PCWSTR wszName, int lFlags) {
    final hr$ = HRESULT(_DeleteValueFn(ptr, wszName, lFlags));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Removes all named context values from the current object, thus emptying
  /// the object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemcontext-deleteall>.
  @pragma('vm:prefer-inline')
  void deleteAll() {
    final hr$ = HRESULT(_DeleteAllFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IWbemContext(ptr: $ptr)';
}

/// @nodoc
base class IWbemContextVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> ppNewCopy)
    >
  >
  Clone;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 lFlags,
        Pointer<Pointer<SAFEARRAY>> pNames,
      )
    >
  >
  GetNames;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 lFlags)>
  >
  BeginEnumeration;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 lFlags,
        Pointer<BSTR> pstrName,
        Pointer<VARIANT> pValue,
      )
    >
  >
  Next;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>>
  EndEnumeration;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR wszName,
        Int32 lFlags,
        Pointer<VARIANT> pValue,
      )
    >
  >
  SetValue;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR wszName,
        Int32 lFlags,
        Pointer<VARIANT> pValue,
      )
    >
  >
  GetValue;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, PCWSTR wszName, Int32 lFlags)
    >
  >
  DeleteValue;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>>
  DeleteAll;
}

@internal
final class IWbemContextCompanion extends ComCompanion<IWbemContext> {
  const IWbemContextCompanion();

  @pragma('vm:prefer-inline')
  @override
  IWbemContext Function(VTablePointer) get fromPointer => IWbemContext.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IWbemContext;
}
