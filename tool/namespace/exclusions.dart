const excludedFunctions = <String>[
  // Relies on namespaces not imported yet
  'CreateConsoleScreenBuffer',
  'GetLogicalProcessorInformationEx',

  // Duplicates
  '_TrackMouseEvent',
];

const excludedImports = <String>[
  'textservices',
];
