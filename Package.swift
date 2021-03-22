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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/20210321/TensorFlowLiteC.zip", checksum: "3d75c5ea710b1b7a9cc3b3308e7239d0e7f0cd6720b3afc1182e92a84b9cd7ff"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/20210321/TensorFlowLiteCCoreML.zip", checksum: "df8040e76e6d9a86549ca7340806bbc33716233fdabdbffb7eca8bb055b52fe9"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/20210321/TensorFlowLiteCMetal.zip", checksum: "66d89e9dc34725e5198ab5d95eaff747f3b376dd7529a9cfaea7ae3242f4eb4b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
