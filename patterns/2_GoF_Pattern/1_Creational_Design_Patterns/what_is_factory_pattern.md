<!-- pattern_name: Factory -->

# Factory Pattern

## 1. 패턴 이름 (Pattern Name)

**한 줄 소개**: 객체 생성 책임을 별도 팩토리로 위임하여, 클라이언트가 구체 클래스에 의존하지 않도록 만드는 생성 패턴.

## 2. 문제와 해결 시나리오 (Problem & Use Case)

* **문제**: 클라이언트 코드 곳곳에서 `new ConcreteProduct()`처럼 특정 타입을 생성하면, 의존성이 강하기에 새로운 제품이 추가되거나 변경될 때마다 전부 수정해야 한다.
* **해결**: 팩토리 인터페이스를 통해 객체 생성 코드를 집중시키고, 클라이언트는 팩토리만 참조하도록 한다.
* **예시**:

  * 문서 편집기에서 PDF, Word, Text 등 여러 타입의 Document를 선택적으로 생성
  * 데이터베이스 커넥션(MySQL, PostgreSQL, SQLite) 인스턴스를 런타임에 결정

## 3. 구조 (Structure)
![구조](https://github.com/hyunwook13/Pattern/blob/main/assets/factory.jpeg)

## 4. 참여자 (Participants)

| 역할                  | 책임                                                 |
| ------------------- | -------------------------------------------------- |
| **Product**         | 팩토리가 생성할 객체의 공통 인터페이스 또는 추상 클래스                    |
| **ConcreteProduct** | Product를 구현한 실제 클래스 (예: PDFDocument, WordDocument) |
| **Creator**         | 객체 생성 메서드(`createProduct()`) 선언                   |
| **ConcreteFactory** | Factory를 구현해 ConcreteProduct 인스턴스 생성               |


## 5. 예제 코드 (Sample Code)

```swift
// Product
protocol Document {
    func open()
    func save()
}

// ConcreteProduct
class PDFDocument: Document {
    func open()  { print("PDF 열기") }
    func save()  { print("PDF 저장") }
}
class WordDocument: Document {
    func open()  { print("Word 열기") }
    func save()  { print("Word 저장") }
}

// Factory 인터페이스
protocol DocumentFactory {
    func createDocument() -> Document
}

// ConcreteFactory
class PDFFactory: DocumentFactory {
    func createDocument() -> Document {
        return PDFDocument()
    }
}
class WordFactory: DocumentFactory {
    func createDocument() -> Document {
        return WordDocument()
    }
}

// 클라이언트 코드
func clientCode(using factory: DocumentFactory) {
    let doc = factory.createDocument()
    doc.open()
    doc.save()
}

// 사용 예시
clientCode(using: PDFFactory())   // PDF 열기, PDF 저장
clientCode(using: WordFactory())  // Word 열기, Word 저장
```


## 6. 장점 (Pros)

* **클라이언트 분리**: 생성 로직이 팩토리에 집중되어, 클라이언트는 구체 클래스에 의존하지 않음
* **확장 용이**: 새로운 ConcreteProduct/ConcreteFactory 추가만으로 기능 확장 가능
* **테스트 용이**: 목(Mock) 팩토리를 주입해 단위 테스트 수행

## 7. 단점 (Cons)

* **클래스 수 증가**: Factory와 ConcreteFactory 클래스 수가 늘어남
* **추상화 비용**: 간단한 생성 로직에서는 오히려 복잡도 증가


## 8. 변형 및 대안 (Variations & Alternatives)

* **Simple Factory**: 정적 메서드로 객체 생성, 인터페이스 분리는 약하지만 코드 수는 적음
* **Factory Method**: 서브클래싱으로 팩토리 역할을 구현
* **Abstract Factory**: 연관된 제품군(Family)을 한 번에 생성


## 9. 적용 시 주의사항 (Implementation Tips)

* 팩토리 인터페이스는 가능한 단순하게 유지
* 생성 매개변수가 복잡하면 Builder 패턴과 조합 고려
* DI 프레임워크 사용 시 팩토리 역할을 컨테이너에 위임


## 10. 관련 패턴 (Related Patterns)

* Abstract Factory, Builder, Singleton, Prototype

