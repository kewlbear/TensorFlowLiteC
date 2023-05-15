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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230514/TensorFlowLiteC.xcframework.zip", checksum: "93d1b2f7a6a6e0671f0ac61efdfdf5a095bd445a33f88bed09264a1c3d9437ae"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230514/TensorFlowLiteCCoreML.xcframework.zip", checksum: "cd5b87b4de6cb73fd305b0076c0048a0f01c6c128fcd9b1bb85348938b1f53d8"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230514/TensorFlowLiteCMetal.xcframework.zip", checksum: "a8627f780109604f2cab19db01b83d0ff2d648843542d689f949e95b8df25795"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
