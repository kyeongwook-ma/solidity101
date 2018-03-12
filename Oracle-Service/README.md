# Oracle Service
외부 데이터를 가져올 때 사용하는 서비스

### Explanation

API 를 사용해서 데이터를 가져올 때, 모든 노드과 그 결과를 수신할 때 까지 블록체인은 이 operation을 반복적으로 수행함.

그러나 일시적으로 API 가 사용이 불가능하거나 쿼리 변경 등의 이유로 전체 네트워크에 동기화 시키기가 힘듬.

Oracle 서비스는 이러한 문제를 해결하기 위해 외부의 데이터를 수신한 후 각 노드에 복사된 데이터를 전송.

Oraclize, TinyOracle etc. 등 다양한 oracle 서비스가 존재.

![alt tag](https://docs.oraclize.it/images/flowchart.png)
Note: private net 에서 사용하기 위해서 `Ethereum-Bridge` 를 이용해야 함.

참조 :
  - https://docs.oraclize.it/
  - Oraclize api https://dev.oraclize.it/api.sol
