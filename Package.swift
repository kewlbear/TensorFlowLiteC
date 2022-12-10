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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221209/TensorFlowLiteC.xcframework.zip", checksum: "6edc9f6779ce7dd7b8efab9713d9d94c1b22f9fd43f3f8d9ee72c9c6eb999d39"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221209/TensorFlowLiteCCoreML.xcframework.zip", checksum: "22d8b85d6c4f98572d658c3e32b8337d4e1cea950e5ee743ab010f30f6f697ca"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221209/TensorFlowLiteCMetal.xcframework.zip", checksum: "589114a06ec8445abe37a78cd637872bf246d0ad972c9f643e562551b2e29bb2"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
