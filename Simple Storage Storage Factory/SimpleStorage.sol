// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;     // Stating our version

contract SimpleStorage {
    //Basic types: Boolean, unit, int, address, bytes
    uint256 myFavoriteNumber; // doing this default FavoriteNumber to 0

    //uint256[] listOfFavoriteNumbers; //uintlistoffavoritenumbers
    
    // 0  1 2   empieza por 0
    //[77,3,9]

    struct person{
        uint256 favoriteNumber;
        string name;
    }

    // person public Pat = person(7,"pat");
    // person public jon = person(7,"jon");
    // person public juan = person(7,"juan");

    //Dynamic array, it can grow or shrink
    person[] public  listOfPeople; //[]

    // mapping is very similar to a dictionary
    mapping(string=> uint256) public nameToFavoriteNumber;

    //StaticArray just add a number inside the [3]
    // virtual added so the function can be overrirded
    function store(uint256 _FavoriteNumber) public virtual {
        myFavoriteNumber = _FavoriteNumber;
    }


    // View and pure, doesnt spend gas, view reads from state
    function retrieve() public view returns (uint256){
        return myFavoriteNumber;
    }
 //


    //calldata, memory, storage

    // calldata and memory are temporary variables, memory can be modify
    // storage is permanent data, so it cannot be inside a function
    // structs, mappings and arrays need memory keyword, string is an array of bytes
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(person(_favoriteNumber,_name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}