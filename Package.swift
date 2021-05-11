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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210510/TensorFlowLiteC.xcframework.zip", checksum: "3d072ea5ae752884c2c487a7e18a545bf58693dd1bbcbb20b9e4e0da5f9c0cbe"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210510/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a0f8bf2e88224d95792ea01e07249ac100daa3ac861cd33e688cf411ad9bb834"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210510/TensorFlowLiteCMetal.xcframework.zip", checksum: "0b7d5d48dfaa6e0b6e5d1f6150f38e6cff903a0efe96261402e50845365002bb"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
