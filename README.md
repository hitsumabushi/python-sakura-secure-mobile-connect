# Python tool for Secure Mobile Connect

## What is this

このツールは、 [さくらのクラウド](https://cloud.sakura.ad.jp/) のAPIを利用して、
[セキュアモバイルコネクト](https://www.sakura.ad.jp/services/sim/) のSIMを管理するためのPythonツールです。

SIMの登録、有効化、無効化、登録解除などができます。

* [ドキュメント](https://hitsumabushi.github.io/python-sakura-secure-mobile-connect/index.html)

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

# 開発者向けメモ

## テストについて

さくらのクラウドのテスト用のゾーン(tk1v) がセキュアモバイルコネクトに対応していないようなので、
ひとまず、プライベートリポジトリで実際のICCIDなどを使ってテストしています。

## ドキュメント

```
$ pip install -r requirements-dev.txt
$ cd docs
$ make html
```
