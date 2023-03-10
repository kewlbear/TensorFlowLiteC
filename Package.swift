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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230309/TensorFlowLiteC.xcframework.zip", checksum: "8ca7839387dfd7f7a09c52b6eb55090d892f8876ae40eae0346523db26ed8c99"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230309/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3e304263c786a51c8dbc4605eacf266517c9aebdb00607ebd4ef4c35e65d4316"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230309/TensorFlowLiteCMetal.xcframework.zip", checksum: "b901ee8f7ff9bad9e17277d71645a81e69662b89ede80b06b7911342c5f35b2c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
