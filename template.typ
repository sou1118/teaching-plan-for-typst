#let lesson(
  title: (),
  belong: (),
  advisors: (),
  authors: (),
  student-number: (),
  date: (),
  time: (),
  place: (),
  class: (
    grade: (),
    class-number: (),
    place: (),
    man: (),
    woman: (),
    teacher: (),
    status: (),
  ),
  textbook: (),
  unit: (
    name: (),
    view: (),
    target: [],
    standard: (
      knowledge: [],
      thinking: [],
      attitude: [],
    ),
    contents: (),
    plan: (),
  ),
  idea: [],
  lesson: (
    name: [],
    target: [],
    way: [],
    standard: [],
  ),
  plan: (),
  body,
) = {
  let serif = "BIZ UDPMincho"
  let san-serif = "BIZ UDPGothic"
  let fontsize = 10.5pt

  set text(lang: "ja", font: serif, size: fontsize)

  set page(
    paper: "a4",
    margin: (top: 15mm, bottom: 10mm, left: 20mm, right: 20mm),
  )

  {
    set align(center)
    text(16pt, font: san-serif, strong(title))
  }

  {
    set align(right)
    text((belong))
    table(
      stroke: none,
      columns: (auto, auto, auto, auto),
      "指導教員", (advisors), "先生", "印",
      "教育実習生", (authors), "", "印",
      "学籍番号: ", (student-number), "", "",
    )
  }
  {
    set align(left)
    text[1]
    h(3%)
    text[日時場所]
    h(5%)
    (date)
    h(2%)
    text[第 #time 校時]
    h(2%)
    text[場所；#place]
  }
  {
    v(1%)
    set align(left)
    text[2]
    h(3%)
    text(tracking: 21pt)[学級]
    h(5%)
    text[
      第 #class.grade 学年
      #class.class-number 組#h(1%)
      （男子 #class.man 名 #h(3%)
      女子 #class.woman 名 #h(3%)
      計 #{ class.man + class.woman }名 #h(3%)
      学級担任 #h(1%) #class.teacher）
    ]
  }
  {
    v(1%)
    set align(left)
    text[3]
    h(3%)
    text[学級所見]
    v(1%)
    h(3%)
    (class.status)
  }
  {
    v(1%)
    set align(left)
    text[4]
    h(3%)
    text(tracking: -2pt)[使用教科書]
    h(5%)
    (textbook)
  }
  {
    v(1%)
    set align(left)
    text[5]
    h(3%)
    text(tracking: 6.5pt)[単元名]
    h(5%)
    (unit.name)
  }
  {
    v(1%)
    set align(left)
    text[6]
    h(3%)
    text(tracking: 6.5pt)[単元観]
    v(1%)
    (unit.view)
  }
  {
    v(1%)
    set align(left)
    text[7]
    h(3%)
    text[単元の指導目標]
    v(0%)
    (unit.target)
  }
  {
    set enum(numbering: "①")
    v(1%)
    set align(left)
    text[8]
    h(3%)
    text[単元の評価規準]
    table(
      columns: (0.43fr, 1fr, 1fr, 1fr),
      table.header(
        text(10pt)[
          #set align(center)
          評価の観点
        ],
        text(10pt)[
          #set align(center)
          知識・技能
        ],
        text(10pt)[
          #set align(center)
          思考力・判断力・表現力等
        ],
        text(10pt)[
          #set align(center)
          主体的に学習に取り組む態度
        ],
      ),

      text(10pt)[
        #set align(horizon)
        単元の評価規準
      ],
      (unit.standard.knowledge),
      (unit.standard.thinking),
      (unit.standard.attitude),

      text(10pt)[
        #set align(horizon)
        学習活動に即した具体的な内容
      ],
      (unit.contents.knowledge),
      (unit.contents.thinking),
      (unit.contents.attitude),
    )
  }
  {
    v(1%)
    set align(left)
    text[9]
    h(3%)
    text[単元の指導計画と評価計画（2時間扱い）]
    set enum(numbering: "第1時")
    table(
      columns: (0.22fr, 1fr, 1fr),
      table.header(
        text(10pt)[
          #set align(center)
          #set align(horizon)
          時
        ],
        text(10pt)[
          #set align(center)
          #set align(horizon)
          学習活動・学習内容
        ],
        text(10pt)[
          #set align(center)
          #set align(horizon)
          学習活動に即した具体的な評価規準\
          ［評価方法］
        ],
      ),
      ..unit.plan
    )
  }
  {
    v(1%)
    set align(left)
    text[10]
    h(3%)
    text[指導に当たっての工夫#h(1%) (授業形態の工夫、指導方法の工夫、教材の工夫)]
    v(1%)
    h(2%)
    (idea)
  }
  {
    v(1%)
    set align(left)
    text[11]
    h(3%)
    text[本時]
    set enum(numbering: "(1)")
    [1. 小単元名#h(1%)（本時の題目）]
    (lesson.name)
    [2. 本時のねらい（指導目標）]
  }
  table(
    columns: 1fr,
    [
      #set align(center)
      指導目標
    ],
    (lesson.target),
    [
      #set align(center)
      評価方法
    ],
    (lesson.way),
    [
      #set align(center)
      評価基準
    ],
    (lesson.standard),
  )
  pagebreak()
  [
    本時の展開
  ]
  {
    set list(marker: [$circle.stroked$])
    table(
      columns: (0.2fr, 1fr, 1fr, 0.3fr),
      stroke: (x, y) => (
        left: 1pt,
        right: 1pt,
        top: if y <= 2 { 1pt } else { 0pt },
        bottom: 1pt,
      ),
      table.header(
        text(10pt)[
          #set align(center)
          #set align(horizon)
          時間
        ],
        text(10pt)[
          #set align(center)
          #set align(horizon)
          学習内容と学習活動 \
          （生徒の活動）および意図

        ],
        text(10pt)[
          #set align(center)
          #set align(horizon)
          指導上の留意点（教員の活動）\
          および評価の観点
        ],
        text(10pt)[
          #set align(center)
          #set align(horizon)
          問題解決ステップ
        ],
      ),

      [
        #set align(center)
        #set align(horizon)
        例)
      ],
      [
        - SNS上に載せた写真が原因でストーカーの被害につながったニュース記事を見せる（生徒の注意を喚起するため）
      ],
      [
        - SNSに写真を載せることで、個人情報が知られてしまうリスクに気づかせる
      ],
      [
        1. 発見
      ],
      ..plan
    )
  }
}
