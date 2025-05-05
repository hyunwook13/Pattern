# **Abstract Factory**

  

## **1. 패턴 이름 (Pattern Name)**

  

**Abstract Factory Pattern**

  

> 관련된 객체들을 구상 클래스에 의존하지 않고 일관되게 생성할 수 있도록 해주는 생성 패턴

## **2. 문제와 해결 시나리오 (Problem & Use Case)**

-   **문제**:
    
    제품군에 해당하는 여러 객체(Button, Label 등)를 일관성 있게 생성하고 싶지만,
    
    클라이언트 코드가 구체적인 클래스에 의존하게 되면 변경과 테스트가 어려워진다.
    
-   **적용 상황 예시**:
    
    -   iOS 앱에서 **테마(light/dark)**에 따라 다양한 UI 컴포넌트를 다르게 생성해야 함
        
    -   **플랫폼(macOS vs iOS)**이나 **지역화(영문 vs 한글)**에 따라 관련된 객체를 묶어 관리하고자 할 때
        
    -   테스트 환경/운영 환경에 따라 일관된 mock 객체 세트를 주입할 때
        
    
## **3. 구조 (Structure)**

![구조](https://github.com/hyunwook13/Pattern/blob/main/assets/abstract_factory.jpeg)




## 4. **구현 흐름 (참여자 중심 구성)**
| 단계 | 설명 | 참여자 |
|------|------|--------|
| 1단계 | 제품 인터페이스 추상화 | `AbstractProductA`, `AbstractProductB` |
| 2단계 | 제품 생성 인터페이스 추상화 | `AbstractFactory` |
| 3단계 | 구체 제품군 + 구체 팩토리 구현 | `ConcreteFactoryX`, `ConcreteProductAX/BX` |
| 4단계 | 클라이언트는 추상 팩토리에만 의존 | `Client` |

## 5. 예시 코드
[예시 코드](https://github.com/hyunwook13/Pattern/tree/main/Example/Factory "예시 코드") 

## **6. 장점 (Pros)**

-   제품군 간의 **일관성 유지**가 쉬움 (e.g., Light 버튼 + Light 라벨)
    
-   구체 클래스와 **결합도 낮음** → 유연성 및 테스트 용이
    
-   새 제품군이 생겨도 기존 클라이언트 코드 수정 없이 확장 가능 (**OCP 만족**)
    

## **7. 단점 (Cons)**

-   제품군이 추가될 때마다 팩토리 인터페이스가 커짐
    
-   **제품군에 새로운 제품 추가**는 모든 팩토리에 영향 → **OCP 위배 가능**
    
-   추상화 구조가 **초기 설계에선 과할 수 있음**
    


## **8. 결과 (Consequences)**

-   추상 팩토리를 통해 **런타임에 전체 제품군 교체가 가능**
    
-   **사용자 설정, 지역화, A/B 테스트, 운영/테스트 환경 전환** 등 다양한 케이스 대응 가능
    
-   코드의 **모듈화, 테스트 가능성, 유지보수성 증가**
    

## **9. 변형 및 대안 (Variations & Alternatives)**

-   **Builder Pattern**: 복잡한 객체의 생성 절차를 캡슐화
    
-   **Service Locator / DI Container**: 런타임에 팩토리를 대체하는 유연한 주입 방식
    
-   **Prototype Pattern**: 팩토리 대신 복제 방식으로 제품을 생성
    

## **10. 적용 시 주의사항 (Implementation Tips)**

-   제품군 간 **호환성 및 일관성** 유지가 핵심
    
-   **팩토리 메서드들과 반환 타입들이 일치**하도록 명확히 설계
    
-   enum, DI, Configuration 등을 통해 런타임 팩토리 선택 구조 도입 가능
    

## **11. 관련 패턴 (Related Patterns)**

-   **Factory Method**: 개별 제품의 생성 책임 분리
    
-   **Builder**: 복잡한 객체 조립 과정을 캡슐화
    
-   **Strategy**: 런타임에 팩토리를 교체하기 위한 설정 구성 가능
    

## **12. 실제 사용 사례 (Known Uses)**

-   SwiftUI 테마 커스터마이징 (ex. LightTheme vs DarkTheme)
    
-   UIKit 커스텀 컴포넌트 세트 (ex. Material Design, Bootstrap 스타일)
    
-   게임에서 종족별 유닛 생성 (ElfFactory, OrcFactory)
    
-   Firebase / CoreData 와 같은 의존성 주입 기반 레이어 테스트 분리



