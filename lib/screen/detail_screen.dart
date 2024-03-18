import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant/data/restaurant_data.dart';

class DetailScreen extends StatelessWidget {
  final RestaurantPlace place;
  const DetailScreen({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 800) {
          return DetailWebWidget(place: place);
        } else {
          return DetailMobileWidget(place: place);
        }
      },
    );
  }
}

class DetailWebWidget extends StatelessWidget {
  final RestaurantPlace place;
  const DetailWebWidget({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 64,
      ),
      child: Center(
        child: SizedBox(
          width: screenWidth <= 1200 ? 800 : 1200,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ClipRRect(
                  child: Container(
                    width: 500,
                    child: Image.asset(
                      place.imgAsset,
                      fit: BoxFit.cover,
                    ),
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              SizedBox(
                width: 32,
              ),
              Expanded(
                  child: Card(
                child: Container(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 20),
                        child: Text(
                          place.name,
                          style: GoogleFonts.poppins(
                              fontSize: 30.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      DetailListWidget(place: place),
                      Container(
                          margin: EdgeInsets.only(top: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Description',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w700, fontSize: 18),
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16.0),
                                child: Text(
                                  place.description,
                                  style: GoogleFonts.poppins(fontSize: 16.0),
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                            ],
                          ))
                    ],
                  ),
                ),
              ))
            ],
          ),
        ),
      ),
    ));
  }
}

class DetailMobileWidget extends StatelessWidget {
  const DetailMobileWidget({
    super.key,
    required this.place,
  });

  final RestaurantPlace place;

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
                child: Expanded(
                  flex: 1,
                  child: SizedBox(
                    width: 500,
                    height: 350,
                    child: Image.asset(
                      place.imgAsset,
                      fit: BoxFit.fill,
                    ),
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
                    onPressed: () {
                      Navigator.pop(context);
                    },
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
                  place.name,
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
                      place.rating,
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 15),
          DetailListWidget(place: place),
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
                    place.description,
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

class DetailListWidget extends StatelessWidget {
  const DetailListWidget({
    super.key,
    required this.place,
  });

  final RestaurantPlace place;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      padding: const EdgeInsets.all(15),
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
                size: 20,
              ),
              const SizedBox(height: 5),
              Text(
                place.open,
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
                size: 20,
              ),
              const SizedBox(height: 5),
              Text(
                place.time,
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
                size: 20,
              ),
              const SizedBox(height: 5),
              Text(
                place.address,
                style: GoogleFonts.poppins(
                    fontSize: 14, fontWeight: FontWeight.w600),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}
