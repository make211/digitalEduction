import 'package:digital_education/screens/certificate.dart';
import 'package:digital_education/utils/app_colors.dart';
import 'package:digital_education/utils/media_query_values.dart';
import 'package:digital_education/widgets/form_fields.dart';
import 'package:digital_education/widgets/main_button.dart';
import 'package:digital_education/widgets/routs.dart';
import 'package:digital_education/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

class ScratchScreen extends StatefulWidget {
  const ScratchScreen({super.key});

  @override
  State<ScratchScreen> createState() => _ScratchScreenState();
}

class _ScratchScreenState extends State<ScratchScreen> {
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
          "Scratch",
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: AppColors.textColor),
        ),
      ),
      body: SingleChildScrollView(
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: SvgPicture.asset(
                    "assets/images/scratch-logo.svg",
                    width: context.width * 0.8,
                  ),
                ),
                SizedBox(
                  height: context.height * 0.03,
                ),
                Text(
                  "This is Level 5 ",
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
                        "Scratch is the programming language for children.Let's learn how it works",
                    textColor: AppColors.textColor),
                SizedBox(
                  height: context.height * 0.02,
                ),
                Container(
                    clipBehavior: Clip.hardEdge,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(15)),
                    child: Image.asset("assets/images/scratch1.jpeg")),
                SizedBox(
                  height: context.height * 0.01,
                ),
                TextArt(
                    text: "We choose eventwhen flag clicked",
                    textColor: AppColors.textColor),
                SizedBox(
                  height: context.height * 0.02,
                ),
                Container(
                    clipBehavior: Clip.hardEdge,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(15)),
                    child: Image.asset("assets/images/scratch2.jpeg")),
                SizedBox(
                  height: context.height * 0.01,
                ),
                TextArt(
                    text: "Secondly, we choose from Controlrepeat: 10",
                    textColor: AppColors.textColor),
                SizedBox(
                  height: context.height * 0.02,
                ),
                Container(
                    clipBehavior: Clip.hardEdge,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(15)),
                    child: Image.asset("assets/images/scratch3.jpeg")),
                SizedBox(
                  height: context.height * 0.01,
                ),
                TextArt(
                    text: "from motion.We choose move 10 steps",
                    textColor: AppColors.textColor),
                SizedBox(
                  height: context.height * 0.02,
                ),
                Container(
                    clipBehavior: Clip.hardEdge,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(15)),
                    child: Image.asset("assets/images/scratch4.jpeg")),
                SizedBox(
                  height: context.height * 0.01,
                ),
                TextArt(
                    text: "from ControlWe choose wait 1 seconds",
                    textColor: AppColors.textColor),
                SizedBox(
                  height: context.height * 0.02,
                ),
                Container(
                    clipBehavior: Clip.hardEdge,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(15)),
                    child: Image.asset("assets/images/scratch5.jpeg")),
                SizedBox(
                  height: context.height * 0.01,
                ),
                TextArt(
                    text:
                        "We press the flag to implement the codes and the animal moves",
                    textColor: AppColors.textColor),
                SizedBox(
                  height: context.height * 0.05,
                ),
                TextArt(
                    text: "How do you define steps ?",
                    textColor: AppColors.textColor),
                SizedBox(
                  height: context.height * 0.02,
                ),
                defaultFormField(
                    controller: anserController,
                    type: TextInputType.text,
                    validate: (String value) {
                      if (value != "from motion") {
                        return "The answer is incorrect";
                      }
                    },
                    hint: "Enter answer"),
                SizedBox(
                  height: context.height * 0.02,
                ),
                Center(
                  child: MainButton(
                      text: "Submit",
                      width: context.width * 0.8,
                      height: context.height * 0.1,
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          setState(() {
                            showContainer = true;
                            navigateAndFinish(context,const CertificateScreen()); 
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
    );
  }
}
