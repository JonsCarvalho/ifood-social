import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:ifood_social_app/screens/create/presentation/create.page.dart';
import 'package:ifood_social_app/screens/home/presentation/components/product_card.widget.dart';
import 'package:ifood_social_app/screens/home/presentation/controllers/home.controller.dart';
import 'package:ifood_social_app/screens/update/presentation/update.page.dart';
import 'package:ifood_social_app/shared/text_app.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController _controller = GetIt.I.get<HomeController>();

  @override
  void initState() {
    super.initState();

    _controller.getCategories();
    _controller.getProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(TextApp.nameApp),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CreatePage(
                  categories: _controller.getCategoriesResponse!.categories,
                ),
              ),
            );
          },
          backgroundColor: Colors.red,
          child: const Icon(
            Icons.add_circle_outline,
            color: Colors.white,
            size: 32,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        body: Column(
          children: [
            _controller.loading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : Padding(
                    padding: const EdgeInsets.only(bottom: 16, top: 8),
                    child: SizedBox(
                      height: 38,
                      child: ListView.builder(
                        itemCount: _controller.getCategoriesResponse?.categories.length ?? 0,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(left: index == 0 ? 16 : 0, right: 8),
                            child: InkWell(
                              onTap: () {},
                              borderRadius: BorderRadius.circular(15),
                              splashColor: Colors.red,
                              child: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.grey.withOpacity(.3),
                                ),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 12,
                                      backgroundColor: _controller.getCategoriesResponse?.categories[index].imageUrl != null ? Colors.transparent : Colors.red,
                                      backgroundImage: _controller.getCategoriesResponse?.categories[index].imageUrl != null ? NetworkImage(_controller.getCategoriesResponse!.categories[index].imageUrl!) : null,
                                    ),
                                    const SizedBox(width: 8),
                                    Text(_controller.getCategoriesResponse?.categories[index].name ?? ''),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
            Expanded(
              child: _controller.loading
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: GridView.builder(
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                        itemCount: _controller.getProductsResponse?.products.length ?? 0,
                        itemBuilder: (context, index) {
                          return ProductCard(
                              product: _controller.getProductsResponse!.products[index],
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => UpdatePage(
                                      product: _controller.getProductsResponse!.products[index],
                                      categories: _controller.getCategoriesResponse!.categories,
                                    ),
                                  ),
                                );
                              });
                        },
                      ),
                    ),
            ),
          ],
        ),
      );
    });
  }
}
