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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221227/TensorFlowLiteC.xcframework.zip", checksum: "e5c32eb5769715a37204771e301bfd08d363d10630f5dbcb84b6a1f891889a23"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221227/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d30a8730381c23ca5e29ac637c127a3d10c3495f7cf14e856fbab5a9de1e4bfa"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221227/TensorFlowLiteCMetal.xcframework.zip", checksum: "ca3cf0714b35421944f0c4a4a64bfd224ad782c3f823a3b09ccb84636d3cdf24"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
