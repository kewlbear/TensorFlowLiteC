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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230127/TensorFlowLiteC.xcframework.zip", checksum: "14017e0aa584937c18e03d6c74c475a592b0c01bdbb40f0b43d0165d60297753"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230127/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b4841f286197b7864da5eff1528d884e82bfb1d7e0f3cfc9245af0b33a92f07d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230127/TensorFlowLiteCMetal.xcframework.zip", checksum: "22b6541f832d6e80f7e9ba75d20347dcebda09aadf4856c232082d50f3cfc40a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
