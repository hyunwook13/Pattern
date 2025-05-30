#!/usr/bin/env bash

BASE_DIR="patterns"
README_FILE="README.md"

# 1. 고정 헤더
cat > "$README_FILE" << 'EOF'
# 🕸️ Pattern
- 패턴을 공부하는 레포입니다.
- 오류가 있다면 PR 부탁드립니다.
EOF

# 2. 숫자_이름 순서대로 상위 폴더 처리
for dir in "$BASE_DIR"/*/; do
  base=$(basename "$dir")             # e.g. "2_GoF_Pattern"
  num="${base%%_*}"                   # "2"
  title="${base#*_}"                  # "GoF_Pattern"
  name="$(echo "$title" | tr '_' ' ')?"

  # 상위 섹션: H2
  printf "\n## %s. %s\n" "$num" "$name" >> "$README_FILE"

  # 3. 파일 먼저 (.md)
  for file in "$dir"*.md; do
    [ -f "$file" ] || continue
    PATTERN_NAME=$(sed -n 's/.*<!-- *pattern_name: *\([^>]*\) *-->.*/\1/p' "$file")
    [ -z "$PATTERN_NAME" ] && PATTERN_NAME="$(basename "${file%.*}")"
    echo "* [$PATTERN_NAME]($file)" >> "$README_FILE"
  done

  # 4. 서브폴더 (2단계) → H3 헤더로 출력, 번호 제거
  for sub1 in "$dir"*/; do
    [ -d "$sub1" ] || continue
    sub_raw=$(basename "$sub1")          # e.g. "1_Creational_Design_Patterns"
    sub_title="${sub_raw#*_}"            # "Creational_Design_Patterns"
    sub_name="$(echo "$sub_title" | tr '_' ' ')"  # "Creational Design Patterns"

    # H3 로 출력
    printf "\n### %s\n" "$sub_name" >> "$README_FILE"

    # 5. 서브폴더 안의 파일들
    for file in "$sub1"*.md; do
      [ -f "$file" ] || continue
      PATTERN_NAME=$(sed -n 's/.*<!-- *pattern_name: *\([^>]*\) *-->.*/\1/p' "$file")
      [ -z "$PATTERN_NAME" ] && PATTERN_NAME="$(basename "${file%.*}")"
      echo "* [$PATTERN_NAME]($file)" >> "$README_FILE"
    done
  done
done

# 6. 템플릿 링크 추가
cat >> "$README_FILE" << 'EOF'

---
* [패턴을 정리하는 템플릿입니다.](https://github.com/hyunwook13/Pattern/blob/main/Template.md "템플릿")
EOF

echo "✅ README.md 생성 완료: $README_FILE"
