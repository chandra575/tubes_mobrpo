import 'package:flutter/material.dart';
import 'package:flutter_tubes_galon/common/styles/spacing_styles.dart';
import 'package:flutter_tubes_galon/features/saldo/models/transaction.dart';
import 'package:flutter_tubes_galon/features/saldo/widgets/transaction_detail.dart';
import 'package:flutter_tubes_galon/features/saldo/widgets/transaction_item.dart';
import 'package:flutter_tubes_galon/theme.dart';
import 'package:flutter_tubes_galon/utils/constants/colors.dart';
import 'package:flutter_tubes_galon/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SaldoScreen extends StatelessWidget {
  const SaldoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: isDark ? [AppColors.dark, AppColors.grey] : [
              AppColors.primary,
              AppColors.secondary,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: AppSpacingStyle.paddingWithAppBarHeight,
              child: InkWell(onTap: () => Get.back(), child: const Icon(Iconsax.arrow_left_2, color: AppColors.grey,)),
            ),
            Container(
              alignment: Alignment.center,
              child:const  Column(
                children: [
                  Text(
                    'Saldo Anda',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Rp. 1.000.000.000.000',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 50),
                decoration: BoxDecoration(
                  color: isDark ? AppColors.dark : AppColors.primaryBackground,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(45),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 30,
                        horizontal: 25,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Isi Saldo',
                              style: TextStyle(
                                fontSize: 18,
                                color: isDark ? AppColors.grey :AppColors.primary,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              showModalBottomSheet(
                                context: context, 
                                isScrollControlled: true,
                                builder: (BuildContext ctx){
                                  return const DetailTransactionScreen();
                                },
                                );
                            },
                            child: Text(
                              'Lihat Semua',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontSize: 14,
                                color: isDark ? AppColors.grey :AppColors.primary,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemBuilder: (context, index){
                          return TransactionItem(
                            transaction: transactions[index],
                            );
                        },
                        itemCount: transactions.length,
                        ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}