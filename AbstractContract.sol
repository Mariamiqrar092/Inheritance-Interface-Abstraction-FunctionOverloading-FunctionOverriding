// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

abstract contract AbstractStudent {
    function getStudent(uint _index) public view virtual returns (uint, string memory, uint, uint, uint, string memory);
    function isStudentPass(uint _index) public view virtual returns (bool);
}

contract StudentRecord is AbstractStudent {
    uint[] private studentId;
    string[] private studentName;
    uint[] private studentClass;
    uint[] private studentAge;
    uint[] private studentMarks;

    function AddStudent(uint _id, string memory _name, uint _class, uint _age, uint _marks) public {
        studentId.push(_id);
        studentName.push(_name);
        studentClass.push(_class);
        studentAge.push(_age);
        studentMarks.push(_marks);
    }

    function getStudent(uint _index) public view override returns (uint, string memory, uint, uint, uint, string memory) {
        require(_index < studentId.length, "Index not available");
        string memory result = isStudentPass(_index) ? "Pass" : "Fail";
        return (studentId[_index], studentName[_index], studentClass[_index], studentAge[_index], studentMarks[_index], result);
    }

    function isStudentPass(uint _index) public view override returns (bool) {
        require(_index < studentId.length, "Index not available");
        return studentMarks[_index] >= 33;
    }
}