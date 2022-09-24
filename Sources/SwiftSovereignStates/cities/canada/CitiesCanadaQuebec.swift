//
//  CitiesCanadaQuebec.swift
//  
//
//  Created by Evan Anderson on 9/24/22.
//

import Foundation

public enum CitiesCanadaQuebec : String, CaseIterable, SovereignStateCity {
    case abercorn
    case acton_vale
    case adstock
    case aguanish
    case akulivik
    case albanel
    case albertville
    case alleyn_et_cawood
    case alma
    case amherst
    case amos
    case amqui
    case ange_gardien
    case armagh
    case arundel
    case ascot_corner
    case aston_jonction
    case auclair
    case audet
    case aumond
    case aupaluk
    case austin
    case authier
    case authier_nord
    case ayer_s_cliff
    
    case baie_comeau
    case baie_d_urfé
    case baie_des_sables
    case baie_du_febvre
    case baie_johan_beetz
    case baie_saint_paul
    case baie_sainte_catherine
    case baie_trinité
    case barkmere
    case barnston_ouest
    case barraute
    case batiscan
    case beaconsfield
    case beauceville
    case beauharnois
    case beaulac_garthby
    case beaumont
    case beaupré
    case bedford_town
    case bedford_township
    case belcourt
    case belleterre
    case beloeil
    case berry
    case berthier_sur_mer
    case berthierville
    case biencourt
    case blainville
    case blanc_sablon
    case blue_sea
    case boileau
    case bois_des_filion
    case bois_franc
    case boisbriand
    case boischatel
    case bolton_est
    case bolton_ouest
    case bonaventure
    case bonne_espérance
    case bonsecours
    case boucherville
    case bouchette
    case bowman
    case brigham
    case bristol
    case brome
    case bromont
    case brossard
    case brownsburg_chatham
    case bryson
    case brébeuf
    case bury
    case béarn
    case bécancour
    case bégin
    case béthanie
    
    case cacouna
    case calixa_lavallée
    case campbell_s_bay
    case candiac
    case cantley
    case cap_chat
    case cap_saint_ignace
    case cap_santé
    case caplan
    case carignan
    case carleton_sur_mer
    case cascapédia__saint_jules
    case causapscal
    case cayamant
    case chambly
    case chambord
    case champlain
    case champneuf
    case chandler
    case chapais
    case charette
    case charlemagne
    case chartierville
    case chazel
    case chelsea
    case chertsey
    case chesterville
    case chibougamau
    case chichester
    case chisasibi
    case chute_aux_outardes
    case chute_saint_philippe
    case château_richer
    case châteauguay
    case chénéville
    case clarendon
    case clermont_abitibi_ouest
    case clermont_charlevoix_est
    case clerval
    case cleveland
    case cloridorme
    case coaticook
    case colombier
    case compton
    case contrecoeur
    case cookshire_eaton
    case coteau_du_lac
    case courcelles
    case cowansville
    case crabtree
    case côte_nord_du_golfe_du_saint_laurent
    case côte_saint_luc
    
    case danville
    case daveluyville
    case delson
    case denholm
    case desbiens
    case deschaillons_sur_saint_laurent
    case deschambault_grondines
    case deux_montagnes
    case disraeli_parish
    case disraeli_town
    case dixville
    case dolbeau_mistassini
    case dollard_des_ormeaux
    case donnacona
    case dorval
    case dosquet
    case drummondville
    case dudswell
    case duhamel
    case duhamel_ouest
    case dundee
    case dunham
    case duparquet
    case dupuy
    case durham_sud
    case dégelis
    case déléage
    
    case east_angus
    case east_broughton
    case east_farnham
    case east_hereford
    case eastmain
    case eastman
    case eeyou_istchee_baie_james
    case egan_sud
    case elgin
    case entrelacs
    case escuminac
    case esprit_saint
    case estérel
    
    case farnham
    case fassett
    case ferland_et_boilleau
    case ferme_neuve
    case fermont
    case forestville
    case fort_coulonge
    case fortierville
    case fossambault_sur_le_lac
    case frampton
    case franklin
    case franquelin
    case frelighsburg
    case frontenac
    case fugèreville
    
    case gallichan
    case gaspé
    case gatineau
    case girardville
    case godbout
    case godmanchester
    case gore
    case gracefield
    case granby
    case grand_métis
    case grand_remous
    case grand_saint_esprit
    case grande_rivière
    case grande_vallée
    case grandes_piles
    case grenville
    case grenville_sur_la_rouge
    case gros_mécatina
    case grosse_île
    case grosses_roches
    case guérin
    
    case ham_nord
    case ham_sud
    case hampden
    case hampstead
    case harrington
    case hatley_municipality
    case hatley_township
    case havelock
    case havre_saint_pierre
    case hemmingford_township
    case hemmingford_village
    case henryville
    case hinchinbrooke
    case honfleur
    case hope
    case hope_town
    case howick
    case huberdeau
    case hudson
    case huntingdon
    case hébertville
    case hébertville_station
    case hérouxville
    
    case inukjuak
    case inverness
    case irlande
    case ivry_sur_le_lac
    case ivujivik
    
    case joliette
    
    case kamouraska
    case kangiqsualujjuaq
    case kangiqsujuaq
    case kangirsuk
    case kawawachikamach
    case kazabazua
    case kiamika
    case kingsbury
    case kingsey_falls
    case kinnear_s_mills
    case kipawa
    case kirkland
    case kuujjuaq
    case kuujjuarapik
    
    case l_ancienne_lorette
    case l_ange_gardien_la_côte_de_beaupré
    case l_ange_gardien_les_collines_de_el_l_outaouais
    case l_anse_saint_jean
    case l_ascension
    case l_ascension_de_notre_seigneur
    case l_ascension_de_patapédia
    case l_assomption
    case l_avenir
    case l_isle_aux_allumettes
    case l_isle_aux_coudres
    case l_isle_verte
    case l_islet
    case l_épiphanie
    case l_île_cadieux
    case l_île_d_anticosti
    case l_île_dorval
    case l_île_du_grand_calumet
    case l_île_perrot
    case la_bostonnais
    case la_conception
    case la_corne
    case la_doré
    case la_durantaye
    case la_guadeloupe
    case la_macaza
    case la_malbaie
    case la_martre
    case la_minerve
    case la_morandière
    case la_motte
    case la_patrie
    case la_pocatière
    case la_prairie
    case la_présentation
    case la_pêche
    case la_reine
    case la_rédemption
    case la_sarre
    case la_trinité_des_monts
    case la_tuque
    case la_visitation_de_l_île_dupas
    case la_visitation_de_yamaska
    case labelle
    case labrecque
    case lac_au_saumon
    case lac_aux_sables
    case lac_beauport
    case lac_bouchette
    case lac_brome
    case lac_delage
    case lac_des_aigles
    case lac_des_plages
    case lac_des_seize_îles
    case lac_des_écorces
    case lac_drolet
    case lac_du_cerf
    case lac_etchemin
    case lac_frontière
    case lac_mégantic
    case lac_poulin
    case lac_saguay
    case lac_saint_joseph
    case lac_saint_paul
    case lac_sainte_marie
    case lac_sergent
    case lac_simon
    case lac_supérieur
    case lac_tremblant_nord
    case lac_édouard
    case lachute
    case lacolle
    case laforce
    case lamarche
    case lambton
    case landrienne
    case lanoraie
    case lantier
    case larouche
    case latulipe_et_gaboury
    case launay
    case laurier_station
    case laurierville
    case laval
    case lavaltrie
    case laverlochère_angliers
    case lawrenceville
    case lebel_sur_quévillon
    case leclercville
    case lefebvre
    case lejeune
    case lemieux
    case les_bergeronnes
    case les_coteaux
    case les_cèdres
    case les_escoumins
    case les_hauteurs
    case les_méchins
    case les_éboulements
    case les_îles_de_la_madeleine
    case lingwick
    case litchfield
    case lochaber
    case lochaber_partie_ouest
    case longue_pointe_de_mingan
    case longue_rive
    case longueuil
    case lorraine
    case lorrainville
    case lotbinière
    case louiseville
    case low
    case lyster
    case léry
    case lévis
    
    case macamic
    case maddington_falls
    case magog
    case malartic
    case mandeville
    case maniwaki
    case manseau
    case mansfield_et_pontefract
    case maria
    case maricourt
    case marieville
    case marsoui
    case marston
    case martinville
    case mascouche
    case maskinongé
    case massueville
    case matagami
    case matane
    case matapédia
    case mayo
    case mcmasterville
    case melbourne
    case mercier
    case messines
    case milan
    case mille_isles
    case mirabel
    case mistissini
    case moffet
    case mont_blanc
    case mont_carmel
    case mont_joli
    case mont_laurier
    case mont_royal
    case mont_saint_grégoire
    case mont_saint_hilaire
    case mont_saint_michel
    case mont_saint_pierre
    case mont_tremblant
    case montcalm
    case montcerf_lytton
    case montebello
    case montmagny
    case montpellier
    case montréal
    case montréal_est
    case montréal_ouest
    case morin_heights
    case mulgrave_et_derry
    case murdochville
    case métabetchouan__lac_à_la_croix
    case métis_sur_mer
    
    case namur
    case nantes
    case napierville
    case natashquan
    case nemaska
    case neuville
    case new_carlisle
    case new_richmond
    case newport
    case nicolet
    case nominingue
    case normandin
    case normétal
    case north_hatley
    case notre_dame_auxiliatrice_de_buckland
    case notre_dame_de_bonsecours
    case notre_dame_de_ham
    case notre_dame_de_l_île_perrot
    case notre_dame_de_la_merci
    case notre_dame_de_la_paix
    case notre_dame_de_la_salette
    case notre_dame_de_lorette
    case notre_dame_de_lourdes_joliette
    case notre_dame_de_lourdes_l_érable
    case notre_dame_de_montauban
    case notre_dame_de_pontmain
    case notre_dame_de_stanbridge
    case notre_dame_des_anges
    case notre_dame_des_bois
    case notre_dame_des_monts
    case notre_dame_des_neiges
    case notre_dame_des_pins
    case notre_dame_des_prairies
    case notre_dame_des_sept_douleurs
    case notre_dame_du_bon_conseil_parish
    case notre_dame_du_bon_conseil_village
    case notre_dame_du_laus
    case notre_dame_du_mont_carmel
    case notre_dame_du_nord
    case notre_dame_du_portage
    case notre_dame_du_rosaire
    case notre_dame_du_sacré_coeur_d_issoudun
    case nouvelle
    case noyan
    case nédélec
    
