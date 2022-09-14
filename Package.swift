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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220913/TensorFlowLiteC.xcframework.zip", checksum: "448c25c076e07344a4c9a689144484027a770e91d95c920c239dd6babb28dd2b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220913/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c0b44f9867941b342fb91e4cbf55303ffd96a08507ab0ea949864ab87eb431ed"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220913/TensorFlowLiteCMetal.xcframework.zip", checksum: "403c227ae42451cbac1f7b0fe1d5bea3dcdbcf817bb2eac8c93227571586d9d7"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
