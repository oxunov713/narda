import 'randaom.dart';
import 'io_service.dart';
import 'score.dart';

class Zaric {
  final Randaom userRN;
  final Randaom botRN;

  Zaric(this.userRN, this.botRN);

  void call() {
    Score user = Score(0);
    Score bot = Score(0);

    while (true) {
      int userRN = randaom.randomm();
      int botRN = randaom.randomm();

      io.outputText('Enterni bosing :');
      io.readText();

      print('Sizning balingiz : $userRN');

      print('BOtning bali : $botRN');

      user.score += userRN;
      bot.score += botRN;

      print('Sizning umumiy bal ${score1(user.score)} :${user.score}');
      print('Botning umumiy bal ${score1(bot.score)}   :${bot.score}');

      if (user.score >= 30) {
        print('Siz yutdingiz');
        break;
      } else if (bot.score >= 30) {
        print('Bot yutdi');
        break;
      }
    }
  }

  String score1(int sumNUmber) {
    String icon = '';

    for (int i = 0; i < sumNUmber.clamp(0, 30); icon += '⚫', i++);

    for (int i = sumNUmber; i < 30; icon += '⚪', i++);

    return icon;
  }
}
