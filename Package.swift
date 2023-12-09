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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231208/TensorFlowLiteC.xcframework.zip", checksum: "72ee48a59be60dd7fc73aa42b8fa23f9e24e63cf90fdb1b1ae60bc0210ee93bc"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231208/TensorFlowLiteCCoreML.xcframework.zip", checksum: "cc0139d5c1cec5c994b70efdd65248fee8ee899a3eef77116b9e452675fb0655"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231208/TensorFlowLiteCMetal.xcframework.zip", checksum: "417329f9b591e26b56b82d6c3c8f93e251f9af953e735e10eabd5a6d59499730"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
