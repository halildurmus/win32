@TestOn('windows')
library;

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

import 'helpers.dart';

void main() {
  group('OsVersion', () {
    test('equality', () {
      check(OsVersion.win10v2004).equals(.win10v2004);
    });

    test('current', () {
      final current = OsVersion.current;
      check(current.major).isGreaterOrEqual(10);
      check(current.minor).isGreaterOrEqual(0);
      check(current.pack).isGreaterOrEqual(0);
      check(current.build).isGreaterOrEqual(19041);
    });

    test('isServer returns without throwing', () {
      check(() => OsVersion.isServer).returnsNormally();
    });

    test('revision returns non-zero on a real machine', () {
      check(OsVersion.revision).isNonZero();
    });

    test('major version comparison', () {
      const v = OsVersion(major: 10);
      check(v >= const .new(major: 9)).isTrue();
      check(v >= const .new(major: 10)).isTrue();
      check(v >= const .new(major: 11)).isFalse();
    });

    test('minor version comparison', () {
      const v = OsVersion(major: 10, minor: 100);
      check(v >= const .new(major: 10, minor: 99)).isTrue();
      check(v >= const .new(major: 10, minor: 100)).isTrue();
      check(v >= const .new(major: 10, minor: 101)).isFalse();
    });

    test('pack version comparison', () {
      const v = OsVersion(major: 10, minor: 100, pack: 1000);
      check(v >= const .new(major: 10, minor: 100, pack: 999)).isTrue();
      check(v >= const .new(major: 10, minor: 100, pack: 1000)).isTrue();
      check(v >= const .new(major: 10, minor: 100, pack: 1001)).isFalse();
    });

    test('build number comparison', () {
      const v = OsVersion(major: 10, minor: 100, pack: 1000, build: 10000);
      check(
        v >= const .new(major: 10, minor: 100, pack: 1000, build: 9999),
      ).isTrue();
      check(
        v >= const .new(major: 10, minor: 100, pack: 1000, build: 10000),
      ).isTrue();
      check(
        v >= const .new(major: 10, minor: 100, pack: 1000, build: 10001),
      ).isFalse();
    });

    test('version constants are in ascending order', () {
      const versions = <OsVersion>[
        .xp,
        .xpSp1,
        .xpSp2,
        .xpSp3,
        .vista,
        .vistaSp1,
        .vistaSp2,
        .win7,
        .win7Sp1,
        .win8,
        .win81,
        .win10,
        .win10v1511,
        .win10v1607,
        .win10v1703,
        .win10v1709,
        .win10v1803,
        .win10v1809,
        .win10v1903,
        .win10v1909,
        .win10v2004,
        .win10v20H2,
        .win10v21H1,
        .win10v21H2,
        .win10v22H2,
        .winServer2022,
        .win11,
        .win11v22H2,
        .win11v23H2,
        .win11v24H2,
        .win11v25H2,
        .win11v26H1,
      ];

      for (var i = 0; i < versions.length - 1; i++) {
        check(versions[i]).isLessThan(versions[i + 1]);
      }
    });
  });
}
