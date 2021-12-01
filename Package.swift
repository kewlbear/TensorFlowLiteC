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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211130/TensorFlowLiteC.xcframework.zip", checksum: "beb27c7c54de72fc8bcce8cf46dcf19c4b932cda9e1d0743d6a3f872f96320d3"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211130/TensorFlowLiteCCoreML.xcframework.zip", checksum: "873c21604b004bb52059aba88826b65b3bbcdbe3a272193f302596a57a655245"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211130/TensorFlowLiteCMetal.xcframework.zip", checksum: "2dcf24e564af67b59acbd0d6d22409107dc98c24e2718350ce48bbcab1bfa2a8"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
