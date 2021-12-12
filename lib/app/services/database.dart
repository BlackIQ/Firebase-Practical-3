import 'package:cloud_firestore/cloud_firestore.dart';

final database = Firestore.instance;

final postsCollection = database.collection('posts').snapshots();
