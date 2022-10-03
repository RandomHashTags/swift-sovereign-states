//
//  TemperateZone.swift
//  
//
//  Created by Evan Anderson on 9/29/22.
//

import Foundation

public enum TemperateZone {
    case northern_frigid
    case northern_temperate
    case northern_subtropical
    case tropical
    case southern_subtropical
    case southern_temperate
    case southern_frigid
    
    func getSeason(type: WeatherSeasonType, month: Int, day: Int) -> WeatherSeason {
        switch self {
        case .northern_frigid,
                .northern_temperate,
                .northern_subtropical:
            return getSeason(type: type, month: month, day: day, northern: true)
        case .southern_subtropical,
                .southern_temperate,
                .southern_frigid:
            return getSeason(type: type, month: month, day: day, northern: false)
        default:
            return WeatherSeason.summer
        }
    }
    private func getSeason(type: WeatherSeasonType, month: Int, day: Int, northern: Bool) -> WeatherSeason {
        let isSpring:Bool, isSummer:Bool, isAutumn:Bool
        switch type {
        case .astronomical:
            isSpring = month == 3 && day >= 21 || month >= 4 && (month < 6 || month == 6 && day <= 21)
            isSummer = month == 6 && day >= 21 || month >= 7 && (month < 9 || month == 9 && day <= 23)
            isAutumn = month == 9 && day >= 23 || month >= 10 && (month < 12 || month == 12 && day <= 22)
            break
        case .meteorological:
            isSpring = month >= 3 && month < 6
            isSummer = month >= 6 && month < 9
            isAutumn = month >= 9 && month < 12
            break
        case .solar:
            isSpring = month >= 2 && month < 5
            isSummer = month >= 5 && month < 8
            isAutumn = month >= 8 && month < 11
        }
        let season:WeatherSeason = isSpring ? .spring : isSummer ? .summer : isAutumn ? .autumn : .winter
        return northern ? season : season == .spring ? .autumn : season == .summer ? .winter : season == .autumn ? .spring : .summer
    }
}
