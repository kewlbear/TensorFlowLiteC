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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240817/TensorFlowLiteC.xcframework.zip", checksum: "4aba7fb5409c450632061e9a8fdac664a77043f975bbd1794dfbe202cc8cb324"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240817/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a97b2a71d987bc236b93b0e88b7e92cef8a07be9f10bdca383dff2d542f7fb00"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240817/TensorFlowLiteCMetal.xcframework.zip", checksum: "afc7225d8d7ec05e6689bf02c17705fe12fd16270f73d27e9b5d8a89285050bd"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
