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
import 'iuiautomationelement3.g.dart';
import 'iuiautomationelementarray.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IUIAutomationElement4 = Guid.fromComponents(
  0x3b6e233c,
  0x52fb,
  0x4063,
  Uint8List.fromList(const [0xa4, 0xc9, 0x77, 0xc0, 0x75, 0xc2, 0xa0, 0x6b]),
);

/// Extends the IUIAutomationElement3 interface.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationelement4>.
///
/// {@category com}
class IUIAutomationElement4 extends IUIAutomationElement3
    implements ComInterface {
  /// Creates a new instance of [IUIAutomationElement4] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IUIAutomationElement4]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationElement4(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationElement4Vtbl>().ref;

  /// Creates a new instance of [IUIAutomationElement4] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationElement4] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationElement4.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomationElement4Vtbl _vtable;
  late final _get_CurrentPositionInSetFn = _vtable.get_CurrentPositionInSet
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_CurrentSizeOfSetFn = _vtable.get_CurrentSizeOfSet
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_CurrentLevelFn = _vtable.get_CurrentLevel
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_CurrentAnnotationTypesFn = _vtable.get_CurrentAnnotationTypes
      .asFunction<int Function(VTablePointer, Pointer<Pointer<SAFEARRAY>>)>();
  late final _get_CurrentAnnotationObjectsFn = _vtable
      .get_CurrentAnnotationObjects
      .asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();
  late final _get_CachedPositionInSetFn = _vtable.get_CachedPositionInSet
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_CachedSizeOfSetFn = _vtable.get_CachedSizeOfSet
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_CachedLevelFn = _vtable.get_CachedLevel
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_CachedAnnotationTypesFn = _vtable.get_CachedAnnotationTypes
      .asFunction<int Function(VTablePointer, Pointer<Pointer<SAFEARRAY>>)>();
  late final _get_CachedAnnotationObjectsFn = _vtable
      .get_CachedAnnotationObjects
      .asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();

  /// Returns the current 1-based integer for the ordinal position in the set
  /// for the element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement4-get_currentpositioninset>.
  int get currentPositionInSet {
    final retVal = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_CurrentPositionInSetFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Returns the current 1-based integer for the size of the set where the
  /// element is located.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement4-get_currentsizeofset>.
  int get currentSizeOfSet {
    final retVal = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_CurrentSizeOfSetFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Returns the current 1-based integer for the level (hierarchy) for the
  /// element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement4-get_currentlevel>.
  int get currentLevel {
    final retVal = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_CurrentLevelFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Returns the current list of annotation types associated with this element,
  /// such as comment, header, footer, and so on.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement4-get_currentannotationtypes>.
  Pointer<SAFEARRAY> get currentAnnotationTypes {
    final retVal = loggingCalloc<Pointer<SAFEARRAY>>();
    final hr$ = HRESULT(_get_CurrentAnnotationTypesFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Returns the current list of annotation objects associated with this
  /// element, such as comment, header, footer, and so on.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement4-get_currentannotationobjects>.
  IUIAutomationElementArray? get currentAnnotationObjects {
    final retVal = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_get_CurrentAnnotationObjectsFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    if (result$.isNull) return null;
    return IUIAutomationElementArray(result$);
  }

  /// Returns the cached 1-based integer for the ordinal position in the set for
  /// the element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement4-get_cachedpositioninset>.
  int get cachedPositionInSet {
    final retVal = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_CachedPositionInSetFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Returns the cached 1-based integer for the size of the set where the
  /// element is located.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement4-get_cachedsizeofset>.
  int get cachedSizeOfSet {
    final retVal = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_CachedSizeOfSetFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Returns the cached 1-based integer for the level (hierarchy) for the
  /// element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement4-get_cachedlevel>.
  int get cachedLevel {
    final retVal = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_CachedLevelFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Returns the cached list of annotation types associated with this element,
  /// such as comment, header, footer, and so on.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement4-get_cachedannotationtypes>.
  Pointer<SAFEARRAY> get cachedAnnotationTypes {
    final retVal = loggingCalloc<Pointer<SAFEARRAY>>();
    final hr$ = HRESULT(_get_CachedAnnotationTypesFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Returns the cached list of annotation objects associated with this
  /// element, such as comment, header, footer, and so on.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement4-get_cachedannotationobjects>.
  IUIAutomationElementArray? get cachedAnnotationObjects {
    final retVal = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_get_CachedAnnotationObjectsFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    if (result$.isNull) return null;
    return IUIAutomationElementArray(result$);
  }

  @override
  String toString() => 'IUIAutomationElement4(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationElement4Vtbl extends Struct {
  external IUIAutomationElement3Vtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> retVal)>
  >
  get_CurrentPositionInSet;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> retVal)>
  >
  get_CurrentSizeOfSet;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> retVal)>
  >
  get_CurrentLevel;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Pointer<SAFEARRAY>> retVal)
    >
  >
  get_CurrentAnnotationTypes;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> retVal)
    >
  >
  get_CurrentAnnotationObjects;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> retVal)>
  >
  get_CachedPositionInSet;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> retVal)>
  >
  get_CachedSizeOfSet;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> retVal)>
  >
  get_CachedLevel;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Pointer<SAFEARRAY>> retVal)
    >
  >
  get_CachedAnnotationTypes;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> retVal)
    >
  >
  get_CachedAnnotationObjects;
}

@internal
final class IUIAutomationElement4Companion
    extends ComCompanion<IUIAutomationElement4> {
  const IUIAutomationElement4Companion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationElement4 Function(VTablePointer) get fromPointer =>
      IUIAutomationElement4.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationElement4;
}
