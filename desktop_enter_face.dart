import 'package:digital_education/screens/microsoft.dart';
import 'package:digital_education/utils/app_colors.dart';
import 'package:digital_education/utils/media_query_values.dart';
import 'package:digital_education/widgets/form_fields.dart';
import 'package:digital_education/widgets/main_button.dart';
import 'package:digital_education/widgets/routs.dart';
import 'package:digital_education/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class DesktopEnterFace extends StatefulWidget {
  const DesktopEnterFace({super.key});

  @override
  State<DesktopEnterFace> createState() => _DesktopEnterFaceState();
}

class _DesktopEnterFaceState extends State<DesktopEnterFace> {
  TextEditingController anserController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool showContainer = false;

  final videoURL = "https://youtu.be/oSymPJW4PME?list=PLuLbIQFOxjf7ejPyXOMqEREf3f2QxOPRb";
  
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
          "شاشة الحاسوب ",
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
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextArt(
                    text:
                        "هيا معي يا اطفالي نتعلم جزء جديد من اجزاء الحاسوب ",
                    textColor: AppColors.textColor),
                SizedBox(
                  height: context.height * 0.03,
                ),
                Center(
                    child:
                        Container( clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Image.asset("assets/images/labtop1.jpg"))),
                SizedBox(
                  height: context.height * 0.03,
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
                  "المستوي الثالث",
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
                        "هيا بنا نتعرف على الجزء الذي امامنا يا اطفالي انها الشاشة ارى في شاشة الحاسوب مجموعة كبيرة من الاشياء مثل الفيديو و الصور و الالعاب و الارقام و الاحرف ",
                    textColor: AppColors.textColor),
                SizedBox(
                  height: context.height * 0.03,
                ),
                Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    clipBehavior: Clip.hardEdge,
                    child: Image.asset("assets/images/screen2.jpg")),
                SizedBox(
                  height: context.height * 0.02,
                ),
                TextArt(
                    text:
                        "هيا نتعرف على وظيفة شاشة الحاسوب يا احبابي هي مسئولة عن اخراج جميع البيانات حتى اراها بعيني ",
                    textColor: AppColors.textColor),
                SizedBox(
                  height: context.height * 0.03,
                ),
                Container(
                    clipBehavior: Clip.hardEdge,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Image.asset("assets/images/tab1.jpg")),
                SizedBox(height: context.height * 0.02),
                TextArt(
                    text:
                        "هل تعلمون يا اطفالي انه يوجد انواع كثيرة و مختلفة لشاشات الحاسوب ",
                    textColor: AppColors.textColor),
                    SizedBox(
                  height: context.height * 0.03,
                ),
                    TextArt( 
                    text:"                 لان الحاسوب قد يكون مكتبي",
                    textColor: AppColors.textColor),
                SizedBox(
                  height: context.height * 0.03,
                ),
                Container(
                    clipBehavior: Clip.hardEdge,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Image.asset("assets/images/desktop.jpg")),
                SizedBox(
                  height: context.height * 0.02,
                ),
                TextArt(
                    text:
                        "                                او يكون لاب توب ",
                    textColor: AppColors.textColor),
                SizedBox(
                  height: context.height * 0.03,
                ),
                Container(
                    clipBehavior: Clip.hardEdge,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Image.asset("assets/images/labtop2.jpg")),
                SizedBox(
                  height: context.height * 0.02,
                ),
                TextArt(
                    text:
                        "                            او يكون شاشة تابلت",
                    textColor: AppColors.textColor),
                SizedBox(
                  height: context.height * 0.03,
                ),
                Container(
                    clipBehavior: Clip.hardEdge,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Image.asset("assets/images/tab2.jpg")),
                SizedBox(
                  height: context.height * 0.02,
                ),
                
                TextArt(
                    text: "ما اسم الجزء الذي تعرفنا عليه اليوم يا اطفالي ؟", textColor: AppColors.textColor),
                SizedBox(
                  height: context.height * 0.02,
                ),
                defaultFormField(
                    controller: anserController,
                    type: TextInputType.text,
                    validate: (String value) {
                      if (value !=
                          "الشاشة") {
                        return "الأجابة خاطئة";
                      }
                    },
                    hint: "الاجابة"),
                SizedBox(
                  height: context.height * 0.02,
                ),
                Center(
                  child: MainButton(
                      text: "ادخال",
                      width: context.width * 0.8,
                      height: context.height * 0.1,
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          setState(() {
                            showContainer = true;
                            navigateTo(context, const MicroSoftScreen());
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
