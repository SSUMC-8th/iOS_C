import ProjectDescription

let project = Project(
    name: "Starbucs",
    targets: [
        .target(
            name: "Starbucs",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.Starbucs",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["Starbucs/Sources/**"],
            resources: ["Starbucs/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "StarbucsTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.StarbucsTests",
            infoPlist: .default,
            sources: ["Starbucs/Tests/**"],
            resources: [],
            dependencies: [.target(name: "Starbucs")]
        ),
    ]
)
