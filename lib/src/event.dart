import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'base.dart';
import 'constants.dart';
import 'mixins/customattributes_mixin.dart';
import 'scope.dart';
import 'type_aliases.dart';
import 'typedef.dart';
import 'utils/string.dart';

/// An event.
class Event extends TokenObject with CustomAttributesMixin {
  final int addOnToken;
  final String name;
  final int eventType;
  final int fireToken;
  final List<int> otherMethodTokens;
  final int removeOnToken;

  final int _attributes;
  final int _parentToken;

  Event(
      Scope scope,
      int token,
      this._parentToken,
      this.name,
      this._attributes,
      this.eventType,
      this.addOnToken,
      this.removeOnToken,
      this.fireToken,
      this.otherMethodTokens)
      : super(scope, token);

  /// Creates an event object from its given token.
  factory Event.fromToken(Scope scope, int token) {
    final ptkClass = calloc<mdTypeDef>();
    final szEvent = stralloc(MAX_STRING_SIZE);
    final pchEvent = calloc<ULONG>();
    final pdwEventFlags = calloc<DWORD>();
    final ptkEventType = calloc<mdToken>();
    final ptkAddOn = calloc<mdMethodDef>();
    final ptkRemoveOn = calloc<mdMethodDef>();
    final tkkFire = calloc<mdMethodDef>();
    final rgOtherMethod = calloc<mdMethodDef>(16);
    final pcOtherMethod = calloc<ULONG>();

    try {
      final reader = scope.reader;
      final hr = reader.GetEventProps(
          token,
          ptkClass,
          szEvent,
          MAX_STRING_SIZE,
          pchEvent,
          pdwEventFlags,
          ptkEventType,
          ptkAddOn,
          ptkRemoveOn,
          tkkFire,
          rgOtherMethod,
          16,
          pcOtherMethod);

      if (SUCCEEDED(hr)) {
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
            rgOtherMethod.asTypedList(pcOtherMethod.value));
      } else {
        throw WindowsException(hr);
      }
    } finally {
      free(ptkClass);
      free(szEvent);
      free(pchEvent);
      free(pdwEventFlags);
      free(ptkEventType);
      free(ptkAddOn);
      free(ptkRemoveOn);
      free(tkkFire);
      free(rgOtherMethod);
      free(pcOtherMethod);
    }
  }

  /// Returns the [TypeDef] representing the class that declares the event.
  TypeDef get parent => TypeDef.fromToken(scope, _parentToken);

  /// Returns true if the event is special; its name describes how.
  bool get isSpecialName =>
      _attributes & CorEventAttr.evSpecialName == CorEventAttr.evSpecialName;

  /// Returns true if the common language runtime should check the encoding of the event name.
  bool get isRTSpecialName =>
      _attributes & CorEventAttr.evRTSpecialName ==
      CorEventAttr.evRTSpecialName;
}
