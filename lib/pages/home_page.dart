import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tubes_galon/data/list_galon.dart';
import 'package:flutter_tubes_galon/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/img/profile.png",
                    width: 70,
                    height: 70,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Selamat Datang",
                        style: GoogleFonts.kumbhSans(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: greyColor),
                      ),
                      Text(
                        "Ganjar Prabowo",
                        style: GoogleFonts.kumbhSans(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                            color: primaryColor),
                      )
                    ],
                  ),
                ],
              ),
              Stack(
                alignment: Alignment.topRight,
                children: [
                  const Icon(
                    Icons.notifications,
                    color: primaryColor,
                    size: 40,
                  ),
                  Container(
                    width: 15,
                    height: 15,
                    decoration: const BoxDecoration(
                        color: redColor, shape: BoxShape.circle),
                    child: Center(
                        child: Text(
                      "1",
                      style: GoogleFonts.inter(
                          fontSize: 9,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: Center(
              child: Row(
                children: [
                  Container(
                      padding: const EdgeInsets.all(15),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/img/wallet.png",
                            width: 35,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Saldo",
                                style: GoogleFonts.boogaloo(
                                    fontSize: 15, fontWeight: FontWeight.w700),
                              ),
                              Text(
                                "Rp. 5.000",
                                style: GoogleFonts.boogaloo(
                                    fontSize: 15, fontWeight: FontWeight.w700),
                              )
                            ],
                          )
                        ],
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Level 1",
                          style: GoogleFonts.boogaloo(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                        Container(
                          height: 10,
                          width: 140,
                          decoration: const BoxDecoration(
                              color: Color(0xffF3EDED),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                        Text(
                          "0/200",
                          style: GoogleFonts.boogaloo(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        )
                      ])
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          ListItems(),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () => {},
            child: Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              decoration: BoxDecoration(
                  color: const Color(0xffE0F9FF),
                  borderRadius: BorderRadius.circular(20)),
              child: Text(
                "Lihat Semua",
                style: GoogleFonts.kumbhSans(
                  color: primaryColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

class ListItems extends StatefulWidget {
  @override
  State<ListItems> createState() => _ListItemsState();
}

class _ListItemsState extends State<ListItems> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            mainAxisExtent: 180),
        itemCount: listGalon.length,
        itemBuilder: (_, index) {
          return Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: primaryColor, width: 2),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), //color of shadow
                    spreadRadius: 1, //spread radius
                    blurRadius: 7, // blur radius
                    offset: Offset(0, 2),
                  )
                ]),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "${listGalon[index]['nama']}",
                style: GoogleFonts.boogaloo(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: primaryColor),
              ),
              Image.asset(
                "assets/img/galon/aqua.png",
                width: 100,
              ),
              Text(
                "${listGalon[index]['harga']}",
                style: GoogleFonts.kumbhSans(
                    fontSize: 12, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 3,
              ),
              GestureDetector(
                onTap: () => {},
                child: Container(
                  padding: const EdgeInsets.fromLTRB(5, 2, 5, 2),
                  decoration: BoxDecoration(
                    border: Border.all(color: primaryColor),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    "Tambah",
                    style: GoogleFonts.kumbhSans(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: primaryColor),
                  ),
                ),
              )
            ]),
          );
        });
  }
}
