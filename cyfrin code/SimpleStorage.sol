// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract simplecontract {
    uint256 public favoriteNumber;

    uint256[] public favoriteNumbers;

    struct person {
        string name;
        uint256 favoriteNumber;
    }

    // dynamic array
    person[] public people;

    // MAPPING STRING
    mapping(string => uint256) public nameTofavoriteNumber;

    // DEFINING AN EVENT
    event NumberUpdated(uint256 newnumber, address updatedBy);

    function storeNumber(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    function getFavoriteNumber() public view returns (uint256) {
        return favoriteNumber;
    }

    function addperson(string memory _name, uint256 _favoriteNumber) public {
        people.push( person(_name, _favoriteNumber));
        nameTofavoriteNumber[_name] = _favoriteNumber;
    }
}
contract simplecontract2 {}
contract simplecontract3 {}