// SPDX-License-Identifier:MIT

pragma solidity <=0.8.7;

contract OphirDepartments{

    mapping (string=>uint256) public nameOfDepartmentsToNumOfWorkers;

    string nameOfDepartments;

    uint256 numOfWorkers;

    struct OphirDepartmentsAndWorkers{
        string nameOfDepartments;
        uint256 numOfWorkers;
    }

    OphirDepartmentsAndWorkers [] public ophirDeparmentsAndWorkers;


    function storeNameOfDepartments(string memory _nameOfDepartments) public virtual {
        nameOfDepartments = _nameOfDepartments;
    }

    function storeNumOfWorkers(uint256 _numOfWorkers) public virtual {
        numOfWorkers = _numOfWorkers;
    }

     //Function "getStoredNumOfWorkers()" below returns dynamic data type which also does same function as the above fucntion

    function getStoredNumOfWorkers() external view returns (uint256){
        return numOfWorkers;
    } 



    //Function to store ophir departments and num of workers in sequence

    function OpirGrouped (string memory _nameOfDepartments, uint256 _numOfWorkers) external{
        OphirDepartmentsAndWorkers memory newOphirGrouped = OphirDepartmentsAndWorkers ({nameOfDepartments: _nameOfDepartments, numOfWorkers:_numOfWorkers});
        ophirDeparmentsAndWorkers.push(newOphirGrouped);
        nameOfDepartmentsToNumOfWorkers[_nameOfDepartments] = _numOfWorkers;
    }

}