// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract MonMate {
    struct Game {
        address player1;
        address player2;
        uint256 wager;
        bool isActive;
    }

    mapping(uint256 => Game) public games;

    function createGame(uint256 gameId) external payable {
        require(msg.value > 0, "Wager required");
        games[gameId] = Game(msg.sender, address(0), msg.value, true);
    }

    function joinGame(uint256 gameId) external payable {
        Game storage game = games[gameId];
        require(msg.value == game.wager, "Must match wager");
        game.player2 = msg.sender;
    }
}
