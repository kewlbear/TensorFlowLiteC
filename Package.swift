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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210328/TensorFlowLiteC.xcframework.zip", checksum: "7cf5ddfcb0bc4d3dc296555511a1e3c5fecc5810e3b1fecc521d3fbb7b4fb5d8"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210328/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3c7b2d59ea7df74a4d29d4f280cb5476e0755e8601a449a0b92867f23745c925"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210328/TensorFlowLiteCMetal.xcframework.zip", checksum: "49fb8eb6961882eae5c477629230ff429a845495fb30e844918350d2b1cad0f7"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
