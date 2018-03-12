## Variables
mapping, struct, event 등의 데이터 타입

- Event:
특정 API의 실행결과에 대한 정보 제공

```javasctipt
event trigger();
function callback(){
  trigger();
}
```
- Mapping:

```javasctipt
mapping (address => uint) balance;
```
- Struct

```javasctipt
struct info{
  bool active;
  string name;
  uint256 balance;
}
```
