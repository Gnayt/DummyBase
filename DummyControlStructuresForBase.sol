// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

contract ControlStructures {
    function fizzBuzz (uint _number) external pure returns (string memory) {
        if(_number % 5 == 0){
            if(_number % 3 == 0) {
                return ("FizzBuzz");
            } else {
                return ("Buzz");
            }
        } else if(_number % 3 == 0){
            return ("Fizz");
        }
        return ("Splat");
    }
    error AfterHours(uint _time);
    function doNotDisturb (uint _time ) external pure returns (string memory) {
        assert(_time < 2400);
        if (_time > 2200 || _time < 800) {
            revert AfterHours(_time);
        } else {
            if(_time <= 1199) {
                return 'Morning!';
            } else if (_time <= 1259) {
                revert('At lunch!');
            } else if( _time >= 1300 && _time <= 1799) {
                return 'Afternoon!';
            } else {
                return 'Evening!';
            }
        }
    }
}
