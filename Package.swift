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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230907/TensorFlowLiteC.xcframework.zip", checksum: "43dcf36f7b69dfe160c409c88b898a9efebe4cb818f71bd40bb8e41db4b62403"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230907/TensorFlowLiteCCoreML.xcframework.zip", checksum: "44d446a3453e71601195405f76333f2f4e8e3e03bb1b9d0b607db0881a4b8ce1"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230907/TensorFlowLiteCMetal.xcframework.zip", checksum: "86ece05e2ce52eb5c618bbd0782f011f5149a5f4563c0d2d3565d5b7c72161e6"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
