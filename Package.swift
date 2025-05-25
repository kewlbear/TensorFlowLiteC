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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250524/TensorFlowLiteC.xcframework.zip", checksum: "31daec670336eea6d8fd4ab88b02e2e5714828a0d17bd295f88471ccbac15b86"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250524/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2ccef049f36cf3d32aafd903f2178a695311f1bba78d01362bbde9cc4068bd04"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250524/TensorFlowLiteCMetal.xcframework.zip", checksum: "31243b141936d67938f7c28f6a6abdab21b2577de544dbe110c9fc2f8bf0ed12"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
