import 'package:code_assets/code_assets.dart';

/// A list of supported target combinations of OS and architecture.
///
/// Used to determine which assets to download or build.
const supportedTargets = <(OS, Architecture)>[
  (.windows, .arm64),
  (.windows, .x64),
];
