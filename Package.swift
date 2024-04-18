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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240417/TensorFlowLiteC.xcframework.zip", checksum: "a3786ca0fab9664dd56d962f34cf0611533ad9d34be87b84b60b87bfaf1f8c45"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240417/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3fa26984a0292f197c556d1ca234901407edaa89385a4aa31990b3b2710c1b84"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240417/TensorFlowLiteCMetal.xcframework.zip", checksum: "da59f8fafce29863edc8668ffa8ca85a250835fae3edba2535b318c9a121086d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
