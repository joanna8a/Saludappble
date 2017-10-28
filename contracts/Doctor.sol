pragma solidity ^0.4.2;

contract Doctor is Stakeholder{

    string speciality;

    struct MedicalEntry{
    address author;
    uint date;
    string body;
    }

    mapping(address =>MedicalEntry) public medicalEntries;

    function setSpeciality(string _speciality) onlyOwner{
        speciality = _speciality;
    }

    function getSpeciality() constant returns (string)
    {
        return this.speciality;
    }

    function registerToMedicalEntry(address _medicalAddress, string _body) onlyOwner{
        medicalEntries[_medicalAddress]=MedicalEntry({
        author: this,
        date: now,
        body: _body
        });


    }

}