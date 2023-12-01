import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/utils/my_tile.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class footer extends StatefulWidget {
  const footer({super.key});

  @override
  State<footer> createState() => _footerState();
}

class _footerState extends State<footer> {
  late int likeCount; // Initial like count, fetch from database if needed
  bool liked = false;

  // Supabase configuration
  final supabase = SupabaseClient(
    'https://syfrrvdtmschpylufahr.supabase.co',
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InN5ZnJydmR0bXNjaHB5bHVmYWhyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDEzNjk0MzYsImV4cCI6MjAxNjk0NTQzNn0.wsD8djMCBlgbImZoaaEtawAO2rKaLfAGVZPeg-DXfNA',
  );

  // Function to update likes count in Supabase
  Future<void> updateLikes() async {
    if (!liked) {
      final response = await supabase
          .from('like_counter') // Replace with your table name
          .update({'Likes': likeCount + 1}) // Increment the likes count
          .eq('id', 1) // Replace 'id' with your item identifier
          .execute();
      setState(() {
        likeCount++;
        liked = true;
      });
    } else {
      final response = await supabase
          .from('like_counter') // Replace with your table name
          .update({'Likes': likeCount - 1}) // Increment the likes count
          .eq('id', 1) // Replace 'id' with your item identifier
          .execute();
      setState(() {
        likeCount--;
        liked = false;
      });
    }
  }

  Future<void> fetchLikes() async {
    final response = await supabase
        .from('like_counter') // Replace with your table name
        .select('Likes') // Specify the column to fetch
        .eq('id', 1) // Replace 'id' with your item identifier
        .execute();

    setState(() {
      likeCount = response.data![0]['Likes'] as int;
    });
  }

  @override
  void initState() {
    super.initState();
    fetchLikes(); // Fetch likes count when the widget initializes
  }

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Container(
        width: w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Contact Me",
                style: TextStyle(
                    fontSize: w / 9,
                    color: Colors.purple,
                    fontWeight: FontWeight.w500),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 2,
              itemBuilder: (context, index) {
                return MyContactTile(
                    contact: contacts[index], contactIcon: contactsIcon[index]);
              },
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: contactsButtonIcons.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 6,
              ),
              itemBuilder: (context, index) {
                return IconButton(
                    onPressed: () {}, icon: contactsButtonIcons[index]);
              },
            ),
            const Divider(
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text(
                    "Drop a Heart",
                    style: TextStyle(color: Colors.purple, fontSize: 10),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Colors.red,
                      width: 0.30,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: LikeButton(
                      size: 40,
                      likeCount: likeCount,
                      bubblesSize: 200,
                      circleSize: 100,
                      isLiked: liked,
                      onTap: (isLiked) {
                        updateLikes();
                        return Future.value(!isLiked);
                      },
                    ),
                  ),
                ),
                const Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "If you Liked",
                    style: TextStyle(color: Colors.purple, fontSize: 10),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
