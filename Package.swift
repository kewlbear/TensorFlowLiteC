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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230614/TensorFlowLiteC.xcframework.zip", checksum: "9ad56a0aab6584ad2eae445241bec9b50da167b8bd74f9771d035ae52e49297a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230614/TensorFlowLiteCCoreML.xcframework.zip", checksum: "64a95b9ddfd8d1bc976fd5b4baedaaf85754402f5174903a6b58baee05223fe0"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230614/TensorFlowLiteCMetal.xcframework.zip", checksum: "83872fe7116759bfa052f3e7a17a6a53a32743d3b867677b7d59f6f26e2401e5"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
