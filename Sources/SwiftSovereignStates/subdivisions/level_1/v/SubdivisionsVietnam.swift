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
    
    public var type : SovereignStateSubdivisionType {
        switch self {
        case .can_tho,
                .da_nang,
                .haiphong,
                .hanoi,
                .ho_chi_minh_city:
            return SovereignStateSubdivisionType.municipalities
        default:
            return SovereignStateSubdivisionType.provinces
        }
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .can_tho,
                .da_nang,
                .haiphong,
                .hanoi,
                .ho_chi_minh_city:
            return nil
        default:
            return "_" + type_suffix.lowercased()
        }
    }
    
    public var governmentURL : String? {
        switch self {
        case .an_giang: return "https://www.angiang.gov.vn"
        case .ba_ria_vung_tau: return "https://baria-vungtau.gov.vn"
        case .bac_giang: return "https://www.bacgiang.gov.vn"
        case .bac_kan: return "https://www.backan.gov.vn"
        case .bac_lieu: return "https://www.baclieu.gov.vn"
        case .bac_ninh: return "https://www.bacninh.gov.vn"
        case .ben_tre: return "https://www.bentre.gov.vn"
        case .binh_dinh: return "https://www.binhdinh.gov.vn"
        case .binh_duong: return "https://www.binhduong.gov.vn"
        case .binh_phuoc: return "https://www.binhphuoc.gov.vn"
        case .binh_thuan: return "https://www.binhthuan.gov.vn"
        case .ca_mau: return "https://www.camau.gov.vn"
        case .can_tho: return "https://cantho.gov.vn"
        case .cao_bang: return "https://www.caobang.gov.vn"
        case .da_nang: return "https://www.danang.gov.vn"
        case .dak_lak: return "https://www.daklak.gov.vn"
        case .dak_nong: return "https://www.daknong.gov.vn"
        case .dien_bien: return "https://www.dienbien.gov.vn"
        case .dong_nai: return "https://www.dongnai.gov.vn"
        case .dong_thap: return "https://dongthap.gov.vn"
        case .gia_lai: return "https://gialai.gov.vn"
        case .ha_giang: return "https://www.hagiang.gov.vn"
        case .ha_nam: return "https://www.hanam.gov.vn"
        case .ha_tinh: return "https://www.hatinh.gov.vn"
        case .hai_duong: return "http://www.haiduong.gov.vn"
        case .haiphong: return "http://www.haiphong.gov.vn"
        case .hanoi: return "https://english.hanoi.gov.vn"
        case .hau_giang: return "http://www.haugiang.gov.vn"
        case .ho_chi_minh_city: return "https://hochiminhcity.gov.vn"
        case .hoa_binh: return "http://www.hoabinh.gov.vn"
        case .hung_yen: return "http://hungyen.gov.vn/en-us/Pages/Default.aspx"
        case .khanh_hoa: return "http://www.khanhhoa.gov.vn"
        case .kien_giang: return "http://www.kiengiang.gov.vn"
        case .kon_tum: return "http://www.kontum.gov.vn"
        case .lai_chau: return "http://www.laichau.gov.vn"
        case .lam_dong: return "http://www.lamdong.gov.vn"
        case .lang_son: return "http://www.langson.gov.vn"
        case .lao_cai: return "http://www.laocai.gov.vn"
        case .long_an: return "http://eng.longan.gov.vn"
        case .nam_dinh: return "https://namdinh.gov.vn"
        case .nghe_an: return "http://www.nghean.gov.vn"
        case .ninh_binh: return "http://www.ninhbinh.gov.vn"
        case .ninh_thuan: return "http://www.ninhthuan.gov.vn"
        case .phu_tho: return "http://www.phutho.gov.vn"
        case .phu_yen: return "http://www.phuyen.gov.vn"
        case .quang_binh: return "http://www.quangbinh.gov.vn/3cms/?cmd=170&lang=en"
        case .quang_nam: return "http://www.quangnam.gov.vn"
        case .quang_ngai: return "http://www.quangngai.gov.vn"
        case .quang_ninh: return "http://quangninh.gov.vn/en-US/Pages/Home.aspx"
        case .quang_tri: return "http://www.quangtri.gov.vn"
        case .soc_trang: return "http://www.soctrang.gov.vn"
        case .son_la: return "http://www.sonla.gov.vn"
        case .tay_ninh: return "https://www.tayninh.gov.vn"
        case .thai_binh: return "https://www.thaibinh.gov.vn"
        case .thai_nguyen: return "https://www.thainguyen.gov.vn"
        case .thanh_hoa: return "https://www.thanhhoa.gov.vn"
        case .thua_thien_hue: return "https://www.thuathienhue.gov.vn"
        case .tien_giang: return "https://tiengiang.gov.vn"
        case .tra_vinh: return "https://www.travinh.gov.vn"
        case .tuyen_quang: return "https://www.tuyenquang.gov.vn"
        case .vinh_long: return "https://vinhlong.gov.vn"
        case .vinh_phuc: return "https://www.vinhphuc.gov.vn"
        case .yen_bai: return "https://yenbai.gov.vn"
        }
    }
}
