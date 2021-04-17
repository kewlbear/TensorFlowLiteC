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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210416/TensorFlowLiteC.xcframework.zip", checksum: "c51fe2a6a2eb93a54ae106f739e330d10a732b65f5f2e0a4b908c4417ae227fb"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210416/TensorFlowLiteCCoreML.xcframework.zip", checksum: "22e4a0c261149fdc81d786416139c0f349b1041b26aa3bfc8202eafb42e0bdc7"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210416/TensorFlowLiteCMetal.xcframework.zip", checksum: "a6dac94265f314318cdfea2e8789dd3ae994eabc4a7c6edae543627ba5e14eda"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
