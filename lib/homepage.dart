import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';

import 'carditem.dart';
import 'categoryitem.dart';

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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.w),
              Padding(
                padding: EdgeInsets.all(4.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                  ],
                ),
              ),
              SizedBox(height: 5.w),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 4.w),
                    CardItem(
                      name: 'Rosquinha de morango',
                      image: 'donut1',
                      price: '\$2.80',
                    ),
                    CardItem(
                      name: 'Pack Rosquinhas de morango',
                      image: 'donut2',
                      price: '\$7.80',
                    ),
                    CardItem(
                      name: 'Rosquinha de morango mini',
                      image: 'donut3',
                      price: '\$1.80',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 7.w),
              Padding(
                padding: EdgeInsets.only(left: 4.w),
                child: Text(
                  'Explore por categorias',
                  style:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 4.w),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 4.w),
                    CategoryItem(
                      image: 'donut-cat',
                      name: 'Novo desta semana',
                    ),
                    CategoryItem(
                      image: 'donut3',
                      name: 'Best Seller',
                      width: 30.w,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
