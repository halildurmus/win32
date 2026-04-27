import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'constants.g.dart';
import 'enums.g.dart';
import 'extensions/arena.dart';
import 'structs.g.dart';
import 'types.dart';
import 'win32/advapi32.g.dart';
import 'win32/ntdll.g.dart';

/// Version information for the currently running Windows operating system.
///
/// Use [OsVersion.current] to retrieve the running version, and the relational
/// operators (`<`, `<=`, `>=`, `>`) to range-check it against a known baseline.
///
/// ```dart
/// final current = OsVersion.current;
/// if (current >= .win11) {
///   print('Windows 11 or later');
/// } else if (current >= .win10) {
///   print('Windows 10');
/// } else {
///   print('Unsupported OS');
/// }
/// ```
///
/// See also:
/// - [OsVersion.isServer] to distinguish server from workstation editions.
/// - [OsVersion.revision] for the Update Build Revision (UBR) patch number.
final class OsVersion implements Comparable<OsVersion> {
  /// Creates an [OsVersion] with the given components.
  const OsVersion({
    this.major = 0,
    this.minor = 0,
    this.pack = 0,
    this.build = 0,
  });

  /// Windows XP (5.1, build 2600).
  static const xp = OsVersion(major: 5, minor: 1, build: 2600);

  /// Windows XP Service Pack 1 (5.1, build 2600).
  static const xpSp1 = OsVersion(major: 5, minor: 1, pack: 1, build: 2600);

  /// Windows XP Service Pack 2 (5.1, build 2600).
  static const xpSp2 = OsVersion(major: 5, minor: 1, pack: 2, build: 2600);

  /// Windows XP Service Pack 3 (5.1, build 2600).
  static const xpSp3 = OsVersion(major: 5, minor: 1, pack: 3, build: 2600);

  /// Windows Vista (6.0, build 6000).
  static const vista = OsVersion(major: 6, build: 6000);

  /// Windows Vista Service Pack 1 (6.0, build 6001).
  static const vistaSp1 = OsVersion(major: 6, pack: 1, build: 6001);

  /// Windows Vista Service Pack 2 (6.0, build 6002).
  static const vistaSp2 = OsVersion(major: 6, pack: 2, build: 6002);

  /// Windows 7 (6.1, build 7600).
  static const win7 = OsVersion(major: 6, minor: 1, build: 7600);

  /// Windows 7 Service Pack 1 (6.1, build 7601).
  static const win7Sp1 = OsVersion(major: 6, minor: 1, pack: 1, build: 7601);

  /// Windows 8 (6.2, build 9200).
  static const win8 = OsVersion(major: 6, minor: 2, build: 9200);

  /// Windows 8.1 (6.3, build 9600).
  static const win81 = OsVersion(major: 6, minor: 3, build: 9600);

  /// Windows 10, version 1507 — the initial release (build 10240).
  static const win10 = OsVersion(major: 10, build: 10240);

  /// Windows 10, version 1511 — November Update (build 10586).
  static const win10v1511 = OsVersion(major: 10, build: 10586);

  /// Windows 10, version 1607 — Anniversary Update (build 14393).
  static const win10v1607 = OsVersion(major: 10, build: 14393);

  /// Windows 10, version 1703 — Creators Update (build 15063).
  static const win10v1703 = OsVersion(major: 10, build: 15063);

  /// Windows 10, version 1709 — Fall Creators Update (build 16299).
  static const win10v1709 = OsVersion(major: 10, build: 16299);

  /// Windows 10, version 1803 — April 2018 Update (build 17134).
  static const win10v1803 = OsVersion(major: 10, build: 17134);

  /// Windows 10, version 1809 — October 2018 Update (build 17763).
  static const win10v1809 = OsVersion(major: 10, build: 17763);

  /// Windows 10, version 1903 — May 2019 Update (build 18362).
  static const win10v1903 = OsVersion(major: 10, build: 18362);

  /// Windows 10, version 1909 — November 2019 Update (build 18363).
  static const win10v1909 = OsVersion(major: 10, build: 18363);

  /// Windows 10, version 2004 — May 2020 Update (build 19041).
  static const win10v2004 = OsVersion(major: 10, build: 19041);

  /// Windows 10, version 20H2 — October 2020 Update (build 19042).
  static const win10v20H2 = OsVersion(major: 10, build: 19042);

  /// Windows 10, version 21H1 — May 2021 Update (build 19043).
  static const win10v21H1 = OsVersion(major: 10, build: 19043);

  /// Windows 10, version 21H2 — November 2021 Update (build 19044).
  static const win10v21H2 = OsVersion(major: 10, build: 19044);

  /// Windows 10, version 22H2 — October 2022 Update (build 19045).
  ///
  /// This is the final feature update for Windows 10.
  static const win10v22H2 = OsVersion(major: 10, build: 19045);

  /// Windows Server 2022 (build 20348).
  static const winServer2022 = OsVersion(major: 10, build: 20348);

