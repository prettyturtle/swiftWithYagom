// 4.5 열거형

/*
 열거형은 연관된 항목을 묶어서 표현할 수 있는 타입
 열거형에서 정의한 항목 값 외에는 추가/수정 불가
 
 - 제한된 선택지
 - 정해진 값 외에 다른 값을 받기 싫을 때
 - 예상된 입력 값이 한정되어 있을 때
 
 */


// - 4.5.1 열거형 선언
enum School {
    case primary // 유치원
    case elementary // 초등
    case middle // 중등
    case high // 고등
    case college // 대학
    case university // 대학교
    case graduate // 대학원
}

// 한줄로 표현 가능
enum School2 {
    case primary, elementary, middle, high, college, university, graduate
}



// - 열거형 변수의 생성 및 값 변경
var highestEducationLevel: School = School.university

// 위와 같은 표현
//var highestEducationLevel: School = .university

// 변경 시, 같은 열거형 내부 항목으로만 변경 가능
highestEducationLevel = .graduate





// - 4.5.2 원시값

/*
 열거형은 각 항목 자체로도 값이지만 항목의 원시값(Raw Value)를 가질 수 있다
 열거형 이름 오른쪽에 타입을 명시
 원시값을 사용하고 싶으면 `열거형.rawValue`
 */

enum School3: String {
    case primary = "유치원"
    case elementary = "초등학교"
    case middle = "중학교"
    case high = "고등학교"
    case college = "대학"
    case university = "대학교"
    case graduate = "대학원"
}

let highestEducationLevel2: School3 = School3.university

print("저의 최종학력은 \(highestEducationLevel2.rawValue) 졸업입니다.")
// 저의 최종학력은 대학교 졸업입니다

enum WeekDays: Character {
    case mon = "월", tue = "화", wed = "수", thu = "목", fri = "금", sat = "토", sun = "일"
}

let today: WeekDays = WeekDays.fri
print("오늘은 \(today.rawValue)요일입니다.")    // 오늘은 금요일입니다.
