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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230717/TensorFlowLiteC.xcframework.zip", checksum: "fd241a18cff59052c85298261c569ed16c015ee1badaf92d952ab82f1c4ecc12"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230717/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d81d560a5707aa5167098366238506821a33cbb705d6a105162a7ad4b44f558c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230717/TensorFlowLiteCMetal.xcframework.zip", checksum: "ff69816ac0f8b6e951aee2032970d6ce88d1056b404a174ad19964d85af7d5a7"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
