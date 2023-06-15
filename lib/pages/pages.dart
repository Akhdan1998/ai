import 'dart:convert';

import 'package:ai/app/model/google_signIn.dart';
import 'package:flutter/material.dart';
import 'package:supercharged/supercharged.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_storage/firebase_storage.dart';
import '../app/model/model_ai.dart';
import '../app/services/google_signin_api.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:collection/collection.dart';
import '../cubit/chat_ai_cubit.dart';
import '../cubit/chat_ai_state.dart';
import 'package:http/http.dart' as http;
// import 'package:firebase_messaging/firebase_messaging.dart';
part 'chat/chatUser.dart';

part 'chat/chatRobot.dart';

part 'chat/chat.dart';

part 'login/login.dart';
