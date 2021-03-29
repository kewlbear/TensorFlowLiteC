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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/2.4.0/TensorFlowLiteC.xcframework.zip", checksum: "cc307668f8d49a16cd6e67e748b33fc4a3ac910773188e76a11d408d24019535"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/2.4.0/TensorFlowLiteCCoreML.xcframework.zip", checksum: "1b96b58159cc334c375ca964ceae8b689f8ed719d35577bccbb6a4eae53e15ef"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/2.4.0/TensorFlowLiteCMetal.xcframework.zip", checksum: "a64443d8f08f0e27b2c491ec77f81e65e39363bcc5a8eb1d19b4bb2305016db5"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
