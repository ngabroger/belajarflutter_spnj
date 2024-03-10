import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25)),
                child: SizedBox(
                  width: 500,
                  height: 350,
                  child: Image.asset(
                    'assets/images/broto.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.green, Colors.yellow],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight),
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back_ios_rounded,
                      color: Colors.black,
                    ),
                    style: const ButtonStyle()),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Pecel lele Broto',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.1,
                    fontSize: 23,
                  ),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      size: 30,
                    ),
                    Text(
                      '4.6',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 15),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            padding: const EdgeInsets.all(30),
            decoration: BoxDecoration(
                border: Border.all(width: 2.1, color: Colors.black54),
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black26,
                      offset: Offset(15, 15),
                      blurRadius: 20,
                      blurStyle: BlurStyle.normal),
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const Icon(
                      Icons.calendar_month,
                      size: 30,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Everyday',
                      style: GoogleFonts.poppins(
                          fontSize: 14, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  height: 50,
                  decoration: BoxDecoration(border: Border.all(width: 1)),
                ),
                Column(
                  children: [
                    const Icon(
                      Icons.timer_outlined,
                      size: 30,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      '09.00-00.00',
                      style: GoogleFonts.poppins(
                          fontSize: 14, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  height: 50,
                  decoration: BoxDecoration(border: Border.all(width: 1)),
                ),
                Column(
                  children: [
                    const Icon(
                      Icons.pin_drop_outlined,
                      size: 30,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Bogor',
                      style: GoogleFonts.poppins(
                          fontSize: 14, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.only(top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description',
                    style: GoogleFonts.merriweather(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.black87),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Pecel lele atau pecek lele atau penyetan adalah makanan khas Jawa Timur, yang terdiri dari ikan lele dan sambal tomat. Biasanya, pecel lele berupa ikan lele yang digoreng kering dengan minyak, lalu disajikan dengan sambal tomat dan lalapan. Lalapan biasa terdiri dari kemangi, kubis, mentimun, dan kacang panjang.',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.justify,
                  )
                ],
              ))
        ],
      )),
    );
  }
}
