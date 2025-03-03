import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InifiniteScrollScreen extends StatefulWidget {
  static const name = 'infiniteScroll_screen';

  const InifiniteScrollScreen({super.key});

  @override
  State<InifiniteScrollScreen> createState() => _InifiniteScrollScreenState();
}

class _InifiniteScrollScreenState extends State<InifiniteScrollScreen> {
  List<int> imagesIds = [1, 2, 3, 4, 5];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;
  bool ismounted = true;

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      if ((scrollController.position.pixels + 500) >=
          scrollController.position.maxScrollExtent) {
        loadNextPage();
      }
    });
  }

  Future loadNextPage() async {
    if (isLoading) return;

    isLoading = true;

    setState(() {});

    await Future.delayed(Duration(seconds: 1));

    addFiveImages();
    isLoading = false;

    if (!ismounted) return;

    setState(() {});
    moveScrollToBottom();
  }

  Future<void> onRefresh() async {
    isLoading = true;

    setState(() {});

    await Future.delayed(Duration(seconds: 4));

    final lastId = imagesIds.last;
    imagesIds.clear();
    imagesIds.add(lastId + 1);
    addFiveImages();
    isLoading = false;

    if (!ismounted) return;
    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
    scrollController.dispose();
    ismounted = false;
  }

  void moveScrollToBottom() {
    if (scrollController.position.pixels + 150 <=
        scrollController.position.maxScrollExtent) {
      return;
    }

    scrollController.animateTo(
      scrollController.position.pixels + 120,
      duration: Duration(milliseconds: 900),
      curve: Curves.fastOutSlowIn,
    );
  }

  void addFiveImages() {
    final lastId = imagesIds.last;

    imagesIds.addAll([1, 2, 3, 4, 5].map((e) => lastId + e));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: RefreshIndicator(
          edgeOffset: 14,
          strokeWidth: 2,
          onRefresh: onRefresh,
          child: ListView.builder(
            controller: scrollController,
            itemCount: imagesIds.length,
            itemBuilder: (context, index) {
              return FadeInImage(
                fit: BoxFit.cover,
                width: double.infinity,
                height: 300,
                placeholder: AssetImage('assets/images/jar-loading.gif'),
                image: NetworkImage(
                  'https://picsum.photos/id/${imagesIds[index]}/500/300',
                ),
              );
            },
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed:
            isLoading
                ? null
                : () => context.pop(), // Deshabilita el botón si está cargando
        child:
            isLoading
                ? CircularProgressIndicator(color: Colors.white, strokeWidth: 3)
                : Icon(Icons.arrow_back_ios_new_outlined),
      ),
    );
  }
}
