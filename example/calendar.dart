// calendar.dart

// Raw example of calling WinRT APIs

import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

ICalendar CreateCalendar() {
  final calendarClassName = 'Windows.Globalization.Calendar';
  final calendarClassHString = allocate<IntPtr>();

  var hr = WindowsCreateString(Utf16.toUtf16(calendarClassName),
      calendarClassName.length, calendarClassHString);
  if (FAILED(hr)) {
    throw Exception('WindowsCreateString failed.');
  }

  final inspectablePtr = allocate<IntPtr>();
  hr = RoActivateInstance(calendarClassHString.value, inspectablePtr);
  if (FAILED(hr)) {
    throw Exception('RoActivateInstance failed.');
  }

  final classNamePtr = allocate<IntPtr>();
  final inspectable = IInspectable(inspectablePtr.cast());
  hr = inspectable.GetRuntimeClassName(classNamePtr);
  if (FAILED(hr)) {
    throw Exception('GetRuntimeClassName failed.');
  }

  final iidCalendar = GUID.allocate();
  hr = IIDFromString(TEXT(IID_ICalendar), iidCalendar.addressOf);
  if (FAILED(hr)) {
    throw Exception('IIDFromString failed.');
  }

  final calendarPtr = allocate<IntPtr>();
  hr = inspectable.QueryInterface(iidCalendar.addressOf, calendarPtr);

  if (FAILED(hr)) {
    throw Exception('QueryInterface failed.');
  }

  return ICalendar(calendarPtr.cast());
}

void winrtInitialize() => RoInitialize(RO_INIT_TYPE.RO_INIT_SINGLETHREADED);
void winrtUninitialize() => RoUninitialize();

String fromHString(Pointer<IntPtr> hstring) {
  final stringLength = allocate<Uint32>();
  final stringPtr = WindowsGetStringRawBuffer(hstring.value, stringLength);
  final dartString = stringPtr.unpackString(stringLength.value);

  free(stringLength);

  return dartString;
}

void main() {
  winrtInitialize();

  final calendar = CreateCalendar();

  print('The year is ${calendar.Year}');

  final systemPtr = allocate<IntPtr>();
  calendar.GetCalendarSystem(systemPtr);
  print('The calendar system is ${fromHString(systemPtr)}');

  if (calendar.IsDaylightSavingTime == 1) {
    print('Daylight Saving Time is in observance.');
  } else if (calendar.IsDaylightSavingTime == 0) {
    print('Daylight Savings Time is not in observance.');
  }

  winrtUninitialize();
}
