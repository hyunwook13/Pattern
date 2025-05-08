## **1. 패턴 이름 (Pattern Name)**

  

**Builder Pattern**

한 줄 소개: 복잡한 객체 생성을 단계별로 유연하게 구성할 수 있도록 하는 생성 패턴


## **2. 문제와 해결 시나리오 (Problem & Use Case)**

  

**문제:**

-   필드 수가 많거나 일부 값이 선택적인 객체를 만들 때, 생성자(init)의 파라미터가 과도하게 늘어나거나 가독성이 떨어짐
    
-   생성자가 너무 많아지고, 어떤 생성자를 써야 할지 혼란스러움
    
-   특정 값만 설정하고 나머지는 기본값 또는 nil로 처리하고 싶을 때 코드가 지저분해짐
    

  

**적용 상황 예시:**

-   API 요청용 DTO에서 일부 필드만 지정하고 싶을 때
    
-   복잡한 설정 값 객체(config struct)나 설정 UI 입력 결과를 조립할 때
    
-   Swift의 init(name: String, age: Int?, email: String?) 방식이 너무 복잡하거나 불편할 때
    

  

예:

“사용자 정보를 담는 DTO는 10개의 필드 중 3개만 입력 받아도 동작해야 한다. 이때 생성자를 만들면 모든 조합을 커버하기 어려워진다.”

## **3. 구조 (Structure)**

![구조](https://github.com/hyunwook13/Pattern/blob/main/assets/builder.jpeg)




## 4. **구현 흐름 (참여자 중심 구성)**
| 단계 | 설명 | 참여자 |
|------|------|--------|
| 1단계 | 제품 인터페이스 추상화 | `Product1`, `Product2` |
| 2단계 | 제품 생성 인터페이스 추상화 | `Builder` |
| 3단계 | 구체 제품군 + 구체 빌더 구현 | `ConcreteBuilder1`, `ConcreteBuilder2` 
| 4단계 | 클라이언트는 추상 빌더에만 의존 | `Director` |

## 5. 예시 코드
[예시 코드](https://github.com/hyunwook13/Pattern/tree/main/Example/Builder "예시 코드") 



## **6. 장점 (Pros)**

-   필드 순서 상관없이 명시적으로 설정 가능
    
-   불필요한 생성자 오버로딩 제거
    
-   읽기 쉽고 유지보수에 용이
    
-   일부 필드만 설정하는 객체 생성에 적합
    
-   객체를 불변 상태로 만들기 쉬움 (let + build())
    


## **7. 단점 (Cons)**

-   빌더 클래스가 추가로 필요해 코드가 늘어남
    
-   단순 객체에 적용하면 오히려 과한 설계가 될 수 있음
    
-   초기 상태를 추론하기 어려울 수 있음
    


## **8. 결과 (Consequences)**

-   객체 생성 과정을 캡슐화함으로써 유연성과 명확성을 확보
    
-   의존성이 낮아지고, 테스트나 모킹이 쉬워짐
    
-   DSL처럼 사용 가능하여 코드가 읽기 쉬워짐
    

## **9. 변형 및 대안 (Variations & Alternatives)**

-   Swift에서는 ResultBuilder, @Builder 등을 활용한 DSL 빌더도 가능
    
-   init with default parameter 방식으로 간단히 대체 가능
    
-   Fluent Interface와 혼합 가능 (chaining 방식)
    


## **10. 적용 시 주의사항 (Implementation Tips)**

-   빌더 클래스는 불필요한 상태 공유를 막기 위해 내부 상태를 잘 캡슐화할 것
    
-   객체가 불변이기를 원한다면 빌드 후 DTO는 let으로 선언
    
-   빌더 메서드는 @discardableResult를 붙여 경고 방지 가능
    

## **11. 관련 패턴 (Related Patterns)**

-   **Factory Method:** 객체 생성 로직을 서브클래스에 위임하지만, 생성 단계별 설정은 어려움
    
-   **Prototype:** 기존 객체를 복제해 유사 객체 생성
    
-   **Fluent Interface:** 메서드 체이닝 방식으로 빌더 인터페이스를 구현할 때 사용
    


## **12. 실제 사용 사례 (Known Uses)**

-   **Alamofire.RequestBuilder**: 네트워크 요청을 빌드하는 방식
    
-   **Firebase SDK 설정 구조체**
    
-   **SwiftUI의 ViewBuilder**: Swift 문법을 이용한 선언형 빌더 패턴
    
-   **Android AlertDialog.Builder**: 사용자 정의 다이얼로그 설정에 사용
