// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

const Color mainColor = Color(0xFFFF8A00);
const Color liteTxt = Color(0xFFB3B3B3);
const Color blackText = Color(0xFF121212);
const Color backGround = Color(0xFFEDF2FF);
//const Color backGround = Color(0xFFF7F9FF);
const Color greyBackGround = Color(0xFFAFB2B8);
const Color gradientGray = Color.fromARGB(255, 255, 255, 255);
const Color selectedIcon = Color(0xFF008AFF);
const Color headerColor = Color(0xFFA8A8A8);
const Color greyTxt = Color(0xFF7C7C7C);
const Color unselectedIcon = Color(0xFF7EA2B7);
const Color iconColor = Color(0xFF111111);
const Color pending = Color.fromARGB(255, 194, 166, 253);
const Color hardPending = Color(0XFF8952FF);
const Color desactivatedButton = Color(0XFF526EFF);
const Color headerGrey = Color(0xFF444444);
const Color greenColor = Color(0xFF16A34A);

const Color canceled = Color.fromARGB(255, 247, 161, 161);
const Color hardCanceled = Color(0xFFEB5757);

const Color confirmed = Color(0XFF16A34A);
const Color unselectedConfirm = Color.fromARGB(255, 150, 233, 181);

const Color postponed = Color(0XFFFF8A00);
const Color unselectedPostponed = Color.fromARGB(255, 246, 206, 159);

const Color callBackColor = Color.fromARGB(255, 51, 154, 245);
const Color unselectedCallBack = Color.fromARGB(255, 183, 214, 241);

const progressGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      Color(0xFFFF2E2E),
      Color(0xFFFF8A00),
      Color(0xFF24FF00),
    ]);
const LinearGradient linear = LinearGradient(
    //  begin: Alignment.topCenter,
    //  end: Alignment.bottomCenter,
    colors: [
      Color.fromARGB(255, 230, 227, 227),
      Color.fromARGB(255, 194, 191, 191),
    ]);
const BASEURL =
    "https://maystro-backend-conf-v2-nyg42cuu7q-uc.a.run.app/api/"; // dev Url
//const BASEURL = "https://mdcall-api.maystro-delivery.com/api/"; // new prod
const AUTHORIZATION = "Authorization";
