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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230625/TensorFlowLiteC.xcframework.zip", checksum: "053621e70420033a83fb631197495e759aad07911356fe1c75171dbee88bd028"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230625/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e07686674fe79668100d627350dfb7941d41579b6203e472a08934a5e89088af"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230625/TensorFlowLiteCMetal.xcframework.zip", checksum: "2923f98e098628229be6655cd3abe838e376de913ce46e7d4239961920bdb8b7"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
