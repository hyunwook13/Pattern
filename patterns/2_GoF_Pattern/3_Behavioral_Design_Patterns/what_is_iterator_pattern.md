
```
<!-- pattern_name: Iterator -->

```

## **1. 패턴 이름 (Pattern Name)**

  

**Iterator (반복자) 패턴**

  

한 줄 소개: **컬렉션 내부 구조를 노출하지 않고, 일관된 방법(next, hasNext)으로 요소를 순차 접근하게 만드는 행동 패턴**


## **2. 문제와 해결 시나리오 (Problem & Use Case)**

-   **문제**: 배열·트리·그래프 등 다양한 자료구조를 순회할 때마다 다른 루프 로직을 써야 하고, 순회 코드가 컬렉션 내부로 들어가면 OCP/SRP 위반이 된다.
    
-   **해결**: 순회를 전담하는 **Iterator** 객체를 분리해, 호출자는 반복자 인터페이스만 사용하고 컬렉션의 구체 구조를 알 필요 없게 만든다.
    

  

**적용 상황 예시**

-   파일·DB 커서·네트워크 스트림처럼 큰 데이터를 한 줄씩 처리할 때
    
-   UI 뷰 계층(Composite)을 DFS / BFS로 탐색할 때
    
-   여러 컬렉션(Array, Set, Dictionary)을 동일 코드로 순회할 때
    


## **3. 구조 (Structure)**
![반복자 구조](https://github.com/hyunwook13/Pattern/blob/main/assets/iterator.jpeg)

## **4. 참여자 (Participants)**


단계 | 설명 | 참여자
--- | --- | ---
1단계 | 순회 메서드 인터페이스 정의 (`hasNext`, `next`) | Iterator  
2단계 | 실제 순회 상태 관리·로직 구현 | ConcreteIterator  
3단계 | Iterator 생성 인터페이스 정의 | Iterable / Aggregate  
4단계 | 컬렉션 보유 및 `makeIterator()` 구현 | ConcreteAggregate  



## **5. 예제 코드 (Sample Code)**

  

🔗 [예시 코드](https://github.com/hyunwook13/Pattern/tree/main/Example/Iterator)


## **6. 장점 (Pros)**

-   **컬렉션 구조 은닉** – Client는 next()만 알면 됨
    
-   **일관된 순회 방식** – 다양한 자료구조를 동일 코드로 핸들링
    
-   **다중 순회 지원** – 여러 Iterator로 동시에 다른 위치 순회 가능
    
-   **순회 전략 교체 용이** – 역순·필터링·lazy 등 Iterator만 교체
    


## **7. 단점 (Cons)**

-   컬렉션 변경 중 순회하면 오류 위험(동기화 필요)
    
-   단순 컬렉션에까지 반복자 클래스를 만들면 오버엔지니어링
    
-   반복자 객체 관리 수 증가 가능
    

## **8. 결과 (Consequences)**

-   순회 로직을 컬렉션 외부로 이동해 **OCP** 만족
    
-   동일 컬렉션이라도 **여러 순회 전략**을 플러그인처럼 추가 가능
    
-   멀티스레드 환경에서는 불변 컬렉션·스냅샷 반복자 등이 필요
    

## **9. 변형 및 대안 (Variations & Alternatives)**

-   **Lazy / Streaming Iterator** : 필요 시점에 요소 생성 (Swift lazy, Python generator)
    
-   **Internal Iterator** : 컬렉션이 콜백을 실행(forEach), 제어권 위임
    
-   **External Cursor** : DB·파일처럼 커서 기반(pagination) 순회
    


## **10. 구현 시 주의사항 (Implementation Tips)**

-   순회 중 변경 방지용 fail-fast 체크 또는 스냅샷 복사 고려
    
-   대량 데이터면 lazy·청크 단위 로딩으로 메모리 최적화
    
-   Swift에선 Sequence + IteratorProtocol을 채택하면 표준 for-in 루프와 호환됨
    


## **11. 관련 패턴 (Related Patterns)**

-   **Composite** – 계층 구조를 Iterator로 순회할 때 자주 결합
    
-   **Visitor** – 순회하면서 추가 연산을 적용할 때 조합
    
-   **Strategy** – 순회 알고리즘(정순·역순·필터)을 교체 전략으로 구현
    
