import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void main() {
  using((arena) {
    // The path of the channel that contains the events that you want to query.
    final channelPath = w('Microsoft-Windows-WindowsUpdateClient/Operational');
    // The query that specifies the types of events that you want to retrieve.
    // In this case, we are querying for events with EventID 26. To receive all
    // events in the channel, set it to '*'.
    final query = w('Event/System[EventID=26]');

    final Win32Result(value: hResults, :error) = EvtQuery(
      NULL,
      channelPath.ptr,
      query.ptr,
      EvtQueryChannelPath | EvtQueryForwardDirection,
    );

    if (hResults == NULL) {
      if (error == ERROR_EVT_CHANNEL_NOT_FOUND) {
        print('The specified event channel was not found.');
      } else if (error == ERROR_EVT_INVALID_QUERY) {
        // You can call the EvtGetExtendedStatus function to try to get
        // additional information as to what is wrong with the query.
        print('The event query is not valid.');
      } else {
        print('EvtQuery failed with $error.');
      }
      return;
    }

    try {
      printResults(hResults, arena);
    } finally {
      EvtClose(hResults);
    }
  });
}

/// Enumerate and print up to [maxEvents] from the result set.
void printResults(int hResults, Arena arena, {int maxEvents = 10}) {
  final events = arena<IntPtr>(maxEvents);
  final returned = arena<DWORD>();

  while (true) {
    // Get a block of events from the result set.
    final Win32Result(:value, :error) = EvtNext(
      hResults,
      maxEvents,
      events,
      INFINITE,
      0,
      returned,
    );

    if (!value) {
      if (error != ERROR_NO_MORE_ITEMS) {
        print('EvtNext failed with $error.');
      }
      break;
    }

    print('Retrieved ${returned.value} event(s).');

    final bufferUsed = arena<DWORD>();
    final propertyCount = arena<DWORD>();

    for (var i = 0; i < returned.value; i++) {
      // First call to get buffer size needed.
      var Win32Result(:value, :error) = EvtRender(
        NULL,
        events[i],
        EvtRenderEventXml,
        NULL,
        nullptr,
        bufferUsed,
        propertyCount,
      );

      if (!value && error != ERROR_INSUFFICIENT_BUFFER) {
        print('EvtRender failed with $error.');
        continue;
      }

      final bufferSizeInBytes = bufferUsed.value;
      final buffer = Pwstr.allocate(bufferSizeInBytes ~/ 2);

      Win32Result(:value, :error) = EvtRender(
        NULL,
        events[i],
        EvtRenderEventXml,
        bufferSizeInBytes,
        buffer.ptr,
        bufferUsed,
        propertyCount,
      );

      if (!value) {
        print('EvtRender failed with $error.');
        continue;
      }

      final xml = buffer.toDartString();
      print('Event XML:\n$xml\n');

      EvtClose(events[i]);
    }
  }
}
