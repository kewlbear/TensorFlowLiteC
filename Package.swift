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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230123/TensorFlowLiteC.xcframework.zip", checksum: "1927ffc8daa5e591fc166bfc1a6a9bfcf8c6c53d335a9b9218c0d8b1eda73619"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230123/TensorFlowLiteCCoreML.xcframework.zip", checksum: "fb6125d746fe9a1736efc584fcf7c4382a484155db1c542027d93dfaa60510ac"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230123/TensorFlowLiteCMetal.xcframework.zip", checksum: "5f5529a7cbe40519b1f8a97a43112cd94f8a2be2f2193cf0396189357fd8af18"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
