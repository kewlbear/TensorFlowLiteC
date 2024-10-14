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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241013/TensorFlowLiteC.xcframework.zip", checksum: "4c8b827868aeca9cccb38964b4200433a2b6dfbf14dfff11895af4b20c599d63"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241013/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2665fd9b0d07a01029b56136192d5820462793e86615417c3e84ceb405d0dc1e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241013/TensorFlowLiteCMetal.xcframework.zip", checksum: "2619cd69f35dc76d8c6276fa5ddd182b4383a2f50a950a7a3a8f72b570b3ae14"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
