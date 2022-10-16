import 'package:flutter/material.dart';
import 'package:native_notify/native_notify.dart';
import 'package:flutter/material.dart';
import 'package:polus_hack/app.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  NativeNotify.initialize(1927, 'kJbd7wbkLU0Sx2dzcBJDIf', 'AIzaSyDOUDj2we5EsXUIaXPojymM9G24BL8nTN0', null);
  NativeNotify.registerIndieID(0);
  runApp(const MyApp());
}

