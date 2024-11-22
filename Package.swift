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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241121/TensorFlowLiteC.xcframework.zip", checksum: "8e0fab3c3ef918844cbc6ddbaf9f6bec22290ea646cc99b17b2eb8f4e2db8397"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241121/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2c5fbe913a36e357713b3b0c03d25de31505e70ea1ab5236391354d5176ffcd6"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241121/TensorFlowLiteCMetal.xcframework.zip", checksum: "d309a68102d87da61439953852a6c4e8bf094f473aa882d1cfed803cde652944"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
