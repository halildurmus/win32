import 'dart:collection';
import 'dart:typed_data';

import 'package:checks/checks.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';

import '../helpers.dart';

final sampleGuid = GUID.fromComponents(
  0x6B29FC40,
  0xCA47,
  0x1067,
  Uint8List.fromList([0xB3, 0x1D, 0x00, 0xDD, 0x01, 0x06, 0x62, 0xDA]),
);

final sampleGuidCopy = GUID.fromComponents(
  0x6B29FC40,
  0xCA47,
  0x1067,
  Uint8List.fromList([0xB3, 0x1D, 0x00, 0xDD, 0x01, 0x06, 0x62, 0xDA]),
);

final zeroGuid = GUID.zero();

final highData1 = GUID.fromComponents(
  0xFFFFFFFF,
  0x0000,
  0x0000,
  Uint8List.fromList([0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00]),
);

final highData2 = GUID.fromComponents(
  0x00000000,
  0xFFFF,
  0x0000,
  Uint8List.fromList([0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00]),
);

final highData3 = GUID.fromComponents(
  0x00000000,
  0x0000,
  0xFFFF,
  Uint8List.fromList([0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00]),
);

final highData4Last = GUID.fromComponents(
  0x00000000,
  0x0000,
  0x0000,
  Uint8List.fromList([0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF]),
);

final highData4First = GUID.fromComponents(
  0x00000000,
  0x0000,
  0x0000,
  Uint8List.fromList([0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00]),
);

