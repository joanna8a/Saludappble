pragma solidity ^0.4.15;
contract Saludappble {
    struct Doctor{

        string dDocument;
        string public dName;
        string specialty;
        address public dAddress;
      }
    struct Patient{
            string pId;
            string public pName;
            address public pAddress;
      }
    struct MedicalEntry{
        address author;
        string date;
        string body;
    }

    mapping (uint => Patient) patients;
    public uint pCount = 0;
    mapping (uint => Doctor) doctors;
    public uint dCount = 0;

    modifier onlyOwner

    function create Patient(string id, string name){

        patients[pCount] = Patient(id, name);
        pCount++;

    }

    function create Doctor(string id, string name, string speciality){

            doctors[dCount] = Doctor(id, name, speciality);
            dCount++;

    }



}