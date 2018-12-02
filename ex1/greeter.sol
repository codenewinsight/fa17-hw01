pragma solidity ^0.4.16;


contract Greeter {
	/* Add one variable to hold our greeting */
	string greeting;
	int256 numGreeting;

	function Greeter(string _greeting) public {
		/* Write one line of code for the contract to set our greeting */
		greeting = _greeting;
		numGreeting = 0;
	}

	function greet() constant returns (string)  {
	    numGreeting++;
		/* Write one line of code to allow the contract to return our greeting */
		return greeting;
	}

	/* Add a fallback function to prevent contract payability and non-existent function calls */
	function (){
	    throw;
	}
}
