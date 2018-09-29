TDDBC Swift Project
===================
[![Build Status](https://travis-ci.org/tddbc/Swift.svg?branch=master)](https://travis-ci.org/tddbc/Swift)

[TDDBC](http://devtesting.jp/tddbc/) で使う Swift 用のプロジェクトです。



Features
--------

次の2つのテストフレームワークを利用できます:

- [XCTest](https://developer.apple.com/documentation/xctest)
    - Apple 製のテストフレームワークで、xUnit スタイルの記述が特徴

        ```swift
        // TDDBCSwiftTests/ExampleXCTestTests.swift
        import XCTest
        @testable import TDDBCSwift

        class ExampleXCTestTests: XCTestCase {
            func testHelloWorld() {
                let sample = Sample()
                XCTAssertEqual(sample.say(), "Hello TDD BootCamp!")
            }
        }
        ```


- [Quick](https://github.com/Quick/Quick) + [Nimble](https://github.com/Quick/Nimble)
    - サードパーティ製のフレームワークで、xSpec スタイルの記述が特徴

        ```swift
        // TDDBCSwiftTests/ExampleQuick.swift
        import Quick
        import Nimble
        @testable import TDDBCSwift

        class ExampleQuickTests: QuickSpec {
            override func spec() {
                describe("Hello World を返すサンプル") {
                    it("は Hello TDD BootCamp! を返すべき") {
                        let sample = Sample()
                        expect(sample.say()).to(equal("Hello TDD BootCamp!"))
                    }
                }
            }
        }
        ```


Versions
--------

過去の Swift のバージョンも利用できます：

| Swift Version | Tag                                                                  | Xcode     |
|:--------------|:---------------------------------------------------------------------|:----------|
| 4.2           | [`swift-4.2`](https://github.com/tddbc/Swift/releases/tag/swift-4.2) | Xcode 10  |
| 4.1           | [`swift-4.1`](https://github.com/tddbc/Swift/releases/tag/swift-4.1) | Xcode 9.3 |
| 4.0           | [`swift-4.0`](https://github.com/tddbc/Swift/releases/tag/swift-4.0) | Xcode 9   |



Requirements
------------

- Carhtage



### How to Install Carthage

このプロジェクトは、サードパーティライブラリを [Carthage](https://github.com/Carthage/Carthage) によって管理しています。Carthage は [Homebrew](https://brew.sh/index_ja) でインストールできます：

```console
$ brew install carthage
```



### How to install third party libraries

Carthage が準備できたら、ビルド前に以下のコマンドを実行してください：

```console
$ carthage bootstrap --platform iOS --no-use-binaries
```



How to Run Tests
----------------
### Xcode

Scheme は `TDDBCSwift` または `TDDBCSwiftTests` でテストを実行できます。



### AppCode

Scheme は `TDDBCSwiftTests` でテストを実行できます。



### Console

以下のコマンドを実行してください（表示の整形に [xcpretty](https://github.com/supermarin/xcpretty) を使っています）:

```console
$ xcodebuild test -scheme TDDBCSwiftTests -destination 'platform=iOS Simulator,name=iPhone X,OS=latest' | xcpretty
2017-09-30 15:04:59.192 xcodebuild[2542:4138788]  IDETestOperationsObserverDebug: Writing diagnostic log for test session to:
xxx/com.apple.dt.XCTest/IDETestRunSession-XXX/TDDBCSwiftTests-XXX/Session-TDDBCSwiftTests-2017-09-30_150459-aMdesu.log
2017-09-30 15:04:59.193 xcodebuild[2542:4138545] [MT] IDETestOperationsObserverDebug: (XXX) Beginning test session TDDBCSwiftTests-XXX at 2017-09-30 15:04:59.193 with Xcode 9A235 on target <DVTiPhoneSimulator: 0x7fab792cc740> {
                SimDevice: iPhone X (EFB12BE8-167E-4630-B39E-085F6B4DC7F3, iOS 11.0, Booted)
} (11.0 (15A372))
▸ Building TDDBCSwift/TDDBCSwift [Debug]
▸ Check Dependencies
▸ Running script 'Run Script'
▸ Building TDDBCSwift/TDDBCSwiftTests [Debug]
▸ Check Dependencies
▸ Test Succeeded
All tests
Quick.framework
Test Suite TDDBCSwiftTests.xctest started
ExampleQuickTests
    ✓ Hello_World_を返すサンプル__は_Hello_TDD_BootCamp__を返すべき (0.007 seconds)
ExampleXCTestTests
    ✓ testHelloWorld (0.002 seconds)


         Executed 2 tests, with 0 failures (0 unexpected) in 0.009 (0.012) seconds
```



License
-------

Licensed under the MIT license.

Copyright (c) 2018 TDD BaseCamp and other contributors

- http://devtesting.jp/tddbc/
- https://github.com/tddbc
