pragma solidity ^0.4.2;

contract Patient is Stakeholder{

    address public medicalHistoryAddress;

    function getMedicalHistoryAddress() constant returns (address)
    {
        return this.medicalHistoryAddress;
    }

}