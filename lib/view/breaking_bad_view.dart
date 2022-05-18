import 'package:breaking_bad_mobx/viewmodel/breaking_bad_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class BreakingBadView extends StatelessWidget {
  final breakingBadViewModel = BreakingBadViewModel();

  BreakingBadView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // Replace this with your build function
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            breakingBadViewModel.allCharList();
          },
          child: const Icon(Icons.add),
        ),
        body: Observer(
          builder: (context) {
            if (breakingBadViewModel.isLoading) {
              return const Center(child: CircularProgressIndicator());
            } else {
              return PageView.builder(
                itemCount: breakingBadViewModel.charlist.length,
                itemBuilder: (context, index) {
                  return Center(
                    child: Container(
                      height: context.height * 0.26,
                      width: context.width * 0.9,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey
                                  .withOpacity(0.5), //color of shadow
                              spreadRadius: 5, //spread radius
                              blurRadius: 7, // blur radiu;})s
                              offset: const Offset(0, 2),
                            )
                          ]),
                      child: Row(
                        children: [
                          Container(
                            height: context.height * 0.26,
                            width: context.width * 0.34,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                      "${breakingBadViewModel.charlist[index].img}",
                                    ))),
                          ),
                          Padding(
                            padding: context.paddingNormal,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                buildRichText(context, index,
                                    baslik: "Name : ",
                                    aciklama:
                                        "${breakingBadViewModel.charlist[index].name}"),
                                context.emptySizedHeightBoxLow,
                                buildRichText(context, index,
                                    baslik: "Nickname : ",
                                    aciklama:
                                        "${breakingBadViewModel.charlist[index].nickname}"),
                                context.emptySizedHeightBoxLow,
                                buildRichText(context, index,
                                    baslik: "Birtday : ",
                                    aciklama:
                                        "${breakingBadViewModel.charlist[index].birthday}"),
                                context.emptySizedHeightBoxLow,
                                // buildRichText(context, index,
                                //     baslik: "Occupation : ",
                                //     aciklama: "${charlist[index].occupation}"),
                                buildRichText(context, index,
                                    baslik: "Status : ",
                                    aciklama:
                                        "${breakingBadViewModel.charlist[index].status}"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            }
          },
        ));
  }

  RichText buildRichText(BuildContext context, int index,
      {required String baslik, required String aciklama}) {
    return RichText(
      overflow: TextOverflow.clip,
      text: TextSpan(
        text: '',
        style: DefaultTextStyle.of(context).style,
        children: <TextSpan>[
          TextSpan(
              text: baslik,
              style: const TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(text: aciklama),
        ],
      ),
    );
  }
}
