//
//  DataModel.swift
//  launchX
//
//  Created by Jonathan Chua on 10/26/17.
//  Copyright © 2017 Jonathan Chua. All rights reserved.
//

import Foundation

struct Launch: Decodable {
    var launchDateLocal: String?
    struct Rocket: Codable {
        var rocketName: String?
        enum CodingKeys: String, CodingKey {
            case rocketName = "rocket_name"
        }
    }
    var rocket: Rocket
    struct LaunchSite: Codable {
        var siteId: String?
        enum CodingKeys: String, CodingKey {
            case siteId = "site_id"
        }
    }
    var launchSite: LaunchSite
    struct Links: Codable {
        var missionPatch: String?
        var redditCampaign: String?
        var redditLaunch: String?
        var redditRecovery: String?
        var redditMedia: String?
        var presskit: String?
        var articleLink: String?
        var videoLink: String?
        enum CodingKeys: String, CodingKey {
            case missionPatch = "mission_patch"
            case redditCampaign = "reddit_campaign"
            case redditLaunch = "reddit_launch"
            case redditRecovery = "reddit_recovery"
            case redditMedia = "reddit_media"
            case presskit
            case articleLink = "article_link"
            case videoLink = "video_link"
        }
    }
    var links: Links
    var details: String?
    enum CodingKeys: String, CodingKey {
        case launchDateLocal = "launch_date_local"
        case rocket
        case launchSite = "launch_site"
        case links
        case details
    }
}

class LaunchSites {
    let name = [
        "kwajalein_atoll":"Omelek Island, Marshal Islands",
        "ccafs_slc_40":"Cape Canaveral Air Force Station Space Launch Complex 40, Florida",
        "ccafs_lc_13":"Cape Canaveral Air Force Station Space Launch Complex 13, Florida",
        "ksc_lc_39a":"Kennedy Space Center Launch Complex 39A, Cape Canaceral, Florida",
        "vafb_slc_3w":"Vandenberg Air Force Base Space Launch Complex 3W, California",
        "vafb_slc_3w":"Vandenberg Air Force Base Space Launch Complex 3W, California",
        "vafb_slc_4w":"Vandenberg Air Force Base Space Launch Complex 4W, California",
        "stls":"SpaceX South Texas Launch Site, Boca Chica Village, Texas"
    ]
}
