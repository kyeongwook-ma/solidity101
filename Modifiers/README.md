# Modifiers
특정 function 에 대하여 접근자를 제한할 수 있는 기능

### 예제

```javascript
modifier onlyOwner{
  if (msg.sender != serviceProvider){
    throw;   
  }else{
    _;
  }
}

function kill() onlyOwner{
  suicide(serviceProvider);
}
```
> + `if (msg.sender != serviceProvider)`: exception을 throw 하고 transaction 발생 이전으로 되돌림
> + `else`: `_` 이 function의 코드로 채워짐 (`빈 칸을 채우시오`와 같은 개념)

function의 argument를 넘겨줘야 하는 경우 아래와 같이 코드를 작성해야 함.
```javascript
modifier onlyOwner(address ADDR){
  if (msg.sender != ADDR){
    throw;   
  }else{
    _;
  }
}

function kill(address ADDR) onlyOwner(ADDR){
  suicide(ADDR);
}
```
