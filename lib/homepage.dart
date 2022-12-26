import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: 100.w,
            height: 100.h,
            child: Image.asset(
              'assets/bg.jpeg',
              fit: BoxFit.fitHeight,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(4.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.w),
                Text('Ola mundo',
                    style: TextStyle(color: Colors.grey.shade600)),
                SizedBox(height: 5.w),
                Text(
                  'O que você gostaria de comer?',
                  style: TextStyle(
                    fontSize: 25.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5.w),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Ou digite o que você esta procurando',
                    suffixIcon: Icon(
                      Icons.search,
                      size: 20.sp,
                    ),
                  ),
                ),
                Container(
                  width: 50.w,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(.05),
                            blurRadius: 5,
                            spreadRadius: 5)
                      ]),
                  child: ClipRRect(
                    child: Image.asset(
                      'assets/donut1.jpeg',
                      fit: BoxFit.cover,
                      width: 50.w,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
