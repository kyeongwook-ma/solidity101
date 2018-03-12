# Solidity 구문

### 예제

```javascript
contract Stakeholder{

  // public 주소 변수
	address public serviceProvider;

  // 생성자
	function Stakeholder(){
    // msg 는 Solidity 에서 빌트인으로 생성된 변수, msg.sender 는 이 contract를 호출한
		// 대상의 주소값을 return 해준다.
		serviceProvider = msg.sender;
	}

  function registerStakeholder(){
  }

  function registerValueActivity(){
  }

  function update(){
  }

  // 해당 contract 의 잔여 ether를 serviceProvider에게 돌려줌
	function kill(){
		suicide(serviceProvider);
	}
}

```

기존의 프로그래밍 언어인 c, javascript, go와 유사함.
변수, 생성자, 함수 등으로 구성
