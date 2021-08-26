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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210825/TensorFlowLiteC.xcframework.zip", checksum: "012e21c858a5a974166aa6f4ee66a4f08ecf9740c4324a2d38e87ba7f57e0dc0"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210825/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a5b01e37633a5337c687e48f0eb55180a7a4febd83ba8dc534acf3b1f871502c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210825/TensorFlowLiteCMetal.xcframework.zip", checksum: "eb22d646c9223bcd7a6cc9a2c1290f4840427897c56ebe6919688eb41f19e14f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
