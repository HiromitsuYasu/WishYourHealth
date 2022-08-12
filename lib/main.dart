import 'package:flutter/material.dart';
import 'package:alert_your_task/HomePage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:health/health.dart';
// androidのヘルスケア設定はまだしていない
// health.dartのExampleをコピーして動くことを確認したので必要なものは入った

// Exampleのどこでデータにアクセスするのかをみる
// firebaseはどこで使うのか？？？

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  HealthFactory health = HealthFactory();
  final now = DateTime.now();
  final List<HealthDataPoint> healthData = await health.getHealthDataFromTypes(
      DateTime(now.year, now.month, now.day, 0, 0, 0),
      DateTime(now.year, now.month, now.day, 23, 59, 59),
      [HealthDataType.STEPS]
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
