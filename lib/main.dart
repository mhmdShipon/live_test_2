import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          centerTitle: true,
        ),
      ),
      title: 'Profile',
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 17),
              child: Container(
                height: MediaQuery.of(context).size.width / 1.8,
                width: MediaQuery.of(context).size.width / 1.8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(360),
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://i.pinimg.com/564x/08/cf/7a/08cf7a7a592f7b5257f1bd6e42854b46.jpg'),
                        fit: BoxFit.cover)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15),
              child: Text(
                'Lio Messi',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(),
              child: Text(
                'Liomessi@gmail.com',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15, left: 27, right: 27),
              child: Text(
                'Mackenzie Foy is an American actress. She is known for portraying Renesmee Cullen in the 2012 film The Twilight Saga: Breaking Dawn – Part 2, which earned her a Young Artist Award nomination as Best Supporting Young Actress in a Feature Film',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
            )
          ],
        ),
      ),
    );
  }
}
