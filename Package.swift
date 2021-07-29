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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210728/TensorFlowLiteC.xcframework.zip", checksum: "01cb508be0910d30f0f59031b2aa98e5ff85dc3c12f3734a38b61e899ce39273"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210728/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e6a13056d3b16f3ff3e0ce45b8df0291296b03f4fedf3d80132cac2a2970e929"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210728/TensorFlowLiteCMetal.xcframework.zip", checksum: "6e7e267407044dfabcbb90257fc2e3fc11fc4d10c9a1de2cd1c3f546e439ee0b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
