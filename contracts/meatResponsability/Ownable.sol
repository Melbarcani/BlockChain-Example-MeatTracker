pragma solidity ^0.5.16;

contract Ownable {
    address private origninOwner;


    event TransferOwnership(address indexed fromOldOwner, address indexed toNewOwner);


    constructor() internal {
        origninOwner = msg.sender;
        emit TransferOwnership(address (0), origninOwner);
    }

    function owner()public view returns (address) {
        return origninOwner;
    }
    modifier onlyOwner() {
        require(isOwner());
        _;
    }

    function isOwner() public view returns (bool) {
        return msg.sender == origninOwner;
    }

    function renounceOwnership() public onlyOwner{
        emit transferOwnership(origninOwner, address (0));
        origninOwner = address (0);
    }

    function transferOwnership(address newOwner) public onlyOwner{
        _transferOwnership(newOwner);
    }

    function _transferOwnership(address newOwner) internal {
        require(newOwner != address(0));
        emit transferOwnership(origninOwner, newOwner);
        origninOwner = newOwner;
    }

}
