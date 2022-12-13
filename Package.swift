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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221212/TensorFlowLiteC.xcframework.zip", checksum: "c057e0cd23907c02bcf8bc5d5f7e73f0a4bac3fe34af205c5c08cb057d795ce9"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221212/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4084ae0caf8ea1646488ab0d692ad40efd40d691b6244e1d6281a907f5b0d997"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221212/TensorFlowLiteCMetal.xcframework.zip", checksum: "e08d4a98e2cb1f014a919e23f161b9104874ec424c5d1c9711b94df7871c4058"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
