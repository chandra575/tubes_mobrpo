import "package:flutter/material.dart";
import "package:flutter_tubes_galon/common/widgets/screen_template.dart";
import "package:flutter_tubes_galon/utils/constants/sizes.dart";
import "package:iconsax/iconsax.dart";

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ScreenTemplate(
            title: "Pencarian",
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(AppSizes.defaultSpace),
                  child: TextField(
                    style: Theme.of(context).textTheme.titleLarge,
                    decoration: const InputDecoration(
                      prefixIcon: Padding(
                        padding: EdgeInsets.symmetric(vertical: AppSizes.md),
                        child: Icon(Iconsax.search_status_1),
                      ),
                      hintText: "Cari..."
                    ),
                  ),
                ),
              ],
            )));
  }
}
