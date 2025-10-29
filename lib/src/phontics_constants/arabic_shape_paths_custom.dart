/// Custom per-form Arabic shape paths.
/// Distinct medial SVGs for Jeem (ـجـ). These curves are designed to show
/// connectors on both sides with a flatter top and a centered, shallow bowl.
/// Dotted and index paths share the same coordinate space and should align
/// with neutral transforms (0 offsets, scale 1) in `enum_of_arabic_and_numbers_letters.dart`.
class ArabicShapePathsCustom {
  // Medial letter outline (stroked by the engine)
  static const String gemMedial = '''
M 30,55
 C 70,35 120,35 175,50
 C 190,55 205,58 215,56

M 170,145
 C 135,170 95,180 55,172
 C 40,169 28,165 20,160
''';

  // Medial dotted guide roughly through the center of the outline
  static const String gemMedialDotted = '''
M 35,58
 C 75,40 120,40 172,52
 C 186,56 200,58 210,57

M 160,140
 C 128,160 95,168 62,166
''';

  // Medial index path (short directional hint near the left connector)
  static const String gemMedialIndex = '''
M 34,62 C 52,54 70,50 90,50
''';
}
