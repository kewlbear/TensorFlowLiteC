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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240219/TensorFlowLiteC.xcframework.zip", checksum: "987b09fcb54ff5419b88add47e0b60bf56fff2e5237c4537385b8e89fb5928ca"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240219/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6195c044c53e85083a2859a3223d977f0bbf5795eda522514891042f44d38621"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240219/TensorFlowLiteCMetal.xcframework.zip", checksum: "a4fb6c94abc6dea84d80f5ffe01d8f952470304f56f9670b6dc84582a2949090"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
