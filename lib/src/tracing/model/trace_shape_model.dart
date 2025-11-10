import 'dart:ui';

import 'package:tracing_game/src/tracing/model/trace_shape_options.dart';
import 'package:tracing_game/tracing_game.dart';
import 'arabic_character_form.dart';

class TraceCharsModel{
  final List<TraceCharModel> chars;

  TraceCharsModel({required this.chars,});
}

class TraceCharModel {
  final String char;
  final TraceShapeOptions traceShapeOptions;
  final ArabicCharacterForm characterForm;
  final Size charViewSize;
  
  TraceCharModel({
    required this.char,
    this.traceShapeOptions = const TraceShapeOptions(),
    this.characterForm = ArabicCharacterForm.isolated,
    this.charViewSize = const Size(150, 150),
  });
}
