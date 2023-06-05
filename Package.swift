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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230604/TensorFlowLiteC.xcframework.zip", checksum: "87b000c18ffb027a47c6316cc339bd4fa74ef23f5dceb4ffa4ac61b32342fd9b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230604/TensorFlowLiteCCoreML.xcframework.zip", checksum: "238930ceadf0c43c1841deb8a939ea09095ed72d15208ec55ce183b9f3035d9c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230604/TensorFlowLiteCMetal.xcframework.zip", checksum: "9cceed85564bbe9ca3834148e1e6b73773d3e2627984a91d072d82717897441a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
