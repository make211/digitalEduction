import 'package:digital_education/screens/scratch.dart';
import 'package:digital_education/utils/app_colors.dart';
import 'package:digital_education/utils/media_query_values.dart';
import 'package:digital_education/widgets/form_fields.dart';
import 'package:digital_education/widgets/main_button.dart';
import 'package:digital_education/widgets/routs.dart';
import 'package:digital_education/widgets/text.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

class MicroSoftScreen extends StatefulWidget {
  const MicroSoftScreen({super.key});

  @override
  State<MicroSoftScreen> createState() => _MicroSoftScreenState();
}

class _MicroSoftScreenState extends State<MicroSoftScreen> {
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
          "Microsoft Office",
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
          child: Form(key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                    child: SvgPicture.asset(
                  "assets/images/microsoft.svg",
                  width: context.width * 0.8,
                  height: context.height * 0.2,
                )),
                SizedBox(
                  height: context.height * 0.03,
                ),
                Text(
                  "This is Level 4 ",
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
                        "It is an office suite produced by Microsoft Corporation. It includes a group of office programs such as a text editing program, a database program, a presentation program, an accounting list program, and others.",
                    textColor: AppColors.textColor),
                SizedBox(
                  height: context.height * 0.02,
                ),
                Center(
                    child: SvgPicture.asset(
                  "assets/images/access.svg",
                  width: context.width * 0.8,
                  height: context.height * 0.2,
                )),
                SizedBox(
                  height: context.height * 0.02,
                ),
                TextArt(
                    text:
                        "It is a database management system from Microsoft that combines the Jet database engine, graphical user interface, and software development tools. Microsoft Access is part of the Microsoft Office suite of programs. It is available in Professional and Premium versions, or it is sold separately. It is also included in the Microsoft 365 package. The latest versions of Microsoft Access include broader protection, and a trial version of the program is available for free.Microsoft Access stores data in its own format, which is built on the Access Jet Database Engine, and can also import or connect to data stored in other programs and databases.",
                    textColor: AppColors.textColor),
                SizedBox(
                  height: context.height * 0.03,
                ),
                Container(
                    clipBehavior: Clip.hardEdge,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Lottie.asset("assets/animation/database.json")),
                SizedBox(
                  height: context.height * 0.02,
                ),
                Center(
                    child: SvgPicture.asset(
                  "assets/images/excel.svg",
                  width: context.width * 0.8,
                  height: context.height * 0.2,
                )),
                SizedBox(
                  height: context.height * 0.02,
                ),
                TextArt(
                    text:
                        "Microsoft Excel is one of the electronic spreadsheet programs that you can use to manage, analyze and plot data. Which initially appeared as financial programs and then developed into financial and accounting programs for conducting financial accounts such as preparing salaries, budgets, and others. These programs include (Visicalus), (Lotus123), and finally (Microsoft Excel). Excel is known as a spreadsheet program that provides four main advantages: 1- Workbook. 2- Performing mathematical tasks. 3- Provide database feature. 4- Create charts.",
                    textColor: AppColors.textColor),
                Lottie.asset("assets/animation/sheet.json"),
                Center(
                    child: SvgPicture.asset(
                  "assets/images/outlook.svg",
                  width: context.width * 0.8,
                  height: context.height * 0.2,
                )),
                SizedBox(
                  height: context.height * 0.02,
                ),
                TextArt(
                    text:
                        "Like other major web services, Outlook uses Ajax programming techniques and supports the latest versions of Internet Explorer, Firefox, Safari, and Google Chrome. Some of the features include keyboard controls giving the ability to move around the page without using the mouse, the ability to search user messages including structured query formulas such as «at:ebay», and filters in messages",
                    textColor: AppColors.textColor),
                Center(
                    child: Lottie.asset(
                  "assets/animation/massages.json",
                )),
                SizedBox(
                  height: context.height * 0.05,
                ),
                Center(
                    child: SvgPicture.asset(
                  "assets/images/power.svg",
                  width: context.width * 0.8,
                  height: context.height * 0.2,
                )),
                SizedBox(
                  height: context.height * 0.02,
                ),
                TextArt(
                    text:
                        "It is one of the programs available within the Office package and is intended for presentations, as the program provides a set of tools for producing electronic files that contain virtual slides with writings and images used on a cinema projector connected to a computer by a person (the presenter) in the presence of a group of people ( meeting) which is widely used in companies and educational centers where the necessary equipment is available. It is used in animated and non-animated shows, and it is also used in successive changing panels. Through it, an infinite number of slides can be inserted, and animated and static images can also be included, and clips or links can also be inserted, and hyperlinks can also be used.",
                    textColor: AppColors.textColor),
                Center(
                    child: Lottie.asset(
                  "assets/animation/presentation.json",
                )),
                SizedBox(
                  height: context.height * 0.05,
                ),
                Center(
                    child: SvgPicture.asset(
                  "assets/images/publishur.svg",
                  width: context.width * 0.8,
                  height: context.height * 0.2,
                )),
                SizedBox(
                  height: context.height * 0.02,
                ),
                TextArt(
                    text:
                        "It is a desktop publishing program from Microsoft. It differs from Microsoft Word in that it focuses more on page design and not on formatting texts and sections.",
                    textColor: AppColors.textColor),
                SizedBox(
                  height: context.height * 0.1,
                ),
                Center(
                    child: SvgPicture.asset(
                  "assets/images/word.svg",
                  width: context.width * 0.8,
                  height: context.height * 0.2,
                )),
                SizedBox(
                  height: context.height * 0.04,
                ),
                TextArt(
                    text:
                        "It is one of the programs provided within the Office package, and it is dedicated to word processing, so that it allows entering words in electronic form on virtual documents, and then processing and outputting them in the required form according to the user’s need so that they can be printed on paper sheets or kept in their electronic form, and it is one of the most important programs produced by the American company Microsoft for text processing. The first version of it was in the year 1983 AD under the name Multi-Tool Word, and this program was intended for the Xenix operating system, which is one of the Unix versions licensed by AT & T phone laboratories, which was sold and promoted by Microsoft before the issuance of its other famous systems for personal computers.Other versions of the program were released for a number of systems, including, for example, the DOS system on IBM computers in the year 1983 AD, and it was also released on other systems such as the Apple Macintosh (1984 AD), SCO Group systems, Unix, OS / 2, and Microsoft Windows in 1989 AD. . Now, the Word program is part of the well-known Microsoft Office suite of programs, and the program is sold on its own without the need to purchase the entire suite.He added that «the products and services included in the Microsoft Office system are designed to help companies to a greater extent to solve business problems». In addition to containing the Word program, the product includes basic programs such as (Excel), (Power Point) and (Outlook), but it also includes other components that link the programs together through the server program of Microsoft. In 2007, Microsoft introduced with Windows Vista a new set of Offices, including the Word program, where Microsoft is currently receiving positive opinions about the program and the features that have been added to it.",
                    textColor: AppColors.textColor),
                SizedBox(
                  height: context.height * 0.05,
                ),
                TextArt(
                    text: "- How to write sheet ?",
                    textColor: AppColors.textColor),
                SizedBox(
                  height: context.height * 0.02,
                ),
                defaultFormField(
                    controller: anserController,
                    type: TextInputType.text,
                    validate: (String value) {
                      if (value != "on excel") {
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
                            navigateAndFinish(context, const ScratchScreen());
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
