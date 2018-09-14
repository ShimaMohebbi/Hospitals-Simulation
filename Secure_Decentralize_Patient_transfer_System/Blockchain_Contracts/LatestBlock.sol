pragma solidity ^0.4.24;

contract LatestBLock{

    address public latest_block;
    address[] hospital_address_tab;
    mapping(address => bool) hospital_address;

    constructor(address[] new_hospital_address_tab) public {
        hospital_address_tab=new_hospital_address_tab;
        for(uint16 i=0;i<hospital_address_tab.length;i++){
            hospital_address[hospital_address_tab[i]]=true;
        }
    }

    function set_new_address(address new_latest_block) public {
        require(hospital_address[msg.sender]==true);
        latest_block=new_latest_block;
    }

    function get_new_address() public constant returns(address) {
       return latest_block;
    }

}