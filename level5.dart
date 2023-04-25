import 'package:digital_education/screens/certificate.dart';
import 'package:digital_education/screens/keyboard_level.dart';
import 'package:digital_education/utils/app_colors.dart';
import 'package:digital_education/utils/media_query_values.dart';
import 'package:digital_education/widgets/form_fields.dart';
import 'package:digital_education/widgets/main_button.dart';
import 'package:digital_education/widgets/routs.dart';
import 'package:digital_education/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class LevelFive extends StatefulWidget {
  const LevelFive({super.key});

  @override
  State<LevelFive> createState() => _LevelFiveState();
}

class _LevelFiveState extends State<LevelFive> {
  TextEditingController anserController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool showContainer = false;
  final videoURL1 = "https://youtu.be/26IacAU96IE";
  final videoURL2 = "https://youtu.be/uvqj7UZTGmQ";
  final videoURL3 = "https://youtu.be/lQ_xlBcuMsw";


  
 late YoutubePlayerController _controller1;
 late YoutubePlayerController _controller2;
 late YoutubePlayerController _controller3;

  

  @override
  void initState() {
     final videoID1 = YoutubePlayer.convertUrlToId(videoURL1);
     final videoID2 = YoutubePlayer.convertUrlToId(videoURL2);
     final videoID3 = YoutubePlayer.convertUrlToId(videoURL3);


     _controller1 = YoutubePlayerController(initialVideoId: videoID1!,flags: const YoutubePlayerFlags(autoPlay: false,));
     _controller2 = YoutubePlayerController(initialVideoId: videoID2!,flags: const YoutubePlayerFlags(autoPlay: false,));
     _controller3 = YoutubePlayerController(initialVideoId: videoID3!,flags: const YoutubePlayerFlags(autoPlay: false,));
    super.initState();
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGround,
      appBar: AppBar(
        leading: IconButton(
        onPressed: (){
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back,color: AppColors.textColor,),
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: AppColors.backGround,
        title: Text(
          "التكنولوجيا",
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
                top: context.height * 0.05,
                right: context.width * 0.09,
                left: context.width * 0.09),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextArt(
                      text: "هيا معي يا أطفالي نتعلم جزء جديد من أجزاء الحاسوب",
                      textColor: AppColors.textColor),
                  SizedBox(
                    height: context.height * 0.1,
                  ), 
                  Text(
                    " : المستوي الأول ",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: AppColors.textColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  Container(
                    color: AppColors.textColor,
                    width: context.width * 0.48,
                    height: 2,
                  ),
                  SizedBox(
                    height: context.height * 0.03,
                  ),
                  TextArt(
                      text: "اللاب توب : هو حاسوب شخصي صغير يكون على شكل صدفه و يحتوي على شاشة مثبته داخل الغطاء العلوي و لوحة مفاتيح داخل الغطاء السفلي",
                      textColor: AppColors.textColor),
                  Center(
                    child: Container(
                        width: context.width * 0.8,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset(
                          "assets/images/labtop1.jpg",
                        )),
                  ),
                  SizedBox(
                    height: context.height * 0.03,
                  ),
                  
                         YoutubePlayer( 
                          progressColors: const ProgressBarColors(playedColor: Colors.red),
                          controller: _controller1,
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
                  TextArt(
                      text: "الهاتف الذكي : هو جهاز محمول يمكن من خلاله استخدام وظائف عديده اكثر من التي تستخدم عبر الهاتف المحمول العادي",
                      textColor: AppColors.textColor),
                  Center(
                    child: Container(
                        width: context.width * 0.8,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset(
                          "assets/images/mobile.jpg",
                        )),
                  ),
                  SizedBox(
                    height: context.height * 0.03,),
                           YoutubePlayer( 
                          progressColors: const ProgressBarColors(playedColor: Colors.red),
                          controller: _controller2,
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
                          
                         
                         ),SizedBox(
                    height: context.height * 0.03,
                  ), 
                  TextArt(
                      text: "تكنولوجيا التعليم : هي استخدام التكنولوجيا من اجل تعزيز العمليه التعليميه و تطويرها.",
                      textColor: AppColors.textColor),
                  Center(
                    child: Container(
                        width: context.width * 0.8,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset(
                          "assets/images/tech.jpg",
                        )),
                  ),
                  SizedBox(
                    height: context.height * 0.03,),
  YoutubePlayer( 
                          progressColors: const ProgressBarColors(playedColor: Colors.red),
                          controller: _controller3,
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
                    height: context.height * 0.1,
                  ),
                  TextArt(
                      text:
                          "هيا اخبرني يا شطور ما هو الحاسوب المحمول ؟",
                      textColor: AppColors.textColor),
                  SizedBox(
                    height: context.height * 0.02,
                  ),
                  defaultFormField(
                      controller: anserController,
                      type: TextInputType.text,
                      validate: (String value) {
                        if (value != "الهاتف") {
                          return "الأجابة خاطئة";
                        }
                       
                      },
                      hint: " الأجابة"),
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
                              navigateTo(context,const CertificateScreen());
                              
                            });
                          }
                        },
                        backGround: AppColors.primary,
                        textColor: AppColors.textColor,
                        fontSize: 30),
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
