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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250323/TensorFlowLiteC.xcframework.zip", checksum: "adbc48efeac79600f82deb98661aec3d7c368ff3115134dbab9b6524bcd609ec"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250323/TensorFlowLiteCCoreML.xcframework.zip", checksum: "bf536a26ed43b9f8321a74da4572a69669f0a93ac706b4e7576cc31d869e161a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250323/TensorFlowLiteCMetal.xcframework.zip", checksum: "73723eb537516433ff173d7a2379b8ae2c917d33b6d9e7212877557ecbfce460"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
