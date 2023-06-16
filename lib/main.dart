import 'package:ai/app/model/google_signIn.dart';
import 'package:ai/cubit/chat_ai_cubit.dart';
import 'package:ai/pages/pages.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MultiBlocProvider(
    providers: [
      BlocProvider(create: (_) => AiCubit()),
    ],
    child: GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: loginGoogle(),
    ),
  );
}
