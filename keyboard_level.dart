import 'package:digital_education/screens/desktop_enter_face.dart';
import 'package:digital_education/utils/app_colors.dart';
import 'package:digital_education/utils/media_query_values.dart';
import 'package:digital_education/widgets/form_fields.dart';
import 'package:digital_education/widgets/main_button.dart';
import 'package:digital_education/widgets/routs.dart';
import 'package:digital_education/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class KeyboardScreen extends StatefulWidget {
  const KeyboardScreen({super.key});

  @override
  State<KeyboardScreen> createState() => _KeyboardScreenState();
}

class _KeyboardScreenState extends State<KeyboardScreen> {
  TextEditingController anserController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool showContainer = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGround,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: AppColors.backGround,
        title: Text(
          "Keyboard",
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: AppColors.textColor),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.only(
              top: context.height * 0.01,
              right: context.width * 0.04,
              left: context.width * 0.04,
              bottom: context.height * 0.01,
            ),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextArt(
                      text:
                          "هيا معي يا أطفالي نتعلم جزء جديد من أجزاء الحاسوب.",
                      textColor: AppColors.textColor),
                  SizedBox(
                    height: context.height * 0.1,
                  ),
                  Center(
                    child: Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: Image.asset("assets/images/key.jpg")),
                  ),
                  SizedBox(
                    height: context.height * 0.03,
                  ),
                  Text(
                    " : المستوي الثاني  ",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: AppColors.textColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    color: AppColors.textColor,
                    width: context.width * 0.35,
                    height: 2,
                  ),
                  SizedBox(
                    height: context.height * 0.03,
                  ),
                  TextArt(
                      text:
                          "هيا بنا نتعرف على الجزء الذي أمامنا يا أحبابي انها ليس قطعة ألعاب بل انها من أجزاء الحاسوب طفلي الشطور انها لوحة المفاتيح و سميت لوحة المفاتيح لان بها عدة مفاتيح مختلفه بعضها حروف و بعضها ارقام",
                      textColor: AppColors.textColor),
                  SizedBox(
                    height: context.height * 0.03,
                  ),
                  Center(
                    child: Lottie.asset("assets/animation/keyboard.json",
                        height: context.height * 0.3,
                        width: context.width * 0.5),
                  ),
                  SizedBox(
                    height: context.height * 0.03,
                  ),
                  TextArt(
                      text:
                          "الان انظروا الي لوحة المفاتيح الذي امامكم و تأكدوا من وجود الحروف و الارقام",
                      textColor: AppColors.textColor),
                  SizedBox(
                    height: context.height * 0.05,
                  ),
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      clipBehavior: Clip.hardEdge,
                      child: Image.asset("assets/images/key2.jpg")),
                  SizedBox(
                    height: context.height * 0.03,
                  ),
                  TextArt(
                      text:
                          "و الان يا اطفالي سوف نتعرف على وظيفة لوحة المفاتيح و هي الكتابه على شاشة الحاسوب ",
                      textColor: AppColors.textColor),
                  SizedBox(
                    height: context.height * 0.02,
                  ),
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      clipBehavior: Clip.hardEdge,
                      child: Image.asset("assets/images/key3.jpg")),
                  SizedBox(
                    height: context.height * 0.02,
                  ),
                  TextArt(
                      text: "  ماهي مكونات لوحة المفاتيح ؟ - ",
                      textColor: AppColors.textColor),
                  SizedBox(
                    height: context.height * 0.02,
                  ),
                  defaultFormField(
                      controller: anserController,
                      type: TextInputType.text,
                      validate: (String value) {
                        if (value != "الأرقام و الحروف") {
                          return "الأجابة خاطئة";
                        }
                      },
                      hint: "أدخل الأجابة"),
                  SizedBox(
                    height: context.height * 0.02,
                  ),
                  Center(
                    child: MainButton(
                        text: "إدخال",
                        width: context.width * 0.8,
                        height: context.height * 0.1,
                        onTap: () {
                          if (formKey.currentState!.validate()) {
                            setState(() {
                              showContainer = true;
                              navigateAndFinish(
                                  context, const DesktopEnterFace());
                            });
                          }
                        },
                        backGround: AppColors.primary,
                        textColor: AppColors.textColor,
                        fontSize: 20),
                  ),
                  Center(
                    child: Lottie.asset(
                      "assets/animation/congrts.json",
                      height: showContainer ? 200 : 0,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
