
<!-- pattern_name: Decorator -->

## **1. 패턴 이름 (Pattern Name)**

  

**Decorator (데코레이터) 패턴**

한 줄 소개: 객체에 **기능을 동적으로 추가**할 수 있도록 구성 요소를 감싸는 **구조적 디자인 패턴**

## **2. 문제와 해결 시나리오 (Problem & Use Case)**

-   **문제**: 클래스 상속 없이 기능을 확장하려면, 변경 없이 부가 기능을 추가할 수 있는 구조가 필요
    
-   **적용 상황 예시**:
    
    -   **UI 컴포넌트 효과 덧붙이기**: TextView → Shadow → Border → Padding 등 중첩 스타일 적용
        
    -   **무기 기능 추가**: 기본 무기에 조준경, 소음기, 탄창 기능을 순차적으로 감싸며 부가 기능 확장
        
    -   **로깅/인증 처리**: 핵심 비즈니스 로직 전후로 인증 확인, 로그 기록 등을 삽입
        
    

## **3. 구조 (Structure)**

![데코레이터 구조](https://github.com/hyunwook13/Pattern/blob/main/assets/decorator.jpeg)


## 4. 참여자 (Participants)

| 단계    | 클래스 / 역할             | 설명 |
|---------|---------------------------|------|
| 1단계   | `Component` (인터페이스)  | 공통 인터페이스 정의 (`execute()`)<br>클라이언트는 이 타입을 기준으로만 사용 |
| 2단계   | `ConcreteComponent`       | 실제 기본 기능을 구현하는 클래스<br>`execute()`의 핵심 동작 제공 |
| 3단계   | `BaseDecorator`           | `Component`를 내부에 보관 (`wrappee`)<br>인터페이스를 구현하지만 실제 기능은 `wrappee`에 위임 |
| 4단계   | `ConcreteDecorator`       | `BaseDecorator`를 상속<br>`execute()`를 오버라이드하여 부가 기능(`extra()`) 추가 |
| 5단계   | `Client`                  | `Component` 인터페이스만 바라보며<br>객체가 데코레이터인지 실제 컴포넌트인지 모른 채 `execute()` 호출 |

## **5. 예제 코드 (Sample Code)**

  

[예시 코드](https://github.com/hyunwook13/Pattern/tree/main/Example/Decorator)

----------

## **6. 장점 (Pros)**

-   **기능 확장 유연성**: 상속 없이 동적으로 기능을 조합할 수 있음
    
-   **OCP 원칙 준수**: 기존 코드를 수정하지 않고 기능을 추가할 수 있음
    
-   **런타임 조합**: 다양한 조합을 실행 시점에 유연하게 구성 가능
    


## **7. 단점 (Cons)**

-   **구조 추적 어려움**: 중첩 구조가 깊어지면 디버깅이 어려움
    
-   **많은 클래스 수**: 데코레이터마다 별도 클래스가 필요
    
-   **조합 순서 중요성**: 장식 순서에 따라 동작이 달라질 수 있음
    


## **8. 결과 (Consequences)**

-   **기존 기능과 독립적인 부가 기능 추가 가능**
    
-   **객체 구조 변경 없이 확장 가능 → 유지보수성 향상**
    
-   **데코레이터 중첩을 통해 강력한 조합력 제공**
    

## **9. 변형 및 대안 (Variations & Alternatives)**

-   **Transparent Decorator**: 모든 메서드를 인터페이스에 노출
    
-   **Semi-Transparent Decorator**: 일부 메서드는 내부에서만 호출
    
-   **전략 패턴과 조합**: 장식 행동을 전략으로 분리하여 더 유연하게 확장
    

## **10. 구현 시 주의사항 (Implementation Tips)**

-   **SRP 분리**: 객체 조립은 외부에서 구성 (Factory/Builder 사용)
    
-   **인터페이스 일관성 유지**: 모든 데코레이터는 공통 Component를 구현해야 함
    
-   **기능이 아닌 조합 자체에 대한 책임 분리**: 데코레이터는 구성 정보에 관여하지 않도록
    


## **11. 관련 패턴 (Related Patterns)**

-   **Composite**: 여러 객체를 계층적으로 구성할 때 사용 (비슷한 구조지만 목적이 다름)
    
-   **Strategy**: 내부 알고리즘을 동적으로 바꾸는 구조
    
-   **Adapter**: 기존 인터페이스를 다른 인터페이스로 바꾸는 역할
   
