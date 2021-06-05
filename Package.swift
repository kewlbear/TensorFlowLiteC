// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "TensorFlowLiteC",
    products: [
        .library(
            name: "TensorFlowLiteC",
            targets: [
                "TensorFlowLiteC",
                "TensorFlowLiteCCoreML",
                "TensorFlowLiteCMetal",
                "Link",
            ]
        ),
    ],
    targets: [
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210604/TensorFlowLiteC.xcframework.zip", checksum: "55766f56b9157ddde8256b77056c4bf760bfa34969aee0ad2fbe83e70e649043"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210604/TensorFlowLiteCCoreML.xcframework.zip", checksum: "5d8dc3da70f1419cabf29e251df4f785e1aa09eb3683dca9f75c350269c2c0a5"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210604/TensorFlowLiteCMetal.xcframework.zip", checksum: "d5289e26eabecc598b0f75ab1320ce9f3ec1dbdd1a19290efac01d639c15c414"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
