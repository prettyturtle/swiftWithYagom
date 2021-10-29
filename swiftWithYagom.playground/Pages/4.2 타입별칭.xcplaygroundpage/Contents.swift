// 4.2 타입 별칭

/*
 이미 존재하는 데이터 타입에
 임의로 다른 이름(별칭)을 부여할 수 있다.
 */

typealias MyInt = Int
typealias YourInt = Int
typealias MyDouble = Double

let age: MyInt = 100 // MyInt는 Int의 별칭이다
var year: YourInt = 2080 // YourInt는 Int의 별칭이다

year = age // MyInt와 YourInt는 모두 Int의 별칭이므로 같은 타입으로 취급한다

let month: Int = 7 // 기존의 이름도 물론 사용 가능
let percentage: MyDouble = 99.9 // 다른 자료형도 물론 별칭 사용 가능
