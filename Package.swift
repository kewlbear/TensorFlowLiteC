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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230520/TensorFlowLiteC.xcframework.zip", checksum: "9581128c88ae4996d38b5f12fd477f6f4988edaeba6f938508c792ad14fe8607"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230520/TensorFlowLiteCCoreML.xcframework.zip", checksum: "9638e2f4c55b56b927feaf740111f7f08044cd060738346aaba95999a3ccef02"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230520/TensorFlowLiteCMetal.xcframework.zip", checksum: "5ff7c0d3ca443679c33648dd9e8ab6f0263b7fb7b398219c7cfdcb079be374e3"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
