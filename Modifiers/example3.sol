pragma solidity ^0.4.2;
contract Stakeholder{

	address public serviceProvider;

	function Stakeholder(){
		serviceProvider = msg.sender;
	}

  function registerStakeholder(){

  }

  function registerValueActivity(){

  }

  function update(){

  }


	modifier onlyOwner{
		if (msg.sender != serviceProvider){
			throw;
		}else{
			_;
		}
	}

  // onlyOwner modifier 를 적용해서 비정상적 접근 제한
	function kill() onlyOwner{
		suicide(serviceProvider);
	}
}

contract Customer is Stakeholder{

	string public userName;

	function Customer(string _name){
		userName = _name;
	}

  function valueActivity(){

  }

}
