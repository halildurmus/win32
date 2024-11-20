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
import 'ispellchecker.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ISpellCheckerChangedEventHandler = Guid.fromComponents(
  0xb83a5b0,
  0x792f,
  0x4eab,
  Uint8List.fromList(const [0x97, 0x99, 0xac, 0xf5, 0x2c, 0x5e, 0xd0, 0x8a]),
);

/// Allows the caller to create a handler for notifications that the state of
/// the speller has changed.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/spellcheck/nn-spellcheck-ispellcheckerchangedeventhandler>.
///
/// {@category com}
class ISpellCheckerChangedEventHandler extends IUnknown
    implements ComInterface {
  /// Creates a new instance of [ISpellCheckerChangedEventHandler] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [ISpellCheckerChangedEventHandler] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  ISpellCheckerChangedEventHandler(super.ptr)
    : _vtable = ptr.value.cast<ISpellCheckerChangedEventHandlerVtbl>().ref;

  final ISpellCheckerChangedEventHandlerVtbl _vtable;
  late final _InvokeFn =
      _vtable.Invoke.asFunction<int Function(VTablePointer, VTablePointer)>();

  /// Receives the SpellCheckerChanged event.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/spellcheck/nf-spellcheck-ispellcheckerchangedeventhandler-invoke>.
  @pragma('vm:prefer-inline')
  void invoke(ISpellChecker? sender) {
    final hr$ = HRESULT(_InvokeFn(ptr, sender?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'ISpellCheckerChangedEventHandler(ptr: $ptr)';
}

/// @nodoc
base class ISpellCheckerChangedEventHandlerVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer sender)>
  >
  Invoke;
}

@internal
final class ISpellCheckerChangedEventHandlerCompanion
    extends ComCompanion<ISpellCheckerChangedEventHandler> {
  const ISpellCheckerChangedEventHandlerCompanion();

  @pragma('vm:prefer-inline')
  @override
  ISpellCheckerChangedEventHandler Function(VTablePointer) get fromPointer =>
      ISpellCheckerChangedEventHandler.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_ISpellCheckerChangedEventHandler;
}
