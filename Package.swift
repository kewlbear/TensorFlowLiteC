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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250617/TensorFlowLiteC.xcframework.zip", checksum: "34c148b1d09ef06b717bb2075f297cd039b11fe59bc0205cbd2fc54cb316afc2"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250617/TensorFlowLiteCCoreML.xcframework.zip", checksum: "30aade3c152b58424126190fec162bfc7a1dd1fc777fefeacc90601d4815c0a3"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250617/TensorFlowLiteCMetal.xcframework.zip", checksum: "fbe9c918569f597b1e1cc24819a2ebfe7b0459035c411384509054d67547ac47"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
