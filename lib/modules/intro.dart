import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../shared/styles/colors.dart';

class Intro extends StatelessWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: splashColor, elevation: 0, automaticallyImplyLeading: false,),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/main_bg.png'),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                     InkWell(
                          onTap: () => Navigator.pushNamed(context, '/login'),
                          child: const Icon(Icons.close, color: Colors.black45, size: 24),
                        ),
                      const Image(image: AssetImage('assets/images/intro1_menu.png')),
                    ],
                  ),
                const SizedBox(height: 30,),
                const Image(image: AssetImage('assets/images/intro1.png')),
                const SizedBox(height: 10,),
                Text('FirstStep'.tr(), style: const TextStyle(color: mainColor, fontFamily: 'Poppins' ,fontSize: 20 , fontWeight: FontWeight.bold),),
                const SizedBox(height: 10,),
                Container(
                  margin: const EdgeInsets.only(left: 50, right: 50),
                  child:
                  Text('intro1'.tr(),textAlign: TextAlign.center, style: const TextStyle(color: mainColor, fontFamily: 'Poppins' ,fontSize: 20 , fontWeight: FontWeight.w300),),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
