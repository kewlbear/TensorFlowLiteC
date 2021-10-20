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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211019/TensorFlowLiteC.xcframework.zip", checksum: "561f3e65bf3aca3d4ec89c5388cf20dbbff13a6cc2ba5e328e6d06a3ea2b4b13"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211019/TensorFlowLiteCCoreML.xcframework.zip", checksum: "432aace41a2fd51d7c00e7e2d80f88833b324ff8e6bb9659b24a04d364b13d25"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211019/TensorFlowLiteCMetal.xcframework.zip", checksum: "b8fcde2f148fbc51f18d0139173043fe53ab9d2dd6c73ac0ce0fecf708630139"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
