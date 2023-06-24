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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230623/TensorFlowLiteC.xcframework.zip", checksum: "b009b0114583fb3222dee8f216c57940e35023e1c5e633976c0c6938a32d267e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230623/TensorFlowLiteCCoreML.xcframework.zip", checksum: "01d747f635970645969e7634e8d6283fe6964c309eb7c26e9cc660f0f01a6782"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230623/TensorFlowLiteCMetal.xcframework.zip", checksum: "9879154951a75b29c10e0dc5150e95a6f735aad48c58e747e5f15187f472efa0"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
