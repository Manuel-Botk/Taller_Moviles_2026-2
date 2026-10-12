import 'package:flutter/material.dart';

// Nivel de poder de 0 a 5
class NumericCounter extends StatefulWidget {
  const NumericCounter({super.key});

  @override
  State<NumericCounter> createState() => _NumericCounterState();
}

class _NumericCounterState extends State<NumericCounter> {
  int _value = 0; // variable numérica que se modifica
  final int _min = 0; // límite inferior
  final int _max = 5; // límite superior

  void _increase() {
    setState(() {
      _value++;
    });
  }

  void _decrease() {
    setState(() {
      _value--;
    });
  }

  void _reset() {
    setState(() {
      _value = 0;
    });
  }

  // Cambio del rayo segun el valor
  Widget _bolt(int position) {
    return Icon(
      _value >= position ? Icons.bolt : Icons.bolt_outlined,
      color: _value >= position
          ? const Color(0xFFE5A91E)
          : const Color(0xFF8FA3A0),
      size: 36,
    );
  }

  String _message() {
    if (_value == _max) return '¡Poder máximo alcanzado!';
    if (_value == _min) return 'Poder mínimo alcanzado';
    return 'Nivel de poder actual';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Rayos
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _bolt(1),
            _bolt(2),
            _bolt(3),
            _bolt(4),
            _bolt(5),
          ],
        ),
        // Círculo con el valor
        SizedBox(
          height: 160,
          child: Center(
            child: Container(
              width: 70 + _value * 12.0,
              height: 70 + _value * 12.0,
              decoration: BoxDecoration(
                color: const Color(0xFF14E8B4),
                shape: BoxShape.circle,
                border: Border.all(color: const Color(0xFFE5A91E), width: 3),
              ),
              child: Center(
                child: Text(
                  '$_value',
                  style: const TextStyle(
                    color: Color(0xFF121417),
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
        Text(_message(), style: const TextStyle(color: Color(0xFF8FA3A0))),
        const SizedBox(height: 16),
        // Controles
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _value > _min ? _decrease : null,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF14E8B4),
                foregroundColor: const Color(0xFF121417),
                disabledBackgroundColor: const Color(0xFF2A3D3E),
              ),
              child: const Icon(Icons.remove),
            ),
            const SizedBox(width: 16),
            ElevatedButton(
              onPressed: _value < _max ? _increase : null,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF14E8B4),
                foregroundColor: const Color(0xFF121417),
                disabledBackgroundColor: const Color(0xFF2A3D3E),
              ),
              child: const Icon(Icons.add),
            ),
          ],
        ),
        TextButton(
          onPressed: _reset,
          child: const Text(
            'Reiniciar',
            style: TextStyle(color: Color(0xFF14E8B4)),
          ),
        ),
      ],
    );
  }
}