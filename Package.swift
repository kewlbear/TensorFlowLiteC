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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230805/TensorFlowLiteC.xcframework.zip", checksum: "c393f38aecbe9e93ee08e3e7866a5d689a6916ab9fb87b5aa4008dbfb79c5661"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230805/TensorFlowLiteCCoreML.xcframework.zip", checksum: "898c395f01e706b3f198fbdc92c2da415ecf1cff5af2f936de72fedd15a9a2f7"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230805/TensorFlowLiteCMetal.xcframework.zip", checksum: "186837a4b8549c926c1fdd9b975876ff83eaf092d0398767e5cd6d7d1a91a13d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
