<!-- pattern_name: Command -->

## **1. 패턴 이름 (Pattern Name)**

**Command (커맨드) 패턴**

한 줄 소개: **요청을 객체로 캡슐화해 호출자와 수신자의 결합을 느슨하게 만드는 행동 패턴**

## **2. 문제와 해결 시나리오 (Problem & Use Case)**

- **문제**: 직접 요청을 보내는 객체와 처리하는 객체가 강하게 결합되어 유연성이 떨어짐  
- **해결**: 요청을 하나의 객체로 캡슐화하고, 이 명령 객체를 통해 실행함으로써 호출자와 수신자를 분리

- **적용 상황 예시**:
  - 실행 취소/재실행 기능 구현
  - 명령 큐, 스케줄러, 로깅된 명령 실행
  - GUI 버튼, 메뉴 클릭 → 실제 명령 처리 연결

## **3. 구조 (Structure)**

![커맨드 구조](https://github.com/hyunwook13/Pattern/blob/main/assets/command.jpeg)

## **4. 참여자 (Participants)**

단계   | 설명                                        | 참여자
--------|---------------------------------------------|------------------
1단계  | 명령 수행 인터페이스 정의                    | Command
2단계  | 실제 작업을 수행하는 객체                     | Receiver
3단계  | 명령을 구현하고 Receiver에 위임              | ConcreteCommand
4단계  | 명령 객체를 실행하는 요청자                   | Invoker
5단계  | 명령을 등록하고 실행시키는 클라이언트         | Client

## **5. 예제 코드 (Sample Code)**

🔗 [예시 코드](https://github.com/hyunwook13/Pattern/tree/main/Example/Command)

## **6. 장점 (Pros)**

- **요청과 처리 객체 간 결합 제거**: 유연한 구조
- **명령 큐, 로그, Undo/Redo 가능**
- **새 명령 추가가 쉬움** (OCP 만족)

## **7. 단점 (Cons)**

- **클래스 수 증가**: 명령마다 클래스 필요
- **복잡도 증가**: 단순한 요청도 구조화 필요

## **8. 결과 (Consequences)**

- 실행 요청을 객체로 관리 가능
- 작업 추적, 스케줄링, Undo 기능 등의 확장이 쉬움
- Command + Receiver 구조로 높은 응집도와 확장성 확보

## **9. 변형 및 대안 (Variations & Alternatives)**

- **MacroCommand**: 여러 명령을 묶어서 실행
- **UndoableCommand**: undo 기능을 지원하는 명령
- **AsynchronousCommand**: 비동기 실행을 고려한 명령

## **10. 구현 시 주의사항 (Implementation Tips)**

- 명령 객체는 가능한 한 작고 독립적으로 유지
- Receiver의 역할은 실제 작업에만 집중
- Invoker는 명령 실행만 책임지고 로직은 포함하지 않음

## **11. 관련 패턴 (Related Patterns)**

- **Mediator**: 객체 간 통신을 중재하는 역할로 구조는 다름
- **Strategy**: 실행 알고리즘을 캡슐화한다는 점은 유사하지만, 목적은 다름
- **Memento**: undo 기능을 구현할 때 함께 사용
