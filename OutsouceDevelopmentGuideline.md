# 外注開発ガイドライン

## 1.本書の目的
本書は、請負契約による外注システム開発を行う場合、外部会社（以下、開発ベンダー）の作業、成果物に対してmedibaのシステム担当（外注開発管理者）がチェックすべき観点を記す。

## 2.成果物
開発ベンダーの各フェーズにおける成果物として以下が揃っていることを契約時に確認すること。

> リストアップ

### 2.1.成果物のチェック
各種成果物に対して、以下をチェックすること
* 日程、システム名などに間違いはないか
    * 過去のドキュメントを再利用するにあたり、こういった基本的なミスがある場合、重要な記載を流用したまま確認が不足しているケースが多い

## 3.テスト
開発ベンダーが実施する各種テストにおけるチェック観点は以下の通り

### 3.1.必要なテストの種類
* 案件開始時に、以下のテストが実施されることを確認すること
* 各フェーズのスケジュールとマイルストーンを明確にすること。
* 不要な場合はその理由を明確にすること。

  * 画面機能試験
  * シナリオ試験
  * 外部連携試験
  * 性能試験
  * 脆弱性試験
  * 障害・監視試験

### 3.2.試験仕様書フォーマット

* 各種試験仕様書、結果報告書のフォーマットは基本的にmedibaが作成、提供する
    * 開発ベンダー作成のフォーマットを利用したい場合各試験フェーズで必要な項目が記載されていることを確認する
    
> Excelファイル添付？

### 3.3.各試験フェーズにおけるチェックリスト

#### 3.3.1.画面機能試験

* 試験仕様はワイヤーフレーム等の画面仕様を元に作成されているか
* 出力項目が日付などの条件でコントロールされる要件がある場合、しきい値でのテストは行われているか
* 対応するデバイス、ブラウザは明確にされ、デバイス別の機能がある場合はテストされているか
* 各種エラー時の要件は明確にされ、エラー出力のテストは行われているか
* 実端末での試験は行われているか。不要な場合は理由が明確にされ合意されているか

#### 3.3.2.シナリオ試験

* 試験仕様は運用フローを定義したユースケース等の設計を元に作成されているか
* 運用上同時に同一のデータを操作する可能性が考慮されているか
* ドメイン、インフラ構成などの環境差異を考慮し試験が行われているか
* アプリケーションログの確認が手順に含まれているか

#### 3.3.3.外部連携試験

* 試験仕様は連携フローを定義したユースケース等の設計を元に作成されているか
* 外部システムとの連携がある場合、対向システムとの連携試験は行われているか
    * 手動でのファイル配置等、実際のシステム連携をせず仮想的に行っていないか
* 試験する環境は明確にされ、商用環境と異なる場合は環境の相違点は認識されているか
* IFのエラー定義は明確にされ、エラー時のテストは行われているか
* ファイル連携を行う場合、容量の最大値は明確にされ、しきい値での試験を行っているか

#### 3.3.4.性能試験

* 試験仕様は要件定義時の需要予測を元に作成されているか
    * 需要予測を満たす性能に達しているかの試験を行っているか
    * 性能上限を試す試験は行われているか
* 大量データ、ファイルを扱う画面や機能（管理機能含む）がある場合、画面表示や処理にかかる時間を計測しているか
    * サービス、運用に耐えうる画面表示時間は定義されているか
    * バッチの処理時間など、サービスや運用に影響がないことを確認しているか
* 性能試験を行うツールは明確にされ、シナリオ等の条件は明確にされているか
    * 商用環境と同等の構成での試験が望ましいが、差異がある場合はそれらを考慮した上で試験を実施しているか
* アプリケーションログの確認が手順に含まれているか
 
#### 3.3.5.脆弱性試験

* セキュリティガイドラインに準じた対策、試験が行われているか
* 試験を行うツールは明確にされ、シナリオ等の条件は明確にされているか

#### 3.3.6.障害・監視試験

* 障害のケース網羅性は問題ないか
  * DB/KVS等と通信ができない場合は考慮されているか
  * 外部システムとの連携で例外が発生した場合は考慮されているか など
* 監視設定は明確に定義されており、その内容を元に試験シナリオが準備されているか

## 4.リリース
開発ベンダーが実施するリリース計画におけるチェック観点は以下の通り

### 4.1.リリース体制
- リリース担当者、窓口、作業場所は明確になっているか
- 問題が発生した時の連絡方法およびエスカレーション先や対応フローは明確か。
- 報告タイミングや手段は明確か

### 4.2.リリースの流れ
* タイムスケジュールは定義されているか
* 連携するシステムや外部作業は考慮されているか
* 切り戻し手順は記載されているか
   * 切り戻しの判断基準が明確になっているか
* 監視設定の無効化が必要な場合は記載されているか
* 対向システムとの連携がある場合、初回稼働のタイミングは明確か
* 環境に依存した手順はないか
* キャッシュのパージ等の必要性、手段は考慮され、手順に盛り込まれているか

### 4.3.リリース後の確認
* リリース後の正常性確認が手順に含まれているか
   * 画面表示系の機能は、ひととおりの動作、表示を行うこと
      * 動作確認項目は要点が絞られているか（過大になっていないか　過少になっていないか）
      * 商用アカウントでのログインや会員登録、申込等必要な場合、使用するアカウント等が準備されているか。
         * その場合のデータクリーニングの必要可否は考慮されており、手段は明確になっているか
   * バッチ等のリリース時は、リリース後の初回起動に問題がないことを確認する
      * 継続的に経過観察が必要な場合、考慮されているか