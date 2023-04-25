import 'package:digital_education/screens/certificate.dart';
import 'package:digital_education/screens/level5.dart';
import 'package:digital_education/utils/app_colors.dart';
import 'package:digital_education/utils/media_query_values.dart';
import 'package:digital_education/widgets/form_fields.dart';
import 'package:digital_education/widgets/main_button.dart';
import 'package:digital_education/widgets/routs.dart';
import 'package:digital_education/widgets/text.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MicroSoftScreen extends StatefulWidget {
  const MicroSoftScreen({super.key});

  @override
  State<MicroSoftScreen> createState() => _MicroSoftScreenState();
}

class _MicroSoftScreenState extends State<MicroSoftScreen> {
  TextEditingController anserController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool showContainer = false;
  final videoURL = "https://youtu.be/7omQ4QtvNGQ?list=PLuLbIQFOxjf7ejPyXOMqEREf3f2QxOPRb";
  
  late YoutubePlayerController _controller;
   @override
  void initState() {
     final videoID = YoutubePlayer.convertUrlToId(videoURL);
     _controller = YoutubePlayerController(initialVideoId: videoID!,
     flags: const YoutubePlayerFlags(
      autoPlay: false,
     )
     );
     
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGround,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: AppColors.backGround,
        title: Text(
          "مايكروسوفت اوفيس",
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
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                 
                 TextArt(
                    text:
                        "هيا معى يااطفالى نتعلم شيء جميل وجديد",
                    textColor: AppColors.textColor),
                 SizedBox(
                  height: context.height * 0.04,
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
                 YoutubePlayer( 
                          progressColors: const ProgressBarColors(playedColor: Colors.red),
                          controller: _controller,
                         showVideoProgressIndicator: true,
                        
                          bottomActions: [
                            
                            CurrentPosition(),
                            ProgressBar(
                              isExpanded: true,
                              colors: const ProgressBarColors(
                                handleColor: Colors.red,
                                playedColor: Colors.red,
                                

                              ),
                            )

                          ],
                          
                         
                         ),

                  SizedBox(
                    height: context.height * 0.03,
                  ),
                Text(
                  "المستوي الرابع",
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
                        "هيا بنا نتعرف على الصوره الذى أمامنا يااحبابى أنها صورة برنامج word الآن ياأحبابى نتعلم كيفية فتح البرنامج أولافى شريط المهام نختار بحث ( search) ونكتب word يظهر لنا البرنامج ونضغط علية",
                    textColor: AppColors.textColor),
                SizedBox(
                  height: context.height * 0.02,
                ),
                Center(
                    child:
                    Image.asset("assets/images/wordsearch.jpg")
                     ),
                SizedBox(
                  height: context.height * 0.02,
                ),
                TextArt(
                    text:
                        "ويظهر لنا وجهت البرنامج",
                    textColor: AppColors.textColor),
                SizedBox(
                  height: context.height * 0.03,
                ),
                Container(
                    clipBehavior: Clip.hardEdge,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Image.asset("assets/images/wordclean.jpg")),
                SizedBox(
                  height: context.height * 0.02,
                ),
                
                TextArt(
                    text:
                        "",
                    textColor: AppColors.textColor),
                Lottie.asset("assets/animation/sheet.json"),
               
                SizedBox(
                  height: context.height * 0.02,
                ),
                TextArt(
                    text:
                        "نستخدمه لكي نكتب علية مجموعه من الحروف عربى",
                    textColor: AppColors.textColor),
                
                SizedBox(
                  height: context.height * 0.05,
                ),
                Center(
                    child: Image.asset(
                  "assets/images/besmalah.jpg",
                  width: context.width * 0.8,
                  height: context.height * 0.2,
                )),
                SizedBox(
                  height: context.height * 0.02,
                ),
                TextArt(
                    text:
                        "أو مجموعه من الحروف الانجليزي",
                    textColor: AppColors.textColor),
                Center(
                    child: Image.asset(
                  "assets/images/wordhello.jpg",
                )),
                SizedBox(
                  height: context.height * 0.05,
                ),
                
                TextArt(
                    text:
                        "أو مجموعه من الأرقام",
                    textColor: AppColors.textColor),
                SizedBox(
                  height: context.height * 0.05,
                ),
                Center(
                    child: Image.asset(
                  "assets/images/wordnum.jpg",
                 
                )),
                
                TextArt(
                    text: "ما اسم البرنامج الذي تعرفنا عليه يا اطفالي؟",
                    textColor: AppColors.textColor),
                SizedBox(
                  height: context.height * 0.02,
                ),
                defaultFormField(
                    controller: anserController,
                    type: TextInputType.text,
                    validate: (String value) {
                      if (value != "word") {
                        return "الاجابة خاطئة";
                      }
                    },
                    hint: "الاجابة "),
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
                              navigateTo(context, const LevelFive());
                             
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
