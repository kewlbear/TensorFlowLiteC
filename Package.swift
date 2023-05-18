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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230517/TensorFlowLiteC.xcframework.zip", checksum: "21931a866bce897d37ad92bb0be42b9a81e96268e6ef329af9d40fa4eb910e1f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230517/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7ad438f3892e30eb59673e4976d237ca54c9b620791a359bd19a6ccc40313d0c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230517/TensorFlowLiteCMetal.xcframework.zip", checksum: "243057d5f2dfb878813d3246922764721a73162fa64e3dfa38a1f440a7bbc600"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
