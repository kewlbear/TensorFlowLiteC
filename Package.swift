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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230501/TensorFlowLiteC.xcframework.zip", checksum: "9161c703d7ce9af958b8a705e4a40eb0ed68a3f3636b9d205bfcf0e93d373333"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230501/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b3bbf61627b5c15e1760167bff52fb3fe1007a178782da6757175aef8cff2a1f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230501/TensorFlowLiteCMetal.xcframework.zip", checksum: "4bd34d3a44fd9775b188be9d8377a7daa5014dcfcb0ad79a305aabef2d34c503"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
