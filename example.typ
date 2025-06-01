#import "@preview/roremu:0.1.0": roremu
#import "template.typ": *
#show: lesson.with(
  title: "高等学校　情報科学習指導案",
  belong: "hogefuga高等学校",
  advisors: "hoge fuga",
  authors: "fuga hoge",
  student-number: "123456789",
  date: "2025年1月1日",
  time: 1,
  place: "一般教室",
  class: (
    grade: 1,
    class-number: 1,
    place: "教室",
    man: 10,
    woman: 10,
    teacher: "fuga fuga",
    status: roremu(40),
  ),
  textbook: "我が輩は猫である",
  unit: (
    name: "プログラミングの基礎",
    view: roremu(40, offset: 40),
    target: [
      1. #roremu(50, offset: 90)
      2. #roremu(50, offset: 140)
      3. #roremu(50, offset: 190)

    ],
    standard: (
      knowledge: [
        1. #roremu(50, offset: 240)
        2. #roremu(50, offset: 290)
        3. #roremu(50, offset: 340)
      ],
      thinking: [
        1. #roremu(50, offset: 390)
        2. #roremu(50, offset: 440)
        3. #roremu(50, offset: 490)
      ],
      attitude: [
        1. #roremu(50, offset: 540)
        2. #roremu(50, offset: 590)
        3. #roremu(50, offset: 640)
      ],
    ),
    contents: (
      knowledge: [
        小テスト
      ],
      thinking: [
        ワークシート
      ],
      attitude: [
        グループディスカッション
      ],
    ),
    plan: (
      [
        #set align(center)
        +
      ],
      [
        #roremu(50, offset: 690)
      ],
      [
        #roremu(50, offset: 740)
      ],
    ),
  ),
  idea: [
    #roremu(50, offset: 790)
  ],
  lesson: (
    name: [
      名前はまだ無い
    ],
    target: [
      #roremu(50, offset: 840)
    ],
    way: [
      #roremu(50, offset: 890)
    ],
    standard: [
      #roremu(50, offset: 940)
    ],
  ),
  plan: (
    [],
    [- 前時の復習],
    [],
    [],
    [
      #set align(center)
      導入
      #text(8pt)[(21分)]
    ],
    [
      #roremu(50, offset: 990)
    ],
    [
      #roremu(50, offset: 1040)
    ],
    [],
    [],
    [- 問題発見],
    [],
    [],
    [
      #set align(center)
      展開
    ],
    [
      #roremu(50, offset: 1090)
      #rect[
        #roremu(50, offset: 1140)
      ]
    ],
    [
      #roremu(50, offset: 1190)
    ],
    [
      1. 発見
    ],
    [],
    [- まとめ],
    [],
    [],
    [
      #set align(center)
      まとめ
    ],
    [
      #roremu(50, offset: 1240)
    ],
    [
      #roremu(50, offset: 1290)
    ],
    [],
  ),
)