void main() {
  group('GUIDExtension', () {
    group('compareTo', () {
      test('same object compares to zero', () {
        check(sampleGuid.compareTo(sampleGuid)).isZero();
      });

      test('equal GUIDs compare to zero', () {
        check(sampleGuid.compareTo(sampleGuidCopy)).isZero();
      });

      test('zero GUID is less than sample GUID', () {
        check(zeroGuid.compareTo(sampleGuid)).isLessThan(0);
      });

      test('sample GUID is greater than zero GUID', () {
        check(sampleGuid.compareTo(zeroGuid)).isGreaterThan(0);
      });

      test('ordering is antisymmetric: sign flips on reversal', () {
        final forward = sampleGuid.compareTo(zeroGuid);
        final backward = zeroGuid.compareTo(sampleGuid);
        check(forward.sign).equals(-backward.sign);
      });

      test('Data1 difference dominates Data2/3/4', () {
        // highData1 has Data1=0xFFFFFFFF; sampleGuid has Data1=0x6B29FC40
        check(highData1.compareTo(sampleGuid)).isGreaterThan(0);
        check(sampleGuid.compareTo(highData1)).isLessThan(0);
      });

      test('Data2 difference respected when Data1 is equal', () {
        final lo = GUID.fromComponents(
          0,
          0x0001,
          0,
          Uint8List.fromList([0, 0, 0, 0, 0, 0, 0, 0]),
        );
        final hi = GUID.fromComponents(
          0,
          0x0002,
          0,
          Uint8List.fromList([0, 0, 0, 0, 0, 0, 0, 0]),
        );
        check(lo.compareTo(hi)).isLessThan(0);
        check(hi.compareTo(lo)).isGreaterThan(0);
      });

      test('Data3 difference respected when Data1/Data2 are equal', () {
        final lo = GUID.fromComponents(
          0,
          0,
          0x0001,
          Uint8List.fromList([0, 0, 0, 0, 0, 0, 0, 0]),
        );
        final hi = GUID.fromComponents(
          0,
          0,
          0x0002,
          Uint8List.fromList([0, 0, 0, 0, 0, 0, 0, 0]),
        );
        check(lo.compareTo(hi)).isLessThan(0);
        check(hi.compareTo(lo)).isGreaterThan(0);
      });

      test('Data4 byte 0 difference respected when Data1/2/3 are equal', () {
        final lo = GUID.fromComponents(
          0,
          0,
          0,
          Uint8List.fromList([0x00, 0, 0, 0, 0, 0, 0, 0]),
        );
        final hi = GUID.fromComponents(
          0,
          0,
          0,
          Uint8List.fromList([0x01, 0, 0, 0, 0, 0, 0, 0]),
        );
        check(lo.compareTo(hi)).isLessThan(0);
      });

      test('Data4 last byte difference respected', () {
        final lo = GUID.fromComponents(
          0,
          0,
          0,
          Uint8List.fromList([0, 0, 0, 0, 0, 0, 0, 0x00]),
        );
        final hi = GUID.fromComponents(
          0,
          0,
          0,
          Uint8List.fromList([0, 0, 0, 0, 0, 0, 0, 0x01]),
        );
        check(lo.compareTo(hi)).isLessThan(0);
      });

      test('compareTo is transitive: a < b < c implies a < c', () {
        final a = zeroGuid;
        final b = sampleGuid;
        final c = highData1;
        check(a.compareTo(b)).isLessThan(0);
        check(b.compareTo(c)).isLessThan(0);
        check(a.compareTo(c)).isLessThan(0);
      });

      test('zero GUID compares to zero against itself', () {
        check(zeroGuid.compareTo(zeroGuid)).isZero();
      });

      test('compareTo result is consistent with isEqualTo', () {
        check(sampleGuid.compareTo(sampleGuidCopy)).isZero();
        check(sampleGuid.isEqualTo(sampleGuidCopy)).isTrue();
      });

      test('suitable as SplayTreeMap comparator (insertion + retrieval)', () {
        final map = SplayTreeMap<GUID, String>((a, b) => a.compareTo(b));
        map[zeroGuid] = 'zero';
        map[sampleGuid] = 'sample';
        map[highData1] = 'high';
        check(map[zeroGuid]).equals('zero');
        check(
          map[sampleGuidCopy],
        ).equals('sample'); // lookup by equal-value key
        check(map[highData1]).equals('high');
        check(map).has((m) => m.length, 'length').equals(3);
      });
    });

    group('isEqualTo', () {
      test('same object reference is equal', () {
        check(sampleGuid.isEqualTo(sampleGuid)).isTrue();
      });

      test('identical values are equal', () {
        check(sampleGuid.isEqualTo(sampleGuidCopy)).isTrue();
      });

      test('zero GUID equals another zero GUID', () {
        check(zeroGuid.isEqualTo(GUID.zero())).isTrue();
      });

      test('different Data1 is not equal', () {
        final other = GUID.fromComponents(
          0xDEADBEEF,
          0xCA47,
          0x1067,
          Uint8List.fromList([0xB3, 0x1D, 0x00, 0xDD, 0x01, 0x06, 0x62, 0xDA]),
        );
        check(sampleGuid.isEqualTo(other)).isFalse();
      });

      test('different Data2 is not equal', () {
        final other = GUID.fromComponents(
          0x6B29FC40,
          0x0001,
          0x1067,
          Uint8List.fromList([0xB3, 0x1D, 0x00, 0xDD, 0x01, 0x06, 0x62, 0xDA]),
        );
        check(sampleGuid.isEqualTo(other)).isFalse();
      });

      test('different Data3 is not equal', () {
        final other = GUID.fromComponents(
          0x6B29FC40,
          0xCA47,
          0x0001,
          Uint8List.fromList([0xB3, 0x1D, 0x00, 0xDD, 0x01, 0x06, 0x62, 0xDA]),
        );
        check(sampleGuid.isEqualTo(other)).isFalse();
      });

      test('different Data4 byte 0 is not equal', () {
        final other = GUID.fromComponents(
          0x6B29FC40,
          0xCA47,
          0x1067,
          Uint8List.fromList([0xFF, 0x1D, 0x00, 0xDD, 0x01, 0x06, 0x62, 0xDA]),
        );
        check(sampleGuid.isEqualTo(other)).isFalse();
      });

      test('different Data4 last byte is not equal', () {
        final other = GUID.fromComponents(
          0x6B29FC40,
          0xCA47,
          0x1067,
          Uint8List.fromList([0xB3, 0x1D, 0x00, 0xDD, 0x01, 0x06, 0x62, 0x00]),
        );
        check(sampleGuid.isEqualTo(other)).isFalse();
      });

      test('isEqualTo is symmetric', () {
        check(sampleGuid.isEqualTo(sampleGuidCopy)).isTrue();
        check(sampleGuidCopy.isEqualTo(sampleGuid)).isTrue();
      });
    });

    group('isZero', () {
      test('nil GUID reports isZero true', () {
        check(zeroGuid.isZero).isTrue();
      });

      test('non-zero Data1 reports isZero false', () {
        check(highData1.isZero).isFalse();
      });

      test('non-zero Data2 reports isZero false', () {
        check(highData2.isZero).isFalse();
      });

      test('non-zero Data3 reports isZero false', () {
        check(highData3.isZero).isFalse();
      });

      test('non-zero first Data4 byte reports isZero false', () {
        check(highData4First.isZero).isFalse();
      });

      test('non-zero last Data4 byte reports isZero false', () {
        check(highData4Last.isZero).isFalse();
      });

      test('sample GUID is not zero', () {
        check(sampleGuid.isZero).isFalse();
      });
    });
  });
}
