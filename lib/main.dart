import 'dart:ui';

import 'package:easy_sms_receiver/easy_sms_receiver.dart';
import 'package:expense_tracker/pages/dashboard.dart';
import 'package:expense_tracker/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_background_service/flutter_background_service.dart';

// function to initialize the background service
Future<void> initializeService() async {
  final service = FlutterBackgroundService();

  await service.configure(
    iosConfiguration: IosConfiguration(),
    androidConfiguration: AndroidConfiguration(
      onStart: onStart,
      isForegroundMode: true,
      autoStart: true,
    ),
  );
}

@pragma('vm:entry-point')
void onStart(ServiceInstance service) async {
  // DartPluginRegistrant.ensureInitialized();

  final plugin = EasySmsReceiver.instance;
  plugin.listenIncomingSms(
    onNewMessage: (message) {
      print("You have new message:");
      print("::::::Message Address: ${message.address}");
      print("::::::Message body: ${message.body}");

      // do something

      // for example: show notification
      if (service is AndroidServiceInstance) {
        service.setForegroundNotificationInfo(
          title: message.address ?? "address",
          content: message.body ?? "body",
        );
      }
    },
  );
}

void main() {
  // WidgetsFlutterBinding.ensureInitialized();

  // // request the SMS permission, then initialize the background service
  // Permission.sms.request().then((status) {
  //   if (status.isGranted) initializeService();
  // });

  runApp(const ExpenseTracker());
}

class ExpenseTracker extends StatelessWidget {
  const ExpenseTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: getCustomTextTheme(context),
      ),
      home: DashboardPage(),
    );
  }
}
