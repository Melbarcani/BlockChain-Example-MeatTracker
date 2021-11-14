pragma solidity ^0.4.0;


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

    function createAnimal(string origin, uint256 birthDate, string matricule, string gender, string comment) public {
        uint id = animals.push(Animal(origin, birthDate, matricule, gender, comment));
        emit NewAnimal(id, matricule);
    }


}
