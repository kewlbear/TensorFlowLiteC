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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240325/TensorFlowLiteC.xcframework.zip", checksum: "1f79e2140309bcc01c78c3ae7a2791eeb6293f652d98efe1d7b6b21a9cec9c16"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240325/TensorFlowLiteCCoreML.xcframework.zip", checksum: "75d33cf53f47973b579a52bbe899cfbf89b69c646591d79c55f5633641700ea8"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240325/TensorFlowLiteCMetal.xcframework.zip", checksum: "b043d5e792008ff9fe5cfbc9df0dbd4e8be6e5070f823cb9cd9261e3af3b9915"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
