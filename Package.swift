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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/2.7.0/TensorFlowLiteC.xcframework.zip", checksum: "0988e61d98c654de39336d05d1f8a994653eb69da5c2dbc1ee5a57727d7bf584"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/2.7.0/TensorFlowLiteCCoreML.xcframework.zip", checksum: "422bddef51f9c17da922ff74af060642d1bd6dba535d4a4a775239e9cf7a38ce"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/2.7.0/TensorFlowLiteCMetal.xcframework.zip", checksum: "a6c75b8ba40ce0fa0bcd866c6448933b4de1fbcbc1333b96728842eb40e8095d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
