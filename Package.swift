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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250209/TensorFlowLiteC.xcframework.zip", checksum: "c3989b8406b9db5ef1b804031454c7733b07896eee13705e46be9b60311bed85"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250209/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b897ab5b702ab243b9b5dc05a1e8813d691354d69be64651e2f16aa1422aac42"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250209/TensorFlowLiteCMetal.xcframework.zip", checksum: "4ca6d53c938fde18508fc03227239b4347ba82db110fe153c004af0b868d4007"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
