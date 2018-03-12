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

	function kill() {
		suicide(serviceProvider);
	}
}

// Stakeholder 상속, Stakeholder 가 가진 변수나 함수에 접근 가능
contract Customer is Stakeholder{

	string public userName;

	function Customer(string _name){
		userName = _name;
	}

  function valueActivity(){

  }

}
