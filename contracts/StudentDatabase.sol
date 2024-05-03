// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract StudentDatabase {
    struct Student {
        string Name;
        string Id;
        string Dept;
    }

    mapping (string => Student) private StudentDb;

    function addStudent(string memory _Id, string memory _Name, string memory _Dept) public {
        StudentDb[_Id] = Student(_Name, _Id, _Dept);
    }

    function getStudent(string calldata _Id) public view returns (Student memory) {
        return  StudentDb[_Id];
    }
}

// 0x7eC0578FeF225A53a7A2Db9A098d27A0340EeedA