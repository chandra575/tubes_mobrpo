import 'package:flutter/material.dart';
import 'package:flutter_tubes_galon/utils/constants/colors.dart';
import 'package:flutter_tubes_galon/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';
import '../models/transaction.dart';
import 'transaction_item.dart';

class DetailTransactionScreen extends StatelessWidget {
  const DetailTransactionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Info Saldo',
          style: TextStyle(
            fontSize: 18,
            color: isDark ? AppColors.light : AppColors.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(Iconsax.arrow_left_2, color: isDark ? AppColors.light : AppColors.dark,),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return TransactionItem(
            transaction: transactions[index],
          );
        },
        itemCount: transactions.length,
      ),
    );
  }
}
