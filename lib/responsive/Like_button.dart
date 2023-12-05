import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class like_button extends StatefulWidget {
  const like_button({super.key});

  @override
  State<like_button> createState() => _like_buttonState();
}

class _like_buttonState extends State<like_button> {
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
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: const LinearGradient(colors: [
          Colors.pinkAccent,
          Colors.blue,
        ]),
      ),
      child: Container(
        margin: EdgeInsets.all(2),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 5.0, bottom: 5, right: 3),
            child: LikeButton(
              size: 34,
              likeCount: likeCount,
              bubblesSize: 100,
              circleSize: 100,
              isLiked: liked,
              onTap: (isLiked) {
                updateLikes();
                return Future.value(!isLiked);
              },
            ),
          ),
        ),
      ),
    );
  }
}
