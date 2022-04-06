part of '../product_card.dart';

class _CardButtonsAndChosenQuantity extends StatefulWidget {
  int chosenQuantity;
  final int maxQuantity;
  final Function() onAddPressed;
  final Function() onRemovePressed;

  _CardButtonsAndChosenQuantity({
    Key? key,
    required this.onAddPressed,
    required this.onRemovePressed,
    required this.maxQuantity,
    this.chosenQuantity = 0,
  }) : super(key: key);

  @override
  State<_CardButtonsAndChosenQuantity> createState() =>
      _CardButtonsAndChosenQuantityState();
}

class _CardButtonsAndChosenQuantityState
    extends State<_CardButtonsAndChosenQuantity> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _CustomIconButton(
          onPressed: () {
            if (!_canIncrement()) return;

            if (widget.chosenQuantity == widget.maxQuantity) return;

            try {
              widget.onAddPressed();
              _incrementChosenQuantity();
            } catch (e) {
              //TODO: handle error
              _handleIncrementError();
            }
          },
          icon: Icons.add_circle_outline_rounded,
        ),
        Text(
          widget.chosenQuantity.toString(),
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        _CustomIconButton(
          onPressed: () {
            if (!_canDecrement()) return;

            try {
              widget.onRemovePressed();
              _decrementChosenQuantity();
            } catch (e) {
              //TODO: handle error
              _handleDecrementError();
            }
          },
          icon: Icons.remove_circle_outline_rounded,
        ),
      ],
    );
  }

  void _handleDecrementError() {}

  void _handleIncrementError() {}

  bool _canDecrement() => widget.chosenQuantity > 0;

  bool _canIncrement() => widget.chosenQuantity < widget.maxQuantity;

  void _incrementChosenQuantity() {
    setState(() {
      widget.chosenQuantity++;
    });
  }

  void _decrementChosenQuantity() {
    setState(() {
      widget.chosenQuantity--;
    });
  }
}

class _CustomIconButton extends StatelessWidget {
  final IconData icon;
  final Function() onPressed;
  final bool activated;
  final double? iconSize;
  const _CustomIconButton({
    Key? key,
    required this.icon,
    required this.onPressed,
    this.activated = true,
    this.iconSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      child: Padding(
        padding: const EdgeInsets.all(3),
        child: Icon(
          icon,
          size: iconSize ?? 21,
        ),
      ),
      onTap: onPressed,
    );
  }
}
