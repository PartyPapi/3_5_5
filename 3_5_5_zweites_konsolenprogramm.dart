import 'dart:io';

double calcProgress(int daysDone, int totalDays) {
  return (daysDone / totalDays) * 100;
}

int getUserInput() {
  print(
      'Bitte gib die Anzahl der Tage ein, die du bereits im Kurs absolviert hast:');
  String? input = stdin.readLineSync();
  if (input != null && input.isNotEmpty) {
    return int.parse(input);
  } else {
    return 0;
  }
}

void main() {
  const int totalDays = 270;

  int daysDone = getUserInput();
  double progress = calcProgress(daysDone, totalDays);
  int remainingDays = totalDays - daysDone;

  print('Kursfortschritt: ${progress.toStringAsFixed(2)}%');
  print('Verbleibende Tage bis zum Kursende: $remainingDays');

  if (progress >= 100) {
    print('Herzlichen Glückwunsch! Sie haben den Kurs abgeschlossen!');
  } else if (progress >= 75) {
    print('Großartig! Sie haben 75% des Kurses abgeschlossen!');
  } else if (progress >= 50) {
    print('Super! Sie haben die Hälfte des Kurses abgeschlossen!');
  } else if (progress >= 25) {
    print('Gut gemacht! Sie haben 25% des Kurses abgeschlossen!');
  } else {
    print('Sie haben begonnen, weiter so!');
  }
}
