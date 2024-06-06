import 'package:flutter/material.dart';

class ScreenSeatSelection extends StatefulWidget {
  const ScreenSeatSelection({super.key});

  @override
  _ScreenSeatSelectionState createState() => _ScreenSeatSelectionState();
}

class _ScreenSeatSelectionState extends State<ScreenSeatSelection> {
  // Define the seat states
  static const String reserved = 'reserved';
  static const String free = 'free';
  static const String paid = 'paid';

  // Define the initial seat layout
  List<List<String>> seatLayout = [
    [reserved, free, free, free, free, reserved],
    [free, free, reserved, reserved, free, free],
    [free, free, free, free, free, free],
    [reserved, free, free, free, free, reserved],
    [free, free, free, free, free, free],
    [free, free, reserved, reserved, free, free],
    [free, free, free, free, free, free],
    [free, reserved, reserved, reserved, reserved, free],
    [free, free, free, free, free, free],
  ];

  // Define the selected seats
  List<List<bool>> selectedSeats=[];

  @override
  void initState() {
    super.initState();
    selectedSeats = List.generate(
      seatLayout.length,
      (i) => List.generate(seatLayout[i].length, (j) => false),
    );
  }

  void onSeatTap(int row, int col) {
    if (seatLayout[row][col] == free) {
      setState(() {
        selectedSeats[row][col] = !selectedSeats[row][col];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Seat Selection'),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildLegend(reserved, 'Reserved', Colors.grey),
              buildLegend(free, 'Free', Colors.white),
              buildLegend(paid, 'Paid', Colors.blue),
            ],
          ),
          SizedBox(height: 20),
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(20),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 6,
                childAspectRatio: 1.2,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
              ),
              itemCount: seatLayout.length * seatLayout[0].length,
              itemBuilder: (context, index) {
                int row = index ~/ 6;
                int col = index % 6;
                return GestureDetector(
                  onTap: () => onSeatTap(row, col),
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    decoration: BoxDecoration(
                      color: getSeatColor(row, col),
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        '${String.fromCharCode(65 + col)}${row + 1}',
                        style: TextStyle(
                          color: selectedSeats[row][col]
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Add ons total: ₹120'),
                    Text('Total: ₹3620'),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Pay now'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                    textStyle: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Color getSeatColor(int row, int col) {
    if (selectedSeats[row][col]) {
      return Colors.blue;
    } else {
      switch (seatLayout[row][col]) {
        case reserved:
          return Colors.grey;
        case free:
          return Colors.white;
        case paid:
          return Colors.blue;
        default:
          return Colors.white;
      }
    }
  }

  Widget buildLegend(String type, String label, Color color) {
    return Row(
      children: [
        Container(
          width: 20,
          height: 20,
          color: color,
        ),
        SizedBox(width: 5),
        Text(label),
      ],
    );
  }
}