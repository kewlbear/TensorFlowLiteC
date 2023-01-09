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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230108/TensorFlowLiteC.xcframework.zip", checksum: "422cbec64f6d2824ce6cbf218a746ef5c55919829b96dcf69e80a514415691da"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230108/TensorFlowLiteCCoreML.xcframework.zip", checksum: "8e14cde4bde233e99ed9e1e520ab8d32e731c22487731935c6fa3e0a9d49bfbb"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230108/TensorFlowLiteCMetal.xcframework.zip", checksum: "abaa778471e7cfe9e6aaf6b5089b7fb845037580eba74712d02f6f12e1ffd07d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
