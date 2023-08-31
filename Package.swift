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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230830/TensorFlowLiteC.xcframework.zip", checksum: "22bedb3c3cd36d404d5b0fd4280dee66256b0aeed26f5028bf8b9363c3f79e52"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230830/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2079bb01f9c83167e191dbc2158104f2ad547f864ee5658fa26b3f1a3eec6ee7"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230830/TensorFlowLiteCMetal.xcframework.zip", checksum: "e2f50c45fd59e81bbe964d35a75b8c9eec72f27dd1400e4ecbc910b3f59cf989"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
