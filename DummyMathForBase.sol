// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

contract BasicMath {
    function adder (uint _a,uint _b) external pure returns (uint sum,bool error){
        if(_a < type(uint).max && _b < type(uint).max){ 
            return (_a + _b,false);
        } else {
            return (0,true);
        }
    }

    function subtractor (uint _a, uint _b) external pure returns (uint difference, bool error) {
        if(_a < type(uint).max && _b < type(uint).max){
            if (_a > _b) {
                return (_a - _b,false);
            } else {
                return (0,true);
            }
        } else {
            return (0,true);
        }
    }
}
