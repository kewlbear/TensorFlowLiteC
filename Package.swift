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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240207/TensorFlowLiteC.xcframework.zip", checksum: "871a5fa50f7f722e881a742fd060ac35ecd68617b86a7860f72ca54f77bcd849"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240207/TensorFlowLiteCCoreML.xcframework.zip", checksum: "bb0d26b64699578c40a682ed7ecde3743639fd7c4c6522097be9da0a74ac977b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240207/TensorFlowLiteCMetal.xcframework.zip", checksum: "aac343a97ee5643d721ffdceea58d6f4047c057ecffa56c9d54e8e2418ff635b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
