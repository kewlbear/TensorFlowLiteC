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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210613/TensorFlowLiteC.xcframework.zip", checksum: "3aff3bd05e03934c586ce0cc2a34e0fcdab184f0dcbcf3ca3a39f386d091956f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210613/TensorFlowLiteCCoreML.xcframework.zip", checksum: "64358076896fa8c664b1a861d0aa70d146c2d232cefd5a8d1b0dcf22ea7bd3e0"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210613/TensorFlowLiteCMetal.xcframework.zip", checksum: "e4f79d84a14cab285cd2135648fd8328d263568c9607e0aa3b622c1c1843bcec"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
