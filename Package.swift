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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240319/TensorFlowLiteC.xcframework.zip", checksum: "00c921a27169e4556ecb257ff8b8461aa5e22dfe40f72bc336a6f93c5b0a08a1"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240319/TensorFlowLiteCCoreML.xcframework.zip", checksum: "ba4fb5e1900c4f12d883691c59cf69701a134c8725ceb719d0eb6150b64e2d5e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240319/TensorFlowLiteCMetal.xcframework.zip", checksum: "cd5837a08dbd8aeb6aa2cae6dceaf6569eb40fdb4eaa5f7202deb3c7e2dcc37a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
