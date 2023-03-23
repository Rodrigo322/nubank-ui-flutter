import 'package:flutter/material.dart';

import '../../shared/app_colors.dart';
import '../../shared/app_images.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(500),
        child: Container(
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 1,
                color: Color(0xffC4C4C4),
              ),
            ),
          ),
          height: double.infinity,
          width: double.infinity,
          padding: const EdgeInsets.only(top: 80, right: 30, left: 30),
          child: Column(
            children: [
              Card(
                color: AppColors.secondary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 5,
                child: SizedBox(
                  height: 190,
                  width: 315,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(height: 10),
                            Image.asset(AppImages.mastercard),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Crédito",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                height: 3.6,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Row(
                  children: const [
                    Text(
                      "Limite disponível",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  height: 30,
                  child: const ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    child: LinearProgressIndicator(
                      value: 0.4,
                      valueColor:
                          AlwaysStoppedAnimation<Color>(AppColors.primary),
                      backgroundColor: Color(0xff50E3C2),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
