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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240430/TensorFlowLiteC.xcframework.zip", checksum: "d4a253afad1c71c9a221e42c8df7b7fccfd21c3489e2f26fce5bdeb315ce36c8"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240430/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7e0eadc1ef6a11ea384233f3bdddc8fa991936f93631adf86b7118d6a76b6ea6"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240430/TensorFlowLiteCMetal.xcframework.zip", checksum: "519ba66c1813bd0f6c1ac8d148df9aedbfe48553005b77225a70b86e25dd0fc6"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
