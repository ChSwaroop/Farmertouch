import 'package:carousel_slider/carousel_slider.dart';
import 'package:farmers_touch/colors.dart';
import 'package:farmers_touch/util/utils.dart';
import 'package:farmers_touch/views/main/chat_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> carousel_images = [
    "https://img.freepik.com/premium-photo/view-sa-dec-flower-garden-dong-thap-province-vietnam-its-famous-mekong-delta-preparing-transport-flowers-market-sale-tet-holiday_991182-14414.jpg?ga=GA1.1.1483351532.1733847503&semt=ais_hybrid",
    "https://img.freepik.com/premium-photo/indian-farmer-working-green-pigeon-peas-field-with-bullock_54391-6543.jpg?ga=GA1.1.1483351532.1733847503&semt=ais_hybrid",
    "https://img.freepik.com/free-photo/senior-hardworking-farmer-agronomist-soybean-field-checking-crops-before-harvest_342744-1260.jpg?ga=GA1.1.1483351532.1733847503&semt=ais_hybrid",
    "https://img.freepik.com/free-photo/farmer-holds-rice-hand_1150-6063.jpg?ga=GA1.1.1483351532.1733847503&semt=ais_hybrid",
  ];

  List<String> grid_text = [
    "Crop",
    "Livestock",
    "Equipment",
    "Consulting",
    "Training",
    "Soil",
    "Harvest",
    "Regulatory",
    "Transport",
    "Analysis",
    "Account",
    "Financial",
  ];

  List<String> grid_images = [
    "https://cdn-icons-png.freepik.com/256/6089/6089661.png?ga=GA1.1.1483351532.1733847503&semt=ais_hybrid",
    "https://cdn-icons-png.freepik.com/256/3319/3319363.png?ga=GA1.1.1483351532.1733847503&semt=ais_hybrid",
    "https://cdn-icons-png.freepik.com/256/14087/14087122.png?ga=GA1.1.1483351532.1733847503&semt=ais_hybrid",
    "https://cdn-icons-png.freepik.com/256/5024/5024800.png?ga=GA1.1.1483351532.1733847503&semt=ais_hybrid",
    "https://cdn-icons-png.freepik.com/256/1376/1376421.png?ga=GA1.1.1483351532.1733847503&semt=ais_hybrid",
    "https://cdn-icons-png.freepik.com/256/18007/18007373.png?ga=GA1.1.1483351532.1733847503&semt=ais_hybrid",
    "https://cdn-icons-png.freepik.com/256/4832/4832398.png?ga=GA1.1.1483351532.1733847503&semt=ais_hybrid",
    "https://cdn-icons-png.freepik.com/256/18619/18619584.png?ga=GA1.1.1483351532.1733847503&semt=ais_hybrid",
    "https://cdn-icons-png.freepik.com/256/11845/11845726.png?ga=GA1.1.1483351532.1733847503&semt=ais_hybrid",
    "https://cdn-icons-png.freepik.com/256/3703/3703299.png?ga=GA1.1.1483351532.1733847503&semt=ais_hybrid",
    "https://cdn-icons-png.freepik.com/256/17515/17515464.png?ga=GA1.1.1483351532.1733847503&semt=ais_hybrid",
    "https://cdn-icons-png.freepik.com/256/2953/2953423.png?ga=GA1.1.1483351532.1733847503&semt=ais_hybrid",
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: ColorsUtil.bgColor,
      appBar: AppBar(
        backgroundColor: ColorsUtil.primaryColor,
        leadingWidth: 100,
        leading: Container(
          margin: EdgeInsets.only(left: 10),
          child: Row(children: [
            Icon(
              Icons.location_on,
              color: ColorsUtil.onPrimary,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "Home",
              style: theme.textTheme.titleMedium,
            )
          ]),
        ),
        title: Text(
          "Farmer Touch",
          style: theme.textTheme.titleLarge!.copyWith(letterSpacing: 1),
        ),
        centerTitle: true,
        actions: [
          Icon(
            Icons.notifications_active,
            color: ColorsUtil.onPrimary,
          ),
          SizedBox(
            width: 15,
          ),
        ],
        toolbarHeight: 100,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            CarouselSlider.builder(
              itemCount: carousel_images.length + 1,
              itemBuilder: (context, ind, a) {
                return Container(
                  // height: 100,
                  width: width,
                  margin: EdgeInsets.symmetric(horizontal: 3),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  // child:
                  child: (ind == (carousel_images.length))
                      ? Column(
                          children: [
                            Spacer(),
                            ListTile(
                              title: Text("Today, 25 Dec"),
                              subtitle: Text("Clear . 24 c / 20 c"),
                              trailing: Container(
                                height: 50,
                                width: 70,
                                // decoration: BoxDecoration(color: Colors.red),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "24 c",
                                      style:
                                          theme.textTheme.titleMedium!.copyWith(
                                        color: ColorsUtil.txtColor,
                                      ),
                                    ),
                                    Icon(Icons.wb_sunny),
                                  ],
                                ),
                              ),
                            ),
                            Spacer(),
                            Container(
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                color: Colors.red.shade200,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                              ),
                              child: ListTile(
                                leading: Icon(Icons.location_on),
                                title: Text("Location permission required "),
                                trailing: Text("Allow"),
                              ),
                            ),
                          ],
                        )
                      : ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            carousel_images[ind],
                            fit: BoxFit.cover,
                          ),
                        ),
                );
              },
              options: CarouselOptions(
                height: 200,
                autoPlay: true,
                enlargeCenterPage: true,
                enlargeFactor: 0.2,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Container(
                    height: 50,
                    width: width,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(360)),
                    child: Reusable.textField(),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: grid_text.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                    ),
                    itemBuilder: (context, ind) {
                      return Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Spacer(),
                            Container(
                              height: 50,
                              width: 50,
                              // decoration: BoxDecoration(
                              //   color: Colors.grey.shade300,
                              // ),
                              child: Image.network(
                                grid_images[ind],
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(grid_text[ind]),
                            Spacer(),
                          ],
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ChatScreen(),
            ),
          );
        },
        backgroundColor: ColorsUtil.primaryColor,
        child: Icon(
          Icons.chat_rounded,
          color: ColorsUtil.onPrimary,
        ),
      ),
    );
  }
}
