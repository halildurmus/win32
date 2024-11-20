@TestOn('windows')
library;

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

import '../helpers.dart';

void main() {
  group('IUnknownExtension', () {
    setUpAll(initializeCom);

    group('cast', () {
      test('to the same interface', () {
        final dialog = createInstance<IFileDialog>(FileOpenDialog);
        check(refCount(dialog)).equals(1);

        final dialog2 = dialog.cast<IFileDialog>();
        check(dialog2.ptr.address).equals(dialog.ptr.address);
        check(refCount(dialog)).equals(2);
        check(refCount(dialog2)).equals(2);

        check(dialog2.release()).equals(1);
        check(dialog.release()).isZero();
      });

      test('to various interfaces', () {
        final dialog = createInstance<IFileDialog>(FileOpenDialog);
        check(refCount(dialog)).equals(1);

        final dialog2 = dialog.cast<IFileDialog2>();
        check(dialog2.ptr.address).not((it) => it.equals(dialog.ptr.address));
        check(refCount(dialog)).equals(2);
        check(refCount(dialog2)).equals(2);

        final unknown = dialog2.cast<IUnknown>();
        check(unknown.ptr.address).not((it) => it.equals(dialog2.ptr.address));
        check(refCount(dialog)).equals(3);
        check(refCount(dialog2)).equals(3);
        check(refCount(unknown)).equals(3);

        check(unknown.release()).equals(2);
        check(dialog2.release()).equals(1);
        check(dialog.release()).isZero();
      });

      test('calls release on the original instance', () {
        final dialog = createInstance<IFileDialog>(FileOpenDialog);
        check(refCount(dialog)).equals(1);

        final dialog2 = dialog.cast<IFileDialog2>(releaseOriginal: true);
        check(refCount(dialog2)).equals(1);

        check(dialog2.release()).isZero();
      });

      test('to random interface fails', () {
        final dialog = createInstance<IFileDialog>(FileOpenDialog);
        check(refCount(dialog)).equals(1);

        check(() => dialog.cast<ISpVoice>()).throws<WindowsException>()
          ..has((e) => e.hr, 'hr').equals(E_NOINTERFACE)
          ..has(
            (e) => e.message,
            'message',
          ).equals('No such interface supported');

        check(dialog.release()).isZero();
      });

      test('to various supported interfaces', () {
        final dialog = createInstance<IFileOpenDialog>(FileOpenDialog);
        check(refCount(dialog)).equals(1);

        final modal = dialog.cast<IModalWindow>();
        check(modal.ptr.address).not((it) => it.equals(dialog.ptr.address));
        check(refCount(modal)).equals(2);

        final dialog2 = modal.cast<IFileOpenDialog>();
        check(dialog2.ptr.address).not((it) => it.equals(modal.ptr.address));
        check(refCount(dialog2)).equals(3);

        final dialog3 = dialog2.cast<IFileDialog>();
        check(dialog3.ptr.address).not((it) => it.equals(dialog2.ptr.address));
        check(refCount(dialog3)).equals(4);

        final dialog4 = dialog3.cast<IFileDialog2>();
        check(dialog4.ptr.address).not((it) => it.equals(dialog3.ptr.address));
        check(refCount(dialog4)).equals(5);

        check(dialog4.release()).equals(4);
        check(dialog3.release()).equals(3);
        check(dialog2.release()).equals(2);
        check(modal.release()).equals(1);
        check(dialog.release()).isZero();
      });
    });
  });
}
