import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:gifto/shared/styles/colors.dart';

class IntroductionWidget extends ChangeNotifier {

  Widget buttonIntro({required String buttontext, required Function onPressed, required Color btn_color, required Color text_color, String font_family = 'Poppins'}) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(btn_color),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0), // Adjust the value as needed
          ),
        ),
      ),
      onPressed: () {
        onPressed();
      },
      child: Text(buttontext, style: TextStyle(color: text_color, fontFamily: font_family),),
    );
  }

  Widget firstPage(int current_page, PageController? controller) {
    return Column(
      children: [
        const Image(image: AssetImage('assets/images/intro1.png'),height: 240, width: 240,),
        const SizedBox(height: 10,),
        Text('First_Step'.tr(), style: const TextStyle(color: mainColor,
            fontFamily: 'Poppins',
            fontSize: 22,
            fontWeight: FontWeight.bold),),
        const SizedBox(height: 10,),
        Container(
          margin: const EdgeInsets.only(left: 50, right: 50),
          child: Text('intro1'.tr(), textAlign: TextAlign.center,
            style: const TextStyle(color: mainColor,
                fontFamily: 'Poppins',
                fontSize: 18,
                fontWeight: FontWeight.w300),),
        ),
        const SizedBox(height: 10,),
        buttonIntro(
            buttontext: 'Continue'.tr(),
            onPressed: (){
              if (current_page < 5) { // Adjust the condition based on the number of pages
                controller?.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.ease,
                );
              }
            }, btn_color: introColor, text_color: Colors.black.withOpacity(0.6)
         ),
      ],
    );
  }

  Widget secondPage(int current_page, PageController? controller) {
    return Column(
      children: [
        const Image(image: AssetImage('assets/images/intro2.png')),
        const SizedBox(height: 10,),
        Text('Create_Events'.tr(), style: const TextStyle(color: mainColor,
            fontFamily: 'Poppins',
            fontSize: 22,
            fontWeight: FontWeight.bold),),
        const SizedBox(height: 10,),
        Container(
          margin: const EdgeInsets.only(left: 50, right: 50),
          child: Text('intro2'.tr(), textAlign: TextAlign.center,
            style: const TextStyle(color: mainColor,
                fontFamily: 'Poppins',
                fontSize: 18,
                fontWeight: FontWeight.w300),),
        ),
        const SizedBox(height: 10,),
        buttonIntro(
            buttontext: 'Continue'.tr(),
            onPressed: (){
              if (current_page < 5) { // Adjust the condition based on the number of pages
                controller?.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.ease,
                );
              }
            }, btn_color: introColor, text_color: Colors.black.withOpacity(0.6)
        ),
      ],
    );
  }

  Widget thirdPage(int current_page, PageController? controller) {
    return Column(
      children: [
        const Image(image: AssetImage('assets/images/intro3.png'),height: 240, width: 240,),
        const SizedBox(height: 10,),
        Text('Create_Agift_Wishlist'.tr(), style: const TextStyle(
            color: mainColor,
            fontFamily: 'Poppins',
            fontSize: 22,
            fontWeight: FontWeight.bold),),
        const SizedBox(height: 10,),
        Container(
          margin: const EdgeInsets.only(left: 50, right: 50),
          child: Text('intro3'.tr(), textAlign: TextAlign.center,
            style: const TextStyle(color: mainColor,
                fontFamily: 'Poppins',
                fontSize: 18,
                fontWeight: FontWeight.w300),),
        ),
        const SizedBox(height: 10,),
        buttonIntro(
            buttontext: 'Continue'.tr(),
            onPressed: (){
              if (current_page < 5) { // Adjust the condition based on the number of pages
                controller?.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.ease,
                );
              }
            }, btn_color: introColor, text_color: Colors.black.withOpacity(0.6)
        ),
      ],
    );
  }

  Widget fourthPage(BuildContext context) {
    return Column(
      children: [
        const Image(image: AssetImage('assets/images/intro4.png')),
        const SizedBox(height: 10,),
        Text('Enjoy_our_offers'.tr(), style: const TextStyle(color: mainColor,
            fontFamily: 'Poppins',
            fontSize: 22,
            fontWeight: FontWeight.bold),),
        const SizedBox(height: 10,),
        Container(
          margin: const EdgeInsets.only(left: 50, right: 50),
          child: Text('intro4'.tr(), textAlign: TextAlign.center,
            style: const TextStyle(color: mainColor,
                fontFamily: 'Poppins',
                fontSize: 18,
                fontWeight: FontWeight.w300),),
        ),
        const SizedBox(height: 10,),
        buttonIntro(
            buttontext: 'Get_Started'.tr(),
            onPressed: (){
              Navigator.pushNamed(context, '/login');
            }, btn_color: introColor, text_color: Colors.black.withOpacity(0.6)
        ),
      ],
    );
  }
}


class DotsIndicator extends StatelessWidget {
  final int itemCount;
  final int currentIndex;

  DotsIndicator({required this.itemCount, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List<Widget>.generate(itemCount, (int index) {
        return Container(
          width: 40,
          height: 6,
          margin: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(5),
            color: index == currentIndex ? const Color(0xff84F3C4) : Colors.grey,
          ),
        );
      }),
    );
  }
}