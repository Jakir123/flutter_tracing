// lib/src/utils/arabic_letters.dart
enum ArabicLetter {
  alif('أ'),
  ba('ب'),
  ta('ت'),
  tha('ث'),
  jeem('ج'),
  ha('ح'),
  kha('خ'),
  dal('د'),
  zal('ذ'),
  ra('ر'),
  zay('ز'),
  seen('س'),
  sheen('ش'),
  sad('ص'),
  dad('ض'),
  taa('ط'),
  dha('ظ'),
  ayn('ع'),
  ghayn('غ'),
  fa('ف'),
  qaf('ق'),
  kaf('ك'),
  lam('ل'),
  meem('م'),
  noon('ن'),
  haa('ه'),
  waw('و'),
  ya('ي'),
  hamza('أ');

  final String char;
  const ArabicLetter(this.char);

  @override
  String toString() => char;

  String get tracingChar => char;
}