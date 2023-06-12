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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230611/TensorFlowLiteC.xcframework.zip", checksum: "3f787b24f4d5c33d7c3b4d52de4a43214e6008f660ff60c0832acf4df599f5c4"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230611/TensorFlowLiteCCoreML.xcframework.zip", checksum: "eef12a2fd07a8078bab5e78d43d396b38f6e3f1b91d45e18afadd5a08f195d36"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230611/TensorFlowLiteCMetal.xcframework.zip", checksum: "755030298798f61a0bc9b64828c3bd28a20aa4c1ccac46b35ecfc407db858635"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
