import 'package:flutter/material.dart';
import 'package:tracing_game/tracing_game.dart';
import 'package:tracing_game/src/tracing/model/arabic_character_form.dart';
import 'debug_points_preview.dart';
import 'package:tracing_game/src/utils/arabic_letters.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();

    print('Direct: ${'ج'.codeUnits}');  // Should print [1580]
    print('From enum: ${ArabicLetter.jeem.char.codeUnits}');  // Check what this prints
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tracing Game'),
        ),
        body: Column(
          // spacing: 3,
          children: [
            Expanded(
              child: TracingCharsGame(
                showAnchor: true,
                traceShapeModel: [
               TraceCharsModel(chars: [
                 TraceCharModel(
                     char: ArabicLetter.jeem.tracingChar,
                     characterForm: ArabicCharacterForm.middle,
                     traceShapeOptions: const TraceShapeOptions(
                         innerPaintColor: Colors.orange)
                    ),

                 // TraceCharModel(
                 //     char: ArabicLetter.alif.tracingChar,
                 //     characterForm: ArabicCharacterForm.isolated,
                 //     traceShapeOptions: const TraceShapeOptions(
                 //         innerPaintColor: Colors.orange)
                 // ),
                 //
                 // TraceCharModel(
                 //     char: ArabicLetter.jeem.tracingChar,
                 //     characterForm: ArabicCharacterForm.middle,
                 //     traceShapeOptions: const TraceShapeOptions(
                 //         innerPaintColor: Colors.orange)
                 // ),
                 //
                 // TraceCharModel(
                 //     char: ArabicLetter.jeem.tracingChar,
                 //     characterForm: ArabicCharacterForm.end,
                 //     traceShapeOptions: const TraceShapeOptions(
                 //         innerPaintColor: Colors.orange)
                 // ),
                 //
                  ])
                ],

                onTracingUpdated: (int currentTracingIndex) async {
                  print('/////onTracingUpdated:' +
                      currentTracingIndex.toString());
                },
                onGameFinished: (int screenIndex) async {
                  print('/////onGameFinished:' + screenIndex.toString());
                },
                onCurrentTracingScreenFinished: (int currentScreenIndex) async {
                  print('/////onCurrentTracingScreenFinished:' +
                      currentScreenIndex.toString());
                },
              ),
            ),
            // const SizedBox(height: 12),
            // const Text('gem_medial_PointsInfo.json preview', style: TextStyle(fontSize: 16)),
            // const SizedBox(height: 8),
            // const DebugPointsPreview(
            //   assetPath: 'packages/tracing_game/assets/phontics_assets_points/arabic_phontics/gem_medial_PointsInfo.json',
            //   size: Size(300, 300),
            //   drawLines: true,
            //   pointColor: Colors.red,
            // ),
          ],
        ),
      ),
    );
  }
}
