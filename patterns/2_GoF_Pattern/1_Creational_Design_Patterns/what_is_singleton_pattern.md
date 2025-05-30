<!-- pattern_name: Singleton -->

# Singleton Pattern

## 1. 패턴 이름 (Pattern Name)

**한 줄 소개**: Singleton 패턴은 단 하나의 인스턴스만 존재하도록 보장하고, 전역 접근점을 제공하는 생성 패턴이다.

## 2. 문제와 해결 시나리오 (Problem & Use Case)

* **문제**: 애플리케이션 전역에서 공유해야 하는 자원을 여러 곳에서 각각 생성하면 중복 생성과 상태 불일치 문제가 발생한다.
* **적용 상황 예시**:

  * 로그 관리: 여러 컴포넌트가 동일한 로거 인스턴스를 사용해야 할 때
  * 설정 관리: 앱 전체 설정 데이터를 한 곳에서 읽고 쓰도록 할 때
  * DB 커넥션 풀: 공유 데이터베이스 연결을 하나의 풀로 관리할 때

## 3. 구조 (Structure)
![구조](https://github.com/hyunwook13/Pattern/blob/main/assets/singleton.jpeg)

1. Client 객체가 Singleton의 `getInstance()` 메소드에 전역적으로 접근하여 기능을 호출한다.
2. 객체가 존재한다면 instance 변수의 값을 반환한다.
3. 없다면 객체를 생성한 후 반환한다.

## 4. 참여자 (Participants)



| 역할        | 책임                                           |
| --------- | -------------------------------------------- |
| Singleton | 단일 인스턴스를 생성·관리하며 전역 접근점을 제공한다.               |
| Client    | `Singleton.shared`를 통해 인스턴스에 접근하여 서비스를 호출한다. |

---

## 5. 예제 코드 (Sample Code)

```swift
final class Singleton {
    static let shared = Singleton()    // 1) 단일 인스턴스 선언
    private init() {}                 // 2) 외부 생성 차단

    func doWork() {
        print("Singleton is working")
    }
}

// 사용 예시
Singleton.shared.doWork()
```

## 6. 장점 (Pros)

* 공유 리소스 접근을 중앙에서 제어할 수 있다.
* 생성 비용이 큰 객체를 최초 한 번만 생성해 재사용함으로써 메모리 절약과 속도 향상을 가져온다.
* 전역 변수보다 생성 시점과 접근 제어가 명확하다.
* 지연 초기화(Lazy Initialization)로 불필요한 리소스 낭비를 방지한다.
* 로그 관리, 설정, DB 커넥션 풀 등 공유 자원 관리에 적합하다.

## 7. 단점 (Cons)

* 전역 상태로 동작해 예측 불가능한 사이드 이펙트를 발생시킬 수 있다.
* 단일 책임 원칙(SRP)을 위배하여 유지보수가 어려워진다.
* 암묵적 의존성으로 인해 테스트와 의존성 주입(DI)이 복잡해진다.
* 인스턴스 생명주기를 관리할 수 없어 메모리 누수 위험이 있다.
* 확장성과 병행성 처리에서 유연성이 부족하다.
* 전역 변수처럼 동작하여 코드 결합도가 높아지고 복잡도가 증가한다.

## 8. 결과 (Consequences)

* 전역 상태 사용으로 코드 결합도가 증가하여 유지보수가 어려워진다.
* 객체 생성 비용 절감으로 성능이 향상된다.
* 테스트 및 코드 확장 시 의존성 관리 복잡도가 증가한다.

## 9. 변형 및 대안 (Variations & Alternatives)

* **의존성 주입(Dependency Injection)**: 외부에서 인스턴스를 주입해 의존성을 명시적으로 관리한다.
* **팩토리 패턴(Factory)**: 필요에 따라 인스턴스 생성 방식을 캡슐화한다.
* **멀티톤 패턴(Multiton)**: 키(key)별로 하나의 인스턴스를 관리한다.

## 10. 적용 시 주의사항 (Implementation Tips)

* `static let` 초기화는 Swift에서 스레드 안전하게 처리되지만, 멀티스레드 환경에서 추가 동기화가 필요한 경우를 고려한다.
* 클래스가 SRP를 위반하지 않도록 인스턴스 생성 로직과 비즈니스 로직을 분리한다.
* 테스트용 목(mock) 대체를 위해 프로토콜 기반 추상 레이어를 설계한다.

## 11. 관련 패턴 (Related Patterns)

* 팩토리(Factory)
* 의존성 주입(Dependency Injection)
* 멀티톤(Multiton)

## 12. 실제 사용 사례 (Known Uses)

* `UserDefaults.standard`
* `URLSession.shared`
* `NotificationCenter.default`

### 📎 참고 링크

* [위키백과 - 싱글턴 패턴](https://ko.wikipedia.org/wiki/%EC%8B%B1%EA%B8%80%ED%84%B4_%ED%8C%A8%ED%84%B4)
* [Refactoring Guru - Singleton 패턴](https://refactoring.guru/ko/design-patterns/singleton)

