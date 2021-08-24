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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210823/TensorFlowLiteC.xcframework.zip", checksum: "ada6bd509e18c452e2b8c6ceaefe4392be1b9f341cef548e1ec958aa7e8b9c3e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210823/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f6f8fcb3bb1277b084422ac7f84f37edf9033089b9ece37863611e0bf6c6dd05"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210823/TensorFlowLiteCMetal.xcframework.zip", checksum: "f0e5bdd1140d9de512e88073929a5da07409355323d943e22b689f56e7daf031"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
