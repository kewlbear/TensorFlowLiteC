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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221221/TensorFlowLiteC.xcframework.zip", checksum: "d2bb948c520497ca2f605528efcceddff56ded08911f23829eddb8fa2ae1e88c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221221/TensorFlowLiteCCoreML.xcframework.zip", checksum: "281251c722313b709a7bc7d3f7286dac2092876bead3a8c4d52874466f2cf72d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221221/TensorFlowLiteCMetal.xcframework.zip", checksum: "3fcdc5be457c252cc2927e11d6c532b83612063bcc227568a316eda2db90cff2"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
