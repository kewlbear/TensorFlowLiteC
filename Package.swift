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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220828/TensorFlowLiteC.xcframework.zip", checksum: "4660a5e9dd1f51d9d6475a7479fbb8729f12b1361140337eae2b69007a395daf"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220828/TensorFlowLiteCCoreML.xcframework.zip", checksum: "46a108ee843a7999eb5b4a52b8aeab4fe32e749fe40dd8e7c559afaebd3edc90"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220828/TensorFlowLiteCMetal.xcframework.zip", checksum: "8a57e09f58edd009253708d8fa7ee67ea381ef3fe284cc3f061ad7ac9d9eabdb"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
