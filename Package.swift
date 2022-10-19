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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221018/TensorFlowLiteC.xcframework.zip", checksum: "a68b8cae4d10a44e78f40ee3dd4ac0c77f48246ce0548867a0c0569c3431374d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221018/TensorFlowLiteCCoreML.xcframework.zip", checksum: "863f72ba007a313694d61cdb889dd8a0f1a6dc2574e626b5eadec9b53c0996d5"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221018/TensorFlowLiteCMetal.xcframework.zip", checksum: "befc6549b85824399d67fdb61b67401195fcce1ec41d3b863fd1ba2b3a4faae4"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
