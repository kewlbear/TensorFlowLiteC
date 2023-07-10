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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230709/TensorFlowLiteC.xcframework.zip", checksum: "bc6d35063ed75a16479c5bde655dcc2a3403f53c27d572fe7e2c9442fbd5101a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230709/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f24a580f1f9a49a91dbbc76b2c0e8033da90f158567587c590d3d82f69acf945"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230709/TensorFlowLiteCMetal.xcframework.zip", checksum: "1a68dba3c57bdadedc95becee7749e896e5b73965f5e0304afa25da4c1858cd2"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
