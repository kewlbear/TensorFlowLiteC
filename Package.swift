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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240125/TensorFlowLiteC.xcframework.zip", checksum: "b11ad3301cfa884b2adbaba9a8c81e89340b34d36909dcb7b0402f6e9289207f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240125/TensorFlowLiteCCoreML.xcframework.zip", checksum: "374930095696a7237d8ce272f257216557e77082193a8757bb83b22dbd62ae25"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240125/TensorFlowLiteCMetal.xcframework.zip", checksum: "3032bb4420844167de02ee465d82c6de1995e1aa3ebd9376abd24679bdbd4594"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
