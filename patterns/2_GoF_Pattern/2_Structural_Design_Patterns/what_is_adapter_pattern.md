<!-- pattern_name: Adapter -->

## 1. 패턴 이름 (Pattern Name)

**Adapter (어댑터) 패턴**  
한 줄 소개: 서로 호환되지 않는 인터페이스를 가진 클래스들을 연결하여 함께 사용할 수 있도록 변환해 주는 구조적 디자인 패턴

## 2. 문제와 해결 시나리오 (Problem & Use Case)

-   문제: 기존 코드(레거시 라이브러리나 다른 모듈)와 새로운 코드 간 인터페이스가 달라 직접 통합이 어려울 때
    
-   적용 상황 예시:
    
    -   외부 결제 SDK(Stripe, PayPal)와 공통 결제 인터페이스를 맞춰야 할 때
        
    -   다양한 이미지 로더(Kingfisher, SDWebImage)를 하나의 추상화된 API로 사용하고 싶을 때
        

## 3. 구조 (Structure)

-   클래스 어댑터:
    ![클래스 어댑터 구조](https://github.com/hyunwook13/Pattern/blob/main/assets/class_adapter.jpeg)


-   객체 어댑터:
    ![객체 어댑터 구조](https://github.com/hyunwook13/Pattern/blob/main/assets/object_adapter.jpeg)

    

## 4. 참여자 (Participants)

| 단계 | 설명 | 참여자 |
|------|------|--------|
| 1단계 | 클라이언트가 기대하는 인터페이스 정의 | `Client Interface` |
| 2단계 | 기존 서비스 클래스 정의 (호환되지 않는 인터페이스) | `Service` |
| 3단계 | 서비스 클래스를 감싸는 어댑터 클래스 구현 | `Adapter` |
| 4단계 | 클라이언트는 어댑터를 통해 서비스에 접근 | `Client` |

## 5. 예제 코드 (Sample Code)
[예시 코드](https://github.com/hyunwook13/Pattern/tree/main/Example/Adapter "예시 코드") 

## 6. 장점 (Pros)

-   호환되지 않는 인터페이스를 변경 없이 재사용할 수 있다
    
-   Adaptee 구현을 숨기고 클라이언트 코드의 결합도를 낮춘다
    
-   런타임에 Adaptee 인스턴스를 쉽게 교체 가능하다
    

## 7. 단점 (Cons)

-   단순 위임 코드가 반복되어 클래스 수가 늘어날 수 있다
    
-   위임 로직에 추가 처리가 많아지면 어댑터가 무거워질 수 있다
    

## 8. 결과 (Consequences)

-   시스템 확장 시 새로운 Adaptee를 어댑터를 통해 손쉽게 통합 가능
    
-   결합도를 낮추어 유지보수와 테스트가 용이해진다
    

## 9. 변형 및 대안 (Variations & Alternatives)

-   클래스 어댑터: 다중 상속을 지원하는 언어에서 상속으로 구현
    
-   프로토콜 지향 어댑터: Swift 프로토콜 익스텐션 활용
    
-   제네릭 어댑터: Generic 타입 매개변수로 다양한 Adaptee 처리
    

## 10. 적용 시 주의사항 (Implementation Tips)

-   Injection을 통해 추상 타입(프로토콜) 주입으로 결합도 더욱 낮추기
    
-   어댑터는 단순 위임에 집중하고, 로깅이나 에러 핸들링 등 부가 기능은 Decorator나 Proxy 패턴 사용 고려
    

## 11. 관련 패턴 (Related Patterns)

-   Decorator: 객체에 기능을 동적으로 추가
    
-   Facade: 복잡한 서브시스템을 단순화
