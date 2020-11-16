import 'package:ecommerce/constants.dart';
import 'package:ecommerce/models/Product.dart';
import 'package:ecommerce/screens/home/components/icon_btn_with_counter.dart';
import 'package:ecommerce/screens/home/components/search_field.dart';
import 'package:ecommerce/screens/home/components/section_title.dart';
import 'package:ecommerce/screens/home/components/special_offers.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
            HomeHeader(),
            SizedBox(
              height: getProportionateScreenWidth(30),
            ),
            DiscountBanner(),
            SizedBox(
              height: getProportionateScreenWidth(30),
            ),
            Categories(),
            SizedBox(
              height: getProportionateScreenWidth(30),
            ),
            SpecialOffers(),
            SizedBox(
              height: getProportionateScreenWidth(30),
            ),
            SectionTitle(text: "Popular Product", press: () {}),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...List.generate(demoProducts.length, (index) => ProductCard(product: demoProducts[index],))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
    this.width = 140,
    this.aspectRation = 1.02,
    this.product,
  }) : super(key: key);
  final double width,aspectRation;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left:getProportionateScreenWidth(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(140),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: aspectRation,
              child: Container(
                padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                decoration: BoxDecoration(
                  color: kSecondaryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(product.images[0]),
              ),
            ),
            const SizedBox(height: 5),
            Text(
              product.title,
              style: TextStyle(color: Colors.black),
              maxLines: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Ksh${product.price}",
                  style: TextStyle(
                      fontSize: getProportionateScreenWidth(18),
                      fontWeight: FontWeight.w600,
                      color: kPrimaryColor ),
                ),
                Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(5)),
                  width: getProportionateScreenWidth(28),
                  height: getProportionateScreenWidth(28),
                  decoration: BoxDecoration(color: kSecondaryColor.withOpacity(0.1),
                  shape: BoxShape.circle
                  ),
                  child: SvgPicture.asset("assets/icons/Heart Icon_2.svg"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
