pragma solidity ^0.8.0;

contract Vehicle {
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
    
    function getService() public view returns(string memory){
            return serviceMsg;
    }
    
    function setService() public virtual returns(string memory){
            serviceMsg = "The Vehicle is being Serviced";
            return serviceMsg;
    }
    
}

contract Car is Vehicle{
    function setService() public override returns(string memory){
            serviceMsg = "The Car is being Serviced";
            return serviceMsg;
    }

}

contract Truck is Vehicle{
    function setService() public override returns(string memory){
            serviceMsg = "The Truck is being Serviced";
            return serviceMsg;
    }
}

contract MotorCycle is Vehicle{
     function setService() public override returns(string memory){
            serviceMsg = "The MotorCycle is being Serviced";
            return serviceMsg;
    }
}

contract Vehicles {
    function VehicleMsg() public returns(string memory){
        // MotorCycle myMessage = new MotorCycle();
        Truck myMessage = new Truck();
        // Car myMessage = new Car();
        return myMessage.setService();
        
    }
}