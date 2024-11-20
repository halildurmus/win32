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
import 'iuiautomationcacherequest.g.dart';
import 'iuiautomationelement.g.dart';
import 'iuiautomationelementarray.g.dart';
import 'iuiautomationtextrange2.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IUIAutomationTextRange3 = Guid.fromComponents(
  0x6a315d69,
  0x5512,
  0x4c2e,
  Uint8List.fromList(const [0x85, 0xf0, 0x53, 0xfc, 0xe6, 0xdd, 0x4b, 0xc2]),
);

/// Extends the IUIAutomationTextRange2 interface to support faster access to
/// the underlying rich text data on a text range.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationtextrange3>.
///
/// {@category com}
class IUIAutomationTextRange3 extends IUIAutomationTextRange2
    implements ComInterface {
  /// Creates a new instance of [IUIAutomationTextRange3] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IUIAutomationTextRange3]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationTextRange3(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationTextRange3Vtbl>().ref;

  /// Creates a new instance of [IUIAutomationTextRange3] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationTextRange3] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationTextRange3.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomationTextRange3Vtbl _vtable;
  late final _GetEnclosingElementBuildCacheFn =
      _vtable.GetEnclosingElementBuildCache.asFunction<
        int Function(VTablePointer, VTablePointer, Pointer<VTablePointer>)
      >();
  late final _GetChildrenBuildCacheFn =
      _vtable.GetChildrenBuildCache.asFunction<
        int Function(VTablePointer, VTablePointer, Pointer<VTablePointer>)
      >();
  late final _GetAttributeValuesFn =
      _vtable.GetAttributeValues.asFunction<
        int Function(
          VTablePointer,
          Pointer<Int32>,
          int,
          Pointer<Pointer<SAFEARRAY>>,
        )
      >();

  /// Gets the enclosing element and supplied properties and patterns for an
  /// element in a text range in a single cross-process call.
  ///
  /// This is equivalent to calling GetEnclosingElement, but adds the standard
  /// build cache pattern.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextrange3-getenclosingelementbuildcache>.
  IUIAutomationElement? getEnclosingElementBuildCache(
    IUIAutomationCacheRequest? cacheRequest,
  ) {
    final enclosingElement = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _GetEnclosingElementBuildCacheFn(
        ptr,
        cacheRequest?.ptr ?? nullptr,
        enclosingElement,
      ),
    );
    if (hr$.isError) {
      free(enclosingElement);
      throw WindowsException(hr$);
    }
    final result$ = enclosingElement.value;
    free(enclosingElement);
    if (result$.isNull) return null;
    return IUIAutomationElement(result$);
  }

  /// Returns the children and supplied properties and patterns for elements in
  /// a text range in a single cross-process call.
  ///
  /// This is equivalent to calling GetChildren, but adds the standard build
  /// cache pattern.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextrange3-getchildrenbuildcache>.
  IUIAutomationElementArray? getChildrenBuildCache(
    IUIAutomationCacheRequest? cacheRequest,
  ) {
    final children = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _GetChildrenBuildCacheFn(ptr, cacheRequest?.ptr ?? nullptr, children),
    );
    if (hr$.isError) {
      free(children);
      throw WindowsException(hr$);
    }
    final result$ = children.value;
    free(children);
    if (result$.isNull) return null;
    return IUIAutomationElementArray(result$);
  }

  /// Returns all of the requested text attribute values for a text range in a
  /// single cross-process call.
  ///
  /// This is equivalent to calling GetAttributeValue, except it can retrieve
  /// multiple values instead of just one.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextrange3-getattributevalues>.
  Pointer<SAFEARRAY> getAttributeValues(
    Pointer<Int32> attributeIds,
    int attributeIdCount,
  ) {
    final attributeValues = loggingCalloc<Pointer<SAFEARRAY>>();
    final hr$ = HRESULT(
      _GetAttributeValuesFn(
        ptr,
        attributeIds,
        attributeIdCount,
        attributeValues,
      ),
    );
    if (hr$.isError) {
      free(attributeValues);
      throw WindowsException(hr$);
    }
    final result$ = attributeValues.value;
    free(attributeValues);
    return result$;
  }

  @override
  String toString() => 'IUIAutomationTextRange3(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationTextRange3Vtbl extends Struct {
  external IUIAutomationTextRange2Vtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer cacheRequest,
        Pointer<VTablePointer> enclosingElement,
      )
    >
  >
  GetEnclosingElementBuildCache;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer cacheRequest,
        Pointer<VTablePointer> children,
      )
    >
  >
  GetChildrenBuildCache;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Int32> attributeIds,
        Int32 attributeIdCount,
        Pointer<Pointer<SAFEARRAY>> attributeValues,
      )
    >
  >
  GetAttributeValues;
}

@internal
final class IUIAutomationTextRange3Companion
    extends ComCompanion<IUIAutomationTextRange3> {
  const IUIAutomationTextRange3Companion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationTextRange3 Function(VTablePointer) get fromPointer =>
      IUIAutomationTextRange3.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationTextRange3;
}
