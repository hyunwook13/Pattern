# 디자인 패턴 문서 템플릿

## 1. 패턴 이름 (Pattern Name)

**한 줄 소개**:

>

## 2. 문제와 해결 시나리오 (Problem & Use Case)

* **문제**:
* **적용 상황 예시**:

  * 예: "이런 상황에서는 xxx 문제가 발생한다..."

## 3. 구조 (Structure)

* **클래스 다이어그램** 또는 컴포넌트 관계 설명

```plaintext
[ClassA]<>-----[ClassB]
```

## 4. 참여자 (Participants)

| 역할 (Role) | 책임 (Responsibility) |
| --------- | ------------------- |
| ClassA    | 패턴의 핵심 기능 A         |
| ClassB    | 보조 작업 B             |

## 5. 예제 코드 (Sample Code)

```swift
// Swift 예시
final class Example {
    static let shared = Example()
    private init() {}
    
    func doSomething() {}
}
```

## 6. 장점 (Pros)

*
*

## 7. 단점 (Cons)

*
*

## 8. 결과 (Consequences)

*
*

## 9. 변형 및 대안 (Variations & Alternatives)

*

## 10. 적용 시 주의사항 (Implementation Tips)

*

## 11. 관련 패턴 (Related Patterns)

*

## 12. 실제 사용 사례 (Known Uses)

*
