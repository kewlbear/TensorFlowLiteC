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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220901/TensorFlowLiteC.xcframework.zip", checksum: "7073617dad60a99aabb85bc0626477dbc235a7b3e52b881fb07c3d68704ce883"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220901/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2cf76aaf2056684db426f5bc2cd9183cd0a984107d2d5361807136933c97be70"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220901/TensorFlowLiteCMetal.xcframework.zip", checksum: "7af865f8bdf1476485c85f132ebcbae658494db4b59fd90d9d766a0d3d2d0e37"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
