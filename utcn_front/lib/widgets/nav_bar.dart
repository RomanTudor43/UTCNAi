import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key}); // Super parameter

  @override
  Widget build(BuildContext context) {
    final navItems = [
      _NavItem(
        label: 'About the Institute',
        routeName: '/about',
        subItems: [
          _SubNavItem(label: 'History', routeName: '/about'),
          _SubNavItem(label: 'Mission', routeName: '/about'),
        ],
      ),
      _NavItem(
        label: 'News and Events',
        routeName: '/news',
        subItems: [
          _SubNavItem(label: 'Latest News', routeName: '/news'),
          _SubNavItem(label: 'Upcoming Events', routeName: '/news'),
        ],
      ),
      _NavItem(
        label: 'Research',
        routeName: '/research',
        subItems: [
          _SubNavItem(label: 'Research Units', routeName: '/research'),
          _SubNavItem(label: 'Projects & Grants', routeName: '/research'),
          _SubNavItem(label: 'Collaboration', routeName: '/research'),
        ],
      ),
      _NavItem(
        label: 'People',
        routeName: '/people',
        subItems: [
          _SubNavItem(label: 'Faculty', routeName: '/people'),
          _SubNavItem(label: 'Staff', routeName: '/people'),
          _SubNavItem(label: 'Students', routeName: '/people'),
        ],
      ),
      _NavItem(
        label: 'Contact',
        routeName: '/contact',
        subItems: [
          _SubNavItem(label: 'Locations', routeName: '/contact'),
          _SubNavItem(label: 'General Info', routeName: '/contact'),
        ],
      ),
    ];

    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 100),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: navItems
            .map((navItem) => _HoverNavItem(navItem: navItem))
            .toList(),
      ),
    );
  }
}

// NAV_ITEM CLASS
class _NavItem {
  final String label;
  final String? routeName;
  final List<_SubNavItem> subItems;

  _NavItem({required this.label, this.routeName, this.subItems = const []});
}

// SUB_NAV_ITEM CLASS
class _SubNavItem {
  final String label;
  final String routeName;

  _SubNavItem({required this.label, required this.routeName});
}

// HOVER SUB ITEM
class _HoverSubItem extends StatefulWidget {
  final String label;
  final VoidCallback onTap;

  // Use super parameters for the key:
  const _HoverSubItem({required this.label, required this.onTap});

  @override
  State<_HoverSubItem> createState() => _HoverSubItemState();
}

class _HoverSubItemState extends State<_HoverSubItem> {
  bool isHovered = false;
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click, // Change cursor to pointer
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: GestureDetector(
        onTap: () {
          setState(() => isSelected = true);
          widget.onTap();
        },
        child: Container(
          color: isHovered
              ? const Color.fromARGB(255, 141, 140, 140) // Gray on hover
              : (isSelected ? Colors.grey[300] : Colors.transparent),
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          child: Text(
            widget.label,
            style: TextStyle(
              color: isHovered ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}

class _HoverNavItem extends StatefulWidget {
  final _NavItem navItem;
  // Again, super parameter:
  const _HoverNavItem({required this.navItem});

  @override
  State<_HoverNavItem> createState() => _HoverNavItemState();
}

class _HoverNavItemState extends State<_HoverNavItem> {
  final LayerLink _layerLink = LayerLink();
  OverlayEntry? _overlayEntry;

  bool _isTopItemHovered = false;
  bool _isDropdownHovered = false;

  bool get _isAnyHover => _isTopItemHovered || _isDropdownHovered;

  @override
  void dispose() {
    _removeDropdown();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: _layerLink,
      child: MouseRegion(
        cursor: SystemMouseCursors.click, // Change cursor to pointer
        onEnter: (_) => _onTopItemEnter(),
        onExit: (_) => _onTopItemExit(),
        child: GestureDetector(
          onTap: () {
            if (widget.navItem.routeName != null) {
              Navigator.pushNamed(context, widget.navItem.routeName!);
            }
          },
          child: Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            color: _isAnyHover
                ? const Color.fromARGB(255, 141, 36, 36)
                : Colors.transparent,
            child: Text(
              widget.navItem.label,
              style: TextStyle(
                fontSize: 16,
                color: _isAnyHover ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onTopItemEnter() {
    setState(() => _isTopItemHovered = true);
    if (widget.navItem.subItems.isNotEmpty && _overlayEntry == null) {
      _showDropdown();
    }
  }

  void _onTopItemExit() {
    setState(() => _isTopItemHovered = false);
    Future.delayed(const Duration(milliseconds: 50), () {
      if (!_isAnyHover) {
        _removeDropdown();
      }
    });
  }

  void _showDropdown() {
    _overlayEntry = _createOverlayEntry();
    Overlay.of(context).insert(_overlayEntry!);
  }

  void _removeDropdown() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  OverlayEntry _createOverlayEntry() {
    final renderBox = context.findRenderObject() as RenderBox;

    return OverlayEntry(
      builder: (context) {
        return Positioned(
          width: 150,
          child: CompositedTransformFollower(
            link: _layerLink,
            showWhenUnlinked: false,
            offset: Offset(0, renderBox.size.height),
            child: MouseRegion(
              cursor: SystemMouseCursors.click, // Change cursor in dropdown
              onEnter: (_) => setState(() => _isDropdownHovered = true),
              onExit: (_) => _onDropdownExit(),
              child: Material(
                elevation: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: widget.navItem.subItems.map((sub) {
                    return _HoverSubItem(
                      label: sub.label,
                      onTap: () {
                        Navigator.pushNamed(context, sub.routeName);
                        _removeDropdown();
                      },
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  void _onDropdownExit() {
    setState(() => _isDropdownHovered = false);
    Future.delayed(const Duration(milliseconds: 50), () {
      if (!_isAnyHover) {
        _removeDropdown();
      }
    });
  }
}
