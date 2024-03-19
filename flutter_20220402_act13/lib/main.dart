import 'package:flutter/material.dart';
import 'package:searchsystem20220402/movie_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SearchPage(title: "Search Page"),
    );
  }
}

class SearchPage extends StatefulWidget {
  const SearchPage({super.key, required this.title});
  final String title;

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<MovieModel> display_list = List.from(main_movies_list);

  static List<MovieModel> main_movies_list = [
    MovieModel("Ducati Panigale V4", 2022, 10,
        "data:image/jpeg;base64,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"),
    MovieModel("MT-09", 2023, 9,
        "https://lh3.googleusercontent.com/-TLzPSfhHQMI/X-tbo-Zs2CI/AAAAAAABALs/HDVdAKytzqUrbBM5JU61kcfhiJGqrO_rgCLcBGAsYHQ/s1600/1609259936938462-9.png"),
    MovieModel("Z900 Kawasaky", 2024, 8,
        "https://dhqlmcogwd1an.cloudfront.net/images/phocagallery/Kawasaki/z900-se-2023/01-kawasaki-z900-se-2023-estudio.jpg"),
    MovieModel("R6 Yamaha", 2022, 7,
        "https://dhqlmcogwd1an.cloudfront.net/images/phocagallery/Yamaha_Motor_Corporation/yzf-r6-2020/01-yamaha-yzf-r6-2020-estudio-azul.jpg"),
    MovieModel("BMW SR1000RR", 2021, 6,
        "https://dhqlmcogwd1an.cloudfront.net/images/phocagallery/BMW_Motorrad/s-1000-rr-2023/01-bmw-s-1000-rr-2023-estudio-blanco.jpg"),
    MovieModel("GSX 750RR", 2022, 5,
        "https://upload.wikimedia.org/wikipedia/commons/e/e2/2006_gsxr750.jpg"),
    MovieModel("GSX R1000A", 2023, 4,
        "https://i.ebayimg.com/images/g/~xoAAOSwUnJiWA0L/s-l1200.jpg"),
    MovieModel("Yamaha R1", 2022, 3,
        "https://img.remediosdigitales.com/24fbf0/ducati-anni-1-2023/1366_2000.jpeg"),
    MovieModel("Hayabusa R1400", 2023, 2,
        "https://img.remediosdigitales.com/f45063/2707-hayabusa-2008-azul/450_1000.jpg"),
    MovieModel("Ducati Streetfighte V4", 2023, 1,
        "https://dhqlmcogwd1an.cloudfront.net/images/cache/01-ducati-streetfighter-v4-s-2023-estudio-rojo-398-a-mobile.jpg"),
  ];

  void updateList(String value) {
    setState(() {
      display_list = main_movies_list
          .where((element) =>
              element.movie_title!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1f1545),
      appBar: AppBar(
        backgroundColor: Color(0xFF1f1545),
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Search for a Movie",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              onChanged: (value) => updateList(value),
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xff302360),
                hintText: "eg: The Dark Knight",
                prefixIcon: Icon(Icons.search),
                prefixIconColor: Colors.purple.shade900,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: display_list.isEmpty
                  ? const Center(
                      child: Text(
                      "Now results found",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ))
                  : ListView.builder(
                      itemCount: display_list.length,
                      itemBuilder: (context, index) => ListTile(
                        contentPadding: const EdgeInsets.all(8.0),
                        title: Text(
                          display_list[index].movie_title!,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          "${display_list[index].movie_release_year!}",
                          style: const TextStyle(color: Colors.white60),
                        ),
                        trailing: Text(
                          "${display_list[index].rating}",
                          style: const TextStyle(color: Colors.amber),
                        ),
                        leading: Image.network(
                            display_list[index].movie_poster_url!),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
