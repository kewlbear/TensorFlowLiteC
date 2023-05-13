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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230512/TensorFlowLiteC.xcframework.zip", checksum: "48b300892a1b14be984168c20aaebf2dc4578faf7d0828c14d95a3a2698b23d7"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230512/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3790de9c63c5719dece66942afd30023f349f44d9dcef979433a4fe11a325548"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230512/TensorFlowLiteCMetal.xcframework.zip", checksum: "925342d15f4dd5014106dfa0c7971c387159633157211a1224a89cb678c00c05"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
