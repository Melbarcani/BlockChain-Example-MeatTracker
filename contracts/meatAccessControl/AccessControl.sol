pragma solidity ^0.5.16;

import "./FarmerRole.sol";
import "./RetailerRole.sol";
import "./DelivererRole.sol";
import "./ConsumerRole.sol";
import "./SlaughterhouseRole.sol";

contract AccessControl is FarmerRole, RetailerRole, DelivererRole, ConsumerRole, SlaughterhouseRole {
    constructor() public {}

}
