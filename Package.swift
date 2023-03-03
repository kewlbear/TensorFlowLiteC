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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230302/TensorFlowLiteC.xcframework.zip", checksum: "c978aabfe130fab9362b8ac07080d8772fd3d82a87e63580cc7f3ea610af936e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230302/TensorFlowLiteCCoreML.xcframework.zip", checksum: "75502b996940720c83017e7d7034f09df4d48017b9550bcc07123308043c18b9"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230302/TensorFlowLiteCMetal.xcframework.zip", checksum: "2b15e4a518bed719b9d869f50b1bce915ab3692effe58d551d210b39b0e328fa"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
