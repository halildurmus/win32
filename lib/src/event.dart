import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'method.dart';
import 'mixins/custom_attributes_mixin.dart';
import 'models/models.dart';
import 'scope.dart';
import 'token_object.dart';
import 'type_aliases.dart';
import 'type_def.dart';

/// An event.
///
/// Events are way to associated a collection of methods defined on a given
/// class. There are two required methods (`add_` and `remove_`), plus an
/// optional one (`raise_`). Events are described in §II.22.13 of the ECMA-335
/// spec.
class Event extends TokenObject with CustomAttributesMixin {
  Event(
    super.scope,
    super.token,
    this._parentToken,
    this.name,
    this._attributes,
    this.eventType,
    this._addOnToken,
    this._removeOnToken,
    this._fireToken,
    this.otherMethodTokens,
  );

  final int eventType;
  final String name;
  final List<int> otherMethodTokens;

  final int _addOnToken;
  final int _attributes;
  final int _fireToken;
  final int _parentToken;
  final int _removeOnToken;

  /// Creates an event object from a provided token.
  factory Event.fromToken(Scope scope, int token) {
    assert(TokenType.fromToken(token) == TokenType.event);

    return using((Arena arena) {
      final ptkClass = arena<mdTypeDef>();
      final szEvent = arena<WCHAR>(stringBufferSize).cast<Utf16>();
      final pchEvent = arena<ULONG>();
      final pdwEventFlags = arena<DWORD>();
      final ptkEventType = arena<mdToken>();
      final ptkAddOn = arena<mdMethodDef>();
      final ptkRemoveOn = arena<mdMethodDef>();
      final tkkFire = arena<mdMethodDef>();
      final rgOtherMethod = arena<mdMethodDef>(16);
      final pcOtherMethod = arena<ULONG>();

      final reader = scope.reader;
      final hr = reader.getEventProps(
        token,
        ptkClass,
        szEvent,
        stringBufferSize,
        pchEvent,
        pdwEventFlags,
        ptkEventType,
        ptkAddOn,
        ptkRemoveOn,
        tkkFire,
        rgOtherMethod,
        16,
        pcOtherMethod,
      );
      if (FAILED(hr)) throw WindowsException(hr);

      return Event(
        scope,
        token,
        ptkClass.value,
        szEvent.toDartString(),
        pdwEventFlags.value,
        ptkEventType.value,
        ptkAddOn.value,
        ptkRemoveOn.value,
        tkkFire.value,
        rgOtherMethod.asTypedList(pcOtherMethod.value),
      );
    });
  }

  @override
  String toString() => name;

  /// Returns the add method for the event.
  Method? get addMethod => reader.isValidToken(_addOnToken) == TRUE
      ? Method.fromToken(scope, _addOnToken)
      : null;

  /// Returns the remove method for the event.
  Method? get removeMethod => reader.isValidToken(_removeOnToken) == TRUE
      ? Method.fromToken(scope, _removeOnToken)
      : null;

  /// Returns the raise method for the event.
  Method? get raiseMethod => reader.isValidToken(_fireToken) == TRUE
      ? Method.fromToken(scope, _fireToken)
      : null;

  /// Returns the [TypeDef] representing the class that declares the event.
  TypeDef get parent => scope.findTypeDefByToken(_parentToken)!;

  /// Returns true if the event is special; its name describes how.
  bool get isSpecialName =>
      _attributes & CorEventAttr.evSpecialName == CorEventAttr.evSpecialName;

  /// Returns true if the common language runtime should check the encoding of
  /// the event name.
  bool get isRTSpecialName =>
      _attributes & CorEventAttr.evRTSpecialName ==
      CorEventAttr.evRTSpecialName;
}
