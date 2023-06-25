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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230624/TensorFlowLiteC.xcframework.zip", checksum: "6a7a0b45330dbeb84fa117756b95d53daa7a25d5e1ec675690a81c6fca163fe1"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230624/TensorFlowLiteCCoreML.xcframework.zip", checksum: "89e6f97fce6241c7bc6e01362a2fccb40d2753fca4a777c9efbb7a83a5471d1b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230624/TensorFlowLiteCMetal.xcframework.zip", checksum: "f749b7602c0af9d9a4c89afa0e7200ad63107eeda682f06c48cec57df760b11a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
