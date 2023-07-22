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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230721/TensorFlowLiteC.xcframework.zip", checksum: "4eddde17c7e92c56e3e19f6d6b4c93a22b18e805b635858ca4a6151f26b152d7"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230721/TensorFlowLiteCCoreML.xcframework.zip", checksum: "9baccb833f3caa927f89b39e199c80485692946b72c8c8c87abafb075a5f65d3"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230721/TensorFlowLiteCMetal.xcframework.zip", checksum: "76e7b89e827ceb69d4096faa52489ae59172d1d8c4c41e533c0578247ffcd937"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
