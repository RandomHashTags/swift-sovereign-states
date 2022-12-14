//
//  SubdivisionsVietnam.swift
//  
//
//  Created by Evan Anderson on 9/21/22.
//

import Foundation

public enum SubdivisionsVietnam : String, CaseIterable, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Provinces_of_Vietnam
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
    
    public func getCountry() -> Country {
        return Country.vietnam
    }
    
    public func getType() -> SovereignStateSubdivisionType {
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
    
    public func getWikipediaURLSuffix() -> String? {
        switch self {
        case .can_tho,
                .da_nang,
                .haiphong,
                .hanoi,
                .ho_chi_minh_city:
            return nil
        default:
            return "_" + getTypeSuffix().lowercased()
        }
    }
    
    public func getRealName() -> String? {
        switch self {
        case .ba_ria_vung_tau: return "B?? R???a???V??ng T??u"
        case .bac_giang: return "B???c Giang"
        case .bac_kan: return "B???c K???n"
        case .bac_lieu: return "B???c Li??u"
        case .bac_ninh: return "B???c Ninh"
        case .ben_tre: return "B???n Tre"
        case .binh_dinh: return "B??nh ?????nh"
        case .binh_duong: return "B??nh D????ng"
        case .binh_phuoc: return "B??nh Ph?????c"
        case .binh_thuan: return "B??nh Thu???n"
        case .ca_mau: return "C?? Mau"
        case .can_tho: return "C???n Th??"
        case .cao_bang: return "Cao B???ng"
        case .dak_lak: return "?????k L???k"
        case .dak_nong: return "?????k N??ng"
        case .dien_bien: return "??i???n Bi??n"
        case .dong_nai: return "?????ng Nai"
        case .dong_thap: return "?????ng Th??p"
        case .ha_giang: return "H?? Giang"
        case .ha_nam: return "H?? Nam"
        case .ha_tinh: return "H?? T??nh"
        case .hai_duong: return "H???i D????ng"
        case .hau_giang: return "H???u Giang"
        case .hoa_binh: return "H??a B??nh"
        case .hung_yen: return "H??ng Y??n"
        case .khanh_hoa: return "Kh??nh H??a"
        case .kien_giang: return "Ki??n Giang"
        case .lai_chau: return "Lai Ch??u"
        case .lam_dong: return "L??m ?????ng"
        case .lang_son: return "L???ng S??n"
        case .lao_cai: return "L??o Cai"
        case .nam_dinh: return "Nam ?????nh"
        case .nghe_an: return "Ngh??? An"
        case .ninh_binh: return "Ninh B??nh"
        case .ninh_thuan: return "Ninh Thu???n"
        case .phu_tho: return "Ph?? Th???"
        case .phu_yen: return "Ph?? Y??n"
        case .quang_binh: return "Qu???ng B??nh"
        case .quang_nam: return "Qu???ng Nam"
        case .quang_ngai: return "Qu???ng Ng??i"
        case .quang_ninh: return "Qu???ng Ninh"
        case .quang_tri: return "Qu???ng Tr???"
        case .soc_trang: return "S??c Tr??ng"
        case .son_la: return "S??n La"
        case .tay_ninh: return "T??y Ninh"
        case .thai_binh: return "Th??i B??nh"
        case .thai_nguyen: return "Th??i Nguy??n"
        case .thanh_hoa: return "Thanh H??a"
        case .thua_thien_hue: return "Th???a Thi??n Hu???"
        case .tien_giang: return "Ti???n Giang"
        case .tra_vinh: return "Tr?? Vinh"
        case .tuyen_quang: return "Tuy??n Quang"
        case .vinh_long: return "V??nh Long"
        case .vinh_phuc: return "V??nh Ph??c"
        case .yen_bai: return "Y??n B??i"
        default: return nil
        }
    }
    
    public func getGovernmentWebsite() -> String? {
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
