import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pelve_app/app/modules/helper/terms/terms_view.dart';
import 'package:pelve_app/app/shared/components/button_component.dart';
import 'package:pelve_app/app/shared/utils/mock.dart';

class HelperView extends StatefulWidget {
  const HelperView({Key? key}) : super(key: key);

  @override
  _HelperViewState createState() => _HelperViewState();
}

class _HelperViewState extends State<HelperView> {
  @override
  void initState() {
    WidgetsBinding.instance!.addPostFrameCallback((time) async {
      showModalBottomSheet(
        isDismissible: false,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context) => Container(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: const TermsView(),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFD4EC),
        title: const Text(
          'Explicação',
          style: TextStyle(color: Color(0xFF636B76)),
        ),
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Text(
                      Mock.helperTxt,
                      style: TextStyle(fontSize: 18, color: Colors.grey[800]),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            ButtonComponent(
              color: const Color(0xFFFFD4EC),
              text: 'Responder Questionario',
              heigth: 55,
              onTap: () {
                Modular.to.pushNamed('/helper/quiz');
              },
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
