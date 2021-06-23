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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210622/TensorFlowLiteC.xcframework.zip", checksum: "c460d6e8feebfdba0bbe10375e54a749c4d8908f46957e2635a1efba4210a22d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210622/TensorFlowLiteCCoreML.xcframework.zip", checksum: "9b54ac4d98635c786dcb112cf809de38fd7376e1a328f01661fd5246ebcf17ec"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210622/TensorFlowLiteCMetal.xcframework.zip", checksum: "1058fbf555dd504a594be02ef64cc751e8f6f230f78c93e03213fbb2fadfa3d7"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
