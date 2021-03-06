import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pelve_app/app/modules/helper/quiz/components/muito_boa_group.dart';
import 'package:pelve_app/app/modules/helper/quiz/quiz_bloc.dart';
import 'package:pelve_app/app/shared/components/button_component.dart';

class QuizView extends StatefulWidget {
  const QuizView({Key? key}) : super(key: key);

  @override
  _QuizViewState createState() => _QuizViewState();
}

class _QuizViewState extends State<QuizView> {
  final QuizBloc quizBloc = Modular.get();
  Widget radioButton({
    required String optionTxt,
    required AnswerOption value,
    required AnswerOption groupValue,
    required Function(AnswerOption?)? onChanged,
  }) {
    return SizedBox(
      height: 30,
      child: Row(
        children: [
          Radio<AnswerOption>(
            value: value,
            groupValue: groupValue,
            onChanged: onChanged,
          ),
          Text(optionTxt),
        ],
      ),
    );
  }

  Widget muitoBoaGroup({required int questionNumber}) {
    return Column(
      children: [
        radioButton(
          value: AnswerOption.muitoBoa,
          groupValue: quizBloc.getAnswerOption(questionNumber),
          optionTxt: 'Muito boa',
          onChanged: (AnswerOption? value) {
            setState(() {
              quizBloc.setAnswer(
                  value ?? AnswerOption.muitoBoa, questionNumber);
              //widget.option = value ?? AnswerOption.muitoBoa;
            });
          },
        ),
        radioButton(
          value: AnswerOption.boa,
          groupValue: quizBloc.getAnswerOption(questionNumber),
          optionTxt: 'Boa',
          onChanged: (AnswerOption? value) {
            setState(() {
              quizBloc.setAnswer(value ?? AnswerOption.boa, questionNumber);
            });
          },
        ),
        radioButton(
          value: AnswerOption.normal,
          groupValue: quizBloc.getAnswerOption(questionNumber),
          optionTxt: 'Normal',
          onChanged: (AnswerOption? value) {
            setState(() {
              quizBloc.setAnswer(value ?? AnswerOption.normal, questionNumber);
            });
          },
        ),
        radioButton(
          value: AnswerOption.ruim,
          groupValue: quizBloc.getAnswerOption(questionNumber),
          optionTxt: 'Ruim',
          onChanged: (AnswerOption? value) {
            setState(() {
              quizBloc.setAnswer(value ?? AnswerOption.ruim, questionNumber);
            });
          },
        ),
        radioButton(
          value: AnswerOption.muitoRuim,
          groupValue: quizBloc.getAnswerOption(questionNumber),
          optionTxt: 'Muito ruim',
          onChanged: (AnswerOption? value) {
            setState(() {
              quizBloc.setAnswer(
                  value ?? AnswerOption.muitoRuim, questionNumber);
            });
          },
        ),
      ],
    );
  }

  Widget maisOuMenosGroup({required int questionNumber}) {
    return Column(
      children: [
        radioButton(
          value: AnswerOption.nao,
          groupValue: quizBloc.getAnswerOption(questionNumber),
          optionTxt: 'N??o',
          onChanged: (AnswerOption? value) {
            setState(() {
              quizBloc.setAnswer(
                  value ?? AnswerOption.muitoBoa, questionNumber);
              //groupValue = value ?? AnswerOption.nao;
            });
          },
        ),
        radioButton(
          value: AnswerOption.umPouco,
          groupValue: quizBloc.getAnswerOption(questionNumber),
          optionTxt: 'Um pouco',
          onChanged: (AnswerOption? value) {
            setState(() {
              quizBloc.setAnswer(
                  value ?? AnswerOption.muitoBoa, questionNumber);
            });
          },
        ),
        radioButton(
          value: AnswerOption.maisOuMenos,
          groupValue: quizBloc.getAnswerOption(questionNumber),
          optionTxt: 'Mais ou menos',
          onChanged: (AnswerOption? value) {
            setState(() {
              quizBloc.setAnswer(
                  value ?? AnswerOption.muitoBoa, questionNumber);
            });
          },
        ),
        radioButton(
          value: AnswerOption.muito,
          groupValue: quizBloc.getAnswerOption(questionNumber),
          optionTxt: 'Muito',
          onChanged: (AnswerOption? value) {
            setState(() {
              quizBloc.setAnswer(
                  value ?? AnswerOption.muitoBoa, questionNumber);
            });
          },
        ),
      ],
    );
  }

