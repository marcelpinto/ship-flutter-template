import 'package:flutter/material.dart';
import 'package:flutter_template/theme/app_theme.dart';

class FabCardButton extends StatefulWidget {
  final Widget child;
  final Function(bool)? onExpand;

  const FabCardButton({super.key, required this.child, this.onExpand});

  @override
  FabCardButtonState createState() => FabCardButtonState();
}

class FabCardButtonState extends State<FabCardButton> {
  bool _isExpanded = false;
  bool _showContent = false;

  @override
  Widget build(BuildContext context) {
    final maxHeight = MediaQuery.of(context).size.height * 0.6;
    final maxWidth = MediaQuery.of(context).size.width * 0.9;
    return AnimatedSize(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      alignment: Alignment.bottomRight,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: maxWidth, maxHeight: maxHeight),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          margin: EdgeInsets.zero,
          color: context.theme.colorScheme.primaryContainer,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              if (_isExpanded) ...[
                AnimatedOpacity(
                  opacity: _showContent ? 1.0 : 0.0,
                  duration: const Duration(milliseconds: 200),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: maxHeight - 48,
                    ),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: widget.child,
                      ),
                    ),
                  ),
                ),
              ],
              Flexible(
                child: AnimatedRotation(
                  duration: Durations.long1,
                  turns: _isExpanded ? 0.5 : 0.0,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          _isExpanded = !_isExpanded;
                          widget.onExpand?.call(_isExpanded);
                          Future.delayed(const Duration(milliseconds: 300), () {
                            setState(() {
                              _showContent = true;
                            });
                          });
                        });
                      },
                      icon: _isExpanded
                          ? _buildFabContent(Icons.close_rounded)
                          : _buildFabContent(Icons.auto_awesome_rounded),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFabContent(IconData icon) {
    return Icon(
      key: const ValueKey("fab_icon"),
      icon,
      color: context.theme.colorScheme.onPrimaryContainer,
    );
  }
}
