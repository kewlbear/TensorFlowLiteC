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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250409/TensorFlowLiteC.xcframework.zip", checksum: "51ff373cd6727778f6d04515b36108fb7bdc6c9132d7c479ee20b7feccab6f6a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250409/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6e313fb8ba3d0d4d756bf43e081384bede601dcf0fd474edc4db7d7043a3d9d6"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250409/TensorFlowLiteCMetal.xcframework.zip", checksum: "9d98ab0649e75b86153fbbb7deffea1eb5fbcd5ffdf2ff824be0f17487c5cb0f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
