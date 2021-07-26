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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210725/TensorFlowLiteC.xcframework.zip", checksum: "d936bf5795f3cfb7cabd7baded7cd5ccdcf86a1769337f022a7ce0dcbe6d52da"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210725/TensorFlowLiteCCoreML.xcframework.zip", checksum: "684c3440ddee6727218de58ee63c351d1ab95b8ec73fe61d895b45341e78428b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210725/TensorFlowLiteCMetal.xcframework.zip", checksum: "ff1dbb3246ebe2a4d1f982a2d449a87494fa732a119a901644b663e0a6859e97"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
