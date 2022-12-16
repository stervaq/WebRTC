import 'package:flutter/material.dart';
import 'package:webrtc/pages/webRTC/call_screen.dart';

Future<void> myMain() async {
	// @nhancv 2019-10-24: Start services later
	WidgetsFlutterBinding.ensureInitialized();
	// @nhancv 10/23/2019: Run Application
	runApp(MyApp());
}

class MyApp extends StatefulWidget {
	@override
	_MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			debugShowCheckedModeBanner: false,
			theme: ThemeData(
				primarySwatch: Colors.blue,
			),
			home: AppContent(),
		);
	}
}

class AppContent extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		WidgetsBinding.instance.addPostFrameCallback((_) => onAfterBuild(context));

		return Scaffold(
			backgroundColor: Colors.transparent,
			body:
			CallScreen(ip: '10.0.0.28'),
		);
	}

	// @nhancv 10/25/2019: After widget initialized.
	void onAfterBuild(BuildContext context) {}
}