

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  Get.put(UserController());
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Passwordpage_1(),
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText2: TextStyle(
            fontFamily: 'PretendardVariable',
          ),
        ),
      ),
    ),
  );

}
