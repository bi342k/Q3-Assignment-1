pragma solidity ^0.8.0;

contract ParentVehicle {
    
    string startMsg;
    string accelerateMsg;
    string stopMsg;
    string serviceMsg;
    
    function start() public returns(string memory){
        startMsg = "The Vehicle has just Started";
        return startMsg;
    }
    
    function accelerate() public returns(string memory){
        accelerateMsg = "The Vehicle has just Accelerated";
        return accelerateMsg;
    }
    
    function stop() public returns(string memory){
        stopMsg = "The Vehicle has just Stopped";
        return stopMsg;
    }
    
    function service() public returns(string memory){
        serviceMsg = "The Vehicle is being Serviced";
        return serviceMsg;
    }
    
}
