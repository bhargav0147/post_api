import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:post_api/post/provider/postProvider.dart';
import 'package:post_api/post/view/home_screen.dart';
import 'package:provider/provider.dart';
void main()
{
  runApp(DevicePreview(
    builder: (context) => MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => PostProvider(),)
      ],
      child: MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => HomeScreen()
        },
      ),
    ),
  ));
}
