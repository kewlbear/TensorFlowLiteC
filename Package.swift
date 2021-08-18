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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210817/TensorFlowLiteC.xcframework.zip", checksum: "161de00afd41459ef194642465066af43b34dfa29d9ac0fc5ec1c5e2d2386578"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210817/TensorFlowLiteCCoreML.xcframework.zip", checksum: "9196b94120f08bfb516ffd7b52329c70df88ae7650b5fae98d1b118c4057a6c4"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210817/TensorFlowLiteCMetal.xcframework.zip", checksum: "e86b1cb58ca9208a213630b1f393be348d4a57942592a84987d397caebf8fd68"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
