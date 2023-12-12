import 'package:contact_bloc_pattern/data/entity/yemek.dart';
import 'package:contact_bloc_pattern/ui/cubit/ana_cubit.dart';
import 'package:contact_bloc_pattern/ui/cubit/detay_cubit.dart';
import 'package:contact_bloc_pattern/ui/views/detay_sayfa.dart';
import 'package:contact_bloc_pattern/ui/views/sepet_sayfa.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnaPage extends StatefulWidget {
  const AnaPage({super.key});

  @override
  State<AnaPage> createState() => _AnaPageState();
}

class _AnaPageState extends State<AnaPage> {
  bool isSearching = false;

  @override
  void initState() {
    super.initState();
    context.read<AnaCubit>().getYemeks();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        title: isSearching
            ? SizedBox(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Ara',
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 2, color: Colors.grey.shade200),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 2, color: Colors.grey.shade400),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onChanged: (searchingResult) {
                    // arama yapmak için herhangi bir harfe basıldığı anda MainPageCubit içindeki search metodu çalışır.
                    // bu metod da içindeki listeyi doldurmak için repoya çıkar repodan burada bir liste döner ve oda emit ile bunu sayfaya haber verir.
                    // BlocBuilder<MainPageCubit, List<BPD9Contacts>> olan yere bu liste döndürülür ve ekrana basılır.
                    context.read<AnaCubit>().searchYemeks(searchingResult);
                  },
                ),
              )
            : Text(
                'Hoşgeldin',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
        actions: [
          isSearching
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      isSearching = !isSearching;
                    });
                    // Bunu koymaz isek arama yapıldıktan sonra ki kişiler listelenmeye devam eder
                    // arama işlemi bittikten sonra olan tüm kayıtların gelmesi için tekrar listeleme yapıyoruz.
                    context.read<AnaCubit>().getYemeks();
                  },
                  icon: Icon(Icons.clear),
                )
              : IconButton(
                  onPressed: () {
                    setState(() {
                      isSearching = !isSearching;
                    });
                  },
                  icon: Icon(Icons.search),
                ),
          IconButton(
            onPressed: () {
              context.read<AnaCubit>().getSiraliYemeks();
            },
            icon: Icon(Icons.swap_vert),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocBuilder<AnaCubit, List<YemekModel>>(
          builder: (context, snapshot) {
            if (snapshot.isNotEmpty) {
              return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // İki sütunlu grid
                  crossAxisSpacing: 20.0,
                  mainAxisSpacing: 20.0,
                ),
                itemCount: snapshot.length,
                itemBuilder: (context, index) {
                  var yemek = snapshot[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetayPage(
                            yemek: yemek,
                          ),
                        ),
                      ).then((value) {
                        print('You came back to Main Page from Detail Page');
                        context.read<AnaCubit>().getYemeks();
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Image.network(
                            'http://kasimadalan.pe.hu/yemekler/resimler/${yemek.yemek_resim_adi}',
                            height: 100,
                            width: 100,
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '${yemek.yemek_adi}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                '${yemek.yemek_fiyat} ₺',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  context.read<AnaCubit>().sepeteEkle(
                                        yemek.yemek_adi,
                                        yemek.yemek_resim_adi,
                                        int.parse(yemek.yemek_fiyat),
                                        1,
                                        "berhat_ergun",
                                      );

                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Yemek sepetine eklendi',
                                      ),
                                    ),
                                  );
                                },
                                icon: Icon(Icons.add),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            } else {
              return const Text('Contacts not found');
            }
          },
        ),
      ),
    );
  }
}
