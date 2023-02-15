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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230214/TensorFlowLiteC.xcframework.zip", checksum: "aa3ab79f1566129a45700a53968d02e2bc47a0435a7bc61261608c6d2f4dfcec"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230214/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2eb5bd548a25261d77f49c26ff87a8857b48549b2f4b589c0b70f81d9b0e4ceb"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230214/TensorFlowLiteCMetal.xcframework.zip", checksum: "eaafb8046ddb0e0cef403fbc4493e93ef2a67ac160de5375cb6bc7a7f4ed47da"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
