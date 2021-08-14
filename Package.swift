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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210813/TensorFlowLiteC.xcframework.zip", checksum: "ae6025cefbb6dda5d5b4e4c225fdd18672fb5ae0cbf74a90a16449cba2f831e6"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210813/TensorFlowLiteCCoreML.xcframework.zip", checksum: "68a47a0912f0f5ce299061fc54d837c13bc614822022c90055562c131549f754"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210813/TensorFlowLiteCMetal.xcframework.zip", checksum: "5a09f3c2d3a5508278bbd39a7392bc9940dc82a83d17a9cf5cf8367601fc7a47"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
