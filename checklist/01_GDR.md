1. 案件概要

GDR時点で
- 案件の概要、目的
- medibaの対応範囲
- 対応デバイス
- リリース予定日、及びマイルストーン
- SLA

が確定していること。また、その内容について事業主幹部署/発注元と認識合わせができていること。

2. 性能要件

満たすべき性能要件が明確であること
- 通常時、訴求時それぞれのアクセス量/その理由が明確であること
- ページ別/デバイス別など詳細な性能要件の定義の必要性が判断されていること
- 負荷増大時に機能的にボトルネックとなり得る箇所が明確であること
- アクセス量の限界値が定義されていること
- リリース後2年間を目安とし、将来的なアクセス増加/データ量増加による影響が試算されていること

3. 原則、DBアクセスを極力少なくするような仕組みとすること。キャッシュを最大限活用し、かつ、キャッシュがダウンしたときにDBアクセスが急増しないように、キャッシュの冗長構成を検討した構成にすること。
(※キャッシュはダウンする前提で設計すること)

4. 今後のアクセス増、データボリューム増を考慮したスケーラビリティを検討すること。(スケールアップ、スケールアウト)
(※スケールアウト時にシステム停止(再起動)を伴うかどうかも考えておくこと)
(※将来的に拡張が予定されている場合、拡張に対応できる構成にしておくこと)

5. Disaster Recovery(災害対策)を考慮したシステム構成を検討すること。
バーストした際の対応、バーストしないための予防策について検討すること。
(どこかの負荷状況をモニタリングし、一定の閾値を超えたら、アクセス数を制限するなど)

6. DBは内容により以下の3つに分類し、最適な構成を検討すること。
・イベント系：ユーザーフロントから更新が入るデータ
・リソース系：ユーザーフロントからは参照のみのデータ
・管理系：管理画面からのみ更新するデータ

7. サービスをクローズする場合も考慮してアーキテクチャを検討しているか。
(※オンプレミスではなく、AWSの利用を検討するなど)"
同一資材に手を入れる案件、リリースされていることが前提となる関連する案件の有無と、そのスケジュールとの整合を確認すること。
移行データの有無、移行ツールの作成要否、移行時のシステム停止、データ整備の有無など、設計・開発のスケジュール・工数にインパクトのある内容、切替時に留意しなければいけない移行要件がないかを確認しておくこと

8. 運用まで含めて、必要な機能とその利用者が明確になっていること。
(※ポイント還元率は誰がメンテナンスするのか。入稿は誰が行うのか。レポートは誰が出力/参照するのか。など)
(※特に管理機能については、誰が使うかにより、実装が必要となる機能、および、その実装レベルが大きく変動するため)

9. 数値集計(PV、CTなど)をどこでどうやって取得するのか要件が明確になっているか。

10. 管理機能を使用する際に、セキュリティルームでの運用を想定しているか。

11. グランドデザインレビューの中で、後続フェーズのレビュー方法を決めること。個人情報の取り扱い有無、決済・ポイント関連機能の有無、KDDIのサービスレベルの確認の上、「個人情報取り扱い：あり or 決済・ポイント関連機能：あり or KDDIのサービスレベル高案件」の場合は、「パターン①」or「パターン②」形式でのレビューとすること。
(※ グランドデザインレビュー以降については、開発G内で実施）
パターン①：中間レビュー + リリース前レビュー + リリース前最終チェック
パターン②：中間レビュー + リリース前レビュー
パターン③：リリース前レビュー
※中間レビュー ⇒ 設計が完了したタイミングで実施
※リリース前レビュー ⇒ リリース予定日の1~1.5週間前に実施(リリース準備状況の確認。テストは完了している前提)

12. その他、スケジュール面、技術面、リソース面における根本的なリスクがないかを確認しておくこと。
(※)モノ作りを実施する前の段階で、以下のような根本的なリスクがないかを確認しておくことが当チェック項目の趣旨
(例)新しい要素技術を導入するが、知見を持ったリソースがアサインできていない
(例)担当メンバが今月末に退職するため、何らかの事情でリリース日が延期になった場合、担当者の調整が必要
(例)新規メンバを3人採用予定だが、現時点で1人も採用できていない。開発開始までに、必要なリソースのアサインが困難
など