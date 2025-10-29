import 'package:flutter/material.dart';
import '../tracing/model/arabic_character_form.dart';

/// Utility class for handling Arabic character forms and their SVG paths

class ArabicCharacterUtils {
  /// Returns the appropriate character form based on position in the word
  static ArabicCharacterForm getCharacterForm(String word, int index) {
    if (word.length == 1) return ArabicCharacterForm.isolated;
    if (index == 0) return ArabicCharacterForm.start;
    if (index == word.length - 1) return ArabicCharacterForm.end;
    return ArabicCharacterForm.middle;
  }

  /// Gets the appropriate SVG path data for a character based on its form
  static String getCharacterPath(String char, ArabicCharacterForm form) {
    // This is a simplified example. In a real implementation, you would have
    // a map of characters to their different form paths
    switch (char) {
      case 'ج':
        switch (form) {
          case ArabicCharacterForm.isolated:
            return _getJeemIsolatedPath();
          case ArabicCharacterForm.start:
            return _getJeemInitialPath();
          case ArabicCharacterForm.middle:
            return _getJeemMedialPath();
          case ArabicCharacterForm.end:
            return _getJeemFinalPath();
        }
      // Add other Arabic characters here
      default:
        return ''; // Return empty path for unsupported characters
    }
  }

  /// Returns the SVG path for the isolated form of ج
  static String _getJeemIsolatedPath() {
    return 'M 127.36,111.48 C 126.10,114.09 124.09,116.34 121.33,118.23 C 118.57,120.12 114.98,121.07 110.57,121.07 C 106.16,121.07 102.39,120.58 98.81,119.59 C 95.22,118.60 92.11,117.10 89.47,115.09 C 86.83,113.08 84.76,110.55 83.26,107.52 C 81.77,104.48 81.02,100.95 81.02,96.93 C 81.02,90.38 82.02,84.34 84.03,78.82 C 86.04,73.30 88.54,68.52 91.54,64.50 C 94.53,60.48 97.82,57.34 101.41,55.09 C 104.99,52.84 108.40,51.72 111.64,51.72 C 114.87,51.72 118.06,52.50 120.98,54.08 C 123.89,55.67 126.57,57.84 129.02,60.59 C 131.46,63.36 133.63,66.59 135.52,70.30 C 137.41,74.01 139.00,78.01 140.31,82.31 C 141.61,86.61 142.59,91.11 143.26,95.81 C 143.93,100.50 144.26,105.17 144.26,109.83 C 144.26,116.93 143.53,123.97 142.08,130.95 C 140.62,137.93 138.79,143.99 136.58,149.12 C 133.82,153.30 130.26,157.58 125.88,161.96 C 121.50,166.34 116.28,170.32 110.21,173.91 C 104.14,177.50 97.21,180.44 89.40,182.73 C 81.60,185.02 72.89,186.16 63.27,186.16 C 53.66,186.16 44.92,184.70 38.27,181.78 C 31.61,178.86 26.28,175.03 22.30,170.30 C 18.32,165.56 15.50,160.24 13.85,154.32 C 12.20,148.40 11.37,142.48 11.37,136.56 C 11.37,132.07 11.70,127.73 12.37,123.55 C 13.04,119.36 13.91,115.36 14.98,111.54 C 16.04,107.71 17.26,104.12 18.64,100.77 C 20.02,97.42 21.42,94.32 22.83,91.48 C 23.31,90.53 23.74,89.76 24.14,89.17 C 24.53,88.58 25.00,88.10 25.55,87.75 C 26.10,87.39 26.75,87.14 27.50,86.98 C 28.25,86.82 29.17,86.75 30.28,86.75 C 33.36,86.75 34.89,87.53 34.89,89.12 C 34.89,89.75 34.42,91.21 33.48,93.50 C 32.53,95.79 31.50,98.59 30.40,101.90 C 29.29,105.22 28.27,108.88 27.33,112.91 C 26.38,116.93 25.91,121.03 25.91,125.21 C 25.91,132.08 26.99,137.99 29.16,142.97 C 31.33,147.94 34.28,152.02 38.03,155.21 C 41.77,158.41 46.17,160.76 51.21,162.25 C 56.26,163.76 61.66,164.50 67.41,164.50 C 74.19,164.50 80.83,163.62 87.34,161.84 C 93.84,160.07 99.91,157.70 105.55,154.74 C 111.18,151.78 116.22,148.43 120.68,144.68 C 125.14,140.94 128.70,137.09 131.38,133.14 C 131.70,131.73 131.87,130.07 131.91,128.18 C 131.95,126.28 131.90,124.47 131.74,122.73 C 131.58,120.76 131.30,118.79 130.91,116.81 C 130.52,114.84 129.92,113.07 129.14,111.49 L 127.36,111.49 Z';
  }

  /// Returns the SVG path for the initial form of ج (ـجـ)
  static String _getJeemInitialPath() {
    return 'M 200,150 C 200,200 150,250 100,250 C 50,250 0,200 0,150 C 0,100 50,50 100,50 C 150,50 200,100 200,150 Z M 150,150 C 150,125 125,100 100,100 C 75,100 50,125 50,150 C 50,175 75,200 100,200 C 125,200 150,175 150,150 Z';
  }

  /// Returns the SVG path for the medial form of ج (ـجـ)
  static String _getJeemMedialPath() {
    return 'M 250,150 C 250,200 200,250 150,250 C 100,250 50,200 50,150 C 50,100 100,50 150,50 C 200,50 250,100 250,150 Z M 200,150 C 200,125 175,100 150,100 C 125,100 100,125 100,150 C 100,175 125,200 150,200 C 175,200 200,175 200,150 Z';
  }

  /// Returns the SVG path for the final form of ج (ـج)
  static String _getJeemFinalPath() {
    return 'M 150,150 C 150,200 100,250 50,250 C 0,250 -50,200 -50,150 C -50,100 0,50 50,50 C 100,50 150,100 150,150 Z M 100,150 C 100,125 75,100 50,100 C 25,100 0,125 0,150 C 0,175 25,200 50,200 C 75,200 100,175 100,150 Z';
  }
}
