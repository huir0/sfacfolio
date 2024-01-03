import 'dart:io';
import 'dart:math';
import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:eat_today/Data/user_data.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:intl/intl.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:permission_handler/permission_handler.dart';
// import 'package:http/http.dart' as http;

class control {
  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseFirestore store = FirebaseFirestore.instance;
  // final FlutterSecureStorage storage = FlutterSecureStorage();
  // final FirebaseStorage fstorage = FirebaseStorage.instance;

  // 회원가입
  Future<bool> Notice(
      String title,
      String writer,
      String maincategory,
      List<String> subcategory,
      String date,
      int views,
      int like,
      Map<String, String> comment,
      String detail,
      int commentnum) async {
    try {
      await store.collection('Notice').add({
        'title': title, // 제목
        'writer': writer, // 작성자
        'main_category': maincategory, // 대분류
        'sub_category': subcategory, // 소분류
        'date': date, // 작성일
        'views': views, // 조회수
        'like': like, // 좋아요
        'comment': comment, // 댓글
        'detail': detail, // 내용
        'commentnum': commentnum, // 댓글수
      });
      return true;
    } catch (e) {
      print('에러 : $e');
      return false;
    }
  }
}
