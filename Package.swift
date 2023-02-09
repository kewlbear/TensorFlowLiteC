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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230208/TensorFlowLiteC.xcframework.zip", checksum: "160e756ff3b4d6ad7a5019994acaddaf44d0787147122da74fdf51215703dd6b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230208/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3e7046eed733673b9175d66884f57e737061ffe2e8720a57e9538e5289811e6b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230208/TensorFlowLiteCMetal.xcframework.zip", checksum: "23101684448c895d20b3004030d4a537383a01e1ad544ca6422831e32e258995"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
