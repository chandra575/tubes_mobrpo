import 'package:flutter/material.dart';
import 'package:flutter_tubes_galon/utils/constants/colors.dart';
import 'package:flutter_tubes_galon/utils/constants/sizes.dart';
import 'package:flutter_tubes_galon/utils/helpers/helper_functions.dart';
import '../models/transaction.dart';

class TransactionItem extends StatelessWidget {
  final Transaction transaction;

  const TransactionItem({
    Key? key,
    required this.transaction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {
          showModalBottomSheet(context: context, builder: (BuildContext ctx) {
            return Padding(
              padding: const EdgeInsets.all(AppSizes.md),
              child: Column(
                children: [
                  Text("${transaction.to}  (${transaction.amount})", style: Theme.of(context).textTheme.headlineSmall,),
                  const SizedBox(height: 20,),
                  const TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Masukkan PIN",
                    ),
                  ),
                  const SizedBox(height: 20,),
                  SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () {},child: Text("Top Up"),),)
                ],
              ),
            );
          });
        },
      child: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: isDark ? AppColors.light : const Color(0xFF3D538F),
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 132, 187, 232),
                borderRadius: BorderRadius.circular(10),
              ),
              child: SizedBox(
                width: 35,
                height: 35,
                child: Center(
                  child: Text(
                    transaction.to
                        .split('')
                        .map((e) => e.substring(0, 1))
                        .toList()
                        .join(),
                    style: TextStyle(
                      color: isDark ? AppColors.light : Color(0xFF3D538F),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(
                      transaction.to,
                      style: TextStyle(
                        fontSize: 15,
                        color: isDark ? AppColors.light : Color(0xFF3D538F),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // Text(
                  //   transaction.date,
                  //   style: const TextStyle(
                  //     color: Color(0xFF3D538F),
                  //     fontSize: 14,
                  //   ),
                  // ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Rp. ${transaction.amount}',
                    style: const TextStyle(
                      fontSize: 15,
                      color: Color(0xFFFA6D6D),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // Text(
                //   transaction.description,
                //   style: const TextStyle(
                //     color: Color(0xFF3D538F),
                //     fontSize: 12,
                //   ),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
