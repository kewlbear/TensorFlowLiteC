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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241223/TensorFlowLiteC.xcframework.zip", checksum: "72432c8e08ede25dc6827a148ec2f378fe0d3173fde9da51854d23baebec0daa"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241223/TensorFlowLiteCCoreML.xcframework.zip", checksum: "01919ff4e202431ac1a4ccbdb6012c3a956098c4b29c1934366cb62bdc33353c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241223/TensorFlowLiteCMetal.xcframework.zip", checksum: "c79bd7ecee32cca0ca44d2ecaa808b5a3dc90c3e8492cf985e21c94fba8b7b60"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
