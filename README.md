# Python tool for Secure Mobile Connect

## What is this

このツールは、 [さくらのクラウド](https://cloud.sakura.ad.jp/) のAPIを利用して、
[セキュアモバイルコネクト](https://www.sakura.ad.jp/services/sim/) のSIMを管理するためのPythonツールです。

SIMの登録、有効化、無効化、登録解除などができます。

## TODO

* [x] Register SIM
* [x] Change SIM Status (Enable / Disable)
* [x] Assign SIM to specific MGW
  * Set IMEI
* [x] Search SIM by ICCID
* [x] Get Traffic of all SIM
* [x] Tuning paging size default
* [ ] Handle conflict error on PUT request
  * 例えばenabledにする場合に、すでに enabled だとエラーが返ってくるので、いい感じにハンドリングしたい

### **Not** TODO

* Create MGW

## テストについて

さくらのクラウドのテスト用のゾーン(tk1v) がセキュアモバイルコネクトに対応していないようなので、
プライベートリポジトリで実際のICCIDなどを使ってテストしています。
mock にするのは、気が向いたらやります。
