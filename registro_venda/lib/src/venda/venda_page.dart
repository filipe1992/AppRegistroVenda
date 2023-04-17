class vendaPage extends StatefulWidget {
  vendaPage({Key? key}) : super(key: key);

  @override
  _vendaPageState createState() => _vendaPageState();
}

class _vendaPageState extends State<vendaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("texto da pagina",
        )
      )
    )
  }
}
