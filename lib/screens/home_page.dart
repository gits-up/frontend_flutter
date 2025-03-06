import 'package:app/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.white,
        child: Icon(
          Icons.add,
          color: Color(0xFFFF4949),
        )
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: Row(
                      children: const [
                        Icon(PhosphorIcons.map_pin_fill, size: 20, color: Colors.black),
                        SizedBox(width: 4),
                        Text(
                          'HOME',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: const Icon(PhosphorIcons.bell_simple, size: 28, color: Colors.black),
                    onPressed: () {},
                  ),
                ],
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        elevation: 3,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Your Plan",
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              const Divider(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text("Upcoming Delivery", style: TextStyle(fontSize: 14, color: Color(0xFF2B2D42))),
                                  Text("Today at 12:30 PM", style: TextStyle(fontSize: 14, color: Color(0xFF2B2D42), fontWeight: FontWeight.w400)),
                                ],
                              ),
                              const SizedBox(height: 8),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text("Remaining Meals", style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500)),
                                  Text("08/10", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                                ],
                              ),
                              const SizedBox(height: 8),
                              LinearProgressIndicator(
                                value: 0.8,
                                backgroundColor: Colors.grey[300],
                                color: Color(0xFFCF353F),
                              ),
                              const SizedBox(height: 12),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomButton(
                                    onTap: () {} ,
                                    text: 'Pause',
                                    backgroundColor: Color(0xFFFFCC3D),
                                    width: 150,
                                    borderColor: Colors.transparent,
                                  ),
                                  CustomButton(
                                    onTap: () {} ,
                                    text: 'Cancel',
                                    backgroundColor: Color(0xFFFF4949),
                                    width: 150,
                                    borderColor: Colors.transparent,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: 16),
                      const Text(
                        "Upcoming Order",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        elevation: 3,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              const SizedBox(height: 8),
                              const Text(
                                "Peri Peri Chicken Breast, Peri Pilaf Rice, Mediterranean Veg, and Homemade Peri Sauce",
                                style: TextStyle(fontSize: 18, color: Color(0xFF2B2D42), fontWeight: FontWeight.bold),
                              ),
                              Divider(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text("ETA", style: TextStyle(fontSize: 14, color: Color(0xFF2B2D42))),
                                  Text("Today, 2:00 PM", style: TextStyle(fontSize: 14,  color: Color(0xFF2B2D42))),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: 16),
                      Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF89DA8C),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                color: Colors.black.withOpacity(0.4), // Shadow color with opacity
                                spreadRadius: 0,
                                blurRadius: 6, // Softness of the shadow
                                offset: Offset(0, 2),
                              )
                              ]
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Don’t let hunger win!",
                                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFF2B2D42)),
                                ),
                                const SizedBox(height: 8),
                                SizedBox(
                                  width: 230,
                                  child: const Text(
                                    "Get surplus meals at really affordable prices, and enjoy amazing food without worrying about your budget.",
                                    style: TextStyle(fontSize: 12, color: Colors.white),

                                  ),
                                ),
                                const SizedBox(height: 16),
                                CustomButton(
                                  onTap: () {},
                                  text: 'Order Now',
                                  width: 120,
                                  backgroundColor: Colors.white,
                                  borderColor: Colors.transparent,
                                  textColor: Colors.black,
                                  fontWeight: FontWeight.normal,
                                )
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: SizedBox(
                              height: 150,
                              child: Image.asset(
                                  'assets/food.png'
                              ),
                            ),
                          )
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
