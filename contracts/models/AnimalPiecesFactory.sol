pragma solidity ^0.5.16;


import "./ProductFactory.sol";

contract AnimalPiecesFactory is ProductFactory {

    struct Pieces {
        string nameOfPiece;
        uint idOfPiece;
    }

    function animalToPieces(){

        Pieces storage farmerPieces = Pieces[_index];

        farmerPieces.status = "created";

    }



}

