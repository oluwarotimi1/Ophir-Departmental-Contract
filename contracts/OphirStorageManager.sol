// SPDX-License-Identifier:MIT

pragma solidity 0.8.7;

import "./OphirDepartmentStorage.sol";

contract departmentmanager {

    OphirDepartments[] public ODepartmentArray;
    
    function createdepartmentmanager() public {
        OphirDepartments ODepartment = new OphirDepartments();

        ODepartmentArray.push(ODepartment);
    }

   function odstore (uint256 _ODepartmentIndex, uint256 _ODepartmentsNumber) public{

       OphirDepartments ODepartment = ODepartmentArray[_ODepartmentIndex];

       ODepartment.storeNumOfWorkers(_ODepartmentsNumber);
   }

        //Fuction to get the number of stored workers below
        
   function scwGet(uint256 _ODepartmentIndex) public view returns (uint256){
       

       OphirDepartments ODepartment = ODepartmentArray[_ODepartmentIndex];

       return ODepartment.getStoredNumOfWorkers();
   }


}