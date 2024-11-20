import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

void main() {
  group('Win32 constants tests', () {
    group('BOOL', () {
      test('FALSE', () {
        check(FALSE).equals(0);
      });

      test('TRUE', () {
        check(TRUE).equals(1);
      });
    });

    group('GUID', () {
      test('FOLDERID_LocalAppData', () {
        final guid = FOLDERID_LocalAppData;
        check(guid.toString()).equals('{f1b32785-6fba-4fcf-9d55-7b8e7f157091}');
      });

      test('GUID_DEVINTERFACE_HID', () {
        final guid = GUID_DEVINTERFACE_HID;
        check(guid.toString()).equals('{4d1e55b2-f16f-11cf-88cb-001111000030}');
      });
    });

    group('HKEY', () {
      test('HKEY_CURRENT_USER', () {
        check(HKEY_CURRENT_USER).equals(-2147483647);
      });

      test('HKEY_LOCAL_MACHINE', () {
        check(HKEY_LOCAL_MACHINE).equals(-2147483646);
      });
    });

    group('HRESULT', () {
      test('E_ACCESSDENIED', () {
        check(E_ACCESSDENIED.code.toUnsigned(32)).equals(0x80070005);
      });

      test('E_NOINTERFACE', () {
        check(E_NOINTERFACE.code.toUnsigned(32)).equals(0x80004002);
      });

      test('S_FALSE', () {
        check(S_FALSE.code).equals(0x1);
      });

      test('S_OK', () {
        check(S_OK.code).equals(0x0);
      });
    });

    group('HWND', () {
      test('HWND_BROADCAST', () {
        check(HWND_BROADCAST).equals(65535);
      });

      test('HWND_MESSAGE', () {
        check(HWND_MESSAGE).equals(-3);
      });
    });

    group('NTSTATUS', () {
      test('STATUS_NOT_IMPLEMENTED', () {
        check(STATUS_NOT_IMPLEMENTED.code.toUnsigned(32)).equals(0xC0000002);
      });
    });

    group('PROPERTYKEY', () {
      test('PKEY_DeviceClass_ClassName', () {
        final pkey = PKEY_DeviceClass_ClassName;
        final PropertyKey(:fmtid, :pid) = pkey;
        check(
          fmtid.toString(),
        ).equals('{259abffc-50a7-47ce-af08-68c9a7d73366}');
        check(pid).equals(3);
      });

      test('PKEY_DeviceInterface_FriendlyName', () {
        final pkey = PKEY_DeviceInterface_FriendlyName;
        final PropertyKey(:fmtid, :pid) = pkey;
        check(
          fmtid.toString(),
        ).equals('{026e516e-b814-414b-83cd-856d6fef4822}');
        check(pid).equals(2);
      });
    });

    group('PWSTR', () {
      test('IDC_ARROW', () {
        check(IDC_ARROW.address).equals(32512);
      });

      test('RT_CURSOR', () {
        check(RT_CURSOR.address).equals(1);
      });
    });

    group('String constats', () {
      test('FILEOKSTRING', () {
        check(FILEOKSTRING).equals('commdlg_FileNameOK');
      });
    });

    group('Uint32', () {
      test('INFINITE', () {
        check(INFINITE).equals(4294967295);
      });

      test('WM_CLIPBOARDUPDATE', () {
        check(WM_CLIPBOARDUPDATE).equals(797);
      });

      test('WM_CREATE', () {
        check(WM_CREATE).equals(1);
      });
    });

    group('VARIANT_BOOL', () {
      test('VARIANT_FALSE', () {
        check(VARIANT_FALSE).equals(0);
      });

      test('VARIANT_TRUE', () {
        check(VARIANT_TRUE).equals(-1);
      });
    });
  });
}
