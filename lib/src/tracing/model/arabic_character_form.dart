/// Represents the different forms an Arabic character can take
enum ArabicCharacterForm {
  /// Isolated form (when the character stands alone)
  isolated,
  
  /// Initial form (when the character is at the beginning of a word)
  start,
  
  /// Medial form (when the character is in the middle of a word)
  middle,
  
  /// Final form (when the character is at the end of a word)
  end,
}