    case ogden
    case oka
    case orford
    case ormstown
    case otter_lake
    case otterburn_park
    
    case packington
    case padoue
    case palmarolle
    case papineauville
    case parisville
    case paspébiac
    case percé
    case petit_saguenay
    case petite_rivière_saint_françois
    case petite_vallée
    case piedmont
    case pierreville
    case pike_river
    case pincourt
    case piopolis
    case plaisance
    case plessisville_parish
    case plessisville_town
    case pohénégamook
    case pointe_aux_outardes
    case pointe_calumet
    case pointe_claire
    case pointe_des_cascades
    case pointe_fortune
    case pointe_lebel
    case pointe_à_la_croix
    case pont_rouge
    case pontiac
    case port_cartier
    case port_daniel__gascons
    case portage_du_fort
    case portneuf
    case portneuf_sur_mer
    case potton
    case poularies
    case preissac
    case price
    case princeville
    case prévost
    case puvirnituq
    case péribonka
    
    case quaqtaq
    case québec
    
    case racine
    case ragueneau
    case rapide_danseur
    case rapides_des_joachims
    case rawdon
    case repentigny
    case richelieu
    case richmond
    case rigaud
    case rimouski
    case ripon
    case ristigouche_partie_sud_est
    case rivière_au_tonnerre
    case rivière_beaudette
    case rivière_bleue
    case rivière_du_loup
    case rivière_héva
    case rivière_ouelle
    case rivière_rouge
    case rivière_saint_jean
    case rivière_à_claude
    case rivière_à_pierre
    case rivière_éternité
    case roberval
    case rochebaucourt
    case roquemaure
    case rosemère
    case rougemont
    case rouyn_noranda
    case roxton
    case roxton_falls
    case roxton_pond
    case rémigny
    
    case sacré_coeur
    case sacré_coeur_de_jésus
    case saguenay
    case saint_adalbert
    case saint_adelme
    case saint_adelphe
    case saint_adolphe_d_howard
    case saint_adrien
    case saint_adrien_d_irlande
    case saint_agapit
    case saint_aimé
    case saint_aimé_des_lacs
    case saint_aimé_du_lac_des_îles
    case saint_alban
    case saint_albert
    case saint_alexandre
    case saint_alexandre_de_kamouraska
    case saint_alexandre_des_lacs
    case saint_alexis
    case saint_alexis_de_matapédia
    case saint_alexis_des_monts
    case saint_alfred
    case saint_alphonse
    case saint_alphonse_de_granby
    case saint_alphonse_rodriguez
    case saint_amable
    case saint_ambroise
    case saint_ambroise_de_kildare
    case saint_anaclet_de_lessard
    case saint_andré_avellin
    case saint_andré_d_argenteuil
    case saint_andré_de_kamouraska
    case saint_andré_de_restigouche
    case saint_andré_du_lac_saint_jean
    case saint_anicet
    case saint_anselme
    case saint_antoine_de_l_isle_aux_grues
    case saint_antoine_de_tilly
    case saint_antoine_sur_richelieu
    case saint_antonin
    case saint_apollinaire
    case saint_armand
    case saint_arsène
    case saint_athanase
    case saint_aubert
    case saint_augustin_le_golf_du_saint_laurent
    case saint_augustin_maria_chapdelaine
    case saint_augustin_de_desmaures
    case saint_augustin_de_woburn
    case saint_barnabé
    case saint_barnabé_sud
    case saint_barthélemy
    case saint_basile
    case saint_basile_le_grand
    case saint_benjamin
    case saint_benoît_du_lac
    case saint_benoît_labre
    case saint_bernard
    case saint_bernard_de_lacolle
    case saint_bernard_de_michaudville
    case saint_blaise_sur_richelieu
    case saint_bonaventure
    case saint_boniface
    case saint_bruno
    case saint_bruno_de_guigues
    case saint_bruno_de_kamouraska
    case saint_bruno_de_montarville
    case saint_calixte
    case saint_camille
    case saint_camille_de_lellis
    case saint_casimir
    case saint_charles_borromée
    case saint_charles_de_bellechasse
    case saint_charles_de_bourget
    case saint_charles_garnier
    case saint_charles_sur_richelieu
    case saint_christophe_d_arthabaska
    case saint_chrysostome
    case saint_claude
    case saint_clet
    case saint_clément
    case saint_cléophas
    case saint_cléophas_de_brandon
    case saint_colomban
    case saint_constant
    case saint_cuthbert
    case saint_cyprien_rivière_du_loup
    case saint_cyprien_les_etchemins
    case saint_cyprien_de_napierville
    case saint_cyrille_de_lessard
    case saint_cyrille_de_wendover
    case saint_célestin_municipality
    case saint_célestin_village
    case saint_césaire
    case saint_côme
    case saint_côme__linière
    case saint_damase_les_maskoutains
    case saint_damase_la_matapédia
    case saint_damase_de_l_islet
    case saint_damien
    case saint_damien_de_buckland
    case saint_david
    case saint_david_de_falardeau
    case saint_denis_de_brompton
    case saint_denis_de_la_bouteillerie
    case saint_denis_sur_richelieu
    case saint_didace
    case saint_dominique
    case saint_dominique_du_rosaire
    case saint_donat_matawinie
    case saint_donat_la_mitis
    case saint_edmond_de_grantham
    case saint_edmond_les_plaines
    case saint_elphège
    case saint_elzéar_bonaventure
    case saint_elzéar_la_nouvelle_beauce
    case saint_elzéar_de_témiscouata
    case saint_esprit
    case saint_eugène
    case saint_eugène_d_argentenay
    case saint_eugène_de_guigues
    case saint_eugène_de_ladrière
    case saint_eustache
    case saint_eusèbe
    case saint_fabien
    case saint_fabien_de_panet
    case saint_ferdinand
    case saint_ferréol_les_neiges
    case saint_flavien
    case saint_fortunat
    case saint_françois_d_assise
    case saint_françois_de_l_île_d_orléans
    case saint_françois_de_la_rivière_du_sud
    case saint_françois_de_sales
    case saint_françois_du_lac
    case saint_françois_xavier_de_brompton
    case saint_françois_xavier_de_viger
    case saint_frédéric
    case saint_fulgence
    case saint_félicien
    case saint_félix_d_otis
    case saint_félix_de_dalquier
    case saint_félix_de_kingsey
    case saint_félix_de_valois
    case saint_gabriel
    case saint_gabriel_de_brandon
    case saint_gabriel_de_rimouski
    case saint_gabriel_de_valcartier
    case saint_gabriel_lalemant
    case saint_georges
    case saint_georges_de_clarenceville
    case saint_georges_de_windsor
    case saint_germain_de_grantham
    case saint_germain_de_kamouraska
    case saint_gervais
    case saint_gilbert
    case saint_gilles
    case saint_godefroi
    case saint_guillaume
    case saint_guy
    case saint_gédéon
    case saint_gédéon_de_beauce
    case saint_gérard_majella
    case saint_henri
    case saint_henri_de_taillon
    case saint_herménégilde
    case saint_hilaire_de_dorset
    case saint_hilarion
    case saint_hippolyte
    case saint_honoré
    case saint_honoré_de_shenley
    case saint_honoré_de_témiscouata
    case saint_hubert_de_rivière_du_loup
    case saint_hugues
    case saint_hyacinthe
    case saint_ignace_de_loyola
    case saint_ignace_de_stanbridge
    case saint_irénée
    case saint_isidore_la_nouvelle_beauce
    case saint_isidore_roussillon
    case saint_isidore_de_clifton
    case saint_jacques
    case saint_jacques_de_leeds
    case saint_jacques_le_majeur_de_wolfestown
    case saint_jacques_le_mineur
    case saint_janvier_de_joly
    case saint_jean_baptiste
    case saint_jean_de_brébeuf
    case saint_jean_de_cherbourg
    case saint_jean_de_dieu
    case saint_jean_de_l_île_d_orléans
    case saint_jean_de_la_lande
    case saint_jean_de_matha
    case saint_jean_port_joli
    case saint_jean_sur_richelieu
    case saint_joachim
    case saint_joachim_de_shefford
    case saint_joseph_de_beauce
    case saint_joseph_de_coleraine
    case saint_joseph_de_kamouraska
    case saint_joseph_de_lepage
    case saint_joseph_de_sorel
    case saint_joseph_des_érables
    case saint_joseph_du_lac
    case saint_jude
    case saint_jules
    case saint_julien
    case saint_just_de_bretenières
    case saint_juste_du_lac
    case saint_justin
    case saint_jérôme
    case saint_lambert_abitibi_ouest
    case saint_lambert_longueuil
    case saint_lambert_de_lauzon
    case saint_laurent_de_l_île_d_orléans
    case saint_lazare
    case saint_lazare_de_bellechasse
    case saint_liboire
    case saint_liguori
    case saint_lin__laurentides
    case saint_louis
    case saint_louis_de_blandford
    case saint_louis_de_gonzague_les_etchemins
    case saint_louis_de_gonzague_beauharnois_salaberry
    case saint_louis_de_gonzague_du_cap_tourmente
    case saint_louis_du_ha_ha
    case saint_luc_de_bellechasse
    case saint_luc_de_vincennes
    case saint_lucien
    case saint_ludger
    case saint_ludger_de_milot
    case saint_léandre
    case saint_léon_de_standon
    case saint_léon_le_grand_la_matapédia
    case saint_léon_le_grand_maskinongé
    case saint_léonard_d_aston
    case saint_léonard_de_portneuf
    case saint_magloire
    case saint_majorique_de_grantham
    case saint_malachie
    case saint_malo
    case saint_marc_de_figuery
    case saint_marc_des_carrières
    case saint_marc_du_lac_long
    case saint_marc_sur_richelieu
    case saint_marcel
    case saint_marcel_de_richelieu
    case saint_marcellin
    case saint_martin
    case saint_mathias_sur_richelieu
    case saint_mathieu
    case saint_mathieu_d_harricana
    case saint_mathieu_de_beloeil
    case saint_mathieu_de_rioux
    case saint_mathieu_du_parc
    case saint_maurice
    case saint_maxime_du_mont_louis
    case saint_michel
    case saint_michel_de_bellechasse
    case saint_michel_des_saints
    case saint_michel_du_squatec
    case saint_modeste
    case saint_moïse
    case saint_médard
    case saint_narcisse
    case saint_narcisse_de_beaurivage
    case saint_narcisse_de_rimouski
    case saint_nazaire
    case saint_nazaire_d_acton
    case saint_nazaire_de_dorchester
    case saint_norbert
    case saint_norbert_d_arthabaska
    case saint_noël
    case saint_nérée_de_bellechasse
    case saint_octave_de_métis
    case saint_odilon_de_cranbourne
    case saint_omer
    case saint_onésime_d_ixworth
    case saint_ours
    case saint_pacôme
    case saint_pamphile
    case saint_pascal
    case saint_patrice_de_beaurivage
    case saint_patrice_de_sherrington
    case saint_paul
    case saint_paul_d_abbotsford
    case saint_paul_de_l_île_aux_noix
    case saint_paul_de_la_croix
    case saint_paul_de_montminy
    case saint_paulin
    case saint_philibert
    case saint_philippe
    case saint_philippe_de_néri
    case saint_philémon
    case saint_pie
    case saint_pie_de_guire
    case saint_pierre
    case saint_pierre_baptiste
    case saint_pierre_de_broughton
    case saint_pierre_de_l_île_d_orléans
    case saint_pierre_de_la_rivière_du_sud
    case saint_pierre_de_lamy
    case saint_pierre_les_becquets
    case saint_placide
    case saint_polycarpe
    case saint_prime
    case saint_prosper
    case saint_prosper_de_champlain
    case saint_raphaël
    case saint_raymond
    case saint_rené
    case saint_rené_de_matane
    case saint_robert
    case saint_robert_bellarmin
    case saint_roch_de_l_achigan
    case saint_roch_de_mékinac
    case saint_roch_de_richelieu
    case saint_roch_des_aulnaies
    case saint_roch_ouest
    case saint_romain
    case saint_rosaire
    case saint_rémi
    case saint_rémi_de_tingwick
    case saint_samuel
    case saint_sauveur
    case saint_simon
    case saint_simon_de_rimouski
    case saint_simon_les_mines
    case saint_siméon_charlevoix_est
    case saint_siméon_bonaventure
    case saint_sixte
    case saint_stanislas_les_chenaux
    case saint_stanislas_maria_chapdelaine
    case saint_stanislas_de_kostka
    case saint_sulpice
    case saint_sylvestre
    case saint_sylvère
    case saint_sébastien_le_granit
    case saint_sébastien_le_haut_richelieu
    case saint_séverin_mékinac
    case saint_séverin_beauce_centre
    case saint_sévère
    case saint_tharcisius
    case saint_thomas
    case saint_thomas_didyme
    case saint_thuribe
    case saint_théodore_d_acton
    case saint_théophile
    case saint_tite
    case saint_tite_des_caps
    case saint_télesphore
    case saint_ubalde
    case saint_ulric
    case saint_urbain
    case saint_urbain_premier
    case saint_valentin
    case saint_vallier
    case saint_valère
    case saint_valérien
    case saint_valérien_de_milton
    case saint_venant_de_paquette
    case saint_vianney
    case saint_victor
    case saint_wenceslas
    case saint_zacharie
    case saint_zotique
    case saint_zénon
    case saint_zénon_du_lac_humqui
    case saint_zéphirin_de_courval
    case saint_édouard
    case saint_édouard_de_fabre
    case saint_édouard_de_lotbinière
    case saint_édouard_de_maskinongé
    case saint_élie_de_caxton
    case saint_éloi
    case saint_émile_de_suffolk
    case saint_éphrem_de_beauce
    case saint_épiphane
    case saint_étienne_de_beauharnois
    case saint_étienne_de_bolton
    case saint_étienne_des_grès
    case saint_évariste_de_forsyth
    case sainte_adèle
    case sainte_agathe_de_lotbinière
    case sainte_agathe_des_monts
    case sainte_angèle_de_monnoir
    case sainte_angèle_de_mérici
    case sainte_angèle_de_prémont
    case sainte_anne_de_beaupré
    case sainte_anne_de_bellevue
    case sainte_anne_de_la_pocatière
    case sainte_anne_de_la_pérade
    case sainte_anne_de_la_rochelle
    case sainte_anne_de_sabrevois
    case sainte_anne_de_sorel
    case sainte_anne_des_lacs
    case sainte_anne_des_monts
    case sainte_anne_des_plaines
    case sainte_anne_du_lac
    case sainte_apolline_de_patton
    case sainte_aurélie
    case sainte_barbe
    case sainte_brigide_d_iberville
    case sainte_brigitte_de_laval
    case sainte_brigitte_des_saults
    case sainte_béatrix
    case sainte_catherine
    case sainte_catherine_de_hatley
    case sainte_catherine_de_la_jacques_cartier
    case sainte_christine
    case sainte_christine_d_auvergne
    case sainte_claire
    case sainte_clotilde
    case sainte_clotilde_de_beauce
    case sainte_clotilde_de_horton
    case sainte_croix
    case sainte_cécile_de_lévrard
    case sainte_cécile_de_milton
    case sainte_cécile_de_whitton
    case sainte_edwidge_de_clifton
    case sainte_eulalie
    case sainte_euphémie_sur_rivière_du_sud
    case sainte_famille_de_l_île_d_orléans
    case sainte_flavie
    case sainte_florence
    case sainte_françoise_bécancour
    case sainte_françoise_les_basques
    case sainte_félicité_la_mataine
    case sainte_félicité_l_islet
    case sainte_geneviève_de_batiscan
    case sainte_geneviève_de_berthier
    case sainte_germaine_boulé
    case sainte_gertrude_manneville
    case sainte_hedwidge
    case sainte_hélène_de_bagot
    case sainte_hélène_de_chester
    case sainte_hélène_de_kamouraska
    case sainte_hélène_de_mancebourg
    case sainte_hénédine
    case sainte_irène
    case sainte_jeanne_d_arc_la_mitis
    case sainte_jeanne_d_arc_maria_chapdelaine
    case sainte_julie
    case sainte_julienne
    case sainte_justine
    case sainte_justine_de_newton
    case sainte_louise
    case sainte_luce
    case sainte_lucie_de_beauregard
    case sainte_lucie_des_laurentides
    case sainte_madeleine
    case sainte_madeleine_de_la_rivière_madeleine
    case sainte_marcelline_de_kildare
    case sainte_marguerite
    case sainte_marguerite_du_lac_masson
    case sainte_marguerite_marie
    case sainte_marie
    case sainte_marie_de_blandford
    case sainte_marie_madeleine
    case sainte_marie_salomé
    case sainte_marthe
    case sainte_marthe_sur_le_lac
    case sainte_martine
    case sainte_monique_lac_saint_jean_est
    case sainte_monique_nicolet_yamaska
    case sainte_mélanie
    case sainte_paule
    case sainte_perpétue_l_islet
    case sainte_perpétue_nicolet_yamaska
    case sainte_praxède
    case sainte_pétronille
    case sainte_rita
    case sainte_rose_de_watford
    case sainte_rose_du_nord
    case sainte_sabine_brome_missisquoi
    case sainte_sabine_les_etchemins
    case sainte_sophie
    case sainte_sophie_d_halifax
    case sainte_sophie_de_lévrard
    case sainte_séraphine
    case sainte_thècle
    case sainte_thérèse
    case sainte_thérèse_de_gaspé
    case sainte_thérèse_de_la_gatineau
    case sainte_ursule
    case sainte_victoire_de_sorel
    case sainte_élisabeth
    case sainte_élizabeth_de_warwick
    case sainte_émélie_de_l_énergie
    case saints_anges
    case saints_martyrs_canadiens
    case salaberry_de_valleyfield
    case salluit
    case sayabec
    case schefferville
    case scotstown
    case scott
    case senneterre_parish
    case senneterre_town
    case senneville
    case sept_îles
    case shannon
    case shawinigan
    case shawville
    case sheenboro
    case shefford
    case sherbrooke
    case shigawake
    case sorel_tracy
    case stanbridge_east
    case stanbridge_station
    case stanstead_town
    case stanstead_township
    case stanstead_est
    case stoke
    case stoneham_et_tewkesbury
    case stornoway
    case stratford
    case stukely_sud
    case sutton
    
