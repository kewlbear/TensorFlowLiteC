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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250411/TensorFlowLiteC.xcframework.zip", checksum: "9aa639b0c055cc1a736b3273032eeb4eebddc66eb58ee18670b37190bbc77b23"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250411/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6e5442961e8ffe37659ddcb1f477b907186c5c13e9fb0843c53ba5d6958564df"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250411/TensorFlowLiteCMetal.xcframework.zip", checksum: "5650db32fcdc9d500112365bb33b4e97999dffdb090338335536399a2e3a3e67"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
