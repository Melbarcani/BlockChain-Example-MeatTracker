pragma solidity ^0.5.16;


contract ProductFactory {

    event NewAnimal(uint animalID, string matricule);

    uint matriculeModulus = 10 ** dnaDigits;

    struct Animal {
        string origin;
        uint256 birthDate;
        string matricule;
        string gender;
        string comment;
        uint farmerId;
    }

    Animal[] public animals;
    //animal en fonction de son id
    //
    mapping(uint => address) public animalToFarmer;
    mapping(address => uint) FarmerAnimalCount;
    //doit etre private

    function createAnimal(string memory origin, uint256 memory birthDate, string memory matricule, string memory gender, string memory comment) public {
        uint id = animals.push(Animal(origin, birthDate, matricule, gender, comment));
        //on verifie que le ownerAnimalCount du msg sender est inférieur ou égale à 100
        require(FarmerAnimalCount[msg.sender] <= 100);
        //on assigne l' id d'un animal au msg sender
        //on attribue la propriété d'un animal à l'éméteur de la fonction
        //on met à jour notre mappage d'animal avec l'id et on augmente le nombre d'animaux pour l'émétteur.
        animalToFarmer[id] = msg.sender;
        FarmerAnimalCount[msg.sender]++;

        emit NewAnimal(id, matricule);
    }

    function _generateRandomMatricule(string memory _str) private view returns (uint){
        uint rand = uint(keccak256(abi.encodePacked(_str)));
        return rand % matriculeModulus;
    }
//a voir avec Farmer
    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }

}

    contract AnimalPiecesFactory is ProductFactory {

    }
