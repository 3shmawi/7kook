import 'package:flutter/material.dart';
import 'package:hokok/unit/constant.dart';
import 'package:hokok/unit/shared_widget/text.dart';
import '../../unit/color_manager.dart';
import '../welcome/welcome_screen.dart';

class FindLawyerScreen extends StatelessWidget {
  const FindLawyerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(9.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 35,
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: ConstantColor.greyColor.withOpacity(0.09),
                  ),
                  width: 270.0,
                  height: 40.0,
                  child: Stack(
                    children: const [
                      Positioned(
                        bottom: 10,
                        left: 80.0,
                        child: DefaultText('ابحث عن محامي', fontSize: 12),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 230.0,
                        child: Icon(Icons.search),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: ConstantColor.secondaryColor,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const DefaultText("فيصل", fontSize: 21),
                      const SizedBox(
                        height: 7,
                      ),
                      Row(
                        children: const [
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                        ],
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      const DefaultText("مرحبا بكام انا فيصل حاصل علر.....",
                          fontSize: 11),
                      const SizedBox(
                        height: 7,
                      ),
                      Container(
                        width: 130,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ConstantColor.secondaryColor,
                        ),
                        child: Center(
                          child: InkWell(
                            onTap: () {
                              //go to profile
                            },
                            child: const DefaultText(
                              'زيارة البروفيل',
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Container(
                    width: 70,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.horizontal(
                        right: Radius.circular(10),
                      ),
                      color: ConstantColor.primaryColor,
                    ),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.person,
                        ),
                        DefaultText("وكلني", fontSize: 10, color: Colors.white),
                      ],
                    ),
                  ),
                  Container(
                    height: 30,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(10),
                      ),
                      color: Colors.black,
                    ),
                    child: PopupMenuButton<int>(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22.0),
                      ),
                      color: ColorManager.primary,
                      onSelected: (item) => onSelected(context, item),
                      itemBuilder: (context) => [
                        PopupMenuItem<int>(
                          value: 0,
                          child: Row(
                            children: const [
                              Icon(Icons.insert_invitation),
                              SizedBox(width: 8),
                              Text('دعوه للعمل لعي قضيه'),
                            ],
                          ),
                        ),
                        PopupMenuItem<int>(
                          value: 1,
                          child: Row(
                            children: const [
                              Icon(Icons.favorite),
                              SizedBox(width: 8),
                              Text('اضف الي المفضله'),
                            ],
                          ),
                        ),
                        PopupMenuItem<int>(
                          value: 2,
                          child: Row(
                            children: const [
                              Icon(Icons.message),
                              SizedBox(width: 8),
                              Text('ترك ملاحظه'),
                            ],
                          ),
                        ),
                        PopupMenuItem<int>(
                          value: 2,
                          child: Row(
                            children: const [
                              Icon(Icons.flag),
                              SizedBox(width: 8),
                              Text('بلاغ عن اساءه'),
                            ],
                          ),
                        ),
                      ],
                      child:
                          const Icon(Icons.arrow_downward, color: Colors.white),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: ConstantColor.secondaryColor,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const DefaultText("فيصل", fontSize: 21),
                      const SizedBox(
                        height: 7,
                      ),
                      Row(
                        children: const [
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                        ],
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      const DefaultText("مرحبا بكام انا فيصل حاصل علر.....",
                          fontSize: 11),
                      const SizedBox(
                        height: 7,
                      ),
                      Container(
                        width: 130,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ConstantColor.secondaryColor,
                        ),
                        child: Center(
                          child: InkWell(
                            onTap: () {
                              //go to profile
                            },
                            child: const DefaultText(
                              'زيارة البروفيل',
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Container(
                    width: 70,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.horizontal(
                        right: Radius.circular(10),
                      ),
                      color: ConstantColor.primaryColor,
                    ),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.person,
                        ),
                        DefaultText("وكلني", fontSize: 10, color: Colors.white),
                      ],
                    ),
                  ),
                  Container(
                    height: 30,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(10),
                      ),
                      color: Colors.black,
                    ),
                    child: PopupMenuButton<int>(
                      color: Colors.indigo,
                      onSelected: (item) => onSelected(context, item),
                      itemBuilder: (context) => [
                        const PopupMenuItem<int>(
                          value: 0,
                          child: Text('Settings'),
                        ),
                        const PopupMenuItem<int>(
                          value: 1,
                          child: Text('Share'),
                        ),
                        PopupMenuItem<int>(
                          value: 2,
                          child: Row(
                            children: const [
                              Icon(Icons.logout),
                              SizedBox(width: 8),
                              Text('Sign Out'),
                            ],
                          ),
                        ),
                      ],
                      child:
                          const Icon(Icons.arrow_downward, color: Colors.white),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: ConstantColor.secondaryColor,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const DefaultText("فيصل", fontSize: 21),
                      const SizedBox(
                        height: 7,
                      ),
                      Row(
                        children: const [
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                        ],
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      const DefaultText("مرحبا بكام انا فيصل حاصل علر.....",
                          fontSize: 11),
                      const SizedBox(
                        height: 7,
                      ),
                      Container(
                        width: 130,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ConstantColor.secondaryColor,
                        ),
                        child: Center(
                          child: InkWell(
                            onTap: () {
                              //go to profile
                            },
                            child: const DefaultText(
                              'زيارة البروفيل',
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Container(
                    width: 70,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.horizontal(
                        right: Radius.circular(10),
                      ),
                      color: ConstantColor.primaryColor,
                    ),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.person,
                        ),
                        DefaultText("وكلني", fontSize: 10, color: Colors.white),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 30,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(10),
                        ),
                        color: Colors.black,
                      ),
                      child: const Icon(
                        Icons.arrow_downward,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: ConstantColor.secondaryColor,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const DefaultText("فيصل", fontSize: 21),
                      const SizedBox(
                        height: 7,
                      ),
                      Row(
                        children: const [
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                        ],
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      const DefaultText("مرحبا بكام انا فيصل حاصل علر.....",
                          fontSize: 11),
                      const SizedBox(
                        height: 7,
                      ),
                      Container(
                        width: 130,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ConstantColor.secondaryColor,
                        ),
                        child: Center(
                          child: InkWell(
                            onTap: () {
                              //go to profile
                            },
                            child: const DefaultText(
                              'زيارة البروفيل',
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Container(
                    width: 70,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.horizontal(
                        right: Radius.circular(10),
                      ),
                      color: ConstantColor.primaryColor,
                    ),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.person,
                        ),
                        DefaultText("وكلني", fontSize: 10, color: Colors.white),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 30,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(10),
                        ),
                        color: Colors.black,
                      ),
                      child: const Icon(
                        Icons.arrow_downward,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: ConstantColor.secondaryColor,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const DefaultText("فيصل", fontSize: 21),
                      const SizedBox(
                        height: 7,
                      ),
                      Row(
                        children: const [
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                        ],
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      const DefaultText("مرحبا بكام انا فيصل حاصل علر.....",
                          fontSize: 11),
                      const SizedBox(
                        height: 7,
                      ),
                      Container(
                        width: 130,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ConstantColor.secondaryColor,
                        ),
                        child: Center(
                          child: InkWell(
                            onTap: () {
                              //go to profile
                            },
                            child: const DefaultText(
                              'زيارة البروفيل',
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Container(
                    width: 70,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.horizontal(
                        right: Radius.circular(10),
                      ),
                      color: ConstantColor.primaryColor,
                    ),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.person,
                        ),
                        DefaultText("وكلني", fontSize: 10, color: Colors.white),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 30,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(10),
                        ),
                        color: Colors.black,
                      ),
                      child: const Icon(
                        Icons.arrow_downward,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 35,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onSelected(BuildContext context, int item) {
    switch (item) {
      case 0:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const WelcomeScreen(),
          ),
        );
        break;
      case 1:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const WelcomeScreen(),
          ),
        );
        break;
      case 2:
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => const WelcomeScreen(),
          ),
          (route) => false,
        );
        break;
      case 3:
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => const WelcomeScreen(),
          ),
          (route) => false,
        );
    }
  }
}
