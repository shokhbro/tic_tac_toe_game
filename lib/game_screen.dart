import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tic_tac_toe_game/home_screen.dart';

class GameScreen extends StatefulWidget {
  String player1;
  String player2;

  GameScreen({required this.player1, required this.player2});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  int xPlayer = 0;
  int oPlayer = 0;
  List<String> board = List.filled(9, '');
  String currentPlayer = 'X';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff323D5B),
      appBar: AppBar(
        leading: Row(
          children: [
            const Gap(5),
            IconButton(
              onPressed: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  );
                });
              },
              icon: const Icon(
                CupertinoIcons.back,
                color: Colors.white,
                size: 25,
              ),
            ),
          ],
        ),
        centerTitle: true,
        title: const Text(
          'Tic-Tac-Toe',
          style: TextStyle(
            fontFamily: 'Rowdies',
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xff323D5B),
      ),
      body: Column(
        children: [
          const Gap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    "Player ${widget.player1}",
                    style: const TextStyle(
                      fontFamily: 'Rowdies',
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "$xPlayer",
                    style: const TextStyle(
                      fontFamily: 'Rowdies',
                      color: Colors.white,
                      fontSize: 40,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Player ${widget.player2}",
                    style: const TextStyle(
                      fontFamily: 'Rowdies',
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "$oPlayer",
                    style: const TextStyle(
                      fontFamily: 'Rowdies',
                      color: Colors.white,
                      fontSize: 40,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Gap(20),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                for (int row = 0; row < 3; row++)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      for (int col = 0; col < 3; col++)
                        _buildCell(row * 3 + col),
                    ],
                  ),
              ],
            ),
          ),
          const Gap(20),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: _resetScores,
                child: Container(
                  width: 250,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green,
                  ),
                  child: const Center(
                    child: Text(
                      "New Game",
                      style: TextStyle(
                        fontFamily: 'Rowdies',
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                  ),
                ),
              ),
              const Gap(15),
              InkWell(
                onTap: _resetGame,
                child: Container(
                  width: 250,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green,
                  ),
                  child: const Center(
                    child: Text(
                      "Reset Game",
                      style: TextStyle(
                        fontFamily: 'Rowdies',
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCell(int index) {
    return GestureDetector(
      onTap: () => _handleTap(index),
      child: Container(
        margin: const EdgeInsets.all(4.0),
        width: 105,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xff4A90E2),
        ),
        child: Center(
          child: Text(
            board[index],
            style: const TextStyle(
              fontFamily: 'Rowdies',
              color: Colors.white,
              fontSize: 70,
            ),
          ),
        ),
      ),
    );
  }

  void _handleTap(int index) {
    if (board[index].isEmpty) {
      setState(() {
        board[index] = currentPlayer;
        if (_checkWinner(currentPlayer)) {
          if (currentPlayer == 'X') {
            xPlayer++;
          } else {
            oPlayer++;
          }
          _showWinnerDialog(currentPlayer);
        } else if (board.every((element) => element.isNotEmpty)) {
          _showDrawDialog();
        } else {
          currentPlayer = currentPlayer == 'X' ? 'O' : 'X';
        }
      });
    }
  }

  bool _checkWinner(String player) {
    const winPatterns = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [0, 4, 8],
      [2, 4, 6],
    ];

    return winPatterns
        .any((pattern) => pattern.every((index) => board[index] == player));
  }

  void _showWinnerDialog(String winner) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Player $winner Wins!'),
          actions: [
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
                _resetGame();
              },
            ),
          ],
        );
      },
    );
  }

  void _showDrawDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('It\'s a Draw!'),
          actions: [
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
                _resetGame();
              },
            ),
          ],
        );
      },
    );
  }

  void _resetGame() {
    setState(() {
      board = List.filled(9, '');
      currentPlayer = 'X';
    });
  }

  void _resetScores() {
    setState(() {
      xPlayer = 0;
      oPlayer = 0;

      _resetGame();
    });
  }
}
