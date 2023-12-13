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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231212/TensorFlowLiteC.xcframework.zip", checksum: "bd5e5dc710c664223867019d2261bb48c52585b1fc82aac14daa8038de012203"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231212/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e45bb2e98c0f70754ac572f1228f4d29915023c970e07646240ce34dad4282e8"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231212/TensorFlowLiteCMetal.xcframework.zip", checksum: "6450e004307e2b9628c36cbfc684d8b23630130b960a9a2169de4041050114fc"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
