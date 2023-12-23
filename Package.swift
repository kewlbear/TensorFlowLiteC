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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231222/TensorFlowLiteC.xcframework.zip", checksum: "56189916f001ccdd10a6432a16256fc9709aaa6a47bc911da47e661e06c4ba86"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231222/TensorFlowLiteCCoreML.xcframework.zip", checksum: "29dc162eb61fd216cc71bef959ce735e5d158c6de54ee5652beab8e17453aef4"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231222/TensorFlowLiteCMetal.xcframework.zip", checksum: "f5df58cc23ec777b5a75c07c6200db82215e4242394d4601e228cff274c5410f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
