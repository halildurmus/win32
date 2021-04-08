import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'base.dart';
import 'com/IMetaDataImport2.dart';
import 'mixins/customattributes_mixin.dart';

class Event extends TokenObject with CustomAttributesMixin {
  final String eventName;
  final int classToken;
  final int attributes;
  final int eventType;
  final int addOnToken;
  final int removeOnToken;
  final int fireToken;
  final List<int> otherMethodTokens;

  Event(
      IMetaDataImport2 reader,
      int token,
      this.eventName,
      this.classToken,
      this.attributes,
      this.eventType,
      this.addOnToken,
      this.removeOnToken,
      this.fireToken,
      this.otherMethodTokens)
      : super(reader, token);

  factory Event.fromToken(IMetaDataImport2 reader, int token) {
    final ptkClass = calloc<Uint32>();
    final szEvent = calloc<Uint16>(MAX_STRING_SIZE).cast<Utf16>();
    final pchEvent = calloc<Uint32>();
    final pdwEventFlags = calloc<Uint32>();
    final ptkEventType = calloc<Uint32>();
    final ptkAddOn = calloc<Uint32>();
    final ptkRemoveOn = calloc<Uint32>();
    final tkkFire = calloc<Uint32>();
    final rgOtherMethod = calloc<Uint32>(16);
    final pcOtherMethod = calloc<Uint32>();

    try {
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
            reader,
            token,
            szEvent.toDartString(),
            ptkClass.value,
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
      calloc.free(ptkClass);
      calloc.free(szEvent);
      calloc.free(pchEvent);
      calloc.free(pdwEventFlags);
      calloc.free(ptkEventType);
      calloc.free(ptkAddOn);
      calloc.free(ptkRemoveOn);
      calloc.free(tkkFire);
      calloc.free(rgOtherMethod);
      calloc.free(pcOtherMethod);
    }
  }
}
