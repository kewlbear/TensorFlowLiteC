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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230813/TensorFlowLiteC.xcframework.zip", checksum: "0b7b206e94c29548ec5429b446779b22f5b40fa57a7354782d8ccdca3ba08284"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230813/TensorFlowLiteCCoreML.xcframework.zip", checksum: "65219196c00f5185e289a3b08d0537c028e2d27ad170f15b8048203eddbeadf0"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230813/TensorFlowLiteCMetal.xcframework.zip", checksum: "fc5d44165a74d6a82797ca6ce736c3eca20bab27597f63a5595eb97b8a58d1be"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
