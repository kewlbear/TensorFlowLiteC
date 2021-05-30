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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210529/TensorFlowLiteC.xcframework.zip", checksum: "dc64914071141ff6f5e3152c67915fd56490063c9335bf986d7b13336240bad5"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210529/TensorFlowLiteCCoreML.xcframework.zip", checksum: "33803a0ca0698186efd1e328156d05244188e4d1e90a477fbccf1a93adfa041b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210529/TensorFlowLiteCMetal.xcframework.zip", checksum: "d0eac03aa36971e05173dd6a145d4377f92ec7929f102dbbdbcfeda3fc0bf5d2"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
