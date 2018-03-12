# Inheritance
OOP(Object Oriented Programming)의 상속 개념

### Explanation
유연성과 유지보수를 용이하게 하기 위하여 사용. contract의 재사용성을 향상시켜 줌

```javascript
contract Stakeholder{

	address public serviceProvider;

	function Stakeholder(){
		serviceProvider = msg.sender;
	}

	function kill() {
		suicide(serviceProvider);
	}
}

contract Customer is Stakeholder{

	string public userName;

	function Customer(string _name){
		userName = _name;
	}

  function shop(){
  }

}
```

위의 예제에선, `Stakeholder` 와 `Customer` contract를 생성.
`Customer` 에서만 사용가능한 function 을 정의