  Widget nenhumaGroup({required int questionNumber}) {
    return Column(
      children: [
        radioButton(
          value: AnswerOption.nenhuma,
          groupValue: quizBloc.getAnswerOption(questionNumber),
          optionTxt: 'Nenhuma',
          onChanged: (AnswerOption? value) {
            setState(() {
              quizBloc.setAnswer(
                  value ?? AnswerOption.muitoBoa, questionNumber);
            });
          },
        ),
        radioButton(
          value: AnswerOption.umPouco,
          groupValue: quizBloc.getAnswerOption(questionNumber),
          optionTxt: 'Um pouco',
          onChanged: (AnswerOption? value) {
            setState(() {
              quizBloc.setAnswer(
                  value ?? AnswerOption.muitoBoa, questionNumber);
            });
          },
        ),
        radioButton(
          value: AnswerOption.maisOuMenos,
          groupValue: quizBloc.getAnswerOption(questionNumber),
          optionTxt: 'Mais ou menos',
          onChanged: (AnswerOption? value) {
            setState(() {
              quizBloc.setAnswer(
                  value ?? AnswerOption.muitoBoa, questionNumber);
            });
          },
        ),
        radioButton(
          value: AnswerOption.muito,
          groupValue: quizBloc.getAnswerOption(questionNumber),
          optionTxt: 'Muito',
          onChanged: (AnswerOption? value) {
            setState(() {
              quizBloc.setAnswer(
                  value ?? AnswerOption.muitoBoa, questionNumber);
            });
          },
        ),
      ],
    );
  }

  Widget limitacaoGroup({required int questionNumber}) {
    return Column(
      children: [
        radioButton(
          value: AnswerOption.nenhuma,
          groupValue: quizBloc.getAnswerOption(questionNumber),
          optionTxt: 'Nenhuma',
          onChanged: (AnswerOption? value) {
            setState(() {
              quizBloc.setAnswer(
                  value ?? AnswerOption.muitoBoa, questionNumber);
            });
          },
        ),
        radioButton(
          value: AnswerOption.umPouco,
          groupValue: quizBloc.getAnswerOption(questionNumber),
          optionTxt: 'Um pouco',
          onChanged: (AnswerOption? value) {
            setState(() {
              quizBloc.setAnswer(
                  value ?? AnswerOption.muitoBoa, questionNumber);
            });
          },
        ),
        radioButton(
          value: AnswerOption.maisOuMenos,
          groupValue: quizBloc.getAnswerOption(questionNumber),
          optionTxt: 'Mais ou menos',
          onChanged: (AnswerOption? value) {
            setState(() {
              quizBloc.setAnswer(
                  value ?? AnswerOption.muitoBoa, questionNumber);
            });
          },
        ),
        radioButton(
          value: AnswerOption.muito,
          groupValue: quizBloc.getAnswerOption(questionNumber),
          optionTxt: 'Muito',
          onChanged: (AnswerOption? value) {
            setState(() {
              quizBloc.setAnswer(
                  value ?? AnswerOption.muitoBoa, questionNumber);
            });
          },
        ),
        radioButton(
          value: AnswerOption.limitacaoFisicaSocial,
          groupValue: quizBloc.getAnswerOption(questionNumber),
          optionTxt: 'Limita????o fisica/social',
          onChanged: (AnswerOption? value) {
            setState(() {
              quizBloc.setAnswer(
                  value ?? AnswerOption.muitoBoa, questionNumber);
            });
          },
        ),
      ],
    );
  }

