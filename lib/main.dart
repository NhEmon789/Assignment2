import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Welcome To My Test Project'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
        color: Colors.lightBlueAccent,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: NetworkImage("https://scontent.fzyl2-2.fna.fbcdn.net/v/t39.30808-6/467505906_122116612862409559_6384476865949165530_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeEXlmjY7lM2NCdxa84SKp_85eHyGO-n10rl4fIY76fXSgrvBh7EvX1pvPTInGKzVtilsf58-EQpl69I4DnU7cbq&_nc_ohc=3Wf1P7OWkQ0Q7kNvgEtWMZR&_nc_oc=AdjNHN4UtbDlCjVlQ3-2FYxbC9xLb43DbESsHNt1-U7pGB3V6fCNdsJzDuPt6f8Xrv4&_nc_zt=23&_nc_ht=scontent.fzyl2-2.fna&_nc_gid=AnYDBECTSCxNVypSWTrsdww&oh=00_AYAZ-mcWt2dJ22cnMV-YxF0sMTRu2exlWzIZjNdc1QP_hg&oe=67BB34DE"))
              Image.asset(
                'assets/Emon.png',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),
              Text(
                'This Is Emon',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
