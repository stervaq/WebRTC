import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

/// Environment declare here
class Env {
	Env._({required this.apiBaseUrl});

	final String apiBaseUrl;

	factory Env.dev() {
		return Env._(apiBaseUrl: "http://10.0.0.28:3000");
	}
}

/// Global env
class Config {
	Config._private();

	static final Config instance = Config._private();

	factory Config({required Env environment}) {
		if (environment != null) {
			instance.env = environment;
		}
		return instance;
	}

	Env? env;
}