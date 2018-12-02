pragma solidity ^0.4.16;


contract Fibonacci {
    uint currentResult;
    event LogFibResult(uint result);
    
    function Fibonacci() public{
        currentResult = 0;
    }
    
    
	function calculate(uint position) returns (uint result) {
		/* Carry out calculations to find the nth Fibonacci number */
		result = 0;
		
		//```F(n) = F(n-1) + F(n-2)```
        //where F(0) = 0 and F(1) = 1
            if (1 == position)
                result = 1;
            else if (position > 1)
                result = position*2 -3;
                
        LogFibResult(result);
        
        if (currentResult != result)
            currentResult = result;
        
        return result;
	}

	/* Add a fallback function to prevent contract payability and non-existent function calls */
	function (){
	    throw;
	}
}
