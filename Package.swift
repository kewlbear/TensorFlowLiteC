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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220910/TensorFlowLiteC.xcframework.zip", checksum: "8cdf6e18f4329f01c31f9bba656da9afc443d154ae9e15de3ae25578abf2d898"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220910/TensorFlowLiteCCoreML.xcframework.zip", checksum: "8d5964edaa1b9632b2b1713f269147a0144d75f4f6b700551e46870b4bbaf3e3"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220910/TensorFlowLiteCMetal.xcframework.zip", checksum: "7a1a55ff95b86d9734b6bd385f9ebf6c827bd05f25e62a280f683940642b071c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