  /// Windows 11, version 21H2 — the initial release (build 22000).
  static const win11 = OsVersion(major: 10, build: 22000);

  /// Windows 11, version 22H2 — 2022 Update (build 22621).
  static const win11v22H2 = OsVersion(major: 10, build: 22621);

  /// Windows 11, version 23H2 — 2023 Update (build 22631).
  static const win11v23H2 = OsVersion(major: 10, build: 22631);

  /// Windows 11, version 24H2 — 2024 Update (build 26100).
  static const win11v24H2 = OsVersion(major: 10, build: 26100);

  /// Windows 11, version 25H2 — 2025 Update (build 26200).
  static const win11v25H2 = OsVersion(major: 10, build: 26200);

  /// Windows 11, version 26H1 (build 28000).
  static const win11v26H1 = OsVersion(major: 10, build: 28000);

  /// The version information of the currently running operating system.
  ///
  /// Calls [RtlGetVersion] internally, which — unlike the deprecated
  /// `GetVersionEx` — always returns the true version regardless of any
  /// application-compatibility shims.
  static OsVersion get current => using((arena) {
    final info = arena<OSVERSIONINFOEX>()
      ..ref.dwOSVersionInfoSize = sizeOf<OSVERSIONINFOEX>();
    RtlGetVersion(info.cast());
    final OSVERSIONINFOEX(
      :dwMajorVersion,
      :dwMinorVersion,
      :wServicePackMajor,
      :dwBuildNumber,
    ) = info.ref;
    return .new(
      major: dwMajorVersion,
      minor: dwMinorVersion,
      pack: wServicePackMajor,
      build: dwBuildNumber,
    );
  });

  /// Whether the currently running operating system is a Windows Server
  /// edition.
  static bool get isServer => using((arena) {
    final info = arena<OSVERSIONINFOEX>()
      ..ref.dwOSVersionInfoSize = sizeOf<OSVERSIONINFOEX>();
    RtlGetVersion(info.cast());
    return info.ref.wProductType != VER_NT_WORKSTATION;
  });

  /// The Update Build Revision (UBR) of the operating system.
  ///
  /// This is the incremental patch number applied on top of [build] by Windows
  /// Update, stored under
  /// `HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\UBR`.
  ///
  /// Returns `0` if the registry value cannot be read.
  static int get revision => using((arena) {
    final data = arena<DWORD>();
    final dataSize = arena<DWORD>()..value = sizeOf<DWORD>();
    final result = RegGetValue(
      HKEY_LOCAL_MACHINE,
      arena.pcwstr(r'SOFTWARE\Microsoft\Windows NT\CurrentVersion'),
      arena.pcwstr('UBR'),
      RRF_RT_REG_DWORD,
      null,
      data.cast(),
      dataSize,
    );
    return result == ERROR_SUCCESS ? data.value : 0;
  });

  /// The major version number of the operating system.
  ///
  /// For example, `10` for both Windows 10 and Windows 11.
  final int major;

  /// The minor version number of the operating system.
  ///
  /// Typically `0` for all modern Windows releases (Vista and later).
  final int minor;

  /// The major version number of the latest service pack installed on the
  /// system.
  ///
  /// Service packs were discontinued after Windows 7, so this is `0` on all
  /// modern systems.
  final int pack;

  /// The build number of the operating system.
  ///
  /// This is the most reliable way to distinguish Windows 10 from Windows 11:
  /// builds `>= 22000` indicate Windows 11.
  final int build;

  /// Returns a copy of this [OsVersion] with the given fields replaced.
  OsVersion copyWith({int? major, int? minor, int? pack, int? build}) => .new(
    major: major ?? this.major,
    minor: minor ?? this.minor,
    pack: pack ?? this.pack,
    build: build ?? this.build,
  );

  /// Compares this version to [other] using lexicographic field order:
  /// [major], [minor], [pack], then [build].
  @override
  int compareTo(OsVersion other) {
    if (major != other.major) return major.compareTo(other.major);
    if (minor != other.minor) return minor.compareTo(other.minor);
    if (pack != other.pack) return pack.compareTo(other.pack);
    return build.compareTo(other.build);
  }

  /// Whether this version is greater than or equal to [other].
  bool operator >=(OsVersion other) => compareTo(other) >= 0;

  /// Whether this version is less than or equal to [other].
  bool operator <=(OsVersion other) => compareTo(other) <= 0;

  /// Whether this version is strictly greater than [other].
  bool operator >(OsVersion other) => compareTo(other) > 0;

  /// Whether this version is strictly less than [other].
  bool operator <(OsVersion other) => compareTo(other) < 0;

  @override
  bool operator ==(Object other) {
    if (other is! OsVersion) return false;
    if (identical(this, other)) return true;
    return major == other.major &&
        minor == other.minor &&
        pack == other.pack &&
        build == other.build;
  }

  @override
  int get hashCode => Object.hash(major, minor, pack, build);

  @override
  String toString() =>
      'OsVersion(major: $major, minor: $minor, pack: $pack, build: $build)';
}
