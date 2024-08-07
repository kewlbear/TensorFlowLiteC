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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240806/TensorFlowLiteC.xcframework.zip", checksum: "937949c39c1622645a7f7774b0131114bcb9e47bf3474dd0b6a7d3e04098f335"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240806/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b3caaf9d0cc2a6d57c2520a2ffad4df1ce9f73b51d839c4a4ddcad2adcf5ec5d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240806/TensorFlowLiteCMetal.xcframework.zip", checksum: "bde17e447b7431fb54813abe56ac89fafdf25fe99144bd2ae2de9c4b1b8bb22e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
