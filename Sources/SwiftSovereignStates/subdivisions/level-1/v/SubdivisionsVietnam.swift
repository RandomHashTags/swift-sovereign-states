//
//  SubdivisionsVietnam.swift
//  
//
//  Created by Evan Anderson on 9/21/22.
//

import Foundation

public enum SubdivisionsVietnam : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Provinces_of_Vietnam
    case an_giang
    case ba_ria_vung_tau
    case bac_giang
    case bac_kan
    case bac_lieu
    case bac_ninh
    case ben_tre
    case binh_dinh
    case binh_duong
    case binh_phuoc
    case binh_thuan
    case ca_mau
    case can_tho
    case cao_bang
    case da_nang
    case dak_lak
    case dak_nong
    case dien_bien
    case dong_nai
    case dong_thap
    case gia_lai
    case ha_giang
    case ha_nam
    case ha_tinh
    case hai_duong
    case haiphong
    case hanoi
    case hau_giang
    case ho_chi_minh_city
    case hoa_binh
    case hung_yen
    case khanh_hoa
    case kien_giang
    case kon_tum
    case lai_chau
    case lam_dong
    case lang_son
    case lao_cai
    case long_an
    case nam_dinh
    case nghe_an
    case ninh_binh
    case ninh_thuan
    case phu_tho
    case phu_yen
    case quang_binh
    case quang_nam
    case quang_ngai
    case quang_ninh
    case quang_tri
    case soc_trang
    case son_la
    case tay_ninh
    case thai_binh
    case thai_nguyen
    case thanh_hoa
    case thua_thien_hue
    case tien_giang
    case tra_vinh
    case tuyen_quang
    case vinh_long
    case vinh_phuc
    case yen_bai
    
    public var country : Locale.Region {
        return Locale.Region.vietnam
    }
    
    public var type : Locale.Region.SubdivisionType {
        switch self {
        case .can_tho,
                .da_nang,
                .haiphong,
                .hanoi,
                .ho_chi_minh_city:
            return Locale.Region.SubdivisionType.municipality
        default:
            return Locale.Region.SubdivisionType.province
        }
    }
}
