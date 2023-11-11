// A pangram is a sentence where every letter of the English alphabet appears at least once.
//
// Given a string sentence containing only lowercase English letters, return true if sentence is a pangram, or false otherwise.

bool checkIfPangram(String sentence) =>
    'z'.codeUnitAt(0) - 'a'.codeUnitAt(0) ==
    Set.from(sentence.split('')).length;
