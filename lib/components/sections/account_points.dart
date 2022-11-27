import 'package:alubank/components/box_card.dart';
import 'package:alubank/components/color_dot.dart';
import 'package:alubank/components/content_division.dart';
import 'package:alubank/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class AccountPoints extends StatelessWidget {
  const AccountPoints({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              'Pontos da Conta',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          const BoxCard(boxContent: _AccountPointContent()),
        ],
      ),
    );
  }
}

class _AccountPointContent extends StatelessWidget {
  const _AccountPointContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 10.0),
          child: Text('Pontos totais:'),
        ),
        Text(
          '3000',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: ContentDivision(),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Text(
            'Objetivos:',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 4.0),
                child: ColorDot(
                    color: ThemeColors.accountPointsActivity['freeDelivery']),
              ),
              const Text('Entrega grátis: 150000pts')
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 4.0),
                child: ColorDot(
                    color:
                        ThemeColors.accountPointsActivity['monthOfStreaming']),
              ),
              const Text('1 mês de streaming: 300000pts')
            ],
          ),
        ),
      ],
    );
  }
}
