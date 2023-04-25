import 'package:digital_education/utils/app_colors.dart';
import 'package:digital_education/utils/media_query_values.dart';
import 'package:digital_education/widgets/form_fields.dart';
import 'package:digital_education/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CertificateScreen extends StatefulWidget {
  const CertificateScreen({super.key});

  @override
  State<CertificateScreen> createState() => _CertificateScreenState();
}

class _CertificateScreenState extends State<CertificateScreen> {
  TextEditingController nameController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGround,
      appBar: AppBar( 
        
        centerTitle: true,
        title: Text(
          "Certificate",
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: AppColors.textColor),
        ),
        elevation: 0.0,
        backgroundColor: AppColors.backGround,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          TextArt(
                              text:
                                  "مبروك على إكمال جميع المستويات والإجابة على جميع الأسئلة. أنت الآن على استعداد تام للتعامل مع أجهزة الكمبيوتر. نتمنى لكم التوفيق والنجاح دائما",
                              textColor: AppColors.backGround),
                          SizedBox(
                            height: context.height * 0.03,
                          ),
                          Center(
                            child: Text(
                              " عزيزي: ${nameController.text}",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color: AppColors.backGround,
                                    fontSize: 25,
                                  ),
                            ),
                          ),
                          SizedBox(
                            height: context.height * 0.05  ,
                          ),
                          TextArt(
                              text: ": امضاء المعلمين  ",
                              textColor: AppColors.backGround),
                          Image.asset(
                            "assets/images/signs.png",
                           height: context.height * 0.2,
                           width: context.width * 0.5,
                          ),
                          Center(
                            child: TextArt(
                              text: "Digital Education",
                              textColor: AppColors.backGround,
                            ),
                          )
                        ],
                      ),
                    )),
                SizedBox(
                  height: context.height * 0.03,
                ),
                defaultFormField(
                    controller: nameController,
                    type: TextInputType.name,
                    validate: (String value) {
                      if (value.isEmpty) {
                        return " ادخل اسمك";
                      }
                    },
                    hint: "ادخل اسمك"),
                Center(
                  child: Lottie.asset("assets/animation/congrts.json",
                      height: context.height * 0.2),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