  Widget naoSeAplicaGroup({required int questionNumber}) {
    return Column(
      children: [
        radioButton(
          value: AnswerOption.naoSeAplica,
          groupValue: quizBloc.getAnswerOption(questionNumber),
          optionTxt: 'N??o se aplica',
          onChanged: (AnswerOption? value) {
            setState(() {
              quizBloc.setAnswer(
                  value ?? AnswerOption.muitoBoa, questionNumber);
            });
          },
        ),
        radioButton(
          value: AnswerOption.nao,
          groupValue: quizBloc.getAnswerOption(questionNumber),
          optionTxt: 'N??o',
          onChanged: (AnswerOption? value) {
            setState(() {
              quizBloc.setAnswer(
                  value ?? AnswerOption.muitoBoa, questionNumber);
            });
          },
        ),
        radioButton(
          value: AnswerOption.umPouco,
          groupValue: quizBloc.getAnswerOption(questionNumber),
          optionTxt: 'Um pouco',
          onChanged: (AnswerOption? value) {
            setState(() {
              quizBloc.setAnswer(
                  value ?? AnswerOption.muitoBoa, questionNumber);
            });
          },
        ),
        radioButton(
          value: AnswerOption.maisOuMenos,
          groupValue: quizBloc.getAnswerOption(questionNumber),
          optionTxt: 'Mais ou menos',
          onChanged: (AnswerOption? value) {
            setState(() {
              quizBloc.setAnswer(
                  value ?? AnswerOption.muitoBoa, questionNumber);
            });
          },
        ),
        radioButton(
          value: AnswerOption.muito,
          groupValue: quizBloc.getAnswerOption(questionNumber),
          optionTxt: 'Muito',
          onChanged: (AnswerOption? value) {
            setState(() {
              quizBloc.setAnswer(
                  value ?? AnswerOption.muitoBoa, questionNumber);
            });
          },
        ),
      ],
    );
  }

  Widget umPoucoGroup({required int questionNumber}) {
    return Column(
      children: [
        radioButton(
          value: AnswerOption.umPouco,
          groupValue: quizBloc.getAnswerOption(questionNumber),
          optionTxt: 'Um pouco',
          onChanged: (AnswerOption? value) {
            setState(() {
              quizBloc.setAnswer(
                  value ?? AnswerOption.muitoBoa, questionNumber);
            });
          },
        ),
        radioButton(
          value: AnswerOption.maisOuMenos,
          groupValue: quizBloc.getAnswerOption(questionNumber),
          optionTxt: 'Mais ou menos',
          onChanged: (AnswerOption? value) {
            setState(() {
              quizBloc.setAnswer(
                  value ?? AnswerOption.muitoBoa, questionNumber);
            });
          },
        ),
        radioButton(
          value: AnswerOption.muito,
          groupValue: quizBloc.getAnswerOption(questionNumber),
          optionTxt: 'Muito',
          onChanged: (AnswerOption? value) {
            setState(() {
              quizBloc.setAnswer(
                  value ?? AnswerOption.muitoBoa, questionNumber);
            });
          },
        ),
      ],
    );
  }

  Widget variasVezesGroup({required int questionNumber}) {
    return Column(
      children: [
        radioButton(
          value: AnswerOption.nao,
          groupValue: quizBloc.getAnswerOption(questionNumber),
          optionTxt: 'N??o',
          onChanged: (AnswerOption? value) {
            setState(() {
              quizBloc.setAnswer(
                  value ?? AnswerOption.muitoBoa, questionNumber);
              //groupValue = value ?? AnswerOption.nao;
            });
          },
        ),
        radioButton(
          value: AnswerOption.asVezes,
          groupValue: quizBloc.getAnswerOption(questionNumber),
          optionTxt: 'Um pouco',
          onChanged: (AnswerOption? value) {
            setState(() {
              quizBloc.setAnswer(
                  value ?? AnswerOption.muitoBoa, questionNumber);
            });
          },
        ),
        radioButton(
          value: AnswerOption.variasVezes,
          groupValue: quizBloc.getAnswerOption(questionNumber),
          optionTxt: 'Mais ou menos',
          onChanged: (AnswerOption? value) {
            setState(() {
              quizBloc.setAnswer(
                  value ?? AnswerOption.muitoBoa, questionNumber);
            });
          },
        ),
        radioButton(
          value: AnswerOption.sempre,
          groupValue: quizBloc.getAnswerOption(questionNumber),
          optionTxt: 'Muito',
          onChanged: (AnswerOption? value) {
            setState(() {
              quizBloc.setAnswer(
                  value ?? AnswerOption.muitoBoa, questionNumber);
            });
          },
        ),
      ],
    );
  }

