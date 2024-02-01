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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240131/TensorFlowLiteC.xcframework.zip", checksum: "758db94d8311f3080058647f77a44e6f40af89dba778b7f7d346ec051c054d43"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240131/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c396bab2ac4b45672f3d549ebc2054855ad473392f3de750b3bb1b50c3b65e7d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240131/TensorFlowLiteCMetal.xcframework.zip", checksum: "27489f6d67a08a9b8f8cd4f31d8fc2a76f1b7c83eefaa128c3a361262aa3434a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
