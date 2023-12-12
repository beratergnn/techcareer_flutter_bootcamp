import 'package:contact_bloc_pattern/data/entity/yemek.dart';
import 'package:contact_bloc_pattern/ui/cubit/detay_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetayPage extends StatefulWidget {
  final YemekModel yemek;

  const DetayPage({super.key, required this.yemek});

  @override
  State<DetayPage> createState() => _DetayPageState();
}

class _DetayPageState extends State<DetayPage> {
  @override
  Widget build(BuildContext context) {
    var yemek = widget.yemek;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Ürün Detayı',
              style: TextStyle(fontWeight: FontWeight.bold))),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                'http://kasimadalan.pe.hu/yemekler/resimler/${widget.yemek.yemek_resim_adi}',
              ),
              Text(
                '${yemek.yemek_fiyat} ₺',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.blue,
                ),
              ),
              Text('${yemek.yemek_adi}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  )),
              SizedBox(height: 10),
              BlocBuilder<DetailPageCubit, int>(
                builder: (context, adet) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: IconButton(
                          onPressed: () {
                            context.read<DetailPageCubit>().decrement();
                          },
                          icon: Icon(Icons.remove, color: Colors.white),
                        ),
                      ),
                      SizedBox(width: 20),
                      Text(
                        '$adet',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: IconButton(
                          onPressed: () {
                            context.read<DetailPageCubit>().increment();
                          },
                          icon: Icon(Icons.add, color: Colors.white),
                        ),
                      ),
                    ],
                  );
                },
              ),
              SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BlocBuilder<DetailPageCubit, int>(
                    builder: (context, adet) {
                      return Text(
                        'Toplam: ${adet * int.parse(yemek.yemek_fiyat)} ₺',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.black,
                        ),
                      );
                    },
                  ),
                  SizedBox(width: 10),
                  InkWell(
                    onTap: () {
                      context.read<DetailPageCubit>().sepeteEkle(
                            yemek.yemek_adi,
                            yemek.yemek_resim_adi,
                            int.parse(yemek.yemek_fiyat),
                            context.read<DetailPageCubit>().state,
                            "berhat_ergun",
                          );
                    },
                    child: Container(
                      height: 50,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                          child: Text(
                        'Sepete Ekle',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      )),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
