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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240705/TensorFlowLiteC.xcframework.zip", checksum: "23dcd8aafe647375e28ff9877ef544f83e1061fe166eb71682329711677731d5"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240705/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f40f82323b7b078dd7eb2709de9712208615e6dc53717e9afc5c3b242b935646"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240705/TensorFlowLiteCMetal.xcframework.zip", checksum: "45f104a0e05f05afca2c1dbdd7697d4deb781c0810e801ac03b11041b0d4b37f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
