import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swoon/config/rapyd_config.dart';
import 'package:swoon/controllers/item_controller.dart';
import 'package:swoon/controllers/people_controller.dart';
import 'package:swoon/models/people_model.dart';

//to access api configs
var rapydConfig = RapydConfigurations();

var itemController = Get.put(ItemController());

FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
var peopleController = Get.put(PeopleController());
PeopleController pplController = PeopleController.instance;
ItemController itemsController = ItemController.instance;
PeopleModel? people;
