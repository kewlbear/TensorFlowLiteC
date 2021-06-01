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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210531/TensorFlowLiteC.xcframework.zip", checksum: "d47e20bb7931dc853dc4660d810f9dda0a89d1c10b6fd9e4fddb9c7ea52660e5"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210531/TensorFlowLiteCCoreML.xcframework.zip", checksum: "730e2b0b34da1fa480a4658daa1d13102ba95f02d4830c39497b32811c36ed04"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210531/TensorFlowLiteCMetal.xcframework.zip", checksum: "fe9012677f6759930b4b4c289ee38414dbcfefe79c422bf0c3bef137a4e81bd4"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
