# Kotlin Script
このディレクトリはKotlin Script置き場です

> [!warning]
> Kotlin Scriptは現在Experimentalのため、使用には注意してください。
> 詳しくは[公式のページ](https://kotlinlang.org/docs/custom-script-deps-tutorial.html)をご覧ください。

## 使い方
大体[公式](https://github.com/Kotlin/kotlin-script-examples/blob/master/jvm/main-kts/MainKts.md)に従います。

```sh
kotlin {hoge}.main.kts
```
or
```sh
# ただしこれをやる場合は権限許可と`#!/usr/bin/env kotlin`の`Shebang`が必要になります。
./{hoge}.main.kts
```
