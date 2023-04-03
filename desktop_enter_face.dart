import 'package:digital_education/screens/microsoft.dart';
import 'package:digital_education/utils/app_colors.dart';
import 'package:digital_education/utils/media_query_values.dart';
import 'package:digital_education/widgets/form_fields.dart';
import 'package:digital_education/widgets/main_button.dart';
import 'package:digital_education/widgets/routs.dart';
import 'package:digital_education/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class DesktopEnterFace extends StatefulWidget {
  const DesktopEnterFace({super.key});

  @override
  State<DesktopEnterFace> createState() => _DesktopEnterFaceState();
}

class _DesktopEnterFaceState extends State<DesktopEnterFace> {
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
          "Desktop Interface",
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
            top: context.height * 0.02,
            left: context.width * 0.03,
            right: context.width * 0.03,
            bottom: context.height * 0.02,
          ),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                    child:
                        LottieBuilder.asset("assets/animation/computer.json")),
                SizedBox(
                  height: context.height * 0.03,
                ),
                Text(
                  "This is Level 3",
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
                        "When you open PC from power button you will meet desktop Interface let's learn about that",
                    textColor: AppColors.textColor),
                SizedBox(
                  height: context.height * 0.03,
                ),
                Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    clipBehavior: Clip.hardEdge,
                    child: Image.asset("assets/images/userEnterFace.png")),
                SizedBox(
                  height: context.height * 0.02,
                ),
                TextArt(
                    text:
                        " This is user interface screen . There are many things in it you can open any of them . In this level we will learn how to do this",
                    textColor: AppColors.textColor),
                SizedBox(
                  height: context.height * 0.03,
                ),
                Container(
                    clipBehavior: Clip.hardEdge,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Image.asset("assets/images/search.jpg")),
                SizedBox(height: context.height * 0.02),
                TextArt(
                    text:
                        "Open search from there and search about any topic you need .",
                    textColor: AppColors.textColor),
                SizedBox(
                  height: context.height * 0.03,
                ),
                Container(
                    clipBehavior: Clip.hardEdge,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Image.asset("assets/images/settings.jpg")),
                SizedBox(
                  height: context.height * 0.02,
                ),
                TextArt(
                    text:
                        "If you want open settings click on start icon from task bar and click on settings.",
                    textColor: AppColors.textColor),
                SizedBox(
                  height: context.height * 0.03,
                ),
                Container(
                    clipBehavior: Clip.hardEdge,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Image.asset("assets/images/quick.jpg")),
                SizedBox(
                  height: context.height * 0.02,
                ),
                TextArt(
                    text:
                        "Click on quick access from task bar to browse your files and move between them",
                    textColor: AppColors.textColor),
                SizedBox(
                  height: context.height * 0.03,
                ),
                Container(
                    clipBehavior: Clip.hardEdge,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Image.asset("assets/images/shutdown.jpg")),
                SizedBox(
                  height: context.height * 0.02,
                ),
                TextArt(
                    text:
                        "If you want power of PC click on start icon and click on power to show power option and click on shut down",
                    textColor: AppColors.textColor),
                SizedBox(
                  height: context.height * 0.05,
                ),
                TextArt(
                    text: "- How to search ?", textColor: AppColors.textColor),
                SizedBox(
                  height: context.height * 0.02,
                ),
                defaultFormField(
                    controller: anserController,
                    type: TextInputType.text,
                    validate: (String value) {
                      if (value !=
                          "open search from taskbar and search about any topic you need") {
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
                            navigateAndFinish(context, const MicroSoftScreen());
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