  Widget input({
    required String question,
    required Widget groupValue,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            question,
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 4),
          groupValue,
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFD4EC),
        title: const Text(
          'Question??rio',
          style: TextStyle(color: Color(0xFF636B76)),
        ),
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Color(0xFF636B76)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    input(
                      question: 'Como voc?? avaliaria sua sa??de hoje?',
                      groupValue: muitoBoaGroup(questionNumber: 1),
                    ),
                    input(
                      question:
                          'Quanto voc?? acha que seu problema de bexiga atrapalha sua vida?',
                      groupValue: maisOuMenosGroup(questionNumber: 2),
                    ),
                    input(
                      question:
                          'Abaixo est??o algumas atividades que podem ser afetadas pelos problemas de bexiga. Quanto seu problema de bexiga afeta voc??? Gostar??amos que voc?? respondesse todas as perguntas. Simplesmente marque com um ???X??? a alternativa que melhor se aplica a voc??. Limita????o no desempenho de tarefas Com que intensidade seu problema de bexiga atrapalha suas tarefas de casa (ex., limpar, lavar, cozinhar, etc.)',
                      groupValue: nenhumaGroup(questionNumber: 3),
                    ),
                    input(
                      question:
                          'Com que intensidade seu problema de bexiga atrapalha seu trabalho, ou suas atividades di??rias normais fora de casa como: fazer compra, levar filho ?? escola, etc.?',
                      groupValue: limitacaoGroup(questionNumber: 4),
                    ),
                    input(
                      question:
                          'Seu problema de bexiga atrapalha suas atividades f??sicas como: fazer caminhada, correr, fazer algum esporte, etc.?',
                      groupValue: maisOuMenosGroup(questionNumber: 5),
                    ),
                    input(
                      question:
                          'Seu problema de bexiga atrapalha quando voc?? quer fazer uma viagem?',
                      groupValue: maisOuMenosGroup(questionNumber: 6),
                    ),
                    input(
                      question:
                          'Seu problema de bexiga atrapalha quando voc?? vai a igreja, reuni??o, festa?',
                      groupValue: maisOuMenosGroup(questionNumber: 7),
                    ),
                    input(
                      question:
                          'Voc?? deixa de visitar seus amigos por causa do problema de bexiga?',
                      groupValue: maisOuMenosGroup(questionNumber: 8),
                    ),
                    const Divider(),
                    const SizedBox(
                      width: double.maxFinite,
                      child: Text(
                        'Rela????es pessoais',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    input(
                      question:
                          'Seu problema de bexiga atrapalha sua vida sexual?',
                      groupValue: naoSeAplicaGroup(questionNumber: 9),
                    ),
                    input(
                      question:
                          'Seu problema de bexiga atrapalha sua vida com seu companheiro?',
                      groupValue: naoSeAplicaGroup(questionNumber: 10),
                    ),
                    input(
                      question:
                          'Seu problema de bexiga incomoda seus familiares?',
                      groupValue: naoSeAplicaGroup(questionNumber: 11),
                    ),
                    input(
                      question:
                          'Gostar??amos de saber quais s??o os seus problemas de bexiga e quanto eles afetam voc??. Escolha da lista abaixo APENAS AQUELES PROBLEMAS que voc?? tem no momento. Quanto eles afetam voc??? \nFreq????ncia: Voc?? vai muitas vezes ao banheiro?',
                      groupValue: umPoucoGroup(questionNumber: 12),
                    ),
                    input(
                      question: ' Noct??ria: Voc?? levanta a noite para urinar?',
                      groupValue: umPoucoGroup(questionNumber: 13),
                    ),
                    input(
                      question:
                          'Urg??ncia: Voc?? tem vontade forte de urinar e muito dif??cil de controlar?',
                      groupValue: umPoucoGroup(questionNumber: 14),
                    ),
                    input(
                      question:
                          'Bexiga hiperativa: Voc?? perde urina quando voc?? tem muita vontade de urinar?',
                      groupValue: umPoucoGroup(questionNumber: 15),
                    ),
                    input(
                      question:
                          'Incontin??ncia urin??ria de esfor??o: Voc?? perde urina com atividades f??sicas como: tossir,espirrar, correr?',
                      groupValue: umPoucoGroup(questionNumber: 16),
                    ),
                    input(
                      question: 'Enurese noturna: Voc?? molha a cama ?? noite?',
                      groupValue: umPoucoGroup(questionNumber: 17),
                    ),
                    input(
                      question:
                          'Incontin??ncia no intercurso sexual: Voc?? perde urina durante a rela????o sexual?',
                      groupValue: umPoucoGroup(questionNumber: 18),
                    ),
                    input(
                      question:
                          'Infec????es freq??entes: Voc?? tem muitas infec????es urin??rias? ',
                      groupValue: umPoucoGroup(questionNumber: 18),
                    ),
                    input(
                      question: 'Dor na bexiga: Voc?? tem dor na bexiga? ',
                      groupValue: umPoucoGroup(questionNumber: 19),
                    ),
                    input(
                      question:
                          'Outros: Voc?? tem algum outro problema relacionado a sua bexiga? ',
                      groupValue: umPoucoGroup(questionNumber: 20),
                    ),
                    input(
                      question:
                          'Emo????es Voc?? fica deprimida com seu problema de bexiga? ',
                      groupValue: maisOuMenosGroup(questionNumber: 21),
                    ),
                    input(
                      question:
                          'Voc?? fica ansiosa ou nervosa com seu problema de bexiga? ',
                      groupValue: maisOuMenosGroup(questionNumber: 22),
                    ),
                    input(
                      question:
                          'Voc?? fica mal com voc?? mesma por causa do seu problema de bexiga?',
                      groupValue: variasVezesGroup(questionNumber: 23),
                    ),
                    input(
                      question:
                          'Sono/Energia Seu problema de bexiga atrapalha seu sono?',
                      groupValue: variasVezesGroup(questionNumber: 24),
                    ),
                    input(
                      question: 'Voc?? se sente desgastada ou cansada?',
                      groupValue: variasVezesGroup(questionNumber: 25),
                    ),
                    input(
                      question:
                          'Algumas situa????es abaixo acontecem com voc??? Se tiver o quanto? Voc?? usa algum tipo de protetor higi??nico como: fralda, forro, absorvente tipo Modess para manter-se seca?',
                      groupValue: variasVezesGroup(questionNumber: 26),
                    ),
                    input(
                      question:
                          'Voc?? controla a quantidade de l??quido que bebe? ',
                      groupValue: variasVezesGroup(questionNumber: 27),
                    ),
                    input(
                      question:
                          'Voc?? precisa trocar sua roupa ??ntima (calcinha), quando fica molhadas?',
                      groupValue: variasVezesGroup(questionNumber: 28),
                    ),
                    input(
                      question: 'Voc?? se preocupa em estar cheirando urina? ',
                      groupValue: variasVezesGroup(questionNumber: 29),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            ButtonComponent(
              color: const Color(0xFFFFD4EC),
              text: 'Finalizar Questionario',
              heigth: 55,
              onTap: () {
                var teste = quizBloc.getAnswerOption(2);
                // Modular.to.pop();
                // Modular.to.popAndPushNamed('/treatment/');
              },
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