    case tadoussac
    case taschereau
    case tasiujaq
    case terrasse_vaudreuil
    case terrebonne
    case thetford_mines
    case thorne
    case thurso
    case tingwick
    case tourville
    case tring_jonction
    case trois_pistoles
    case trois_rives
    case trois_rivières
    case très_saint_rédempteur
    case très_saint_sacrement
    case trécesson
    case témiscaming
    case témiscouata_sur_le_lac
    
    case ulverton
    case umiujaq
    case upton
    case val_alain
    case val_brillant
    case val_d_or
    case val_david
    case val_des_bois
    case val_des_lacs
    case val_des_monts
    case val_des_sources
    case val_joli
    case val_morin
    case val_racine
    case val_saint_gilles
    case valcourt_town
    case valcourt_township
    case vallée_jonction
    case varennes
    case vaudreuil_dorion
    case vaudreuil_sur_le_lac
    case venise_en_québec
    case verchères
    case victoriaville
    case ville_marie
    case villeroy
    
    case waltham
    case warden
    case warwick
    case waskaganish
    case waswanipi
    case waterloo
    case waterville
    case weedon
    case wemindji
    case wentworth
    case wentworth_nord
    case westbury
    case westmount
    case whapmagoostui
    case wickham
    case windsor
    case wotton
    
    case yamachiche
    case yamaska
    
    public func getSubdivision() -> SovereignStateSubdivision {
        return SubdivisionsCanada.quebec
    }
    
