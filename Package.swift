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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221218/TensorFlowLiteC.xcframework.zip", checksum: "dbaab1307fc2b6ba87a12e00a7851c6abbf0f99f6ffaa706ff72fb43909c3592"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221218/TensorFlowLiteCCoreML.xcframework.zip", checksum: "af00164058eeeec95d38a550cc462bb89072762b3e5de497103cd3e35c000eae"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221218/TensorFlowLiteCMetal.xcframework.zip", checksum: "11e8874041e7106609e1caffac6a7238731b3add17297be63914578947f2b335"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
