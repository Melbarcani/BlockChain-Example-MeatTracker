pragma solidity ^0.5.16;


contract ProductFactory {

    event NewAnimal(uint animalID, string matricule);

    struct Animal {
        string origin;
        uint256 birthDate;
        string matricule;
        string gender;
        string comment;
    }

    Animal[] public animals;

    function createAnimal(string memory origin, uint256 birthDate, string memory matricule, string memory gender, string memory comment) public {
        uint id = animals.push(Animal(origin, birthDate, matricule, gender, comment));
        emit NewAnimal(id, matricule);
    }


}
