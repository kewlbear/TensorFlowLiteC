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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250308/TensorFlowLiteC.xcframework.zip", checksum: "e5be00cd06a2f38e2298fdb378a36707acc0e900423c3f513ebf6380b448c940"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250308/TensorFlowLiteCCoreML.xcframework.zip", checksum: "597a0dbaf260766cff91304ea895d80ac0349ce4602496a6970b7cb36435d993"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250308/TensorFlowLiteCMetal.xcframework.zip", checksum: "51a542dd70210ef4880901936570ef0da1d0d25eba3bcc9bd2f3e3198f9e6a66"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
