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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210930/TensorFlowLiteC.xcframework.zip", checksum: "7506e2293932a1b10c8ad1d265c44587d9adf0c62154ba7edcc5a8450f4bc994"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210930/TensorFlowLiteCCoreML.xcframework.zip", checksum: "ed5757ba5ee6347b78bffdce17d47f15bb49ec6f4556c35512244402250a0682"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210930/TensorFlowLiteCMetal.xcframework.zip", checksum: "8a74b880afca447af46471026f71aa5303bc8d35539ed316d073dd4a4f201eb9"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
