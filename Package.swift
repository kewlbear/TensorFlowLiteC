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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240711/TensorFlowLiteC.xcframework.zip", checksum: "aed3d1f89aaabec94fa26c3e6981cfe66aa394c944774866bf099646eeb70bef"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240711/TensorFlowLiteCCoreML.xcframework.zip", checksum: "5c132d701701089bc560b4b2d08406d9f5011c2e7ea31e6ee50572c31ce0ca7a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240711/TensorFlowLiteCMetal.xcframework.zip", checksum: "37732b2f4452b78a2dc62c54e946b4939749148ea0a6247c60e6b53be3c88f6a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
