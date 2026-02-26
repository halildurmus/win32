/// Represents a valid culture identifier as defined in ECMA-335 `§II.23.1.3`.
extension type const Culture._(String _) implements String {
  /// Creates a [Culture] from a [culture] string (e.g., `en-US`).
  factory Culture(String culture) {
    if (isValidCulture(culture)) return Culture._(culture);
    throw ArgumentError.value(culture, 'culture', 'Invalid culture');
  }

  /// Whether the given [culture] is valid.
  static bool isValidCulture(String culture) =>
      validCultures.contains(culture.toLowerCase());

  /// The set of valid culture identifiers as defined in ECMA-335 `§II.23.1.3`.
  static const validCultures = <String>{
    'ar-sa', 'ar-iq', 'ar-eg', 'ar-ly', 'ar-dz', 'ar-ma', 'ar-tn', 'ar-om', //
    'ar-ye', 'ar-sy', 'ar-jo', 'ar-lb', 'ar-kw', 'ar-ae', 'ar-bh', 'ar-qa', //
    'bg-bg', 'ca-es', 'zh-tw', 'zh-cn', 'zh-hk', 'zh-sg', 'zh-mo', 'cs-cz', //
    'da-dk', 'de-de', 'de-ch', 'de-at', 'de-lu', 'de-li', 'el-gr', 'en-us', //
    'en-gb', 'en-au', 'en-ca', 'en-nz', 'en-ie', 'en-za', 'en-jm', 'en-cb', //
    'en-bz', 'en-tt', 'en-zw', 'en-ph', 'es-es-ts', 'es-mx', 'es-es-is', //
    'es-gt', 'es-cr', 'es-pa', 'es-do', 'es-ve', 'es-co', 'es-pe', 'es-ar', //
    'es-ec', 'es-cl', 'es-uy', 'es-py', 'es-bo', 'es-sv', 'es-hn', 'es-ni', //
    'es-pr', 'fi-fi', 'fr-fr', 'fr-be', 'fr-ca', 'fr-ch', 'fr-lu', 'fr-mc', //
    'he-il', 'hu-hu', 'is-is', 'it-it', 'it-ch', 'ja-jp', 'ko-kr', 'nl-nl', //
    'nl-be', 'nb-no', 'nn-no', 'pl-pl', 'pt-br', 'pt-pt', 'ro-ro', 'ru-ru', //
    'hr-hr', 'lt-sr-sp', 'cy-sr-sp', 'sk-sk', 'sq-al', 'sv-se', 'sv-fi', //
    'th-th', 'tr-tr', 'ur-pk', 'id-id', 'uk-ua', 'be-by', 'sl-si', 'et-ee', //
    'lv-lv', 'lt-lt', 'fa-ir', 'vi-vn', 'hy-am', 'lt-az-az', 'cy-az-az', //
    'eu-es', 'mk-mk', 'af-za', 'ka-ge', 'fo-fo', 'hi-in', 'ms-my', 'ms-bn', //
    'kk-kz', 'ky-kz', 'sw-ke', 'lt-uz-uz', 'cy-uz-uz', 'tt-ta', 'pa-in', //
    'gu-in', 'ta-in', 'te-in', 'kn-in', 'mr-in', 'sa-in', 'mn-mn', 'gl-es', //
    'kok-in', 'syr-sy', 'div-mv',
  };
}
