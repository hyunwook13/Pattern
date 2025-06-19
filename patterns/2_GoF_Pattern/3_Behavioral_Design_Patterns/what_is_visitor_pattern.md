<!-- pattern_name: Visitor -->
## **1. 패턴 이름 (Pattern Name)**

  

**Visitor (방문자) 패턴**

  

한 줄 소개: **객체 구조는 건드리지 않고, 새로운 연산(행위)을 ‘방문자’에 담아 외부에서 추가한다.**

  

## **2. 문제와 해결 시나리오 (Problem & Use Case)**

-   **문제**: 하나의 복잡한 객체 계층(예: 문서의 요소, 컴파일러의 AST, UI 뷰 트리)에 여러 연산을 반복적으로 추가해야 할 때마다 객체 구조 자체를 수정하는 것은 OCP 위반이 되고 관리도 어렵다.
    
-   **해결**: 연산을 Visitor 객체로 캡슐화하여 객체 구조는 그대로 두고 새로운 연산을 추가 가능하게 한다.
    
-   **적용 상황 예시**:
    
    -   전자세금계산: 상품마다 다른 세율 적용
        
    -   문서 포맷 변환: 문서 요소를 PDF/HTML/Markdown 등으로 출력
        
    -   컴파일러 중간단계: AST 노드들을 방문하며 타입 검사, 최적화, 코드 생성
        
    

  

## **3. 구조 (Structure)**

  
![방문자 구조](https://github.com/hyunwook13/Pattern/blob/main/assets/visitor.jpeg)

## **4. 참여자 (Participants)**

단계   | 설명                                                              | 참여자
--------|-------------------------------------------------------------------|--------------------------
1단계  | 방문자 인터페이스 정의 (각 요소를 방문하는 메서드 명세)            | Visitor
2단계  | 방문자 메서드를 구현하고 실제 연산을 수행                           | ConcreteVisitor
3단계  | 방문 가능한 요소의 인터페이스 정의 (Visitor를 수용할 수 있음)       | Element
4단계  | 실제 방문 대상이 되는 요소. accept에서 visitor의 visit 호출         | ConcreteElementA / ConcreteElementB
5단계  | 방문 작업을 시작하고 Visitor와 Element를 연결하는 클라이언트       | Client

## **5. 예제 코드 (Sample Code)**
🔗 [예시 코드](https://github.com/hyunwook13/Pattern/tree/main/Example/Visitor)

## **6. 장점 (Pros)**

-   OCP 준수 – 연산을 외부에서 추가하므로 객체 구조 변경 없이 확장 가능
    
-   연산 집중화 – 연산 코드를 하나의 Visitor에 모아두면 관리가 쉬움
    
-   더블 디스패치 – 요소 타입과 방문자 타입을 동시에 고려해 정확한 연산 수행
    

  

## **7. 단점 (Cons)**

-   Element가 Visitor를 알아야 함 → 양방향 의존 발생
    
-   새로운 Element 추가 시 모든 Visitor 수정 필요
    
-   언어에서 더블 디스패치를 직접 지원하지 않으면 보일러플레이트 증가
    

  

## **8. 결과 (Consequences)**

-   연산이 자주 바뀌고 객체 구조는 안정적인 시스템에 적합
    
-   구조보다 Element 종류가 자주 변한다면 오히려 유지보수 부담
    

  

## **9. 변형 및 대안 (Variations & Alternatives)**

-   Reflective Visitor – 리플렉션을 활용해 visit 메서드 수 제한
    
-   Acyclic Visitor – 필요한 visit만 구현 가능하게 interface 분리
    

  

## **10. 구현 시 주의사항 (Implementation Tips)**

-   Element 수가 많다면 Visitor 기본 구현 제공하여 중복 감소
    
-   Composite 패턴과 함께 쓰면 계층 순회 시 유용함
    

  

## **11. 관련 패턴 (Related Patterns)**

-   Composite – 계층 순회 시 함께 사용됨
    
-   Decorator – 기능 누적 vs Visitor는 외부 연산 추가
    
