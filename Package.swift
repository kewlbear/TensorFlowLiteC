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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250124/TensorFlowLiteC.xcframework.zip", checksum: "85fed313188421c4715495475f50cdb67af1b72274fa3b34df3ee2d8c32e845c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250124/TensorFlowLiteCCoreML.xcframework.zip", checksum: "5984c96ad964306592292344282308c2bb224446f208d9f6efb676e7f31d3e6e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250124/TensorFlowLiteCMetal.xcframework.zip", checksum: "9ed69b862e36395b53dc3500dc798f4d30cb1581afa4c748506afa5153398486"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
