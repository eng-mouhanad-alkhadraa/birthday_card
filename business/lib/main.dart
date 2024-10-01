import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const business());
}

class business extends StatelessWidget {
  const business({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff134354),
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Color(0xff134354),
            ),
            leading: Icon(
              Icons.person,
            ),
            title: Text(
              'Business Card',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 82),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 122,
                      // لعمل اطار دائري حول الصورة هو فعليا تحتا
                      backgroundColor: Color(0xffDBA71A),
                      child: CircleAvatar(
                        radius: 115,
                        backgroundColor: Colors.black,
                        backgroundImage:
                            AssetImage('assets/images/mouhanad.png'),
                      ),
                    ),
                    const Text(
                      'Mouhanad Alkhadraa',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontFamily: 'Pacifico',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Divider(
                      color: Colors.black,
                      thickness: 3,
                      indent: 50,
                      endIndent: 45,
                      height: 5,
                    ),
                    const Text(
                      'Mobile application developer',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 27,
                        fontFamily: 'Pacifico',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Divider(
                      color: Colors.black,
                      thickness: 3,
                      indent: 30,
                      endIndent: 33,
                      height: 15,
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: const ListTile(
                          leading: Icon(
                            Icons.telegram,
                            size: 35,
                            color: Colors.blue,
                          ),
                          title: Text(
                            '(+963)936268064',
                            style: TextStyle(
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: const ListTile(
                          leading: Icon(
                            Icons.facebook_outlined,
                            size: 35,
                            color: Colors.blue,
                          ),
                          title: Text(
                            'Eng-Mouhanad Alkhadraa',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
