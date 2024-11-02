// MIT No Attribution
// Copyright 2024 Shunsuke Kimura

#import "libs/mscs/lib.typ": mscs, gothic, confname, econfname
#show: mscs.with(
  title: [第〇〇回 #confname サンプル原稿], 
  authors: [◯ 制御 太郎（計測大学）],
  etitle: [How to Write a Conference Paper in Japanese],
  eauthors: [\*T.~Seigyo (Keisoku University)],
  abstract: [This document describes guidelines to prepare acceptable manuscripts
 for the upcoming SICE conference.  All manuscripts should be prepared in 
Portable Document Format (PDF) and should be uploaded to the conference's
online submission system, no later than the prespecified deadline. ],
  keywords: ([Electronic paper submission], [manuscript format], [Typst]),
  bibliography: bibliography("refs.yml", full: false)
  // bibliography: bibliography("refs.bib", full: false)
)

// 定理環境
#import "@preview/ctheorems:1.1.2": thmplain, thmproof, thmrules
#let thmjp = thmplain.with(base: {}, separator: [#h(0.5em)], titlefmt: strong, inset: (top: 0em, left: 0em))
#let definition = thmjp("definition", text(font: gothic)[定義])
#let lemma = thmjp("lemma",text(font: gothic)[補題])
#let theorem = thmjp("theorem", text(font: gothic)[定理])
#let corollary = thmjp("corollary",text(font: gothic)[系])
#let proof = thmproof("proof", text(font: gothic)[証明], separator: [#h(0.9em)], titlefmt: strong, inset: (top: 0em, left: 0em))
#show: thmrules.with(qed-symbol: $square$)

= はじめに
第〇回 #confname では，原稿をPDFでご用意いただき，
シンポジウムホームページ @シンポジウムホームページ からアップロードしていただきます．
原稿提出締め切りに遅れないようご提出ください．
使用言語は日本語または英語です．
講演申込時に指定した著者，題目等は原則として変更することができませんのでご注意ください．

= テンプレートファイル
シンポジウムホームページ @シンポジウムホームページ
からテンプレートファイルをダウンロードします．pLaTeX2.09またはpLaTeX2e
を使用される場合は，`sample_utf8.zip` (UTF8版)，
`sample_euc.zip` (EUC版)，または`sample_sjis.zip` (SJIS版)のいずれかをダウンロードして解凍してください．
`sample.tex`をコンパイルするとこの文書が生成されます．
Microsoft Wordを使用される場合は `sample.doc` をご利用ください．
それ以外のワードプロセッサをご使用の方は，本サンプルと体裁がなるべく近くなるよう原稿を作成ください．

= 原稿の体裁
電子投稿システムでは以下の条件を満たすファイルのみアップロード可能です．
- ファイルタイプ:  PDF version 1.3以上
- ファイルサイズ:	5Mバイト以下
- ページ数:	8ページ以内
- 用紙サイズ: A4 （US Letterは不可）


== 全体の体裁
縦250 mm，横170 mmの枠内に収まるようにしてください．
余白は，上20 mm，下27 mm，左20 mm，右20 mmとします．
活字の大きさは，日本語タイトル16ポイント，著者名，英文タイトルと著者名12ポイ
ント，章タイトル11ポイント，節タイトル10ポイント，本文の活字10ポイント
を目安としてください．原稿は，

- 邦文題名
- 邦文著者名（登壇者に○印）と著者所属
- 英文題目
- 英文著者名（登壇者に \* 印）と英文著者所属
- 英文アブストラクト（100ワード程度）
- 本文，参考文献

の順に書いてください．英文アブストラクトまでを1段組，本文・参考文献を2
段組にしてください． 

== 図と表

#figure(
  placement: top,
  image("fig1.svg", width: 60%),
  caption: [$x^2$ のグラフ],
) <fig:samplefig>


図と表は，Fig.~1，Table~1のように番号を振り
（@fig:samplefig 参照），図説，図中の
説明文は英文で記入してください．本文で引用する場合も「Fig.~1に示す」な
どのようにFig.とTableを使用してください．

図や表中の文字が小さくなりすぎないよう，線が細くなりすぎないように
気をつけてください．また図の画質が落ちないように注意してください．
特にMicrosoft WordなどでJPEG画像を貼り付けると，一度圧縮されている画像が再圧縮されるので
画像が劣化するようです．画質の良い（圧縮率の低い）画像フォーマットを選ぶなど，各自ご配慮ください．


== 参考文献
文献の引用は本文中に @原稿執筆の手引き のように書き，本文の最後に
まとめて記述します．次のフォーマットを推奨します．

#par(first-line-indent: 0em)[
(a) 雑誌論文の場合\
番号)  著者：論文題目, 雑誌名, 巻（太字）-号, 始ページ/終ページ （年）\
(b) 単行本の場合\
番号)  著者：書名, 始ページ/終ページ, 発行所 （発行年）
]
