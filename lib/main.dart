import 'package:flutter/material.dart';
import 'package:webrtc/app_config.dart';
import 'package:webrtc/my_app.dart';
void main() async {
  // Init dev global
  Config(environment: Env.dev());
  await myMain();
}
