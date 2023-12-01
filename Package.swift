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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231130/TensorFlowLiteC.xcframework.zip", checksum: "6c78f517a007f41cb46dbe2bd6491dc83349446e09ad9a79e224e79de22a9713"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231130/TensorFlowLiteCCoreML.xcframework.zip", checksum: "dfc3390e0607916565d3b3dffe88f4e94c90a9d6e867d23778780a6bde92c84a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231130/TensorFlowLiteCMetal.xcframework.zip", checksum: "91250bb9d876c4f55b67e58b811a73e030482220764fa22304db9ec9ffc089fc"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
