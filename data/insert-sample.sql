USE exoplanets;

insert into PLANETS (
    `id`,
    `pl_name`,
    `hostname`,
    `pl_letter`,
    `hd_name`,
    `hip_name`,
    `tic_id`,
    `gaia_id`,
    `default_flag`,
    `sy_snum`,
    `sy_pnum`,
    `sy_mnum`,
    `cb_flag`,
    `discoverymethod`,
    `disc_year`,
    `disc_refname`,
    `disc_pubdate`,
    `disc_locale`,
    `disc_facility`,
    `disc_telescope`,
    `disc_instrument`,
    `rv_flag`,
    `pul_flag`,
    `ptv_flag`,
    `tran_flag`,
    `ast_flag`,
    `obm_flag`,
    `micro_flag`,
    `etv_flag`,
    `ima_flag`,
    `dkin_flag`,
    `soltype`,
    `pl_controv_flag`,
    `pl_refname`,
    `pl_orbper`,
    `pl_orbpererr1`,
    `pl_orbpererr2`,
    `pl_orbperlim`,
    `pl_orbsmax`,
    `pl_orbsmaxerr1`,
    `pl_orbsmaxerr2`,
    `pl_orbsmaxlim`,
    `pl_rade`,
    `pl_radeerr1`,
    `pl_radeerr2`,
    `pl_radelim`,
    `pl_radj`,
    `pl_radjerr1`,
    `pl_radjerr2`,
    `pl_radjlim`,
    `pl_masse`,
    `pl_masseerr1`,
    `pl_masseerr2`,
    `pl_masselim`,
    `pl_massj`,
    `pl_massjerr1`,
    `pl_massjerr2`,
    `pl_massjlim`,
    `pl_msinie`,
    `pl_msinieerr1`,
    `pl_msinieerr2`,
    `pl_msinielim`,
    `pl_msinij`,
    `pl_msinijerr1`,
    `pl_msinijerr2`,
    `pl_msinijlim`,
    `pl_cmasse`,
    `pl_cmasseerr1`,
    `pl_cmasseerr2`,
    `pl_cmasselim`,
    `pl_cmassj`,
    `pl_cmassjerr1`,
    `pl_cmassjerr2`,
    `pl_cmassjlim`,
    `pl_bmasse`,
    `pl_bmasseerr1`,
    `pl_bmasseerr2`,
    `pl_bmasselim`,
    `pl_bmassj`,
    `pl_bmassjerr1`,
    `pl_bmassjerr2`,
    `pl_bmassjlim`,
    `pl_bmassprov`,
    `pl_dens`,
    `pl_denserr1`,
    `pl_denserr2`,
    `pl_denslim`,
    `pl_orbeccen`,
    `pl_orbeccenerr1`,
    `pl_orbeccenerr2`,
    `pl_orbeccenlim`,
    `pl_insol`,
    `pl_insolerr1`,
    `pl_insolerr2`,
    `pl_insollim`,
    `pl_eqt`,
    `pl_eqterr1`,
    `pl_eqterr2`,
    `pl_eqtlim`,
    `pl_orbincl`,
    `pl_orbinclerr1`,
    `pl_orbinclerr2`,
    `pl_orbincllim`,
    `pl_tranmid`,
    `pl_tranmiderr1`,
    `pl_tranmiderr2`,
    `pl_tranmidlim`,
    `pl_tsystemref`,
    `ttv_flag`,
    `pl_imppar`,
    `pl_impparerr1`,
    `pl_impparerr2`,
    `pl_impparlim`,
    `pl_trandep`,
    `pl_trandeperr1`,
    `pl_trandeperr2`,
    `pl_trandeplim`,
    `pl_trandur`,
    `pl_trandurerr1`,
    `pl_trandurerr2`,
    `pl_trandurlim`,
    `pl_ratdor`,
    `pl_ratdorerr1`,
    `pl_ratdorerr2`,
    `pl_ratdorlim`,
    `pl_ratror`,
    `pl_ratrorerr1`,
    `pl_ratrorerr2`,
    `pl_ratrorlim`,
    `pl_occdep`,
    `pl_occdeperr1`,
    `pl_occdeperr2`,
    `pl_occdeplim`,
    `pl_orbtper`,
    `pl_orbtpererr1`,
    `pl_orbtpererr2`,
    `pl_orbtperlim`,
    `pl_orblper`,
    `pl_orblpererr1`,
    `pl_orblpererr2`,
    `pl_orblperlim`,
    `pl_rvamp`,
    `pl_rvamperr1`,
    `pl_rvamperr2`,
    `pl_rvamplim`,
    `pl_projobliq`,
    `pl_projobliqerr1`,
    `pl_projobliqerr2`,
    `pl_projobliqlim`,
    `pl_trueobliq`,
    `pl_trueobliqerr1`,
    `pl_trueobliqerr2`,
    `pl_trueobliqlim`,
    `st_refname`,
    `st_spectype`,
    `st_teff`,
    `st_tefferr1`,
    `st_tefferr2`,
    `st_tefflim`,
    `st_rad`,
    `st_raderr1`,
    `st_raderr2`,
    `st_radlim`,
    `st_mass`,
    `st_masserr1`,
    `st_masserr2`,
    `st_masslim`,
    `st_met`,
    `st_meterr1`,
    `st_meterr2`,
    `st_metlim`,
    `st_metratio`,
    `st_lum`,
    `st_lumerr1`,
    `st_lumerr2`,
    `st_lumlim`,
    `st_logg`,
    `st_loggerr1`,
    `st_loggerr2`,
    `st_logglim`,
    `st_age`,
    `st_ageerr1`,
    `st_ageerr2`,
    `st_agelim`,
    `st_dens`,
    `st_denserr1`,
    `st_denserr2`,
    `st_denslim`,
    `st_vsin`,
    `st_vsinerr1`,
    `st_vsinerr2`,
    `st_vsinlim`,
    `st_rotp`,
    `st_rotperr1`,
    `st_rotperr2`,
    `st_rotplim`,
    `st_radv`,
    `st_radverr1`,
    `st_radverr2`,
    `st_radvlim`,
    `sy_refname`,
    `rastr`,
    `ra`,
    `decstr`,
    `dec`,
    `raerr1`,
    `raerr2`,
    `decerr1`,
    `decerr2`,
    `glat`,
    `glaterr1`,
    `glaterr2`,
    `glon`,
    `glonerr1`,
    `glonerr2`,
    `elat`,
    `elaterr1`,
    `elaterr2`,
    `elon`,
    `elonerr1`,
    `elonerr2`,
    `sy_pm`,
    `sy_pmerr1`,
    `sy_pmerr2`,
    `sy_pmra`,
    `sy_pmraerr1`,
    `sy_pmraerr2`,
    `sy_pmdec`,
    `sy_pmdecerr1`,
    `sy_pmdecerr2`,
    `sy_dist`,
    `sy_disterr1`,
    `sy_disterr2`,
    `sy_plx`,
    `sy_plxerr1`,
    `sy_plxerr2`,
    `sy_bmag`,
    `sy_bmagerr1`,
    `sy_bmagerr2`,
    `sy_vmag`,
    `sy_vmagerr1`,
    `sy_vmagerr2`,
    `sy_jmag`,
    `sy_jmagerr1`,
    `sy_jmagerr2`,
    `sy_hmag`,
    `sy_hmagerr1`,
    `sy_hmagerr2`,
    `sy_kmag`,
    `sy_kmagerr1`,
    `sy_kmagerr2`,
    `sy_umag`,
    `sy_umagerr1`,
    `sy_umagerr2`,
    `sy_gmag`,
    `sy_gmagerr1`,
    `sy_gmagerr2`,
    `sy_rmag`,
    `sy_rmagerr1`,
    `sy_rmagerr2`,
    `sy_imag`,
    `sy_imagerr1`,
    `sy_imagerr2`,
    `sy_zmag`,
    `sy_zmagerr1`,
    `sy_zmagerr2`,
    `sy_w1mag`,
    `sy_w1magerr1`,
    `sy_w1magerr2`,
    `sy_w2mag`,
    `sy_w2magerr1`,
    `sy_w2magerr2`,
    `sy_w3mag`,
    `sy_w3magerr1`,
    `sy_w3magerr2`,
    `sy_w4mag`,
    `sy_w4magerr1`,
    `sy_w4magerr2`,
    `sy_gaiamag`,
    `sy_gaiamagerr1`,
    `sy_gaiamagerr2`,
    `sy_icmag`,
    `sy_icmagerr1`,
    `sy_icmagerr2`,
    `sy_tmag`,
    `sy_tmagerr1`,
    `sy_tmagerr2`,
    `sy_kepmag`,
    `sy_kepmagerr1`,
    `sy_kepmagerr2`,
    `rowupdate`,
    `pl_pubdate`,
    `releasedate`,
    `pl_nnotes`,
    `st_nphot`,
    `st_nrvc`,
    `st_nspec`,
    `pl_nespec`,
    `pl_ntranspec`
    ) values (
        1,
        "11 Com b",
        "11 Com",
        "b",
        "HD 107383",
        "HIP 60202",
        "TIC 72437047",
        "Gaia DR2 3946945413106333696",
        "0",
        "2",
        "1",
        "0",
        "0",
        "Radial Velocity",
        "2007",
        "<a refstr=LIU_ET_AL__2008 href=https://ui.adsabs.harvard.edu/abs/2008ApJ...672..553L/abstract target=ref> Liu et al. 2008 </a>",
        "2008-01-01",
        "Ground",
        "Xinglong Station",
        "2.16 m Telescope",
        "Coude Echelle Spectrograph",
        "1",
        "0",
        "0",
        "0",
        "0",
        "0",
        "0",
        "0",
        "0",
        "0",
        "Published Confirmed",
        "0",
        "<a refstr=KUNITOMO_ET_AL__2011 href=https://ui.adsabs.harvard.edu/abs/2011ApJ...737...66K/abstract target=ref> Kunitomo et al. 2011</a>",
    " ",
    " ",
    " ",
    " ",
        "1.210000",
        "0.060000",
        "-0.050000",
        "0",
    " ",
    " ",
    " ",
    " ",
    " ",
    " ",
    " ",
    " ",
    " ",
    " ",
    " ",
    " ",
    " ",
    " ",
    " ",
    " ",
        "5434.70000",
        "540.30000",
        "-413.20000",
        "0",
        "17.10000",
        "1.70000",
        "-1.30000",
        "0",
    " ",
    " ",
    " ",
    " ",
    " ",
    " ",
    " ",
    " ",
        "5434.70000",
        "540.30000",
        "-413.20000",
        "0",
        "17.10000",
        "1.70000",
        "-1.30000",
        "0",
        "Msini",
    " ",
    " ",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "0",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "<a refstr=KUNITOMO_ET_AL__2011 href=https://ui.adsabs.harvard.edu/abs/2011ApJ...737...66K/abstract target=ref> Kunitomo et al. 2011</a>",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "2.60",
        "0.40",
        "-0.30",
        "0",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "<a refstr=STASSUN_ET_AL__2019 href=https://ui.adsabs.harvard.edu/abs/2019AJ....158..138S/abstract target=ref>TICv8</a>",
        "12h20m42.91s",
        "185.1787793",
        "+17d47m35.71s",
        "17.7932516",
        "0.1620324",
        "-0.1620324",
        "0.1316876",
        "-0.1316876",
        "78.2805500",
        "",
        "",
        "264.1407000",
        "",
        "",
        "18.3337700",
        "",
        "",
        "177.4224000",
        "",
        "",
        "140.3836266",
        "0.3013952",
        "-0.3013952",
        "-109.2410000",
        "0.3161070",
        "-0.3161070",
        "88.1701000",
        "0.2772970",
        "-0.2772970",
        "93.1846000",
        "1.9238000",
        "-1.9238000",
        "10.7104000",
        "0.2197390",
        "-0.2197390",
        "5.7260000",
        "0.0170000",
        "-0.0170000",
        "4.7230700",
        "0.0230000",
        "-0.0230000",
        "2.9430000",
        "0.3340000",
        "-0.3340000",
        "2.4840000",
        "0.2680000",
        "-0.2680000",
        "2.2820000",
        "0.3460000",
        "-0.3460000",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "0.6390000",
        "",
        "",
        "0.7320000",
        "",
        "",
        "2.3580000",
        "0.0100000",
        "-0.0100000",
        "2.2700000",
        "0.0180000",
        "-0.0180000",
        "4.4403800",
        "0.0038479",
        "-0.0038479",
        "",
        "",
        "",
        "3.8379000",
        "0.0071000",
        "-0.0071000",
        "",
        "",
        "",
        "2014-07-23",
        "2011-08-01",
        "2014-07-23",
        "2",
        "1",
        "2",
        "0",
        "0",
        "0");


    insert into PLANETS (
        `id`,
    `pl_name`,
    `hostname`,
    `pl_letter`,
    `hd_name`,
    `hip_name`,
    `tic_id`,
    `gaia_id`,
    `default_flag`,
    `sy_snum`,
    `sy_pnum`,
    `sy_mnum`,
    `cb_flag`,
    `discoverymethod`,
    `disc_year`,
    `disc_refname`,
    `disc_pubdate`,
    `disc_locale`,
    `disc_facility`,
    `disc_telescope`,
    `disc_instrument`,
    `rv_flag`,
    `pul_flag`,
    `ptv_flag`,
    `tran_flag`,
    `ast_flag`,
    `obm_flag`,
    `micro_flag`,
    `etv_flag`,
    `ima_flag`,
    `dkin_flag`,
    `soltype`,
    `pl_controv_flag`,
    `pl_refname`,
    `pl_orbper`,
    `pl_orbpererr1`,
    `pl_orbpererr2`,
    `pl_orbperlim`,
    `pl_orbsmax`,
    `pl_orbsmaxerr1`,
    `pl_orbsmaxerr2`,
    `pl_orbsmaxlim`,
    `pl_rade`,
    `pl_radeerr1`,
    `pl_radeerr2`,
    `pl_radelim`,
    `pl_radj`,
    `pl_radjerr1`,
    `pl_radjerr2`,
    `pl_radjlim`,
    `pl_masse`,
    `pl_masseerr1`,
    `pl_masseerr2`,
    `pl_masselim`,
    `pl_massj`,
    `pl_massjerr1`,
    `pl_massjerr2`,
    `pl_massjlim`,
    `pl_msinie`,
    `pl_msinieerr1`,
    `pl_msinieerr2`,
    `pl_msinielim`,
    `pl_msinij`,
    `pl_msinijerr1`,
    `pl_msinijerr2`,
    `pl_msinijlim`,
    `pl_cmasse`,
    `pl_cmasseerr1`,
    `pl_cmasseerr2`,
    `pl_cmasselim`,
    `pl_cmassj`,
    `pl_cmassjerr1`,
    `pl_cmassjerr2`,
    `pl_cmassjlim`,
    `pl_bmasse`,
    `pl_bmasseerr1`,
    `pl_bmasseerr2`,
    `pl_bmasselim`,
    `pl_bmassj`,
    `pl_bmassjerr1`,
    `pl_bmassjerr2`,
    `pl_bmassjlim`,
    `pl_bmassprov`,
    `pl_dens`,
    `pl_denserr1`,
    `pl_denserr2`,
    `pl_denslim`,
    `pl_orbeccen`,
    `pl_orbeccenerr1`,
    `pl_orbeccenerr2`,
    `pl_orbeccenlim`,
    `pl_insol`,
    `pl_insolerr1`,
    `pl_insolerr2`,
    `pl_insollim`,
    `pl_eqt`,
    `pl_eqterr1`,
    `pl_eqterr2`,
    `pl_eqtlim`,
    `pl_orbincl`,
    `pl_orbinclerr1`,
    `pl_orbinclerr2`,
    `pl_orbincllim`,
    `pl_tranmid`,
    `pl_tranmiderr1`,
    `pl_tranmiderr2`,
    `pl_tranmidlim`,
    `pl_tsystemref`,
    `ttv_flag`,
    `pl_imppar`,
    `pl_impparerr1`,
    `pl_impparerr2`,
    `pl_impparlim`,
    `pl_trandep`,
    `pl_trandeperr1`,
    `pl_trandeperr2`,
    `pl_trandeplim`,
    `pl_trandur`,
    `pl_trandurerr1`,
    `pl_trandurerr2`,
    `pl_trandurlim`,
    `pl_ratdor`,
    `pl_ratdorerr1`,
    `pl_ratdorerr2`,
    `pl_ratdorlim`,
    `pl_ratror`,
    `pl_ratrorerr1`,
    `pl_ratrorerr2`,
    `pl_ratrorlim`,
    `pl_occdep`,
    `pl_occdeperr1`,
    `pl_occdeperr2`,
    `pl_occdeplim`,
    `pl_orbtper`,
    `pl_orbtpererr1`,
    `pl_orbtpererr2`,
    `pl_orbtperlim`,
    `pl_orblper`,
    `pl_orblpererr1`,
    `pl_orblpererr2`,
    `pl_orblperlim`,
    `pl_rvamp`,
    `pl_rvamperr1`,
    `pl_rvamperr2`,
    `pl_rvamplim`,
    `pl_projobliq`,
    `pl_projobliqerr1`,
    `pl_projobliqerr2`,
    `pl_projobliqlim`,
    `pl_trueobliq`,
    `pl_trueobliqerr1`,
    `pl_trueobliqerr2`,
    `pl_trueobliqlim`,
    `st_refname`,
    `st_spectype`,
    `st_teff`,
    `st_tefferr1`,
    `st_tefferr2`,
    `st_tefflim`,
    `st_rad`,
    `st_raderr1`,
    `st_raderr2`,
    `st_radlim`,
    `st_mass`,
    `st_masserr1`,
    `st_masserr2`,
    `st_masslim`,
    `st_met`,
    `st_meterr1`,
    `st_meterr2`,
    `st_metlim`,
    `st_metratio`,
    `st_lum`,
    `st_lumerr1`,
    `st_lumerr2`,
    `st_lumlim`,
    `st_logg`,
    `st_loggerr1`,
    `st_loggerr2`,
    `st_logglim`,
    `st_age`,
    `st_ageerr1`,
    `st_ageerr2`,
    `st_agelim`,
    `st_dens`,
    `st_denserr1`,
    `st_denserr2`,
    `st_denslim`,
    `st_vsin`,
    `st_vsinerr1`,
    `st_vsinerr2`,
    `st_vsinlim`,
    `st_rotp`,
    `st_rotperr1`,
    `st_rotperr2`,
    `st_rotplim`,
    `st_radv`,
    `st_radverr1`,
    `st_radverr2`,
    `st_radvlim`,
    `sy_refname`,
    `rastr`,
    `ra`,
    `decstr`,
    `dec`,
    `raerr1`,
    `raerr2`,
    `decerr1`,
    `decerr2`,
    `glat`,
    `glaterr1`,
    `glaterr2`,
    `glon`,
    `glonerr1`,
    `glonerr2`,
    `elat`,
    `elaterr1`,
    `elaterr2`,
    `elon`,
    `elonerr1`,
    `elonerr2`,
    `sy_pm`,
    `sy_pmerr1`,
    `sy_pmerr2`,
    `sy_pmra`,
    `sy_pmraerr1`,
    `sy_pmraerr2`,
    `sy_pmdec`,
    `sy_pmdecerr1`,
    `sy_pmdecerr2`,
    `sy_dist`,
    `sy_disterr1`,
    `sy_disterr2`,
    `sy_plx`,
    `sy_plxerr1`,
    `sy_plxerr2`,
    `sy_bmag`,
    `sy_bmagerr1`,
    `sy_bmagerr2`,
    `sy_vmag`,
    `sy_vmagerr1`,
    `sy_vmagerr2`,
    `sy_jmag`,
    `sy_jmagerr1`,
    `sy_jmagerr2`,
    `sy_hmag`,
    `sy_hmagerr1`,
    `sy_hmagerr2`,
    `sy_kmag`,
    `sy_kmagerr1`,
    `sy_kmagerr2`,
    `sy_umag`,
    `sy_umagerr1`,
    `sy_umagerr2`,
    `sy_gmag`,
    `sy_gmagerr1`,
    `sy_gmagerr2`,
    `sy_rmag`,
    `sy_rmagerr1`,
    `sy_rmagerr2`,
    `sy_imag`,
    `sy_imagerr1`,
    `sy_imagerr2`,
    `sy_zmag`,
    `sy_zmagerr1`,
    `sy_zmagerr2`,
    `sy_w1mag`,
    `sy_w1magerr1`,
    `sy_w1magerr2`,
    `sy_w2mag`,
    `sy_w2magerr1`,
    `sy_w2magerr2`,
    `sy_w3mag`,
    `sy_w3magerr1`,
    `sy_w3magerr2`,
    `sy_w4mag`,
    `sy_w4magerr1`,
    `sy_w4magerr2`,
    `sy_gaiamag`,
    `sy_gaiamagerr1`,
    `sy_gaiamagerr2`,
    `sy_icmag`,
    `sy_icmagerr1`,
    `sy_icmagerr2`,
    `sy_tmag`,
    `sy_tmagerr1`,
    `sy_tmagerr2`,
    `sy_kepmag`,
    `sy_kepmagerr1`,
    `sy_kepmagerr2`,
    `rowupdate`,
    `pl_pubdate`,
    `releasedate`,
    `pl_nnotes`,
    `st_nphot`,
    `st_nrvc`,
    `st_nspec`,
    `pl_nespec`,
    `pl_ntranspec`)
    values (
        2,
    "EPIC 211945201 b",
    "EPIC 211945201",
    "b",
    "",
    "",
    "TIC 243244680",
    "Gaia DR2 636363799347569408",
    "0",
    "1",
    "1",
    "0",
    "0",
    "Transit",
    "2018",
    "<a refstr=CHAKRABORTY_ET_AL__2018 href=https://ui.adsabs.harvard.edu/abs/2018AJ....156....3C/abstract target=ref>Chakraborty et al. 2018</a>",
    "2018-07-01",
    "Space",
    "K2",
    "0.95 m Kepler Telescope",
    "Kepler CCD Array",
    "1",
    "0",
    "0",
    "1",
    "0",
    "0",
    "0",
    "0",
    "0",
    "0",
    "Published Candidate",
    "0",
    "<a refstr=YU_ET_AL__2018 href=https://ui.adsabs.harvard.edu/abs/2018AJ....156...22Y/abstract target=ref>Yu et al. 2018</a>",
    "19.49196500",
    "",
    "",
    "0",
    "",
    "",
    "",
    "",
    "6.800",
    "",
    "",
    "0",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "2458113.940470",
    "",
    "",
    "0",
    "BJD",
    "0",
    "",
    "",
    "",
    "",
    "0.177700",
    "",
    "",
    "0",
    "2.9760000",
    "",
    "",
    "0",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "<a refstr=YU_ET_AL__2018 href=https://ui.adsabs.harvard.edu/abs/2018AJ....156...22Y/abstract target=ref>Yu et al. 2018</a>",
    "",
    "6320.00",
    "300.00",
    "-300.00",
    "0",
    "1.49",
    "0.36",
    "-0.36",
    "0",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "4.22",
    "0.15",
    "-0.15",
    "0",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "<a refstr=STASSUN_ET_AL__2019 href=https://ui.adsabs.harvard.edu/abs/2019AJ....158..138S/abstract target=ref>TICv8</a>",
    "09h06m17.81s",
    "136.5741931",
    "+19d24m07.40s",
    "19.4020565",
    "0.0301369",
    "-0.0301369",
    "0.0265509",
    "-0.0265509",
    "38.1276300",
    "",
    "",
    "208.7818000",
    "",
    "",
    "2.6867600",
    "",
    "",
    "133.2963000",
    "",
    "",
    "61.7731533",
    "0.0536492",
    "-0.0536492",
    "45.4915000",
    "0.0597013",
    "-0.0597013",
    "-41.7905000",
    "0.0454461",
    "-0.0454461",
    "181.6900000",
    "1.2860000",
    "-1.2860000",
    "5.4752900",
    "0.0386732",
    "-0.0386732",
    "10.9380000",
    "0.1130000",
    "-0.1130000",
    "10.1540000",
    "0.0080000",
    "-0.0080000",
    "9.1440000",
    "0.0230000",
    "-0.0230000",
    "8.9080000",
    "0.0280000",
    "-0.0280000",
    "8.8370000",
    "0.0200000",
    "-0.0200000",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "8.8220000",
    "0.0230000",
    "-0.0230000",
    "8.8440000",
    "0.0200000",
    "-0.0200000",
    "8.8100000",
    "0.0280000",
    "-0.0280000",
    "8.6230000",
    "0.3980000",
    "-0.3980000",
    "10.0512000",
    "0.0003720",
    "-0.0003720",
    "",
    "",
    "",
    "9.6689600",
    "0.0061000",
    "-0.0061000",
    "10.115",
    "",
    "",
    "2019-02-26",
    "2018-07-01",
    "2019-02-26",
    "0",
    "0",
    "0",
    "0",
    "0",
    "0"
    )