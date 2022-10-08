import 'package:flutter/material.dart';
import 'package:praktikum_2/screen/detail_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Page Controller
  final _pageController = PageController(viewportFraction: 0.877);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: <Widget>[
              // ICON
              Container(
                color: Color.fromARGB(255, 83, 115, 221),
                height: 57.6,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    // ICONS REORDER
                    Container(
                      height: 57.6,
                      width: 57.6,
                      padding: const EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.6),
                      ),
                      child: const Icon(
                        Icons.reorder,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      ' HaikalApp',
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 238, 238, 240)),
                    ),
                    // ICONS SEARCH
                    Container(
                      height: 57.6,
                      width: 57.6,
                      padding: const EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.6),
                      ),
                      child: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),

              // MENAMPILKAN  WELCOME
              Padding(
                padding: EdgeInsets.only(top: 58.8, left: 28.8, bottom: 38.8),
                child: Text(
                  '    Welcome Haikal!',
                  style: GoogleFonts.poppins(
                      fontSize: 33,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 83, 115, 221)),
                ),
              ),
              // SLIDER GAMBAR
              Container(
                padding: EdgeInsets.only(top: 20, right: 20, bottom: 20),
                color: Color.fromARGB(255, 211, 213, 214),
                height: 218.4,
                margin: const EdgeInsets.only(top: 28.8),
                child: PageView(
                  physics: const BouncingScrollPhysics(),
                  controller: _pageController,
                  scrollDirection: Axis.horizontal,
                  children: [
                    // GAMBAR 1
                    GestureDetector(
                      child: Container(
                        margin: const EdgeInsets.only(right: 28.8),
                        width: 333.6,
                        height: 218.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9.6),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://images.unsplash.com/photo-1664263724034-e087b33ea451?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'),
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DetailScreen(),
                          ),
                        );
                      },
                    ),
                    // GAMBAR 2
                    GestureDetector(
                      child: Container(
                        margin: const EdgeInsets.only(right: 28.8),
                        width: 333.6,
                        height: 218.4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9.6),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://images.unsplash.com/photo-1664062444636-8bde2179b9dd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=897&q=80'))),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DetailScreen(),
                          ),
                        );
                      },
                    ),
                    // GAMBAR 3
                    GestureDetector(
                      child: Container(
                        margin: const EdgeInsets.only(right: 28.8),
                        width: 333.6,
                        height: 218.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9.6),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://images.unsplash.com/photo-1632154613927-f127bcede519?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1031&q=80'),
                          ),
                        ),
                      ),
                      onTap: () {
                        print("You Click Me");
                      },
                    ),
                    // GAMBAR 4
                    GestureDetector(
                      child: Container(
                        margin: const EdgeInsets.only(right: 28.8),
                        width: 333.6,
                        height: 218.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9.6),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://images.unsplash.com/photo-1558016183-68d5d7b8851b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
                          ),
                        ),
                      ),
                      onTap: () {
                        print("You Click Me");
                      },
                    ),
                  ],
                ),
              ),
              // INDICATOR
              Padding(
                padding: const EdgeInsets.only(left: 28.8, top: 28.8),
                child: SmoothPageIndicator(
                  controller: _pageController,
                  count: 4,
                  effect: const ExpandingDotsEffect(
                      activeDotColor: Color.fromARGB(255, 83, 115, 221),
                      dotColor: Colors.blueGrey,
                      dotHeight: 5,
                      dotWidth: 6,
                      spacing: 5),
                ),
              ),

              // judul untuk section vertical content
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    // UNTUK ANDA
                    Text(
                      'Untuk Anda',
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 83, 115, 221),
                      ),
                    ),
                    // SHOW ALL
                    Text(
                      'Show All',
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 93, 95, 95),
                      ),
                    ),
                  ],
                ),
              ),

              // Listview (Vertical content)
              Padding(
                padding: EdgeInsets.only(top: 20, left: 30, right: 5),
                child: GestureDetector(
                  child: Container(
                    margin: const EdgeInsets.only(right: 28.8),
                    width: 333.6,
                    height: 218.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.6),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://images.unsplash.com/photo-1558015244-af053686b2cd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DetailScreen(),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 30, right: 5),
                child: GestureDetector(
                  child: Container(
                    margin: const EdgeInsets.only(right: 28.8),
                    width: 333.6,
                    height: 218.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.6),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://images.unsplash.com/photo-1663428520845-056989f8a664?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=871&q=80'),
                      ),
                    ),
                  ),
                  onTap: () {
                    print("You Click Me");
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 30, right: 5),
                child: GestureDetector(
                  child: Container(
                    margin: const EdgeInsets.only(right: 28.8),
                    width: 333.6,
                    height: 218.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.6),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://images.unsplash.com/photo-1662896277707-80cc8f3ebb3a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
                      ),
                    ),
                  ),
                  onTap: () {
                    print("You Click Me");
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 30, right: 5),
                child: GestureDetector(
                  child: Container(
                    margin: const EdgeInsets.only(right: 28.8),
                    width: 333.6,
                    height: 218.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.6),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://images.unsplash.com/photo-1613578723854-972200002cc7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'),
                      ),
                    ),
                  ),
                  onTap: () {
                    print("You Click Me");
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 30, right: 5),
                child: GestureDetector(
                  child: Container(
                    margin: const EdgeInsets.only(right: 28.8),
                    width: 333.6,
                    height: 218.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.6),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://images.unsplash.com/photo-1638163501547-555fde68f650?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
                      ),
                    ),
                  ),
                  onTap: () {
                    print("You Click Me");
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 30, right: 5),
                child: GestureDetector(
                  child: Container(
                    margin: const EdgeInsets.only(right: 28.8),
                    width: 333.6,
                    height: 218.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.6),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://images.unsplash.com/photo-1663000682271-4b40afaba2a1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'),
                      ),
                    ),
                  ),
                  onTap: () {
                    print("You Click Me");
                  },
                ),
              ),

              // Penutup ListView
            ],
          ),
        ),
      ),
    );
  }
}
