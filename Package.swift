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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230716/TensorFlowLiteC.xcframework.zip", checksum: "d202ba0f234f7de5ecf88cdc601f22df642511def21a525176ebe2b6ea1567d8"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230716/TensorFlowLiteCCoreML.xcframework.zip", checksum: "ea4ad96fec59fa1cc82a3448303c7b49f80cc70edff4f05870e3c2cbfdd1b8f6"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230716/TensorFlowLiteCMetal.xcframework.zip", checksum: "9d021ee8a30c133bc5ab11e3ba3e80245ce86a390d9d0088e7e90037cf051c60"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
