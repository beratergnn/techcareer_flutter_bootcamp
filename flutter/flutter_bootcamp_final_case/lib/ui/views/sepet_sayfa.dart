import 'package:contact_bloc_pattern/data/entity/sepet.dart';
import 'package:contact_bloc_pattern/ui/cubit/sepet_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class SepetPage extends StatefulWidget {
  const SepetPage({super.key});

  @override
  State<SepetPage> createState() => _SepetPageState();
}

class _SepetPageState extends State<SepetPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();

  void initState() {
    super.initState();
    context.read<SepetCubit>().getSepets("berhat_ergun");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          title:
              Text('Sepetim', style: TextStyle(fontWeight: FontWeight.bold))),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: BlocBuilder<SepetCubit, List<SepetModel>>(
            builder: (context, snapshot) {
          if (snapshot.isNotEmpty) {
            return ListView.builder(
              itemCount: snapshot.length,
              itemBuilder: ((context, index) {
                var yemek = snapshot[index];
                return Column(
                  children: [
                    SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 10,
                            offset: Offset(0, 0), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 108,
                            width: 108,
                            child: Image.network(
                                'http://kasimadalan.pe.hu/yemekler/resimler/${yemek.yemek_resim_adi}'),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '${yemek.yemek_adi}',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Fiyat ',
                                  ),
                                  Text(
                                    '${yemek.yemek_fiyat} ₺',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Text(
                                'Adet: ${yemek.yemek_siparis_adet}',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                  onPressed: () {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Silmek istiyor musun?',
                                        ),
                                        action: SnackBarAction(
                                            label: 'Evet',
                                            onPressed: () {
                                              context
                                                  .read<SepetCubit>()
                                                  .deleteYemek(
                                                      int.parse(
                                                          yemek.sepet_yemek_id),
                                                      "berhat_ergun");
                                            }),
                                      ),
                                    );
                                  },
                                  icon: Icon(Icons.delete)),
                              Text(
                                '₺ ${NumberFormat("#,##0", "tr_TR").format(int.parse(yemek.yemek_siparis_adet) * int.parse(yemek.yemek_fiyat))}',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                );
              }),
            );
          } else {
            return const Text('Yemek not found');
          }
        }),
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  Widget buildBottomNavigationBar() {
    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.black45, // İstediğiniz renk
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('TOPLAM : 548₺', style: TextStyle(color: Colors.white)),
          ElevatedButton(
            onPressed: () {
              // Sepeti onaylama işlemleri burada gerçekleştirilebilir.
            },
            child: Text('SEPETİ ONAYLA', style: TextStyle(color: Colors.black)),
          ),
        ],
      ),
    );
  }
}
