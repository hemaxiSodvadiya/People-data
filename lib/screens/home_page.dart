import '../api_helper/people_api_helper.dart';
import '../models/people_models.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("People data"),
      ),
      body: FutureBuilder(
        future: JsonPlaceHolderAPIHelper.jsonPlaceHolderAPIHelper
            .fetchSinglePeopleData(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text("error :- ${snapshot.error}"),
            );
          } else if (snapshot.hasData) {
            PeopleData? _data = snapshot.data as PeopleData?;
            return Column(
              children: [
                // Text("${_data?.gender}"),
                // Text("${_data?.title}"),
                // Text("${_data?.first}"),
                // Text("${_data?.last}"),
                // Text("${_data?.name}"),
                // Text("${_data?.number}"),
                // Text("${_data?.city}"),
                // Text("${_data?.state}"),
                // Text("${_data?.country}"),
                // Text("${_data?.postcode}"),
                // Text("${_data?.description}"),
                // Text("${_data?.email}"),
                // Text("${_data?.username}"),
                // Text("${_data?.password}"),
                //Text("${_data?.age}"),
                //Text("${_data?.phone}"),
                //Image.network(_data!.image),
                //  Text("${_data?.page}"),
              ],
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
