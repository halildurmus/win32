@TestOn('windows')
library;

import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:test/scaffolding.dart';
import 'package:win32_clipboard/win32_clipboard.dart';

void main() {
  setUpAll(LeakTracker.enableInDebug);

  setUp(LeakTracker.reset);

  tearDown(() {
    LeakTracker.verifyNoLeaksInDebug();
    Clipboard.clear();
  });

  group('ClipboardChangeMonitor', () {
    group('events', () {
      test('stream emits for all clipboard changes', () async {
        final monitor = ClipboardChangeMonitor();
        await monitor.start();
        addTearDown(monitor.close);

        final received = <ClipboardChangeEvent>[];
        final events = monitor.events;
        final sub = events.listen(received.add);
        addTearDown(sub.cancel);

        // ── change clipboard data (1)
        {
          final next = events.first;
          check(
            Clipboard.setData(const .unicodeText('UnicodeTextData')),
          ).isTrue();
          await next;
        }

        check(received.length).equals(1);

        // ── change clipboard data (2)
        {
          final next = events.first;
          check(
            Clipboard.setData(const .fileList([r'C:\path\to\file.txt'])),
          ).isTrue();
          await next;
        }

        check(received.length).equals(2);

        // ── change clipboard data (3)
        {
          final next = events.first;
          final format = Clipboard.registerFormat(
            'win32_clipboard PointerData',
          );
          check(format.id).not((it) => it.equals(0));
          final ptr = adaptiveCalloc<Uint8>()..value = 10;
          addTearDown(() => adaptiveCalloc.free(ptr));
          final data = PointerData(ptr, 1, format);
          check(Clipboard.setData(data)).isTrue();
          check(Clipboard.setData(.pointer(ptr, 1, format))).isTrue();
          await next;
        }

        check(received.length).equals(3);
      });
    });

    group('onDataChanged', () {
      test('emits data for a registered custom format', () async {
        final monitor = ClipboardChangeMonitor();
        await monitor.start();
        addTearDown(monitor.close);

        final format = Clipboard.registerFormat(
          'win32_clipboard onDataChanged test',
        );
        check(format.id).not((it) => it.equals(0));

        final ptr = adaptiveCalloc<Uint8>()..value = 42;
        addTearDown(() => adaptiveCalloc.free(ptr));

        final next = monitor.onDataChanged(format).first;
        check(Clipboard.setData(.pointer(ptr, 1, format))).isTrue();
        final data = await next;
        check(data.format).equals(format);
      });

      test('does not emit for a different format', () async {
        final monitor = ClipboardChangeMonitor();
        await monitor.start();
        addTearDown(monitor.close);

        final watchedFormat = Clipboard.registerFormat(
          'win32_clipboard watched',
        );
        final otherFormat = Clipboard.registerFormat('win32_clipboard other');

        var watchedEmitted = false;
        final sub = monitor
            .onDataChanged(watchedFormat)
            .listen((_) => watchedEmitted = true);
        addTearDown(sub.cancel);

        // Write to a different custom format — the watched stream should be
        // silent.
        final ptr = adaptiveCalloc<Uint8>()..value = 7;
        addTearDown(() => adaptiveCalloc.free(ptr));

        final next = monitor.events.first;
        check(Clipboard.setData(.pointer(ptr, 1, otherFormat))).isTrue();
        await next;
        check(watchedEmitted).isFalse();
      });

      test(
        'emits multiple times for successive writes of the same format',
        () async {
          final monitor = ClipboardChangeMonitor();
          await monitor.start();
          addTearDown(monitor.close);

          final format = Clipboard.registerFormat(
            'win32_clipboard repeated writes',
          );
          final received = <ClipboardData>[];
          final sub = monitor.onDataChanged(format).listen(received.add);
          addTearDown(sub.cancel);

          for (var i = 0; i < 3; i++) {
            final ptr = adaptiveCalloc<Uint8>()..value = i;
            addTearDown(() => adaptiveCalloc.free(ptr));

            final next = monitor.onDataChanged(format).first;
            check(Clipboard.setData(.pointer(ptr, 1, format))).isTrue();
            await next;
          }

          check(received.length).equals(3);
        },
      );
    });

    group('onFileListChanged', () {
      test('emits file list when clipboard file list changes', () async {
        final monitor = ClipboardChangeMonitor();
        await monitor.start();
        addTearDown(monitor.close);

        final next = monitor.onFileListChanged.first;
        check(
          Clipboard.setData(
            const .fileList([r'C:\foo\bar.txt', r'C:\baz\qux.png']),
          ),
        ).isTrue();
        final files = await next;
        check(files).deepEquals([r'C:\foo\bar.txt', r'C:\baz\qux.png']);
      });

      test('emits multiple times for successive file list changes', () async {
        final monitor = ClipboardChangeMonitor();
        await monitor.start();
        addTearDown(monitor.close);

        final received = <List<String>>[];
        final sub = monitor.onFileListChanged.listen(received.add);
        addTearDown(sub.cancel);

        const batches = [
          [r'C:\a.txt'],
          [r'C:\b.txt', r'C:\c.txt'],
        ];

        for (final batch in batches) {
          final next = monitor.onFileListChanged.first;
          check(Clipboard.setData(.fileList(batch))).isTrue();
          await next;
        }

        check(received.length).equals(2);
        check(received[0]).deepEquals([r'C:\a.txt']);
        check(received[1]).deepEquals([r'C:\b.txt', r'C:\c.txt']);
      });

      test('does not emit when a non-file-list format is set', () async {
        final monitor = ClipboardChangeMonitor();
        await monitor.start();
        addTearDown(monitor.close);

        var fileListEmitted = false;
        final sub = monitor.onFileListChanged.listen(
          (_) => fileListEmitted = true,
        );
        addTearDown(sub.cancel);

        final next = monitor.events.first;
        check(Clipboard.setData(const .unicodeText('just text'))).isTrue();
        await next;

        check(fileListEmitted).isFalse();
      });
    });

    group('onTextChanged', () {
      test('emits text when clipboard text changes', () async {
        final monitor = ClipboardChangeMonitor();
        await monitor.start();
        addTearDown(monitor.close);

        final next = monitor.onTextChanged.first;
        check(Clipboard.setData(const .unicodeText('Hello, world!'))).isTrue();
        final text = await next;
        check(text).equals('Hello, world!');
      });

      test('emits multiple times for successive text changes', () async {
        final monitor = ClipboardChangeMonitor();
        await monitor.start();
        addTearDown(monitor.close);

        final received = <String>[];
        final sub = monitor.onTextChanged.listen(received.add);
        addTearDown(sub.cancel);

        for (final text in ['First', 'Second', 'Third']) {
          final next = monitor.onTextChanged.first;
          check(Clipboard.setData(.unicodeText(text))).isTrue();
          await next;
        }

        check(received).deepEquals(['First', 'Second', 'Third']);
      });

      test('does not emit when a non-text format is set', () async {
        final monitor = ClipboardChangeMonitor();
        await monitor.start();
        addTearDown(monitor.close);

        var textEmitted = false;
        final sub = monitor.onTextChanged.listen((_) => textEmitted = true);
        addTearDown(sub.cancel);

        // Set a file list — onTextChanged should stay silent.
        final next = monitor.events.first;
        check(Clipboard.setData(const .fileList([r'C:\file.txt']))).isTrue();
        await next;

        check(textEmitted).isFalse();
      });
    });

    group('lifecycle', () {
      tearDown(Clipboard.clear);

      test('onTextChanged does not emit after monitor is stopped', () async {
        final monitor = ClipboardChangeMonitor();
        await monitor.start();
        await monitor.stop();
        addTearDown(monitor.close);

        var emitted = false;
        // Briefly listen on the still-open (but inactive) stream.
        final sub = monitor.onTextChanged.listen((_) => emitted = true);
        addTearDown(sub.cancel);

        // Manually trigger a clipboard change — no event should propagate.
        Clipboard.setData(const .unicodeText('after stop'));

        // Give any stray async callbacks a chance to fire.
        await Future.delayed(const .new(milliseconds: 100));

        check(emitted).isFalse();
      });

      test('can be restarted and resumes emitting', () async {
        final monitor = ClipboardChangeMonitor();
        await monitor.start();
        await monitor.stop();
        await monitor.start();
        addTearDown(monitor.close);

        final next = monitor.onTextChanged.first;
        check(Clipboard.setData(const .unicodeText('after restart'))).isTrue();
        final text = await next;
        check(text).equals('after restart');
      });
    });
  });
}
