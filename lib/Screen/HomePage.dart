import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:machintask_6_5_2024/Repository/repository.dart';

import '../ModelClass/APiModelclass.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ImageRepository _repository = ImageRepository();
  late Future<List<ApimodelClass>> _futureImages;
  void initState() {
    super.initState();
    _futureImages = _repository.fetchImages();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(width: 20,),
                CircleAvatar(
                  radius: 36,
                  child: ClipOval(
                    child: Image.asset("Images/image 7.png",
                    ),

                ),),
                SizedBox(width: 25,),
               Column(
                 children: [
                   Text("50", style: GoogleFonts.poppins(
                     textStyle: Theme.of(context).textTheme.displayLarge,
                     fontSize: 18,
                     fontWeight: FontWeight.w500,
                     fontStyle: FontStyle.normal,
                     color: Colors.black,
                   ),),
                   Text("Post", style: GoogleFonts.poppins(
                     textStyle: Theme.of(context).textTheme.displayLarge,
                     fontSize: 12,
                     fontWeight: FontWeight.w500,
                     fontStyle: FontStyle.normal,
                     color: Color(0xFF2C5390),
                   ))
                 ],
               ),
                SizedBox(width: 25,),
                Column(
                  children: [
                    Text("50", style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                      color: Colors.black,
                    )),
                    Text("Followers",style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                      color: Color(0xFF2C5390),
                    ))
                  ],
                ),
                SizedBox(width: 25,),
                Column(
                  children: [
                    Text("50", style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                      color: Colors.black,
                    )),
                    Text("Following",style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                      color: Color(0xFF2C5390),
                    ))
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(width: 20,),
                Align(alignment: Alignment.bottomLeft,
                    child: Text("Rayan Moon",style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                      color: Color(0xFF1E3167),
                    ))),
                SizedBox(height: 5,),
                Align(alignment: Alignment.bottomLeft,
                    child: Text("Photographer",style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: Color(0xFF1E3167),
                    ))),
                SizedBox(height: 5,),
                Align(alignment: Alignment.bottomLeft,
                    child: Text("🌟 You are beautiful, and",style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: Color(0xFF1E3167),
                    ))),
                SizedBox(height: 5,),
                Align(alignment: Alignment.bottomLeft,
                    child: Text(" I'm here to capture it! 🌟",style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: Color(0xFF1E3167),
                    ))),
              ],
            ),
          ),
          Row(
            children: [
              SizedBox(width: 15,),
              SizedBox(
                width: 120,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      const Color(0xFF184AC0),
                    ),
                    shape:
                    MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                        side: const BorderSide(
                          color: Color(0xFF184AC0),
                        ),
                      ),
                    ),
                  ),
                  child: Text("Edit profile",style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                    color: Color(0xFFFFFFFF),
                  ))
                ),
              ),
              SizedBox(width: 10,),
              SizedBox(
                width: 110,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xFF28426B),
                      ),
                      shape:
                      MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                          side: const BorderSide(
                            color: Color(0xFF28426B),
                          ),
                        ),
                      ),
                    ),
                    child: Text("Wallet",style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                      color: Color(0xFFFFFFFF),
                    ))
                ),
              ),
              SizedBox(width: 10,),
              SizedBox(
                width: 70,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xFF184AC0),
                      ),
                      shape:
                      MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                          side: const BorderSide(
                            color: Color(0xFF184AC0),
                          ),
                        ),
                      ),
                    ),child: Image.asset(
                  "Images/Vector.png",
                  width: 10,
                  height: 10,
                ),
                ),
              ),

            ],
          ),
          const Divider(
            indent: 0,
            endIndent: 0,
            color: Color(0xFFA7ACD0),
          ),
          FutureBuilder<List<ApimodelClass>>(
            future: _futureImages,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              } else {
                return GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0,
                  ),
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    return Image.network(snapshot.data![index].media as String);
                  },
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
