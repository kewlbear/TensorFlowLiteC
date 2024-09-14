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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240913/TensorFlowLiteC.xcframework.zip", checksum: "0281290ca2be2fac9e30a9618e71cd6bbadc482571433360928d0f187b9564ea"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240913/TensorFlowLiteCCoreML.xcframework.zip", checksum: "8e67e9daa8bea5d6cf45d0567c91435fe9a9f2b41d23bb3cab3bf1cee911d6db"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240913/TensorFlowLiteCMetal.xcframework.zip", checksum: "f708095be42853191c972db0a1a86584d58dc5fe2ba92f40781efc8b3bc13433"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
