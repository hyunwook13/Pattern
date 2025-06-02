<!-- pattern_name: Bridge -->

## **1. 패턴 이름 (Pattern Name)**

  

**Bridge (브릿지) 패턴**

한 줄 소개: **기능 계층과 구현 계층을 분리**하여 각각 독립적으로 확장 가능하게 만드는 구조적 디자인 패턴


## **2. 문제와 해결 시나리오 (Problem & Use Case)**

-   **문제**: 기능과 구현이 강하게 결합되어 있으면 확장이 어려워짐. 특히 다양한 기능과 플랫폼 조합이 필요한 경우, 조합 수만큼 클래스를 생성해야 함 → 폭발적 클래스 증가.
    
-   **적용 상황 예시**:
    
    -   **리모컨과 기기 제어**: TV, Radio 같은 다양한 디바이스를 공통 리모컨 인터페이스로 제어
        
    -   **UI Theme & Component**: 다양한 UI 테마와 위젯을 분리하여 테마별 컴포넌트를 독립적으로 조합
        
    -   **iOS/Android의 공통 기능 추상화**: 기능은 동일하지만 플랫폼 구현은 다른 경우
        

## **3. 구조 (Structure)**

![브리지 구조](https://github.com/hyunwook13/Pattern/blob/main/assets/bridge.jpeg)
## **4. 참여자 (Participants)**


단계   | 설명                                                   | 참여자
------|--------------------------------------------------------|-----------
1단계 | 기능 계층의 최상위 인터페이스 정의                        | Abstraction
2단계 | 기능 계층의 구체 기능 클래스                              | RefinedAbstraction
3단계 | 구현 계층의 공통 인터페이스 정의                          | Implementation
4단계 | 구현 계층의 구체 클래스 구현                              | ConcreteImplementation
5단계 | 기능 계층은 구현 계층을 포함(composition)하고 위임 호출       | Abstraction → Implementation
6단계 | 클라이언트는 기능 계층(Abstraction) 인터페이스로만 접근        | Client

## **5. 예제 코드 (Sample Code)**

  

🔗 [예시 코드](https://github.com/hyunwook13/Pattern/tree/main/Example/Bridge)


## **6. 장점 (Pros)**

-   **기능과 구현의 분리**: 독립적인 확장 가능
    
-   **클래스 수 감소**: 조합 클래스 폭발 방지 (기능 × 구현 → 기능 + 구현)
    
-   **의존성 역전(DIP)**: Abstraction이 구현 세부 사항에 의존하지 않음
    

## **7. 단점 (Cons)**

-   **구조 복잡도 증가**: 단순한 경우 오히려 과한 분리
    
-   **초기 설계 부담**: 구현 계층을 추상화해야 하므로 설계 난이도 상승
    

## **8. 결과 (Consequences)**

-   **유연성 향상**: 기능과 구현의 독립적 확장
    
-   **결합도 낮춤**: 각 계층의 변경이 서로에게 영향을 주지 않음
    

## **9. 변형 및 대안 (Variations & Alternatives)**

-   **RefinedAbstraction 확장**: 기능 계층을 계층화하여 복잡한 기능 모델링
    
-   **Implementor에 상태 추가**: 예를 들어, 상태 기반 구현 (e.g. on/off/muted)
    
-   **Abstract Factory 패턴과 결합**: 다양한 구현 객체 생성에 사용
    


## **10. 구현 시 주의사항 (Implementation Tips)**

-   **구현 계층은 프로토콜/추상클래스로 설계**: SRP 유지
    
-   **RefinedAbstraction에 너무 많은 로직 몰리지 않게 분산**
    
-   **Bridge는 양방향 참조 금지**: 구현 계층은 Abstraction을 몰라야 함
    


## **11. 관련 패턴 (Related Patterns)**

-   **Adapter**: 기존 클래스를 새 인터페이스에 맞추기 위한 패턴
    
-   **Strategy**: 구현을 런타임에 교체하는 전략적 접근
    
-   **Abstract Factory**: 구현 계층을 팩토리로 생성할 수 있게 함
