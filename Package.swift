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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210627/TensorFlowLiteC.xcframework.zip", checksum: "d3ed87311d5bf8a550f743c0524d1c4c57a4b219c19df0c9f058f05a9f1281d0"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210627/TensorFlowLiteCCoreML.xcframework.zip", checksum: "5c7f724594afec62ff71a14258c46fc1484ace91af731c3eaf132f18118f4b6c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210627/TensorFlowLiteCMetal.xcframework.zip", checksum: "57647e47be59d0d6e2977b66db2d513c50e2f2d67dbb06ed53f979343283fc70"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
