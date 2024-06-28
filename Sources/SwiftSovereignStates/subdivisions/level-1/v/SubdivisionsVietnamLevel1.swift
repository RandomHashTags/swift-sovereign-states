//
//  SubdivisionsVietnamLevel1.swift
//  
//
//  Created by Evan Anderson on 9/21/22.
//

import Foundation

public typealias SubdivisionsVietnamLevel1 = Locale.Region.Subdivision.Level1.Vietnam

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.vietnam, allSameType: false, type: Locale.Region.SubdivisionType.province)
    struct Vietnam : Locale.Region.Subdivision.Level1Protocol {

        public var type : Locale.Region.SubdivisionType {
            switch self {
            case .can_tho, .da_nang, .haiphong, .hanoi, .ho_chi_minh_city:
                return Locale.Region.SubdivisionType.municipality
            default:
                return Locale.Region.SubdivisionType.province
            }
        }
    }
}

public extension SubdivisionsVietnamLevel1 { // https://en.wikipedia.org/wiki/Provinces_of_Vietnam | https://en.wikipedia.org/wiki/ISO_3166-2:VN
    static let an_giang = get("44")
    static let ba_ria_vung_tau = get("43")
    static let bac_giang = get("54")
    static let bac_kan = get("53")
    static let bac_lieu = get("55")
    static let bac_ninh = get("56")
    static let ben_tre = get("50")
    static let binh_dinh = get("31")
    static let binh_duong = get("57")
    static let binh_phuoc = get("58")
    static let binh_thuan = get("40")
    static let ca_mau = get("59")
    static let cao_bang = get("04")
    static let dak_lak = get("33")
    static let dak_nong = get("72")
    static let dien_bien = get("71")
    static let dong_nai = get("39")
    static let dong_thap = get("45")
    static let gia_lai = get("30")
    static let ha_giang = get("03")
    static let ha_nam = get("63")
    static let ha_tinh = get("23")
    static let hai_duong = get("61")
    static let hau_giang = get("73")
    static let hoa_binh = get("14")
    static let hung_yen = get("66")
    static let khanh_hoa = get("34")
    static let kien_giang = get("47")
    static let kon_tum = get("28")
    static let lai_chau = get("01")
    static let lam_dong = get("35")
    static let lang_son = get("09")
    static let lao_cai = get("02")
    static let long_an = get("41")
    static let nam_dinh = get("67")
    static let nghe_an = get("22")
    static let ninh_binh = get("18")
    static let ninh_thuan = get("36")
    static let phu_tho = get("68")
    static let phu_yen = get("32")
    static let quang_binh = get("24")
    static let quang_nam = get("27")
    static let quang_ngai = get("29")
    static let quang_ninh = get("13")
    static let quang_tri = get("25")
    static let soc_trang = get("52")
    static let son_la = get("05")
    static let tay_ninh = get("37")
    static let thai_binh = get("20")
    static let thai_nguyen = get("69")
    static let thanh_hoa = get("21")
    static let thua_thien_hue = get("26")
    static let tien_giang = get("46")
    static let tra_vinh = get("51")
    static let tuyen_quang = get("07")
    static let vinh_long = get("49")
    static let vinh_phuc = get("70")
    static let yen_bai = get("06")

    static let can_tho = get("CT")
    static let da_nang = get("DN")
    static let hanoi = get("HN")
    static let haiphong = get("HP")
    static let ho_chi_minh_city = get("SG")
}
