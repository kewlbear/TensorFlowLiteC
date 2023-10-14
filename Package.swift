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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231013/TensorFlowLiteC.xcframework.zip", checksum: "9464ca7faf51b76f40810fcf8f2191486cc2dd32045a56b244698bc63a4b7054"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231013/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d52b3a51492af79a3ac5e6b65962c0edc6c6c2dd1e2d920141046e441403ec44"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231013/TensorFlowLiteCMetal.xcframework.zip", checksum: "4dd857cb48b721d5a1487d7cee763b1ee868d0acf8445f6aefcad6fd1b0afe9a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
