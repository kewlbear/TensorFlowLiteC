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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210910/TensorFlowLiteC.xcframework.zip", checksum: "6572959ebd29752b63da20a01596951e768861ee3ff8b4ae5eb6bdeb4f109d40"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210910/TensorFlowLiteCCoreML.xcframework.zip", checksum: "07a09b01eddbf4d5b124a79cfaa7593b4d9c8a47b4e63835726815057abac0a9"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210910/TensorFlowLiteCMetal.xcframework.zip", checksum: "8ed2bed47110704c56abc9a2733818742c5a25b6ae87363e39a46cfe19c1ac83"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
