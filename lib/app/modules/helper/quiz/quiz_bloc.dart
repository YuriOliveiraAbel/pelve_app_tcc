import 'package:flutter_modular/flutter_modular.dart';

class QuizBloc extends Disposable {
  AnswerOption _answer1 = AnswerOption.muitoBoa;
  AnswerOption _answer2 = AnswerOption.nao;
  AnswerOption _answer3 = AnswerOption.nenhuma;
  AnswerOption _answer4 = AnswerOption.nenhuma;
  AnswerOption _answer5 = AnswerOption.nao;
  AnswerOption _answer6 = AnswerOption.nao;
  AnswerOption _answer7 = AnswerOption.nao;
  AnswerOption _answer8 = AnswerOption.nao;
  AnswerOption _answer9 = AnswerOption.naoSeAplica;
  AnswerOption _answer10 = AnswerOption.naoSeAplica;
  AnswerOption _answer11 = AnswerOption.naoSeAplica;
  AnswerOption _answer12 = AnswerOption.umPouco;
  AnswerOption _answer13 = AnswerOption.umPouco;
  AnswerOption _answer14 = AnswerOption.umPouco;
  AnswerOption _answer15 = AnswerOption.umPouco;
  AnswerOption _answer16 = AnswerOption.umPouco;
  AnswerOption _answer17 = AnswerOption.umPouco;
  AnswerOption _answer18 = AnswerOption.umPouco;
  AnswerOption _answer19 = AnswerOption.umPouco;
  AnswerOption _answer20 = AnswerOption.umPouco;
  AnswerOption _answer21 = AnswerOption.nao;
  AnswerOption _answer22 = AnswerOption.nao;
  AnswerOption _answer23 = AnswerOption.nao;
  AnswerOption _answer24 = AnswerOption.nao;
  AnswerOption _answer25 = AnswerOption.nao;
  AnswerOption _answer26 = AnswerOption.nao;
  AnswerOption _answer27 = AnswerOption.nao;
  AnswerOption _answer28 = AnswerOption.nao;
  AnswerOption _answer29 = AnswerOption.nao;

  void setAnswer(AnswerOption answer, int questionNumber) {
    switch (questionNumber) {
      case 1:
        _answer1 = answer;
        break;
      case 2:
        _answer2 = answer;
        break;
      case 3:
        _answer3 = answer;
        break;
      case 4:
        _answer4 = answer;
        break;
      case 5:
        _answer5 = answer;
        break;
      case 6:
        _answer6 = answer;
        break;
      case 7:
        _answer7 = answer;
        break;
      case 8:
        _answer8 = answer;
        break;
      case 9:
        _answer9 = answer;
        break;
      case 10:
        _answer10 = answer;
        break;
      case 11:
        _answer11 = answer;
        break;
      case 12:
        _answer12 = answer;
        break;
      case 13:
        _answer13 = answer;
        break;
      case 14:
        _answer14 = answer;
        break;
      case 15:
        _answer15 = answer;
        break;
      case 16:
        _answer16 = answer;
        break;
      case 17:
        _answer17 = answer;
        break;
      case 18:
        _answer18 = answer;
        break;
      case 19:
        _answer19 = answer;
        break;
      case 20:
        _answer20 = answer;
        break;
      case 21:
        _answer21 = answer;
        break;
      case 22:
        _answer22 = answer;
        break;
      case 23:
        _answer23 = answer;
        break;
      case 24:
        _answer24 = answer;
        break;
      case 25:
        _answer25 = answer;
        break;
      case 26:
        _answer26 = answer;
        break;
      case 27:
        _answer27 = answer;
        break;
      case 28:
        _answer28 = answer;
        break;
      case 29:
        _answer29 = answer;
        break;
      default:
    }
  }

  AnswerOption getAnswerOption(int questionNumber) {
    switch (questionNumber) {
      case 1:
        return _answer1;
      case 2:
        return _answer2;
      case 3:
        return _answer3;
      case 4:
        return _answer4;
      case 5:
        return _answer5;
      case 6:
        return _answer6;
      case 7:
        return _answer7;
      case 8:
        return _answer8;
      case 9:
        return _answer9;
      case 10:
        return _answer10;
      case 11:
        return _answer11;
      case 12:
        return _answer12;
      case 13:
        return _answer13;
      case 14:
        return _answer14;
      case 15:
        return _answer15;
      case 16:
        return _answer16;
      case 17:
        return _answer17;
      case 18:
        return _answer18;
      case 19:
        return _answer19;
      case 20:
        return _answer20;
      case 21:
        return _answer21;
      case 22:
        return _answer22;
      case 23:
        return _answer23;
      case 24:
        return _answer24;
      case 25:
        return _answer25;
      case 26:
        return _answer26;
      case 27:
        return _answer27;
      case 28:
        return _answer28;
      case 29:
        return _answer29;
      default:
        return _answer1;
    }
  }

  @override
  void dispose() {}
}

enum AnswerOption {
  muitoBoa,
  boa,
  normal,
  ruim,
  muitoRuim,
  maisOuMenos,
  nao,
  umPouco,
  muito,
  nenhuma,
  limitacaoFisicaSocial,
  naoSeAplica,
  asVezes,
  variasVezes,
  sempre,
}
