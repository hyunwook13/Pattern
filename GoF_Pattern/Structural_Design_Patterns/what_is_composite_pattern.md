<!-- pattern_name: Composite -->

## **1. 패턴 이름 (Pattern Name)**

  

**Composite (복합체) 패턴**

한 줄 소개: 객체들을 트리 구조로 구성하여, **단일 객체**와 **복합 객체**를 동일한 방식으로 다룰 수 있게 해 주는 구조적 디자인 패턴

  

## **2. 문제와 해결 시나리오 (Problem & Use Case)**

-   **문제**: 개별 객체와 객체 모음(그룹)을 별도로 처리하면 클라이언트 코드가 복잡해지고, 트리 구조를 순회할 때 일관된 인터페이스 적용이 어려움
    
-   **적용 상황 예시**:
    
    -   **UI 컴포넌트 트리**: Button, Label 같은 단일 뷰와 ViewGroup/Container 같은 복합 뷰를 모두 draw()로 호출
        
    -   **파일 시스템**: File과 Directory를 같은 FileSystemNode 인터페이스로 다루어, ls()나 size()를 재귀 호출
        
    -   **그래픽 도형 편집기**: Circle, Rectangle 같은 개별 도형과 도형 그룹(ShapeGroup)을 같은 draw()/move() API로 제어
        
    

  

## **3. 구조 (Structure)**


![객체 어댑터 구조](https://github.com/hyunwook13/Pattern/blob/main/assets/composite.jpeg)

## 4. 참여자 (Participants)

단계   | 설명                                                | 참여자
------|-----------------------------------------------------|-----------
1단계 | 공통 인터페이스를 정의                               | Component
2단계 | 단일 객체(Leaf)가 실제 작업을 수행                   | Leaf
3단계 | 자식 Component들을 관리하고 재귀 호출을 처리하는 객체 | Composite
4단계 | 클라이언트는 Component 인터페이스로만 접근          | Client


## 5. 예제 코드 (Sample Code) 

[예시 코드](https://github.com/hyunwook13/Pattern/tree/main/Example/Composite "예시 코드") 

## **6. 장점 (Pros)**

-   **클라이언트 코드 단순화**: 단일 객체와 복합 객체를 구분 없이 처리
    
-   **트리 구조 표현**: 재귀적 구조를 깔끔하게 지원
    
-   **확장성**: 새로운 Leaf/Composite 추가 시 기존 코드 최소 변경
    

  

## **7. 단점 (Cons)**

-   **클래스 수 증가**: Component, Leaf, Composite 등이 별도 필요
    
-   **복잡성 증가**: 간단한 구조에 적용 시 오히려 코드 복잡도 상승
    
-   **순회 비용**: 자식 수가 많아지면 재귀 호출 오버헤드 발생
    

  

## **8. 결과 (Consequences)**

-   **일관된 인터페이스** 제공 → 클라이언트 코드 결합도 감소
    
-   **유지보수 용이**: 새로운 타입 추가해도 Client 수정 불필요
    

  

## **9. 변형 및 대안 (Variations & Alternatives)**

-   **Safety Composite**: Leaf에서 add()/remove() 금지하여 오용 방지
    
-   **Transparent Composite**: Leaf와 Composite 모두에 동일한 메서드 제공
    
-   **Visitor 패턴 결합**: 트리 순회 로직을 Visitor로 분리
    

  

## **10. 구현 시 주의사항 (Implementation Tips)**

-   **Component 인터페이스 최소화**: 핵심 API만 정의
    
-   **부가 기능 분리**: 정렬·필터링은 Composite가 아닌 별도 유틸리티/Visitor 사용
    
-   **메모리 관리**: 부모 참조는 weak 처리하여 순환 참조 방지
    

  

## **11. 관련 패턴 (Related Patterns)**

-   **Decorator**: 객체에 동적 기능 추가
    
-   **Facade**: 복잡한 서브시스템 단순화
    
-   **Visitor**: 객체 구조에 새로운 연산 추가