    public func getRealName() -> String? {
        switch self {
        case .alleyn_et_cawood: return "Alleyn-et-Cawood"
        case .ange_gardien: return "Ange-Gardien"
        case .aston_jonction: return "Aston-Jonction"
        case .authier_nord: return "Authier-Nord"
        case .ayer_s_cliff: return "Ayer's Cliff"
        case .baie_comeau: return "Baie-Comeau"
        case .baie_d_urfé: return "Baie-D'Urfé"
        case .baie_des_sables: return "Baie-des-Sables"
        case .baie_du_febvre: return "Baie-du-Febvre"
        case .baie_johan_beetz: return "Baie-Johan-Beetz"
        case .baie_saint_paul: return "Baie-Saint-Paul"
        case .baie_sainte_catherine: return "Baie-Sainte-Catherine"
        case .baie_trinité: return "Baie-Trinité"
        case .barnston_ouest: return "Barnston-Ouest"
        case .beaulac_garthby: return "Beaulac-Garthby"
        case .berthier_sur_mer: return "Berthier-sur-Mer"
        case .blanc_sablon: return "Blanc-Sablon"
        case .bois_des_filion: return "Bois-des-Filion"
        case .bois_franc: return "Bois-Franc"
        case .bolton_est: return "Bolton-Est"
        case .bolton_ouest: return "Bolton-Ouest"
        case .bonne_espérance: return "Bonne-Espérance"
        case .brownsburg_chatham: return "Brownsburg-Chatham"
        case .calixa_lavallée: return "Calixa-Lavallée"
        case .campbell_s_bay: return "Campbell's Bay"
        case .cap_chat: return "Cap-Chat"
        case .cap_saint_ignace: return "Cap-Saint-Ignace"
        case .cap_santé: return "Cap-Santé"
        case .carleton_sur_mer: return "Carleton-sur-Mer"
        case .cascapédia__saint_jules: return "Cascapédia--Saint-Jules"
        case .château_richer: return "Château-Richer"
        case .chute_aux_outardes: return "Chute-aux-Outardes"
        case .chute_saint_philippe: return "Chute-Saint-Philippe"
        case .cookshire_eaton: return "Cookshire-Eaton"
        case .côte_nord_du_golfe_du_saint_laurent: return "Côte-Nord-du-Golfe-du-Saint-Laurent"
        case .côte_saint_luc: return "Côte-Saint-Luc"
        case .coteau_du_lac: return "Coteau-du-Lac"
        case .deschaillons_sur_saint_laurent: return "Deschaillons-sur-Saint-Laurent"
        case .deschambault_grondines: return "Deschambault-Grondines"
        case .deux_montagnes: return "Deux-Montagnes"
        case .dolbeau_mistassini: return "Dolbeau-Mistassini"
        case .dollard_des_ormeaux: return "Dollard-Des Ormeaux"
        case .duhamel_ouest: return "Duhamel-Ouest"
        case .durham_sud: return "Durham-Sud"
        case .eeyou_istchee_baie_james: return "Eeyou Istchee Baie-James"
        case .egan_sud: return "Egan-Sud"
        case .esprit_saint: return "Esprit-Saint"
        case .ferland_et_boilleau: return "Ferland-et-Boilleau"
        case .ferme_neuve: return "Ferme-Neuve"
        case .fort_coulonge: return "Fort-Coulonge"
        case .fossambault_sur_le_lac: return "Fossambault-sur-le-Lac"
        case .grand_métis: return "Grand-Métis"
        case .grand_remous: return "Grand-Remous"
        case .grand_saint_esprit: return "Grand-Saint-Esprit"
        case .grande_rivière: return "Grande-Rivière"
        case .grande_vallée: return "Grande-Vallée"
        case .grandes_piles: return "Grandes-Piles"
        case .grenville_sur_la_rouge: return "Grenville-sur-la-Rouge"
        case .gros_mécatina: return "Gros-Mécatina"
        case .grosse_île: return "Grosse-Île"
        case .grosses_roches: return "Grosses-Roches"
        case .ham_nord: return "Ham-Nord"
        case .ham_sud: return "Ham-Sud"
        case .havre_saint_pierre: return "Havre-Saint-Pierre"
        case .hébertville_station: return "Hébertville-Station"
        case .ivry_sur_le_lac: return "Ivry-sur-le-Lac"
        case .kinnear_s_mills: return "Kinnear's Mills"
        case .l_ancienne_lorette: return "L'Ancienne-Lorette"
        case .l_ange_gardien_la_côte_de_beaupré: return "L'Ange-Gardien"
        case .l_ange_gardien_les_collines_de_el_l_outaouais: return "L'Ange-Gardien"
        case .l_anse_saint_jean: return "L'Anse-Saint-Jean"
        case .l_ascension: return "L'Ascension"
        case .l_ascension_de_notre_seigneur: return "L'Ascension-de-Notre-Seigneur"
        case .l_ascension_de_patapédia: return "L'Ascension-de-Patapédia"
        case .l_assomption: return "L'Assomption"
        case .l_avenir: return "L'Avenir"
        case .l_épiphanie: return "L'Épiphanie"
        case .l_île_cadieux: return "L'Île-Cadieux"
        case .l_île_d_anticosti: return "L'Île-d'Anticosti"
        case .l_île_dorval: return "L'Île-Dorval"
        case .l_île_du_grand_calumet: return "L'Île-du-Grand-Calumet"
        case .l_île_perrot: return "L'Île-Perrot"
        case .l_isle_aux_allumettes: return "L'Isle-aux-Allumettes"
        case .l_isle_aux_coudres: return "L'Isle-aux-Coudres"
        case .l_isle_verte: return "L'Isle-Verte"
        case .l_islet: return "L'Islet"
        case .la_trinité_des_monts: return "La Trinité-des-Monts"
        case .la_visitation_de_l_île_dupas: return "La Visitation-de-l'Île-Dupas"
        case .la_visitation_de_yamaska: return "La Visitation-de-Yamaska"
        case .lac_au_saumon: return "Lac-au-Saumon"
        case .lac_aux_sables: return "Lac-aux-Sables"
        case .lac_beauport: return "Lac-Beauport"
        case .lac_bouchette: return "Lac-Bouchette"
        case .lac_brome: return "Lac-Brome"
        case .lac_delage: return "Lac-Delage"
        case .lac_des_aigles: return "Lac-des-Aigles"
        case .lac_des_écorces: return "Lac-des-Écorces"
        case .lac_des_plages: return "Lac-des-Plages"
        case .lac_des_seize_îles: return "Lac-des-Seize-Îles"
        case .lac_drolet: return "Lac-Drolet"
        case .lac_du_cerf: return "Lac-du-Cerf"
        case .lac_édouard: return "Lac-Édouard"
        case .lac_etchemin: return "Lac-Etchemin"
        case .lac_frontière: return "Lac-Frontière"
        case .lac_mégantic: return "Lac-Mégantic"
        case .lac_poulin: return "Lac-Poulin"
        case .lac_saguay: return "Lac-Saguay"
        case .lac_saint_joseph: return "Lac-Saint-Joseph"
        case .lac_saint_paul: return "Lac-Saint-Paul"
        case .lac_sainte_marie: return "Lac-Sainte-Marie"
        case .lac_sergent: return "Lac-Sergent"
        case .lac_simon: return "Lac-Simon"
        case .lac_supérieur: return "Lac-Supérieur"
        case .lac_tremblant_nord: return "Lac-Tremblant-Nord"
        case .latulipe_et_gaboury: return "Latulipe-et-Gaboury"
        case .laurier_station: return "Laurier-Station"
        case .laverlochère_angliers: return "Laverlochère-Angliers"
        case .lebel_sur_quévillon: return "Lebel-sur-Quévillon"
        case .les_îles_de_la_madeleine: return "Les Îles-de-la-Madeleine"
        case .lochaber_partie_ouest: return "Lochaber-Partie-Ouest"
        case .longue_pointe_de_mingan: return "Longue-Pointe-de-Mingan"
        case .longue_rive: return "Longue-Rive"
        case .mansfield_et_pontefract: return "Mansfield-et-Pontefract"
        case .métabetchouan__lac_à_la_croix: return "Métabetchouan--Lac-à-la-Croix"
        case .métis_sur_mer: return "Métis-sur-Mer"
        case .mille_isles: return "Mille-Isles"
        case .mont_blanc: return "Mont-Blanc"
        case .mont_carmel: return "Mont-Carmel"
        case .mont_joli: return "Mont-Joli"
        case .mont_laurier: return "Mont-Laurier"
        case .mont_royal: return "Mont-Royal"
        case .mont_saint_grégoire: return "Mont-Saint-Grégoire"
        case .mont_saint_hilaire: return "Mont-Saint-Hilaire"
        case .mont_saint_michel: return "Mont-Saint-Michel"
        case .mont_saint_pierre: return "Mont-Saint-Pierre"
        case .mont_tremblant: return "Mont-Tremblant"
        case .montcerf_lytton: return "Montcerf-Lytton"
        case .montréal_est: return "Montréal-Est"
        case .montréal_ouest: return "Montréal-Ouest"
        case .morin_heights: return "Morin-Heights"
        case .mulgrave_et_derry: return "Mulgrave-et-Derry"
        case .notre_dame_auxiliatrice_de_buckland: return "Notre-Dame-Auxiliatrice-de-Buckland"
        case .notre_dame_de_bonsecours: return "Notre-Dame-de-Bonsecours"
        case .notre_dame_de_ham: return "Notre-Dame-de-Ham"
        case .notre_dame_de_la_merci: return "Notre-Dame-de-la-Merci"
        case .notre_dame_de_la_paix: return "Notre-Dame-de-la-Paix"
        case .notre_dame_de_la_salette: return "Notre-Dame-de-la-Salette"
        case .notre_dame_de_l_île_perrot: return "Notre-Dame-de-l'Île-Perrot"
        case .notre_dame_de_lorette: return "Notre-Dame-de-Lorette"
        case .notre_dame_de_lourdes_joliette: return "Notre-Dame-de-Lourdes"
        case .notre_dame_de_lourdes_l_érable: return "Notre-Dame-de-Lourdes"
        case .notre_dame_de_montauban: return "Notre-Dame-de-Montauban"
        case .notre_dame_de_pontmain: return "Notre-Dame-de-Pontmain"
        case .notre_dame_de_stanbridge: return "Notre-Dame-de-Stanbridge"
        case .notre_dame_des_anges: return "Notre-Dame-des-Anges"
        case .notre_dame_des_bois: return "Notre-Dame-des-Bois"
        case .notre_dame_des_monts: return "Notre-Dame-des-Monts"
        case .notre_dame_des_neiges: return "Notre-Dame-des-Neiges"
        case .notre_dame_des_pins: return "Notre-Dame-des-Pins"
        case .notre_dame_des_prairies: return "Notre-Dame-des-Prairies"
        case .notre_dame_des_sept_douleurs: return "Notre-Dame-des-Sept-Douleurs"
        case .notre_dame_du_bon_conseil_parish: return "Notre-Dame-du-Bon-Conseil"
        case .notre_dame_du_bon_conseil_village: return "Notre-Dame-du-Bon-Conseil"
        case .notre_dame_du_laus: return "Notre-Dame-du-Laus"
        case .notre_dame_du_mont_carmel: return "Notre-Dame-du-Mont-Carmel"
        case .notre_dame_du_nord: return "Notre-Dame-du-Nord"
        case .notre_dame_du_portage: return "Notre-Dame-du-Portage"
        case .notre_dame_du_rosaire: return "Notre-Dame-du-Rosaire"
        case .notre_dame_du_sacré_coeur_d_issoudun: return "Notre-Dame-du-Sacré-Coeur-d'Issoudun"
        case .petit_saguenay: return "Petit-Saguenay"
        case .petite_rivière_saint_françois: return "Petite-Rivière-Saint-François"
        case .petite_vallée: return "Petite-Vallée"
        case .pointe_à_la_croix: return "Pointe-à-la-Croix"
        case .pointe_aux_outardes: return "Pointe-aux-Outardes"
        case .pointe_calumet: return "Pointe-Calumet"
        case .pointe_claire: return "Pointe-Claire"
        case .pointe_des_cascades: return "Pointe-des-Cascades"
        case .pointe_fortune: return "Pointe-Fortune"
        case .pointe_lebel: return "Pointe-Lebel"
        case .pont_rouge: return "Pont-Rouge"
        case .port_cartier: return "Port-Cartier"
        case .port_daniel__gascons: return "Port-Daniel--Gascons"
        case .portage_du_fort: return "Portage-du-Fort"
        case .portneuf_sur_mer: return "Portneuf-sur-Mer"
        case .rapide_danseur: return "Rapide-Danseur"
        case .rapides_des_joachims: return "Rapides-des-Joachims"
        case .ristigouche_partie_sud_est: return "Ristigouche-Partie-Sud-Est"
        case .rivière_à_claude: return "Rivière-à-Claude"
        case .rivière_à_pierre: return "Rivière-à-Pierre"
        case .rivière_au_tonnerre: return "Rivière-au-Tonnerre"
        case .rivière_beaudette: return "Rivière-Beaudette"
        case .rivière_bleue: return "Rivière-Bleue"
        case .rivière_du_loup: return "Rivière-du-Loup"
        case .rivière_éternité: return "Rivière-Éternité"
        case .rivière_héva: return "Rivière-Héva"
        case .rivière_ouelle: return "Rivière-Ouelle"
        case .rivière_rouge: return "Rivière-Rouge"
        case .rivière_saint_jean: return "Rivière-Saint-Jean"
        case .rouyn_noranda: return "Rouyn-Noranda"
        case .sacré_coeur: return "Sacré-Coeur"
        case .sacré_coeur_de_jésus: return "Sacré-Coeur-de-Jésus"
        case .saint_adalbert: return "Saint-Adalbert"
        case .saint_adelme: return "Saint-Adelme"
        case .saint_adelphe: return "Saint-Adelphe"
        case .saint_adolphe_d_howard: return "Saint-Adolphe-d'Howard"
        case .saint_adrien: return "Saint-Adrien"
        case .saint_adrien_d_irlande: return "Saint-Adrien-d'Irlande"
        case .saint_agapit: return "Saint-Agapit"
        case .saint_aimé: return "Saint-Aimé"
        case .saint_aimé_des_lacs: return "Saint-Aimé-des-Lacs"
        case .saint_aimé_du_lac_des_îles: return "Saint-Aimé-du-Lac-des-Îles"
        case .saint_alban: return "Saint-Alban"
        case .saint_albert: return "Saint-Albert"
        case .saint_alexandre: return "Saint-Alexandre"
        case .saint_alexandre_de_kamouraska: return "Saint-Alexandre-de-Kamouraska"
        case .saint_alexandre_des_lacs: return "Saint-Alexandre-des-Lacs"
        case .saint_alexis: return "Saint-Alexis"
        case .saint_alexis_de_matapédia: return "Saint-Alexis-de-Matapédia"
        case .saint_alexis_des_monts: return "Saint-Alexis-des-Monts"
        case .saint_alfred: return "Saint-Alfred"
        case .saint_alphonse: return "Saint-Alphonse"
        case .saint_alphonse_de_granby: return "Saint-Alphonse-de-Granby"
        case .saint_alphonse_rodriguez: return "Saint-Alphonse-Rodriguez"
        case .saint_amable: return "Saint-Amable"
        case .saint_ambroise: return "Saint-Ambroise"
        case .saint_ambroise_de_kildare: return "Saint-Ambroise-de-Kildare"
        case .saint_anaclet_de_lessard: return "Saint-Anaclet-de-Lessard"
        case .saint_andré_avellin: return "Saint-André-Avellin"
        case .saint_andré_d_argenteuil: return "Saint-André-d'Argenteuil"
        case .saint_andré_de_kamouraska: return "Saint-André-de-Kamouraska"
        case .saint_andré_de_restigouche: return "Saint-André-de-Restigouche"
        case .saint_andré_du_lac_saint_jean: return "Saint-André-du-Lac-Saint-Jean"
        case .saint_anicet: return "Saint-Anicet"
        case .saint_anselme: return "Saint-Anselme"
        case .saint_antoine_de_l_isle_aux_grues: return "Saint-Antoine-de-l'Isle-aux-Grues"
        case .saint_antoine_de_tilly: return "Saint-Antoine-de-Tilly"
        case .saint_antoine_sur_richelieu: return "Saint-Antoine-sur-Richelieu"
        case .saint_antonin: return "Saint-Antonin"
        case .saint_apollinaire: return "Saint-Apollinaire"
        case .saint_armand: return "Saint-Armand"
        case .saint_arsène: return "Saint-Arsène"
        case .saint_athanase: return "Saint-Athanase"
        case .saint_aubert: return "Saint-Aubert"
        case .saint_augustin_le_golf_du_saint_laurent: return "Saint-Augustin"
        case .saint_augustin_maria_chapdelaine: return "Saint-Augustin"
        case .saint_augustin_de_desmaures: return "Saint-Augustin-de-Desmaures"
        case .saint_augustin_de_woburn: return "Saint-Augustin-de-Woburn"
        case .saint_barnabé: return "Saint-Barnabé"
        case .saint_barnabé_sud: return "Saint-Barnabé-Sud"
        case .saint_barthélemy: return "Saint-Barthélemy"
        case .saint_basile: return "Saint-Basile"
        case .saint_basile_le_grand: return "Saint-Basile-le-Grand"
        case .saint_benjamin: return "Saint-Benjamin"
        case .saint_benoît_du_lac: return "Saint-Benoît-du-Lac"
        case .saint_benoît_labre: return "Saint-Benoît-Labre"
        case .saint_bernard: return "Saint-Bernard"
        case .saint_bernard_de_lacolle: return "Saint-Bernard-de-Lacolle"
        case .saint_bernard_de_michaudville: return "Saint-Bernard-de-Michaudville"
        case .saint_blaise_sur_richelieu: return "Saint-Blaise-sur-Richelieu"
        case .saint_bonaventure: return "Saint-Bonaventure"
        case .saint_boniface: return "Saint-Boniface"
        case .saint_bruno: return "Saint-Bruno"
        case .saint_bruno_de_guigues: return "Saint-Bruno-de-Guigues"
        case .saint_bruno_de_kamouraska: return "Saint-Bruno-de-Kamouraska"
        case .saint_bruno_de_montarville: return "Saint-Bruno-de-Montarville"
        case .saint_calixte: return "Saint-Calixte"
        case .saint_camille: return "Saint-Camille"
        case .saint_camille_de_lellis: return "Saint-Camille-de-Lellis"
        case .saint_casimir: return "Saint-Casimir"
        case .saint_célestin_municipality: return "Saint-Célestin"
        case .saint_célestin_village: return "Saint-Célestin"
        case .saint_césaire: return "Saint-Césaire"
        case .saint_charles_borromée: return "Saint-Charles-Borromée"
        case .saint_charles_de_bellechasse: return "Saint-Charles-de-Bellechasse"
        case .saint_charles_de_bourget: return "Saint-Charles-de-Bourget"
        case .saint_charles_garnier: return "Saint-Charles-Garnier"
        case .saint_charles_sur_richelieu: return "Saint-Charles-sur-Richelieu"
        case .saint_christophe_d_arthabaska: return "Saint-Christophe-d'Arthabaska"
        case .saint_chrysostome: return "Saint-Chrysostome"
        case .saint_claude: return "Saint-Claude"
        case .saint_clément: return "Saint-Clément"
        case .saint_cléophas: return "Saint-Cléophas"
        case .saint_cléophas_de_brandon: return "Saint-Cléophas-de-Brandon"
        case .saint_clet: return "Saint-Clet"
        case .saint_colomban: return "Saint-Colomban"
        case .saint_côme: return "Saint-Côme"
        case .saint_côme__linière: return "Saint-Côme--Linière"
        case .saint_constant: return "Saint-Constant"
        case .saint_cuthbert: return "Saint-Cuthbert"
        case .saint_cyprien_les_etchemins: return "Saint-Cyprien"
        case .saint_cyprien_rivière_du_loup: return "Saint-Cyprien"
        case .saint_cyprien_de_napierville: return "Saint-Cyprien-de-Napierville"
        case .saint_cyrille_de_lessard: return "Saint-Cyrille-de-Lessard"
        case .saint_cyrille_de_wendover: return "Saint-Cyrille-de-Wendover"
        case .saint_damase_la_matapédia: return "Saint-Damase"
        case .saint_damase_les_maskoutains: return "Saint-Damase"
        case .saint_damase_de_l_islet: return "Saint-Damase-de-L'Islet"
        case .saint_damien: return "Saint-Damien"
        case .saint_damien_de_buckland: return "Saint-Damien-de-Buckland"
        case .saint_david: return "Saint-David"
        case .saint_david_de_falardeau: return "Saint-David-de-Falardeau"
        case .saint_denis_de_la_bouteillerie: return "Saint-Denis-De La Bouteillerie"
        case .saint_denis_de_brompton: return "Saint-Denis-de-Brompton"
        case .saint_denis_sur_richelieu: return "Saint-Denis-sur-Richelieu"
        case .saint_didace: return "Saint-Didace"
        case .saint_dominique: return "Saint-Dominique"
        case .saint_dominique_du_rosaire: return "Saint-Dominique-du-Rosaire"
        case .saint_donat_la_mitis: return "Saint-Donat"
        case .saint_donat_matawinie: return "Saint-Donat"
        case .saint_edmond_de_grantham: return "Saint-Edmond-de-Grantham"
        case .saint_edmond_les_plaines: return "Saint-Edmond-les-Plaines"
        case .saint_édouard: return "Saint-Édouard"
        case .saint_édouard_de_fabre: return "Saint-Édouard-de-Fabre"
        case .saint_édouard_de_lotbinière: return "Saint-Édouard-de-Lotbinière"
        case .saint_édouard_de_maskinongé: return "Saint-Édouard-de-Maskinongé"
        case .saint_élie_de_caxton: return "Saint-Élie-de-Caxton"
        case .saint_éloi: return "Saint-Éloi"
        case .saint_elphège: return "Saint-Elphège"
        case .saint_elzéar_bonaventure: return "Saint-Elzéar"
        case .saint_elzéar_la_nouvelle_beauce: return "Saint-Elzéar"
        case .saint_elzéar_de_témiscouata: return "Saint-Elzéar-de-Témiscouata"
        case .saint_émile_de_suffolk: return "Saint-Émile-de-Suffolk"
        case .saint_éphrem_de_beauce: return "Saint-Éphrem-de-Beauce"
        case .saint_épiphane: return "Saint-Épiphane"
        case .saint_esprit: return "Saint-Esprit"
        case .saint_étienne_de_beauharnois: return "Saint-Étienne-de-Beauharnois"
        case .saint_étienne_de_bolton: return "Saint-Étienne-de-Bolton"
        case .saint_étienne_des_grès: return "Saint-Étienne-des-Grès"
        case .saint_eugène: return "Saint-Eugène"
        case .saint_eugène_d_argentenay: return "Saint-Eugène-d'Argentenay"
        case .saint_eugène_de_guigues: return "Saint-Eugène-de-Guigues"
        case .saint_eugène_de_ladrière: return "Saint-Eugène-de-Ladrière"
        case .saint_eusèbe: return "Saint-Eusèbe"
        case .saint_eustache: return "Saint-Eustache"
        case .saint_évariste_de_forsyth: return "Saint-Évariste-de-Forsyth"
        case .saint_fabien: return "Saint-Fabien"
        case .saint_fabien_de_panet: return "Saint-Fabien-de-Panet"
        case .saint_félicien: return "Saint-Félicien"
        case .saint_félix_de_dalquier: return "Saint-Félix-de-Dalquier"
        case .saint_félix_de_kingsey: return "Saint-Félix-de-Kingsey"
        case .saint_félix_de_valois: return "Saint-Félix-de-Valois"
        case .saint_félix_d_otis: return "Saint-Félix-d'Otis"
        case .saint_ferdinand: return "Saint-Ferdinand"
        case .saint_ferréol_les_neiges: return "Saint-Ferréol-les-Neiges"
        case .saint_flavien: return "Saint-Flavien"
        case .saint_fortunat: return "Saint-Fortunat"
        case .saint_françois_d_assise: return "Saint-François-d'Assise"
        case .saint_françois_de_la_rivière_du_sud: return "Saint-François-de-la-Rivière-du-Sud"
        case .saint_françois_de_l_île_d_orléans: return "Saint-François-de-l'Île-d'Orléans"
        case .saint_françois_de_sales: return "Saint-François-de-Sales"
        case .saint_françois_du_lac: return "Saint-François-du-Lac"
        case .saint_françois_xavier_de_brompton: return "Saint-François-Xavier-de-Brompton"
        case .saint_françois_xavier_de_viger: return "Saint-François-Xavier-de-Viger"
        case .saint_frédéric: return "Saint-Frédéric"
        case .saint_fulgence: return "Saint-Fulgence"
        case .saint_gabriel: return "Saint-Gabriel"
        case .saint_gabriel_de_brandon: return "Saint-Gabriel-de-Brandon"
        case .saint_gabriel_de_rimouski: return "Saint-Gabriel-de-Rimouski"
        case .saint_gabriel_de_valcartier: return "Saint-Gabriel-de-Valcartier"
        case .saint_gabriel_lalemant: return "Saint-Gabriel-Lalemant"
        case .saint_gédéon: return "Saint-Gédéon"
        case .saint_gédéon_de_beauce: return "Saint-Gédéon-de-Beauce"
        case .saint_georges: return "Saint-Georges"
        case .saint_georges_de_clarenceville: return "Saint-Georges-de-Clarenceville"
        case .saint_georges_de_windsor: return "Saint-Georges-de-Windsor"
        case .saint_gérard_majella: return "Saint-Gérard-Majella"
        case .saint_germain_de_grantham: return "Saint-Germain-de-Grantham"
        case .saint_germain_de_kamouraska: return "Saint-Germain-de-Kamouraska"
        case .saint_gervais: return "Saint-Gervais"
        case .saint_gilbert: return "Saint-Gilbert"
        case .saint_gilles: return "Saint-Gilles"
        case .saint_godefroi: return "Saint-Godefroi"
        case .saint_guillaume: return "Saint-Guillaume"
        case .saint_guy: return "Saint-Guy"
        case .saint_henri: return "Saint-Henri"
        case .saint_henri_de_taillon: return "Saint-Henri-de-Taillon"
        case .saint_herménégilde: return "Saint-Herménégilde"
        case .saint_hilaire_de_dorset: return "Saint-Hilaire-de-Dorset"
        case .saint_hilarion: return "Saint-Hilarion"
        case .saint_hippolyte: return "Saint-Hippolyte"
        case .saint_honoré: return "Saint-Honoré"
        case .saint_honoré_de_shenley: return "Saint-Honoré-de-Shenley"
        case .saint_honoré_de_témiscouata: return "Saint-Honoré-de-Témiscouata"
        case .saint_hubert_de_rivière_du_loup: return "Saint-Hubert-de-Rivière-du-Loup"
        case .saint_hugues: return "Saint-Hugues"
        case .saint_hyacinthe: return "Saint-Hyacinthe"
        case .saint_ignace_de_loyola: return "Saint-Ignace-de-Loyola"
        case .saint_ignace_de_stanbridge: return "Saint-Ignace-de-Stanbridge"
        case .saint_irénée: return "Saint-Irénée"
        case .saint_isidore_la_nouvelle_beauce: return "Saint-Isidore"
        case .saint_isidore_roussillon: return "Saint-Isidore"
        case .saint_isidore_de_clifton: return "Saint-Isidore-de-Clifton"
        case .saint_jacques: return "Saint-Jacques"
        case .saint_jacques_de_leeds: return "Saint-Jacques-de-Leeds"
        case .saint_jacques_le_majeur_de_wolfestown: return "Saint-Jacques-le-Majeur-de-Wolfestown"
        case .saint_jacques_le_mineur: return "Saint-Jacques-le-Mineur"
        case .saint_janvier_de_joly: return "Saint-Janvier-de-Joly"
        case .saint_jean_baptiste: return "Saint-Jean-Baptiste"
        case .saint_jean_de_brébeuf: return "Saint-Jean-de-Brébeuf"
        case .saint_jean_de_cherbourg: return "Saint-Jean-de-Cherbourg"
        case .saint_jean_de_dieu: return "Saint-Jean-de-Dieu"
        case .saint_jean_de_la_lande: return "Saint-Jean-de-la-Lande"
        case .saint_jean_de_l_île_d_orléans: return "Saint-Jean-de-l'Île-d'Orléans"
        case .saint_jean_de_matha: return "Saint-Jean-de-Matha"
        case .saint_jean_port_joli: return "Saint-Jean-Port-Joli"
        case .saint_jean_sur_richelieu: return "Saint-Jean-sur-Richelieu"
        case .saint_jérôme: return "Saint-Jérôme"
        case .saint_joachim: return "Saint-Joachim"
        case .saint_joachim_de_shefford: return "Saint-Joachim-de-Shefford"
        case .saint_joseph_de_beauce: return "Saint-Joseph-de-Beauce"
        case .saint_joseph_de_coleraine: return "Saint-Joseph-de-Coleraine"
        case .saint_joseph_de_kamouraska: return "Saint-Joseph-de-Kamouraska"
        case .saint_joseph_de_lepage: return "Saint-Joseph-de-Lepage"
        case .saint_joseph_des_érables: return "Saint-Joseph-des-Érables"
        case .saint_joseph_de_sorel: return "Saint-Joseph-de-Sorel"
        case .saint_joseph_du_lac: return "Saint-Joseph-du-Lac"
        case .saint_jude: return "Saint-Jude"
        case .saint_jules: return "Saint-Jules"
        case .saint_julien: return "Saint-Julien"
        case .saint_just_de_bretenières: return "Saint-Just-de-Bretenières"
        case .saint_juste_du_lac: return "Saint-Juste-du-Lac"
        case .saint_justin: return "Saint-Justin"
        case .saint_lambert_abitibi_ouest: return "Saint-Lambert"
        case .saint_lambert_longueuil: return "Saint-Lambert"
        case .saint_lambert_de_lauzon: return "Saint-Lambert-de-Lauzon"
        case .saint_laurent_de_l_île_d_orléans: return "Saint-Laurent-de-l'Île-d'Orléans"
        case .saint_lazare: return "Saint-Lazare"
        case .saint_lazare_de_bellechasse: return "Saint-Lazare-de-Bellechasse"
        case .saint_léandre: return "Saint-Léandre"
        case .saint_léonard_d_aston: return "Saint-Léonard-d'Aston"
        case .saint_léonard_de_portneuf: return "Saint-Léonard-de-Portneuf"
        case .saint_léon_de_standon: return "Saint-Léon-de-Standon"
        case .saint_léon_le_grand_la_matapédia: return "Saint-Léon-le-Grand"
        case .saint_léon_le_grand_maskinongé: return "Saint-Léon-le-Grand"
        case .saint_liboire: return "Saint-Liboire"
        case .saint_liguori: return "Saint-Liguori"
        case .saint_lin__laurentides: return "Saint-Lin--Laurentides"
        case .saint_louis: return "Saint-Louis"
        case .saint_louis_de_blandford: return "Saint-Louis-de-Blandford"
        case .saint_louis_de_gonzague_beauharnois_salaberry: return "Saint-Louis-de-Gonzague"
        case .saint_louis_de_gonzague_les_etchemins: return "Saint-Louis-de-Gonzague"
        case .saint_louis_de_gonzague_du_cap_tourmente: return "Saint-Louis-de-Gonzague-du-Cap-Tourmente"
        case .saint_louis_du_ha_ha: return "Saint-Louis-du-Ha! Ha!"
        case .saint_luc_de_bellechasse: return "Saint-Luc-de-Bellechasse"
        case .saint_luc_de_vincennes: return "Saint-Luc-de-Vincennes"
        case .saint_lucien: return "Saint-Lucien"
        case .saint_ludger: return "Saint-Ludger"
        case .saint_ludger_de_milot: return "Saint-Ludger-de-Milot"
        case .saint_magloire: return "Saint-Magloire"
        case .saint_majorique_de_grantham: return "Saint-Majorique-de-Grantham"
        case .saint_malachie: return "Saint-Malachie"
        case .saint_malo: return "Saint-Malo"
        case .saint_marc_de_figuery: return "Saint-Marc-de-Figuery"
        case .saint_marc_des_carrières: return "Saint-Marc-des-Carrières"
        case .saint_marc_du_lac_long: return "Saint-Marc-du-Lac-Long"
        case .saint_marcel: return "Saint-Marcel"
        case .saint_marcel_de_richelieu: return "Saint-Marcel-de-Richelieu"
        case .saint_marcellin: return "Saint-Marcellin"
        case .saint_marc_sur_richelieu: return "Saint-Marc-sur-Richelieu"
        case .saint_martin: return "Saint-Martin"
        case .saint_mathias_sur_richelieu: return "Saint-Mathias-sur-Richelieu"
        case .saint_mathieu: return "Saint-Mathieu"
        case .saint_mathieu_de_beloeil: return "Saint-Mathieu-de-Beloeil"
        case .saint_mathieu_de_rioux: return "Saint-Mathieu-de-Rioux"
        case .saint_mathieu_d_harricana: return "Saint-Mathieu-d'Harricana"
        case .saint_mathieu_du_parc: return "Saint-Mathieu-du-Parc"
        case .saint_maurice: return "Saint-Maurice"
        case .saint_maxime_du_mont_louis: return "Saint-Maxime-du-Mont-Louis"
        case .saint_médard: return "Saint-Médard"
        case .saint_michel: return "Saint-Michel"
        case .saint_michel_de_bellechasse: return "Saint-Michel-de-Bellechasse"
        case .saint_michel_des_saints: return "Saint-Michel-des-Saints"
        case .saint_michel_du_squatec: return "Saint-Michel-du-Squatec"
        case .saint_modeste: return "Saint-Modeste"
        case .saint_moïse: return "Saint-Moïse"
        case .saint_narcisse: return "Saint-Narcisse"
        case .saint_narcisse_de_beaurivage: return "Saint-Narcisse-de-Beaurivage"
        case .saint_narcisse_de_rimouski: return "Saint-Narcisse-de-Rimouski"
        case .saint_nazaire: return "Saint-Nazaire"
        case .saint_nazaire_d_acton: return "Saint-Nazaire-d'Acton"
        case .saint_nazaire_de_dorchester: return "Saint-Nazaire-de-Dorchester"
        case .saint_nérée_de_bellechasse: return "Saint-Nérée-de-Bellechasse"
        case .saint_noël: return "Saint-Noël"
        case .saint_norbert: return "Saint-Norbert"
        case .saint_norbert_d_arthabaska: return "Saint-Norbert-d'Arthabaska"
        case .saint_octave_de_métis: return "Saint-Octave-de-Métis"
        case .saint_odilon_de_cranbourne: return "Saint-Odilon-de-Cranbourne"
        case .saint_omer: return "Saint-Omer"
        case .saint_onésime_d_ixworth: return "Saint-Onésime-d'Ixworth"
        case .saint_ours: return "Saint-Ours"
        case .saint_pacôme: return "Saint-Pacôme"
        case .saint_pamphile: return "Saint-Pamphile"
        case .saint_pascal: return "Saint-Pascal"
        case .saint_patrice_de_beaurivage: return "Saint-Patrice-de-Beaurivage"
        case .saint_patrice_de_sherrington: return "Saint-Patrice-de-Sherrington"
        case .saint_paul: return "Saint-Paul"
        case .saint_paul_d_abbotsford: return "Saint-Paul-d'Abbotsford"
        case .saint_paul_de_la_croix: return "Saint-Paul-de-la-Croix"
        case .saint_paul_de_l_île_aux_noix: return "Saint-Paul-de-l'Île-aux-Noix"
        case .saint_paul_de_montminy: return "Saint-Paul-de-Montminy"
        case .saint_paulin: return "Saint-Paulin"
        case .saint_philémon: return "Saint-Philémon"
        case .saint_philibert: return "Saint-Philibert"
        case .saint_philippe: return "Saint-Philippe"
        case .saint_philippe_de_néri: return "Saint-Philippe-de-Néri"
        case .saint_pie: return "Saint-Pie"
        case .saint_pie_de_guire: return "Saint-Pie-de-Guire"
        case .saint_pierre: return "Saint-Pierre"
        case .saint_pierre_baptiste: return "Saint-Pierre-Baptiste"
        case .saint_pierre_de_broughton: return "Saint-Pierre-de-Broughton"
        case .saint_pierre_de_lamy: return "Saint-Pierre-de-Lamy"
        case .saint_pierre_de_la_rivière_du_sud: return "Saint-Pierre-de-la-Rivière-du-Sud"
        case .saint_pierre_de_l_île_d_orléans: return "Saint-Pierre-de-l'Île-d'Orléans"
        case .saint_pierre_les_becquets: return "Saint-Pierre-les-Becquets"
        case .saint_placide: return "Saint-Placide"
        case .saint_polycarpe: return "Saint-Polycarpe"
        case .saint_prime: return "Saint-Prime"
        case .saint_prosper: return "Saint-Prosper"
        case .saint_prosper_de_champlain: return "Saint-Prosper-de-Champlain"
        case .saint_raphaël: return "Saint-Raphaël"
        case .saint_raymond: return "Saint-Raymond"
        case .saint_rémi: return "Saint-Rémi"
        case .saint_rémi_de_tingwick: return "Saint-Rémi-de-Tingwick"
        case .saint_rené: return "Saint-René"
        case .saint_rené_de_matane: return "Saint-René-de-Matane"
        case .saint_robert: return "Saint-Robert"
        case .saint_robert_bellarmin: return "Saint-Robert-Bellarmin"
        case .saint_roch_de_l_achigan: return "Saint-Roch-de-l'Achigan"
        case .saint_roch_de_mékinac: return "Saint-Roch-de-Mékinac"
        case .saint_roch_de_richelieu: return "Saint-Roch-de-Richelieu"
        case .saint_roch_des_aulnaies: return "Saint-Roch-des-Aulnaies"
        case .saint_roch_ouest: return "Saint-Roch-Ouest"
        case .saint_romain: return "Saint-Romain"
        case .saint_rosaire: return "Saint-Rosaire"
        case .saint_samuel: return "Saint-Samuel"
        case .saint_sauveur: return "Saint-Sauveur"
        case .saint_sébastien_le_granit: return "Saint-Sébastien"
        case .saint_sébastien_le_haut_richelieu: return "Saint-Sébastien"
        case .saint_sévère: return "Saint-Sévère"
        case .saint_séverin_beauce_centre: return "Saint-Séverin"
        case .saint_séverin_mékinac: return "Saint-Séverin"
        case .saint_siméon_bonaventure: return "Saint-Siméon"
        case .saint_siméon_charlevoix_est: return "Saint-Siméon"
        case .saint_simon: return "Saint-Simon"
        case .saint_simon_de_rimouski: return "Saint-Simon-de-Rimouski"
        case .saint_simon_les_mines: return "Saint-Simon-les-Mines"
        case .saint_sixte: return "Saint-Sixte"
        case .saint_stanislas_les_chenaux: return "Saint-Stanislas"
        case .saint_stanislas_maria_chapdelaine: return "Saint-Stanislas"
        case .saint_stanislas_de_kostka: return "Saint-Stanislas-de-Kostka"
        case .saint_sulpice: return "Saint-Sulpice"
        case .saint_sylvère: return "Saint-Sylvère"
        case .saint_sylvestre: return "Saint-Sylvestre"
        case .saint_télesphore: return "Saint-Télesphore"
        case .saint_tharcisius: return "Saint-Tharcisius"
        case .saint_théodore_d_acton: return "Saint-Théodore-d'Acton"
        case .saint_théophile: return "Saint-Théophile"
        case .saint_thomas: return "Saint-Thomas"
        case .saint_thomas_didyme: return "Saint-Thomas-Didyme"
        case .saint_thuribe: return "Saint-Thuribe"
        case .saint_tite: return "Saint-Tite"
        case .saint_tite_des_caps: return "Saint-Tite-des-Caps"
        case .saint_ubalde: return "Saint-Ubalde"
        case .saint_ulric: return "Saint-Ulric"
        case .saint_urbain: return "Saint-Urbain"
        case .saint_urbain_premier: return "Saint-Urbain-Premier"
        case .saint_valentin: return "Saint-Valentin"
        case .saint_valère: return "Saint-Valère"
        case .saint_valérien: return "Saint-Valérien"
        case .saint_valérien_de_milton: return "Saint-Valérien-de-Milton"
        case .saint_vallier: return "Saint-Vallier"
        case .saint_venant_de_paquette: return "Saint-Venant-de-Paquette"
        case .saint_vianney: return "Saint-Vianney"
        case .saint_victor: return "Saint-Victor"
        case .saint_wenceslas: return "Saint-Wenceslas"
        case .saint_zacharie: return "Saint-Zacharie"
        case .saint_zénon: return "Saint-Zénon"
        case .saint_zénon_du_lac_humqui: return "Saint-Zénon-du-Lac-Humqui"
        case .saint_zéphirin_de_courval: return "Saint-Zéphirin-de-Courval"
        case .saint_zotique: return "Saint-Zotique"
        case .sainte_adèle: return "Sainte-Adèle"
        case .sainte_agathe_de_lotbinière: return "Sainte-Agathe-de-Lotbinière"
        case .sainte_agathe_des_monts: return "Sainte-Agathe-des-Monts"
        case .sainte_angèle_de_mérici: return "Sainte-Angèle-de-Mérici"
        case .sainte_angèle_de_monnoir: return "Sainte-Angèle-de-Monnoir"
        case .sainte_angèle_de_prémont: return "Sainte-Angèle-de-Prémont"
        case .sainte_anne_de_beaupré: return "Sainte-Anne-de-Beaupré"
        case .sainte_anne_de_bellevue: return "Sainte-Anne-de-Bellevue"
        case .sainte_anne_de_la_pérade: return "Sainte-Anne-de-la-Pérade"
        case .sainte_anne_de_la_pocatière: return "Sainte-Anne-de-la-Pocatière"
        case .sainte_anne_de_la_rochelle: return "Sainte-Anne-de-la-Rochelle"
        case .sainte_anne_de_sabrevois: return "Sainte-Anne-de-Sabrevois"
        case .sainte_anne_des_lacs: return "Sainte-Anne-des-Lacs"
        case .sainte_anne_des_monts: return "Sainte-Anne-des-Monts"
        case .sainte_anne_de_sorel: return "Sainte-Anne-de-Sorel"
        case .sainte_anne_des_plaines: return "Sainte-Anne-des-Plaines"
        case .sainte_anne_du_lac: return "Sainte-Anne-du-Lac"
        case .sainte_apolline_de_patton: return "Sainte-Apolline-de-Patton"
        case .sainte_aurélie: return "Sainte-Aurélie"
        case .sainte_barbe: return "Sainte-Barbe"
        case .sainte_béatrix: return "Sainte-Béatrix"
        case .sainte_brigide_d_iberville: return "Sainte-Brigide-d'Iberville"
        case .sainte_brigitte_de_laval: return "Sainte-Brigitte-de-Laval"
        case .sainte_brigitte_des_saults: return "Sainte-Brigitte-des-Saults"
        case .sainte_catherine: return "Sainte-Catherine"
        case .sainte_catherine_de_hatley: return "Sainte-Catherine-de-Hatley"
        case .sainte_catherine_de_la_jacques_cartier: return "Sainte-Catherine-de-la-Jacques-Cartier"
        case .sainte_cécile_de_lévrard: return "Sainte-Cécile-de-Lévrard"
        case .sainte_cécile_de_milton: return "Sainte-Cécile-de-Milton"
        case .sainte_cécile_de_whitton: return "Sainte-Cécile-de-Whitton"
        case .sainte_christine: return "Sainte-Christine"
        case .sainte_christine_d_auvergne: return "Sainte-Christine-d'Auvergne"
        case .sainte_claire: return "Sainte-Claire"
        case .sainte_clotilde: return "Sainte-Clotilde"
        case .sainte_clotilde_de_beauce: return "Sainte-Clotilde-de-Beauce"
        case .sainte_clotilde_de_horton: return "Sainte-Clotilde-de-Horton"
        case .sainte_croix: return "Sainte-Croix"
        case .sainte_edwidge_de_clifton: return "Sainte-Edwidge-de-Clifton"
        case .sainte_élisabeth: return "Sainte-Élisabeth"
        case .sainte_élizabeth_de_warwick: return "Sainte-Élizabeth-de-Warwick"
        case .sainte_émélie_de_l_énergie: return "Sainte-Émélie-de-l'Énergie"
        case .sainte_eulalie: return "Sainte-Eulalie"
        case .sainte_euphémie_sur_rivière_du_sud: return "Sainte-Euphémie-sur-Rivière-du-Sud"
        case .sainte_famille_de_l_île_d_orléans: return "Sainte-Famille-de-l'Île-d'Orléans"
        case .sainte_félicité_l_islet: return "Sainte-Félicité"
        case .sainte_félicité_la_mataine: return "Sainte-Félicité"
        case .sainte_flavie: return "Sainte-Flavie"
        case .sainte_florence: return "Sainte-Florence"
        case .sainte_françoise_bécancour: return "Sainte-Françoise"
        case .sainte_françoise_les_basques: return "Sainte-Françoise"
        case .sainte_geneviève_de_batiscan: return "Sainte-Geneviève-de-Batiscan"
        case .sainte_geneviève_de_berthier: return "Sainte-Geneviève-de-Berthier"
        case .sainte_germaine_boulé: return "Sainte-Germaine-Boulé"
        case .sainte_gertrude_manneville: return "Sainte-Gertrude-Manneville"
        case .sainte_hedwidge: return "Sainte-Hedwidge"
        case .sainte_hélène_de_bagot: return "Sainte-Hélène-de-Bagot"
        case .sainte_hélène_de_chester: return "Sainte-Hélène-de-Chester"
        case .sainte_hélène_de_kamouraska: return "Sainte-Hélène-de-Kamouraska"
        case .sainte_hélène_de_mancebourg: return "Sainte-Hélène-de-Mancebourg"
        case .sainte_hénédine: return "Sainte-Hénédine"
        case .sainte_irène: return "Sainte-Irène"
        case .sainte_jeanne_d_arc_la_mitis: return "Sainte-Jeanne-d'Arc"
        case .sainte_jeanne_d_arc_maria_chapdelaine: return "Sainte-Jeanne-d'Arc"
        case .sainte_julie: return "Sainte-Julie"
        case .sainte_julienne: return "Sainte-Julienne"
        case .sainte_justine: return "Sainte-Justine"
        case .sainte_justine_de_newton: return "Sainte-Justine-de-Newton"
        case .sainte_louise: return "Sainte-Louise"
        case .sainte_luce: return "Sainte-Luce"
        case .sainte_lucie_de_beauregard: return "Sainte-Lucie-de-Beauregard"
        case .sainte_lucie_des_laurentides: return "Sainte-Lucie-des-Laurentides"
        case .sainte_madeleine: return "Sainte-Madeleine"
        case .sainte_madeleine_de_la_rivière_madeleine: return "Sainte-Madeleine-de-la-Rivière-Madeleine"
        case .sainte_marcelline_de_kildare: return "Sainte-Marcelline-de-Kildare"
        case .sainte_marguerite: return "Sainte-Marguerite"
        case .sainte_marguerite_du_lac_masson: return "Sainte-Marguerite-du-Lac-Masson"
        case .sainte_marguerite_marie: return "Sainte-Marguerite-Marie"
        case .sainte_marie: return "Sainte-Marie"
        case .sainte_marie_de_blandford: return "Sainte-Marie-de-Blandford"
        case .sainte_marie_madeleine: return "Sainte-Marie-Madeleine"
        case .sainte_marie_salomé: return "Sainte-Marie-Salomé"
        case .sainte_marthe: return "Sainte-Marthe"
        case .sainte_marthe_sur_le_lac: return "Sainte-Marthe-sur-le-Lac"
        case .sainte_martine: return "Sainte-Martine"
        case .sainte_mélanie: return "Sainte-Mélanie"
        case .sainte_monique_lac_saint_jean_est: return "Sainte-Monique"
        case .sainte_monique_nicolet_yamaska: return "Sainte-Monique"
        case .sainte_paule: return "Sainte-Paule"
        case .sainte_perpétue_l_islet: return "Sainte-Perpétue"
        case .sainte_perpétue_nicolet_yamaska: return "Sainte-Perpétue"
        case .sainte_pétronille: return "Sainte-Pétronille"
        case .sainte_praxède: return "Sainte-Praxède"
        case .sainte_rita: return "Sainte-Rita"
        case .sainte_rose_de_watford: return "Sainte-Rose-de-Watford"
        case .sainte_rose_du_nord: return "Sainte-Rose-du-Nord"
        case .sainte_sabine_brome_missisquoi: return "Sainte-Sabine"
        case .sainte_sabine_les_etchemins: return "Sainte-Sabine"
        case .sainte_séraphine: return "Sainte-Séraphine"
        case .sainte_sophie: return "Sainte-Sophie"
        case .sainte_sophie_de_lévrard: return "Sainte-Sophie-de-Lévrard"
        case .sainte_sophie_d_halifax: return "Sainte-Sophie-d'Halifax"
        case .sainte_thècle: return "Sainte-Thècle"
        case .sainte_thérèse: return "Sainte-Thérèse"
        case .sainte_thérèse_de_gaspé: return "Sainte-Thérèse-de-Gaspé"
        case .sainte_thérèse_de_la_gatineau: return "Sainte-Thérèse-de-la-Gatineau"
        case .sainte_ursule: return "Sainte-Ursule"
        case .sainte_victoire_de_sorel: return "Sainte-Victoire-de-Sorel"
        case .saints_anges: return "Saints-Anges"
        case .saints_martyrs_canadiens: return "Saints-Martyrs-Canadiens"
        case .salaberry_de_valleyfield: return "Salaberry-de-Valleyfield"
        case .sept_îles: return "Sept-Îles"
        case .sorel_tracy: return "Sorel-Tracy"
        case .stanstead_est: return "Stanstead-Est"
        case .stoneham_et_tewkesbury: return "Stoneham-et-Tewkesbury"
        case .stukely_sud: return "Stukely-Sud"
        case .témiscouata_sur_le_lac: return "Témiscouata-sur-le-Lac"
        case .terrasse_vaudreuil: return "Terrasse-Vaudreuil"
        case .très_saint_rédempteur: return "Très-Saint-Rédempteur"
        case .très_saint_sacrement: return "Très-Saint-Sacrement"
        case .tring_jonction: return "Tring-Jonction"
        case .trois_pistoles: return "Trois-Pistoles"
        case .trois_rives: return "Trois-Rives"
        case .trois_rivières: return "Trois-Rivières"
        case .val_alain: return "Val-Alain"
        case .val_brillant: return "Val-Brillant"
        case .val_d_or: return "Val-d'Or"
        case .val_david: return "Val-David"
        case .val_des_bois: return "Val-des-Bois"
        case .val_des_lacs: return "Val-des-Lacs"
        case .val_des_monts: return "Val-des-Monts"
        case .val_des_sources: return "Val-des-Sources"
        case .val_joli: return "Val-Joli"
        case .val_morin: return "Val-Morin"
        case .val_racine: return "Val-Racine"
        case .val_saint_gilles: return "Val-Saint-Gilles"
        case .vallée_jonction: return "Vallée-Jonction"
        case .vaudreuil_dorion: return "Vaudreuil-Dorion"
        case .vaudreuil_sur_le_lac: return "Vaudreuil-sur-le-Lac"
        case .venise_en_québec: return "Venise-en-Québec"
        case .ville_marie: return "Ville-Marie"
        case .wentworth_nord: return "Wentworth-Nord"
        default: return nil
        }
    }
}
