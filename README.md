# medibaシステムガイドライン

## β版の扱い

現バージョンは不足している内容やわかりにくい表現が含まれているためβ版としての扱いになりますが、ガイドラインとして本運用していくため原則ガイドラインに沿った開発、運用を行なって下さい。
加筆修正、追加事項、課題は、issueへ追加、または修正のpull requestをお願いします。

本ガイドラインは全開発者を対象としているため、初歩的なレベルの内容も含みますが、開発に関わるすべての人は一読願います。

なお、本ガイドラインを基にKDDIに対してmedibaの取り組みとして展開し、KDDIからの対応を最小限にしていくためにも活用していく予定です。

## 本ガイドラインの歩き方

本ガイドラインは、IPA、OWASP、mediba品質チェックリスト、KDDI要求事項(セキュリティ関連のチェックリスト)などを参考にまとめたものとなっており、現在アプリケーション開発において開発者が考えて然るべき内容のため、開発に関わる全エンジニアは一読お願いします。
また、規定ではなくガイドラインのためガイドラインの遵守に対して罰則はありませんが、関わるシステム開発に必要な要素を参考にして適用して下さい。
個人情報の取扱などで遵守すべき事項は開発規定 _*1_ へ反映させていきます。

- medibaでは本ガイドラインに沿った開発を前提とするため、必ず一通り読むこと
   - 何が書かれていて、どのようなことにケアすべきかを確認する
   - medibaでの過去の事例から得たナレッジを把握する
   - IPA、OWASP、もしくはKDDIが定めている遵守すべき事項を理解する
- 新規開発、大規模改修など開発方針としてチーム内で確認する
   - 特に個人情報の扱い、セキュリティ関連は原則ガイドラインに従う
   - 設計前やリリース前に考慮漏れがないかチェック項目として活用する
- 本ガイドラインは適宜内容を更新していくため、更新内容は必ず確認する

_*1 開発規定とは、会社で定めている開発関する遵守すべき条項_

## はじめに
medibaは、当社のサービスが社会に与える影響を重要視しており、そのサービスを支えるシステムは、安全で、高品質なものを提供することがシステムに携わる人の責務です。

このガイドラインでは、medibaにおいて、システム開発・運用をする上で、システムに携わる皆さんに理解していただき、守っていただきたい事項を定めます。
ここに述べられている項目以外でも、システムに携わる皆さんは、常日頃から様々な情報に触れ、技術や能力の向上と、品質の維持に努めてください。

## 開発する前に考慮するべき事項

### 品質管理プロセスの遵守

過去の障害事例から得たナレッジで品質管理プロセスが成り立っています。
各チェック項目、レビュー、承認の遵守をお願いします。

### 機能の共有

- 提供していく機能や画面が関係者間で認識齟齬が発生しないように管理すること
  - ログイン有無、キャッシュ有無、URL、APIエンドポイントなどを明記する
  - アドや計測タグなどの利用を明らかにする
  - 特定のユーザーのみに提供する機能や出し分けがあれば明記する
- 作成されたドキュメントは適切にアップデートを行ない、改修の際に漏れが発生しないようにすること

### 性能要件とアーキテクチャ

- 満たすべきレスポンス、パフォーマンスを事前に想定する
- 原則、DBアクセスを極力少なくするような仕組みとすること。 （キャッシュを最大限活用＆キャッシュの冗長構成）
- 今後のアクセス増、データボリューム増を考慮したスケーラビリティを検討すること。(スケールアップ、スケールアウト)
- Disaster Recovery(災害対策)を考慮したシステム構成を検討すること。
- バーストした際の対応、バーストしないための予防策について検討すること。
- DBはサービス規模や仕様などにより用途を分け、最適な構成を検討すること。
- サービスをクローズする場合も考慮してアーキテクチャを検討しているか。

### 移行要件の可否

- 移行データの有無、移行ツールの作成要否、移行時のシステム停止、データ整備の有無など、設計・開発のスケジュール・工数にインパクトのある内容、切替時に留意しなければいけない移行要件がないかを確認しておくこと

### 取り扱うサービスの要件

- 個人情報の取り扱い有無、決済・ポイント関連機能の有無
    `` 本来はセキュリティレビュー組織体を用意して、個別にワークフローを設けるべき ``

### ソースコードマネジメント

- プロダクト資産は、github(Organizationで契約中)のプライベートリポジトリで管理すること
- 原則GitHub Flowやgit-flowを利用するが、PJ規模やリリースサイクルなどによってチームで最適化していき、どういうフローで回っているかはREADMEで明文化しチーム共通認識として持つ

## 日常的に注意する事項

### パスワードの強度

- トークンや、公開鍵認証など、多要素認証を受け入れるシステムは、積極的に使用
- パスワードは、「英単語」＋「記号 or 数字」＋「システム識別子」で作成すると長いものでも覚えやすい

### 利用するアプリケーション

- ChromeやFirefoxのアプリは脆弱性を埋め込まれる可能性が高いため、利用には十分の注意を払う
- Adobe製品やOffice製品は脆弱性を仕込まれることが多いため、アップデートは必須

### その他注意事項

- メールにあるリンクのクリック、添付ファイルを実行する際は極力注意すること
    - 送られてきた人のメールアドレスを注意深く読み解く
    - 普段のメールの文言や職務タイトルと異なる場合などは注意
- オフィス以外で業務をする場合は、
 - 端末を外部に持ち出す場合は持ち出し用端末を利用すること
 - 端末を常に持ちあるくこと（トイレも携行）
 - パスワード付きスクリーンセーバーにすること
 - WiFiへの接続の際は、信頼できる業者のものを利用すること（有料がベター）

## 開発前に読むべきもの

- [IPA 安全なウェブサイトの作り方](https://www.ipa.go.jp/security/vuln/websecurity.html)
- [IPA セキュリティ・プログラミング講座](https://www.ipa.go.jp/security/awareness/vendor/programmingv2/index.html)
- [セキュリティチェックリスト](SecurityCheckList.md)

## 業務別ガイドライン

- [アプリケーション開発ガイドライン](AppDeveloperGuideline.md)
- [AWSインフラストラクチャーガイドライン](AWSInfraBuildGuideline.md)
- [セキュリティガイドライン](SecurityGuideline.md)
- [テストガイドライン](TestGuideline.md)
- [アプリケーションログガイドライン](AppLogGuideline.md)
- [リリースガイドライン](ReleaseGuideline.md)
- [システム運用ガイドライン](OpsGuideline.md)
- [外注開発ガイドライン](OutsouceDevelopmentGuideline.md)
