import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery_app1/utils/app_colors.dart';
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {

    return  Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(children: [
         const Icon(Icons.person,
                        size: 100,
                        color: AppColors.primary,
                    ),
             
              const SizedBox(height: 24,),
              DecoratedBox(
                decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: AppColors.white,),
                //borderRadius: BorderRadius.circular(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                        const Icon(Icons.person,
                        size: 30,
                        color: AppColors.primary,
                       ),
                        const SizedBox(width:16,),
                        Text('Hanan',
                       style: Theme.of(context).textTheme.bodyLarge,
                          ),
                  ],
                ),
              ),
             const SizedBox(height: 24,),
              DecoratedBox(
                decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: AppColors.white,),
                //borderRadius: BorderRadius.circular(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                        const Icon(Icons.phone,
                        size: 30,
                        color: AppColors.primary,
                       ),
                        const SizedBox(width:16,),
                        Text('0593872536',
                       style: Theme.of(context).textTheme.bodyLarge,
                          ),
                  ],
                ),
              ),
              const SizedBox(height: 24,),
               DecoratedBox(
                decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: AppColors.white,),
                //borderRadius: BorderRadius.circular(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                        const Icon(Icons.email,
                        size: 30,
                        color: AppColors.primary,
                       ),
                        const SizedBox(width:16,),
                        Text('hanan.nairat13@gmail.com',
                       style: Theme.of(context).textTheme.bodyLarge,
                          ),
                  ],
                ),
              ),
               const SizedBox(height: 24,),
               DecoratedBox(
                decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: AppColors.white,),
                //borderRadius: BorderRadius.circular(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                        const Icon(Icons.location_on,
                        size: 30,
                        color: AppColors.primary,
                       ),
                        const SizedBox(width:16,),
                        Text('Jenin',
                       style: Theme.of(context).textTheme.bodyLarge,
                          ),
                  ],
                ),
              ),

      
      ],),
    );
  }
}
