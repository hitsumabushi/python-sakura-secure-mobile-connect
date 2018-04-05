# Python tool for Secure Mobile Connect

## What is this

このツールは、 [さくらのクラウド](https://cloud.sakura.ad.jp/) のAPIを利用して、
[セキュアモバイルコネクト](https://www.sakura.ad.jp/services/sim/) のSIMを管理するためのPythonhonツールです。

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

### **Not** TODO

* Create MGW

## テストについて

さくらのクラウドのテスト用のゾーン(tk1v) がセキュアモバイルコネクトに対応していないようなので、
プライベートリポジトリで実際のICCIDなどを使ってテストしている。
mock にするのは、気が向いたらやる予定。
