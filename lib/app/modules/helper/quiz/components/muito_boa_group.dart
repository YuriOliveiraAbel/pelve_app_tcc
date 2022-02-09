import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../quiz_bloc.dart';

class MuitoBoaGroup extends StatefulWidget {
  final int questionNumber;
  const MuitoBoaGroup({required this.questionNumber, Key? key})
      : super(key: key);

  @override
  _MuitoBoaGroupState createState() => _MuitoBoaGroupState();
}

class _MuitoBoaGroupState extends State<MuitoBoaGroup> {
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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        radioButton(
          value: AnswerOption.muitoBoa,
          groupValue: quizBloc.getAnswerOption(widget.questionNumber),
          optionTxt: 'Muito boa',
          onChanged: (AnswerOption? value) {
            setState(() {
              quizBloc.setAnswer(
                  value ?? AnswerOption.muitoBoa, widget.questionNumber);
              //widget.option = value ?? AnswerOption.muitoBoa;
            });
          },
        ),
        radioButton(
          value: AnswerOption.boa,
          groupValue: quizBloc.getAnswerOption(widget.questionNumber),
          optionTxt: 'Boa',
          onChanged: (AnswerOption? value) {
            setState(() {
              quizBloc.setAnswer(
                  value ?? AnswerOption.boa, widget.questionNumber);
            });
          },
        ),
        radioButton(
          value: AnswerOption.normal,
          groupValue: quizBloc.getAnswerOption(widget.questionNumber),
          optionTxt: 'Normal',
          onChanged: (AnswerOption? value) {
            setState(() {
              quizBloc.setAnswer(
                  value ?? AnswerOption.normal, widget.questionNumber);
            });
          },
        ),
        radioButton(
          value: AnswerOption.ruim,
          groupValue: quizBloc.getAnswerOption(widget.questionNumber),
          optionTxt: 'Ruim',
          onChanged: (AnswerOption? value) {
            setState(() {
              quizBloc.setAnswer(
                  value ?? AnswerOption.ruim, widget.questionNumber);
            });
          },
        ),
        radioButton(
          value: AnswerOption.muitoRuim,
          groupValue: quizBloc.getAnswerOption(widget.questionNumber),
          optionTxt: 'Muito ruim',
          onChanged: (AnswerOption? value) {
            setState(() {
              quizBloc.setAnswer(
                  value ?? AnswerOption.muitoRuim, widget.questionNumber);
            });
          },
        ),
      ],
    );
  }
}
