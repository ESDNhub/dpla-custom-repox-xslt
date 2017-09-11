<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <!-- lookup tables for iso69x language codes -->
    <xsl:template name="iso6393-codes">
        <xsl:param name="lval"/>
        <xsl:variable name="langval" select="lower-case($lval)"/>
        <xsl:choose>
            <xsl:when test="$langval='ghotuo'">aaa</xsl:when>
            <xsl:when test="$langval='alumu-tesu'">aab</xsl:when>
            <xsl:when test="$langval='ari'">aac</xsl:when>
            <xsl:when test="$langval='amal'">aad</xsl:when>
            <xsl:when test="$langval='arbëreshë albanian'">aae</xsl:when>
            <xsl:when test="$langval='aranadan'">aaf</xsl:when>
            <xsl:when test="$langval='ambrak'">aag</xsl:when>
            <xsl:when test="$langval='abu'' arapesh'">aah</xsl:when>
            <xsl:when test="$langval='arifama-miniafia'">aai</xsl:when>
            <xsl:when test="$langval='ankave'">aak</xsl:when>
            <xsl:when test="$langval='afade'">aal</xsl:when>
            <xsl:when test="$langval='anambé'">aan</xsl:when>
            <xsl:when test="$langval='algerian saharan arabic'">aao</xsl:when>
            <xsl:when test="$langval='pará arára'">aap</xsl:when>
            <xsl:when test="$langval='eastern abnaki'">aaq</xsl:when>
            <xsl:when test="$langval='afar'">aar</xsl:when>
            <xsl:when test="$langval='aasáx'">aas</xsl:when>
            <xsl:when test="$langval='arvanitika albanian'">aat</xsl:when>
            <xsl:when test="$langval='abau'">aau</xsl:when>
            <xsl:when test="$langval='solong'">aaw</xsl:when>
            <xsl:when test="$langval='mandobo atas'">aax</xsl:when>
            <xsl:when test="$langval='amarasi'">aaz</xsl:when>
            <xsl:when test="$langval='abé'">aba</xsl:when>
            <xsl:when test="$langval='bankon'">abb</xsl:when>
            <xsl:when test="$langval='ambala ayta'">abc</xsl:when>
            <xsl:when test="$langval='manide'">abd</xsl:when>
            <xsl:when test="$langval='western abnaki'">abe</xsl:when>
            <xsl:when test="$langval='abai sungai'">abf</xsl:when>
            <xsl:when test="$langval='abaga'">abg</xsl:when>
            <xsl:when test="$langval='tajiki arabic'">abh</xsl:when>
            <xsl:when test="$langval='abidji'">abi</xsl:when>
            <xsl:when test="$langval='aka-bea'">abj</xsl:when>
            <xsl:when test="$langval='abkhazian'">abk</xsl:when>
            <xsl:when test="$langval='lampung nyo'">abl</xsl:when>
            <xsl:when test="$langval='abanyom'">abm</xsl:when>
            <xsl:when test="$langval='abua'">abn</xsl:when>
            <xsl:when test="$langval='abon'">abo</xsl:when>
            <xsl:when test="$langval='abellen ayta'">abp</xsl:when>
            <xsl:when test="$langval='abaza'">abq</xsl:when>
            <xsl:when test="$langval='abron'">abr</xsl:when>
            <xsl:when test="$langval='ambonese malay'">abs</xsl:when>
            <xsl:when test="$langval='ambulas'">abt</xsl:when>
            <xsl:when test="$langval='abure'">abu</xsl:when>
            <xsl:when test="$langval='baharna arabic'">abv</xsl:when>
            <xsl:when test="$langval='pal'">abw</xsl:when>
            <xsl:when test="$langval='inabaknon'">abx</xsl:when>
            <xsl:when test="$langval='aneme wake'">aby</xsl:when>
            <xsl:when test="$langval='abui'">abz</xsl:when>
            <xsl:when test="$langval='achagua'">aca</xsl:when>
            <xsl:when test="$langval='Áncá'">acb</xsl:when>
            <xsl:when test="$langval='gikyode'">acd</xsl:when>
            <xsl:when test="$langval='achinese'">ace</xsl:when>
            <xsl:when test="$langval='saint lucian creole french'">acf</xsl:when>
            <xsl:when test="$langval='acoli'">ach</xsl:when>
            <xsl:when test="$langval='aka-cari'">aci</xsl:when>
            <xsl:when test="$langval='aka-kora'">ack</xsl:when>
            <xsl:when test="$langval='akar-bale'">acl</xsl:when>
            <xsl:when test="$langval='mesopotamian arabic'">acm</xsl:when>
            <xsl:when test="$langval='achang'">acn</xsl:when>
            <xsl:when test="$langval='eastern acipa'">acp</xsl:when>
            <xsl:when test="$langval='ta''izzi-adeni arabic'">acq</xsl:when>
            <xsl:when test="$langval='achi'">acr</xsl:when>
            <xsl:when test="$langval='acroá'">acs</xsl:when>
            <xsl:when test="$langval='achterhoeks'">act</xsl:when>
            <xsl:when test="$langval='achuar-shiwiar'">acu</xsl:when>
            <xsl:when test="$langval='achumawi'">acv</xsl:when>
            <xsl:when test="$langval='hijazi arabic'">acw</xsl:when>
            <xsl:when test="$langval='omani arabic'">acx</xsl:when>
            <xsl:when test="$langval='cypriot arabic'">acy</xsl:when>
            <xsl:when test="$langval='acheron'">acz</xsl:when>
            <xsl:when test="$langval='adangme'">ada</xsl:when>
            <xsl:when test="$langval='adabe'">adb</xsl:when>
            <xsl:when test="$langval='dzodinka'">add</xsl:when>
            <xsl:when test="$langval='adele'">ade</xsl:when>
            <xsl:when test="$langval='dhofari arabic'">adf</xsl:when>
            <xsl:when test="$langval='andegerebinha'">adg</xsl:when>
            <xsl:when test="$langval='adhola'">adh</xsl:when>
            <xsl:when test="$langval='adi'">adi</xsl:when>
            <xsl:when test="$langval='adioukrou'">adj</xsl:when>
            <xsl:when test="$langval='galo'">adl</xsl:when>
            <xsl:when test="$langval='adang'">adn</xsl:when>
            <xsl:when test="$langval='abu'">ado</xsl:when>
            <xsl:when test="$langval='adangbe'">adq</xsl:when>
            <xsl:when test="$langval='adonara'">adr</xsl:when>
            <xsl:when test="$langval='adamorobe sign language'">ads</xsl:when>
            <xsl:when test="$langval='adnyamathanha'">adt</xsl:when>
            <xsl:when test="$langval='aduge'">adu</xsl:when>
            <xsl:when test="$langval='amundava'">adw</xsl:when>
            <xsl:when test="$langval='amdo tibetan'">adx</xsl:when>
            <xsl:when test="$langval='adyghe'">ady</xsl:when>
            <xsl:when test="$langval='adzera'">adz</xsl:when>
            <xsl:when test="$langval='areba'">aea</xsl:when>
            <xsl:when test="$langval='tunisian arabic'">aeb</xsl:when>
            <xsl:when test="$langval='saidi arabic'">aec</xsl:when>
            <xsl:when test="$langval='argentine sign language'">aed</xsl:when>
            <xsl:when test="$langval='northeast pashai'">aee</xsl:when>
            <xsl:when test="$langval='haeke'">aek</xsl:when>
            <xsl:when test="$langval='ambele'">ael</xsl:when>
            <xsl:when test="$langval='arem'">aem</xsl:when>
            <xsl:when test="$langval='armenian sign language'">aen</xsl:when>
            <xsl:when test="$langval='aer'">aeq</xsl:when>
            <xsl:when test="$langval='eastern arrernte'">aer</xsl:when>
            <xsl:when test="$langval='alsea'">aes</xsl:when>
            <xsl:when test="$langval='akeu'">aeu</xsl:when>
            <xsl:when test="$langval='ambakich'">aew</xsl:when>
            <xsl:when test="$langval='amele'">aey</xsl:when>
            <xsl:when test="$langval='aeka'">aez</xsl:when>
            <xsl:when test="$langval='gulf arabic'">afb</xsl:when>
            <xsl:when test="$langval='andai'">afd</xsl:when>
            <xsl:when test="$langval='putukwam'">afe</xsl:when>
            <xsl:when test="$langval='afghan sign language'">afg</xsl:when>
            <xsl:when test="$langval='afrihili'">afh</xsl:when>
            <xsl:when test="$langval='akrukay'">afi</xsl:when>
            <xsl:when test="$langval='nanubae'">afk</xsl:when>
            <xsl:when test="$langval='defaka'">afn</xsl:when>
            <xsl:when test="$langval='eloyi'">afo</xsl:when>
            <xsl:when test="$langval='tapei'">afp</xsl:when>
            <xsl:when test="$langval='afrikaans'">afr</xsl:when>
            <xsl:when test="$langval='afro-seminole creole'">afs</xsl:when>
            <xsl:when test="$langval='afitti'">aft</xsl:when>
            <xsl:when test="$langval='awutu'">afu</xsl:when>
            <xsl:when test="$langval='obokuitai'">afz</xsl:when>
            <xsl:when test="$langval='aguano'">aga</xsl:when>
            <xsl:when test="$langval='legbo'">agb</xsl:when>
            <xsl:when test="$langval='agatu'">agc</xsl:when>
            <xsl:when test="$langval='agarabi'">agd</xsl:when>
            <xsl:when test="$langval='angal'">age</xsl:when>
            <xsl:when test="$langval='arguni'">agf</xsl:when>
            <xsl:when test="$langval='angor'">agg</xsl:when>
            <xsl:when test="$langval='ngelima'">agh</xsl:when>
            <xsl:when test="$langval='agariya'">agi</xsl:when>
            <xsl:when test="$langval='argobba'">agj</xsl:when>
            <xsl:when test="$langval='isarog agta'">agk</xsl:when>
            <xsl:when test="$langval='fembe'">agl</xsl:when>
            <xsl:when test="$langval='angaataha'">agm</xsl:when>
            <xsl:when test="$langval='agutaynen'">agn</xsl:when>
            <xsl:when test="$langval='tainae'">ago</xsl:when>
            <xsl:when test="$langval='aghem'">agq</xsl:when>
            <xsl:when test="$langval='aguaruna'">agr</xsl:when>
            <xsl:when test="$langval='esimbi'">ags</xsl:when>
            <xsl:when test="$langval='central cagayan agta'">agt</xsl:when>
            <xsl:when test="$langval='aguacateco'">agu</xsl:when>
            <xsl:when test="$langval='remontado dumagat'">agv</xsl:when>
            <xsl:when test="$langval='kahua'">agw</xsl:when>
            <xsl:when test="$langval='aghul'">agx</xsl:when>
            <xsl:when test="$langval='southern alta'">agy</xsl:when>
            <xsl:when test="$langval='mt. iriga agta'">agz</xsl:when>
            <xsl:when test="$langval='ahanta'">aha</xsl:when>
            <xsl:when test="$langval='axamb'">ahb</xsl:when>
            <xsl:when test="$langval='qimant'">ahg</xsl:when>
            <xsl:when test="$langval='aghu'">ahh</xsl:when>
            <xsl:when test="$langval='tiagbamrin aizi'">ahi</xsl:when>
            <xsl:when test="$langval='akha'">ahk</xsl:when>
            <xsl:when test="$langval='igo'">ahl</xsl:when>
            <xsl:when test="$langval='mobumrin aizi'">ahm</xsl:when>
            <xsl:when test="$langval='Àhàn'">ahn</xsl:when>
            <xsl:when test="$langval='ahom'">aho</xsl:when>
            <xsl:when test="$langval='aproumu aizi'">ahp</xsl:when>
            <xsl:when test="$langval='ahirani'">ahr</xsl:when>
            <xsl:when test="$langval='ashe'">ahs</xsl:when>
            <xsl:when test="$langval='ahtena'">aht</xsl:when>
            <xsl:when test="$langval='arosi'">aia</xsl:when>
            <xsl:when test="$langval='ainu (china)'">aib</xsl:when>
            <xsl:when test="$langval='ainbai'">aic</xsl:when>
            <xsl:when test="$langval='alngith'">aid</xsl:when>
            <xsl:when test="$langval='amara'">aie</xsl:when>
            <xsl:when test="$langval='agi'">aif</xsl:when>
            <xsl:when test="$langval='antigua and barbuda creole english'">aig</xsl:when>
            <xsl:when test="$langval='ai-cham'">aih</xsl:when>
            <xsl:when test="$langval='assyrian neo-aramaic'">aii</xsl:when>
            <xsl:when test="$langval='lishanid noshan'">aij</xsl:when>
            <xsl:when test="$langval='ake'">aik</xsl:when>
            <xsl:when test="$langval='aimele'">ail</xsl:when>
            <xsl:when test="$langval='aimol'">aim</xsl:when>
            <xsl:when test="$langval='ainu (japan)'">ain</xsl:when>
            <xsl:when test="$langval='aiton'">aio</xsl:when>
            <xsl:when test="$langval='burumakok'">aip</xsl:when>
            <xsl:when test="$langval='aimaq'">aiq</xsl:when>
            <xsl:when test="$langval='airoran'">air</xsl:when>
            <xsl:when test="$langval='nataoran amis'">ais</xsl:when>
            <xsl:when test="$langval='arikem'">ait</xsl:when>
            <xsl:when test="$langval='aari'">aiw</xsl:when>
            <xsl:when test="$langval='aighon'">aix</xsl:when>
            <xsl:when test="$langval='ali'">aiy</xsl:when>
            <xsl:when test="$langval='aja (sudan)'">aja</xsl:when>
            <xsl:when test="$langval='aja (benin)'">ajg</xsl:when>
            <xsl:when test="$langval='ajië'">aji</xsl:when>
            <xsl:when test="$langval='andajin'">ajn</xsl:when>
            <xsl:when test="$langval='south levantine arabic'">ajp</xsl:when>
            <xsl:when test="$langval='judeo-tunisian arabic'">ajt</xsl:when>
            <xsl:when test="$langval='judeo-moroccan arabic'">aju</xsl:when>
            <xsl:when test="$langval='ajawa'">ajw</xsl:when>
            <xsl:when test="$langval='amri karbi'">ajz</xsl:when>
            <xsl:when test="$langval='akan'">aka</xsl:when>
            <xsl:when test="$langval='batak angkola'">akb</xsl:when>
            <xsl:when test="$langval='mpur'">akc</xsl:when>
            <xsl:when test="$langval='ukpet-ehom'">akd</xsl:when>
            <xsl:when test="$langval='akawaio'">ake</xsl:when>
            <xsl:when test="$langval='akpa'">akf</xsl:when>
            <xsl:when test="$langval='anakalangu'">akg</xsl:when>
            <xsl:when test="$langval='angal heneng'">akh</xsl:when>
            <xsl:when test="$langval='aiome'">aki</xsl:when>
            <xsl:when test="$langval='aka-jeru'">akj</xsl:when>
            <xsl:when test="$langval='akkadian'">akk</xsl:when>
            <xsl:when test="$langval='aklanon'">akl</xsl:when>
            <xsl:when test="$langval='aka-bo'">akm</xsl:when>
            <xsl:when test="$langval='akurio'">ako</xsl:when>
            <xsl:when test="$langval='siwu'">akp</xsl:when>
            <xsl:when test="$langval='ak'">akq</xsl:when>
            <xsl:when test="$langval='araki'">akr</xsl:when>
            <xsl:when test="$langval='akaselem'">aks</xsl:when>
            <xsl:when test="$langval='akolet'">akt</xsl:when>
            <xsl:when test="$langval='akum'">aku</xsl:when>
            <xsl:when test="$langval='akhvakh'">akv</xsl:when>
            <xsl:when test="$langval='akwa'">akw</xsl:when>
            <xsl:when test="$langval='aka-kede'">akx</xsl:when>
            <xsl:when test="$langval='aka-kol'">aky</xsl:when>
            <xsl:when test="$langval='alabama'">akz</xsl:when>
            <xsl:when test="$langval='alago'">ala</xsl:when>
            <xsl:when test="$langval='qawasqar'">alc</xsl:when>
            <xsl:when test="$langval='alladian'">ald</xsl:when>
            <xsl:when test="$langval='aleut'">ale</xsl:when>
            <xsl:when test="$langval='alege'">alf</xsl:when>
            <xsl:when test="$langval='alawa'">alh</xsl:when>
            <xsl:when test="$langval='amaimon'">ali</xsl:when>
            <xsl:when test="$langval='alangan'">alj</xsl:when>
            <xsl:when test="$langval='alak'">alk</xsl:when>
            <xsl:when test="$langval='allar'">all</xsl:when>
            <xsl:when test="$langval='amblong'">alm</xsl:when>
            <xsl:when test="$langval='gheg albanian'">aln</xsl:when>
            <xsl:when test="$langval='larike-wakasihu'">alo</xsl:when>
            <xsl:when test="$langval='alune'">alp</xsl:when>
            <xsl:when test="$langval='algonquin'">alq</xsl:when>
            <xsl:when test="$langval='alutor'">alr</xsl:when>
            <xsl:when test="$langval='tosk albanian'">als</xsl:when>
            <xsl:when test="$langval='southern altai'">alt</xsl:when>
            <xsl:when test="$langval='''are''are'">alu</xsl:when>
            <xsl:when test="$langval='alaba-k’abeena'">alw</xsl:when>
            <xsl:when test="$langval='amol'">alx</xsl:when>
            <xsl:when test="$langval='alyawarr'">aly</xsl:when>
            <xsl:when test="$langval='alur'">alz</xsl:when>
            <xsl:when test="$langval='amanayé'">ama</xsl:when>
            <xsl:when test="$langval='ambo'">amb</xsl:when>
            <xsl:when test="$langval='amahuaca'">amc</xsl:when>
            <xsl:when test="$langval='yanesha'''">ame</xsl:when>
            <xsl:when test="$langval='hamer-banna'">amf</xsl:when>
            <xsl:when test="$langval='amurdak'">amg</xsl:when>
            <xsl:when test="$langval='amharic'">amh</xsl:when>
            <xsl:when test="$langval='amis'">ami</xsl:when>
            <xsl:when test="$langval='amdang'">amj</xsl:when>
            <xsl:when test="$langval='ambai'">amk</xsl:when>
            <xsl:when test="$langval='war-jaintia'">aml</xsl:when>
            <xsl:when test="$langval='ama (papua new guinea)'">amm</xsl:when>
            <xsl:when test="$langval='amanab'">amn</xsl:when>
            <xsl:when test="$langval='amo'">amo</xsl:when>
            <xsl:when test="$langval='alamblak'">amp</xsl:when>
            <xsl:when test="$langval='amahai'">amq</xsl:when>
            <xsl:when test="$langval='amarakaeri'">amr</xsl:when>
            <xsl:when test="$langval='southern amami-oshima'">ams</xsl:when>
            <xsl:when test="$langval='amto'">amt</xsl:when>
            <xsl:when test="$langval='guerrero amuzgo'">amu</xsl:when>
            <xsl:when test="$langval='ambelau'">amv</xsl:when>
            <xsl:when test="$langval='western neo-aramaic'">amw</xsl:when>
            <xsl:when test="$langval='anmatyerre'">amx</xsl:when>
            <xsl:when test="$langval='ami'">amy</xsl:when>
            <xsl:when test="$langval='atampaya'">amz</xsl:when>
            <xsl:when test="$langval='andaqui'">ana</xsl:when>
            <xsl:when test="$langval='andoa'">anb</xsl:when>
            <xsl:when test="$langval='ngas'">anc</xsl:when>
            <xsl:when test="$langval='ansus'">and</xsl:when>
            <xsl:when test="$langval='xârâcùù'">ane</xsl:when>
            <xsl:when test="$langval='animere'">anf</xsl:when>
            <xsl:when test="$langval='old english (ca. 450-1100)'">ang</xsl:when>
            <xsl:when test="$langval='nend'">anh</xsl:when>
            <xsl:when test="$langval='andi'">ani</xsl:when>
            <xsl:when test="$langval='anor'">anj</xsl:when>
            <xsl:when test="$langval='goemai'">ank</xsl:when>
            <xsl:when test="$langval='anu-hkongso chin'">anl</xsl:when>
            <xsl:when test="$langval='anal'">anm</xsl:when>
            <xsl:when test="$langval='obolo'">ann</xsl:when>
            <xsl:when test="$langval='andoque'">ano</xsl:when>
            <xsl:when test="$langval='angika'">anp</xsl:when>
            <xsl:when test="$langval='jarawa (india)'">anq</xsl:when>
            <xsl:when test="$langval='andh'">anr</xsl:when>
            <xsl:when test="$langval='anserma'">ans</xsl:when>
            <xsl:when test="$langval='antakarinya'">ant</xsl:when>
            <xsl:when test="$langval='anuak'">anu</xsl:when>
            <xsl:when test="$langval='denya'">anv</xsl:when>
            <xsl:when test="$langval='anaang'">anw</xsl:when>
            <xsl:when test="$langval='andra-hus'">anx</xsl:when>
            <xsl:when test="$langval='anyin'">any</xsl:when>
            <xsl:when test="$langval='anem'">anz</xsl:when>
            <xsl:when test="$langval='angolar'">aoa</xsl:when>
            <xsl:when test="$langval='abom'">aob</xsl:when>
            <xsl:when test="$langval='pemon'">aoc</xsl:when>
            <xsl:when test="$langval='andarum'">aod</xsl:when>
            <xsl:when test="$langval='angal enen'">aoe</xsl:when>
            <xsl:when test="$langval='bragat'">aof</xsl:when>
            <xsl:when test="$langval='angoram'">aog</xsl:when>
            <xsl:when test="$langval='arma'">aoh</xsl:when>
            <xsl:when test="$langval='anindilyakwa'">aoi</xsl:when>
            <xsl:when test="$langval='mufian'">aoj</xsl:when>
            <xsl:when test="$langval='arhö'">aok</xsl:when>
            <xsl:when test="$langval='alor'">aol</xsl:when>
            <xsl:when test="$langval='Ömie'">aom</xsl:when>
            <xsl:when test="$langval='bumbita arapesh'">aon</xsl:when>
            <xsl:when test="$langval='aore'">aor</xsl:when>
            <xsl:when test="$langval='taikat'">aos</xsl:when>
            <xsl:when test="$langval='atong'">aot</xsl:when>
            <xsl:when test="$langval='a''ou'">aou</xsl:when>
            <xsl:when test="$langval='atorada'">aox</xsl:when>
            <xsl:when test="$langval='uab meto'">aoz</xsl:when>
            <xsl:when test="$langval='sa''a'">apb</xsl:when>
            <xsl:when test="$langval='north levantine arabic'">apc</xsl:when>
            <xsl:when test="$langval='sudanese arabic'">apd</xsl:when>
            <xsl:when test="$langval='bukiyip'">ape</xsl:when>
            <xsl:when test="$langval='pahanan agta'">apf</xsl:when>
            <xsl:when test="$langval='ampanang'">apg</xsl:when>
            <xsl:when test="$langval='athpariya'">aph</xsl:when>
            <xsl:when test="$langval='apiaká'">api</xsl:when>
            <xsl:when test="$langval='jicarilla apache'">apj</xsl:when>
            <xsl:when test="$langval='kiowa apache'">apk</xsl:when>
            <xsl:when test="$langval='lipan apache'">apl</xsl:when>
            <xsl:when test="$langval='mescalero-chiricahua apache'">apm</xsl:when>
            <xsl:when test="$langval='apinayé'">apn</xsl:when>
            <xsl:when test="$langval='ambul'">apo</xsl:when>
            <xsl:when test="$langval='apma'">app</xsl:when>
            <xsl:when test="$langval='a-pucikwar'">apq</xsl:when>
            <xsl:when test="$langval='arop-lokep'">apr</xsl:when>
            <xsl:when test="$langval='arop-sissano'">aps</xsl:when>
            <xsl:when test="$langval='apatani'">apt</xsl:when>
            <xsl:when test="$langval='apurinã'">apu</xsl:when>
            <xsl:when test="$langval='alapmunte'">apv</xsl:when>
            <xsl:when test="$langval='western apache'">apw</xsl:when>
            <xsl:when test="$langval='aputai'">apx</xsl:when>
            <xsl:when test="$langval='apalaí'">apy</xsl:when>
            <xsl:when test="$langval='safeyoka'">apz</xsl:when>
            <xsl:when test="$langval='archi'">aqc</xsl:when>
            <xsl:when test="$langval='ampari dogon'">aqd</xsl:when>
            <xsl:when test="$langval='arigidi'">aqg</xsl:when>
            <xsl:when test="$langval='atohwaim'">aqm</xsl:when>
            <xsl:when test="$langval='northern alta'">aqn</xsl:when>
            <xsl:when test="$langval='atakapa'">aqp</xsl:when>
            <xsl:when test="$langval='arhâ'">aqr</xsl:when>
            <xsl:when test="$langval='angaité'">aqt</xsl:when>
            <xsl:when test="$langval='akuntsu'">aqz</xsl:when>
            <xsl:when test="$langval='arabic'">ara</xsl:when>
            <xsl:when test="$langval='standard arabic'">arb</xsl:when>
            <xsl:when test="$langval='official aramaic (700-300 bce)'">arc</xsl:when>
            <xsl:when test="$langval='arabana'">ard</xsl:when>
            <xsl:when test="$langval='western arrarnta'">are</xsl:when>
            <xsl:when test="$langval='aragonese'">arg</xsl:when>
            <xsl:when test="$langval='arhuaco'">arh</xsl:when>
            <xsl:when test="$langval='arikara'">ari</xsl:when>
            <xsl:when test="$langval='arapaso'">arj</xsl:when>
            <xsl:when test="$langval='arikapú'">ark</xsl:when>
            <xsl:when test="$langval='arabela'">arl</xsl:when>
            <xsl:when test="$langval='mapudungun'">arn</xsl:when>
            <xsl:when test="$langval='araona'">aro</xsl:when>
            <xsl:when test="$langval='arapaho'">arp</xsl:when>
            <xsl:when test="$langval='algerian arabic'">arq</xsl:when>
            <xsl:when test="$langval='karo (brazil)'">arr</xsl:when>
            <xsl:when test="$langval='najdi arabic'">ars</xsl:when>
            <xsl:when test="$langval='aruá (amazonas state)'">aru</xsl:when>
            <xsl:when test="$langval='arbore'">arv</xsl:when>
            <xsl:when test="$langval='arawak'">arw</xsl:when>
            <xsl:when test="$langval='aruá (rodonia state)'">arx</xsl:when>
            <xsl:when test="$langval='moroccan arabic'">ary</xsl:when>
            <xsl:when test="$langval='egyptian arabic'">arz</xsl:when>
            <xsl:when test="$langval='asu (tanzania)'">asa</xsl:when>
            <xsl:when test="$langval='assiniboine'">asb</xsl:when>
            <xsl:when test="$langval='casuarina coast asmat'">asc</xsl:when>
            <xsl:when test="$langval='asas'">asd</xsl:when>
            <xsl:when test="$langval='american sign language'">ase</xsl:when>
            <xsl:when test="$langval='australian sign language'">asf</xsl:when>
            <xsl:when test="$langval='cishingini'">asg</xsl:when>
            <xsl:when test="$langval='abishira'">ash</xsl:when>
            <xsl:when test="$langval='buruwai'">asi</xsl:when>
            <xsl:when test="$langval='sari'">asj</xsl:when>
            <xsl:when test="$langval='ashkun'">ask</xsl:when>
            <xsl:when test="$langval='asilulu'">asl</xsl:when>
            <xsl:when test="$langval='assamese'">asm</xsl:when>
            <xsl:when test="$langval='xingú asuriní'">asn</xsl:when>
            <xsl:when test="$langval='dano'">aso</xsl:when>
            <xsl:when test="$langval='algerian sign language'">asp</xsl:when>
            <xsl:when test="$langval='austrian sign language'">asq</xsl:when>
            <xsl:when test="$langval='asuri'">asr</xsl:when>
            <xsl:when test="$langval='ipulo'">ass</xsl:when>
            <xsl:when test="$langval='asturian'">ast</xsl:when>
            <xsl:when test="$langval='tocantins asurini'">asu</xsl:when>
            <xsl:when test="$langval='asoa'">asv</xsl:when>
            <xsl:when test="$langval='australian aborigines sign language'">asw</xsl:when>
            <xsl:when test="$langval='muratayak'">asx</xsl:when>
            <xsl:when test="$langval='yaosakor asmat'">asy</xsl:when>
            <xsl:when test="$langval='as'">asz</xsl:when>
            <xsl:when test="$langval='pele-ata'">ata</xsl:when>
            <xsl:when test="$langval='zaiwa'">atb</xsl:when>
            <xsl:when test="$langval='atsahuaca'">atc</xsl:when>
            <xsl:when test="$langval='ata manobo'">atd</xsl:when>
            <xsl:when test="$langval='atemble'">ate</xsl:when>
            <xsl:when test="$langval='ivbie north-okpela-arhe'">atg</xsl:when>
            <xsl:when test="$langval='attié'">ati</xsl:when>
            <xsl:when test="$langval='atikamekw'">atj</xsl:when>
            <xsl:when test="$langval='ati'">atk</xsl:when>
            <xsl:when test="$langval='mt. iraya agta'">atl</xsl:when>
            <xsl:when test="$langval='ata'">atm</xsl:when>
            <xsl:when test="$langval='ashtiani'">atn</xsl:when>
            <xsl:when test="$langval='atong'">ato</xsl:when>
            <xsl:when test="$langval='pudtol atta'">atp</xsl:when>
            <xsl:when test="$langval='aralle-tabulahan'">atq</xsl:when>
            <xsl:when test="$langval='waimiri-atroari'">atr</xsl:when>
            <xsl:when test="$langval='gros ventre'">ats</xsl:when>
            <xsl:when test="$langval='pamplona atta'">att</xsl:when>
            <xsl:when test="$langval='reel'">atu</xsl:when>
            <xsl:when test="$langval='northern altai'">atv</xsl:when>
            <xsl:when test="$langval='atsugewi'">atw</xsl:when>
            <xsl:when test="$langval='arutani'">atx</xsl:when>
            <xsl:when test="$langval='aneityum'">aty</xsl:when>
            <xsl:when test="$langval='arta'">atz</xsl:when>
            <xsl:when test="$langval='asumboa'">aua</xsl:when>
            <xsl:when test="$langval='alugu'">aub</xsl:when>
            <xsl:when test="$langval='waorani'">auc</xsl:when>
            <xsl:when test="$langval='anuta'">aud</xsl:when>
            <xsl:when test="$langval='aguna'">aug</xsl:when>
            <xsl:when test="$langval='aushi'">auh</xsl:when>
            <xsl:when test="$langval='anuki'">aui</xsl:when>
            <xsl:when test="$langval='awjilah'">auj</xsl:when>
            <xsl:when test="$langval='heyo'">auk</xsl:when>
            <xsl:when test="$langval='aulua'">aul</xsl:when>
            <xsl:when test="$langval='asu (nigeria)'">aum</xsl:when>
            <xsl:when test="$langval='molmo one'">aun</xsl:when>
            <xsl:when test="$langval='auyokawa'">auo</xsl:when>
            <xsl:when test="$langval='makayam'">aup</xsl:when>
            <xsl:when test="$langval='anus'">auq</xsl:when>
            <xsl:when test="$langval='aruek'">aur</xsl:when>
            <xsl:when test="$langval='austral'">aut</xsl:when>
            <xsl:when test="$langval='auye'">auu</xsl:when>
            <xsl:when test="$langval='awyi'">auw</xsl:when>
            <xsl:when test="$langval='aurá'">aux</xsl:when>
            <xsl:when test="$langval='awiyaana'">auy</xsl:when>
            <xsl:when test="$langval='uzbeki arabic'">auz</xsl:when>
            <xsl:when test="$langval='avaric'">ava</xsl:when>
            <xsl:when test="$langval='avau'">avb</xsl:when>
            <xsl:when test="$langval='alviri-vidari'">avd</xsl:when>
            <xsl:when test="$langval='avestan'">ave</xsl:when>
            <xsl:when test="$langval='avikam'">avi</xsl:when>
            <xsl:when test="$langval='kotava'">avk</xsl:when>
            <xsl:when test="$langval='eastern egyptian bedawi arabic'">avl</xsl:when>
            <xsl:when test="$langval='angkamuthi'">avm</xsl:when>
            <xsl:when test="$langval='avatime'">avn</xsl:when>
            <xsl:when test="$langval='agavotaguerra'">avo</xsl:when>
            <xsl:when test="$langval='aushiri'">avs</xsl:when>
            <xsl:when test="$langval='au'">avt</xsl:when>
            <xsl:when test="$langval='avokaya'">avu</xsl:when>
            <xsl:when test="$langval='avá-canoeiro'">avv</xsl:when>
            <xsl:when test="$langval='awadhi'">awa</xsl:when>
            <xsl:when test="$langval='awa (papua new guinea)'">awb</xsl:when>
            <xsl:when test="$langval='cicipu'">awc</xsl:when>
            <xsl:when test="$langval='awetí'">awe</xsl:when>
            <xsl:when test="$langval='anguthimri'">awg</xsl:when>
            <xsl:when test="$langval='awbono'">awh</xsl:when>
            <xsl:when test="$langval='aekyom'">awi</xsl:when>
            <xsl:when test="$langval='awabakal'">awk</xsl:when>
            <xsl:when test="$langval='arawum'">awm</xsl:when>
            <xsl:when test="$langval='awngi'">awn</xsl:when>
            <xsl:when test="$langval='awak'">awo</xsl:when>
            <xsl:when test="$langval='awera'">awr</xsl:when>
            <xsl:when test="$langval='south awyu'">aws</xsl:when>
            <xsl:when test="$langval='araweté'">awt</xsl:when>
            <xsl:when test="$langval='central awyu'">awu</xsl:when>
            <xsl:when test="$langval='jair awyu'">awv</xsl:when>
            <xsl:when test="$langval='awun'">aww</xsl:when>
            <xsl:when test="$langval='awara'">awx</xsl:when>
            <xsl:when test="$langval='edera awyu'">awy</xsl:when>
            <xsl:when test="$langval='abipon'">axb</xsl:when>
            <xsl:when test="$langval='ayerrerenge'">axe</xsl:when>
            <xsl:when test="$langval='mato grosso arára'">axg</xsl:when>
            <xsl:when test="$langval='yaka (central african republic)'">axk</xsl:when>
            <xsl:when test="$langval='lower southern aranda'">axl</xsl:when>
            <xsl:when test="$langval='middle armenian'">axm</xsl:when>
            <xsl:when test="$langval='xârâgurè'">axx</xsl:when>
            <xsl:when test="$langval='awar'">aya</xsl:when>
            <xsl:when test="$langval='ayizo gbe'">ayb</xsl:when>
            <xsl:when test="$langval='southern aymara'">ayc</xsl:when>
            <xsl:when test="$langval='ayabadhu'">ayd</xsl:when>
            <xsl:when test="$langval='ayere'">aye</xsl:when>
            <xsl:when test="$langval='ginyanga'">ayg</xsl:when>
            <xsl:when test="$langval='hadrami arabic'">ayh</xsl:when>
            <xsl:when test="$langval='leyigha'">ayi</xsl:when>
            <xsl:when test="$langval='akuku'">ayk</xsl:when>
            <xsl:when test="$langval='libyan arabic'">ayl</xsl:when>
            <xsl:when test="$langval='aymara'">aym</xsl:when>
            <xsl:when test="$langval='sanaani arabic'">ayn</xsl:when>
            <xsl:when test="$langval='ayoreo'">ayo</xsl:when>
            <xsl:when test="$langval='north mesopotamian arabic'">ayp</xsl:when>
            <xsl:when test="$langval='ayi (papua new guinea)'">ayq</xsl:when>
            <xsl:when test="$langval='central aymara'">ayr</xsl:when>
            <xsl:when test="$langval='sorsogon ayta'">ays</xsl:when>
            <xsl:when test="$langval='magbukun ayta'">ayt</xsl:when>
            <xsl:when test="$langval='ayu'">ayu</xsl:when>
            <xsl:when test="$langval='tayabas ayta'">ayy</xsl:when>
            <xsl:when test="$langval='mai brat'">ayz</xsl:when>
            <xsl:when test="$langval='azha'">aza</xsl:when>
            <xsl:when test="$langval='south azerbaijani'">azb</xsl:when>
            <xsl:when test="$langval='eastern durango nahuatl'">azd</xsl:when>
            <xsl:when test="$langval='azerbaijani'">aze</xsl:when>
            <xsl:when test="$langval='san pedro amuzgos amuzgo'">azg</xsl:when>
            <xsl:when test="$langval='north azerbaijani'">azj</xsl:when>
            <xsl:when test="$langval='ipalapa amuzgo'">azm</xsl:when>
            <xsl:when test="$langval='western durango nahuatl'">azn</xsl:when>
            <xsl:when test="$langval='awing'">azo</xsl:when>
            <xsl:when test="$langval='faire atta'">azt</xsl:when>
            <xsl:when test="$langval='highland puebla nahuatl'">azz</xsl:when>
            <xsl:when test="$langval='babatana'">baa</xsl:when>
            <xsl:when test="$langval='bainouk-gunyuño'">bab</xsl:when>
            <xsl:when test="$langval='badui'">bac</xsl:when>
            <xsl:when test="$langval='baré'">bae</xsl:when>
            <xsl:when test="$langval='nubaca'">baf</xsl:when>
            <xsl:when test="$langval='tuki'">bag</xsl:when>
            <xsl:when test="$langval='bahamas creole english'">bah</xsl:when>
            <xsl:when test="$langval='barakai'">baj</xsl:when>
            <xsl:when test="$langval='bashkir'">bak</xsl:when>
            <xsl:when test="$langval='baluchi'">bal</xsl:when>
            <xsl:when test="$langval='bambara'">bam</xsl:when>
            <xsl:when test="$langval='balinese'">ban</xsl:when>
            <xsl:when test="$langval='waimaha'">bao</xsl:when>
            <xsl:when test="$langval='bantawa'">bap</xsl:when>
            <xsl:when test="$langval='bavarian'">bar</xsl:when>
            <xsl:when test="$langval='basa (cameroon)'">bas</xsl:when>
            <xsl:when test="$langval='bada (nigeria)'">bau</xsl:when>
            <xsl:when test="$langval='vengo'">bav</xsl:when>
            <xsl:when test="$langval='bambili-bambui'">baw</xsl:when>
            <xsl:when test="$langval='bamun'">bax</xsl:when>
            <xsl:when test="$langval='batuley'">bay</xsl:when>
            <xsl:when test="$langval='baatonum'">bba</xsl:when>
            <xsl:when test="$langval='barai'">bbb</xsl:when>
            <xsl:when test="$langval='batak toba'">bbc</xsl:when>
            <xsl:when test="$langval='bau'">bbd</xsl:when>
            <xsl:when test="$langval='bangba'">bbe</xsl:when>
            <xsl:when test="$langval='baibai'">bbf</xsl:when>
            <xsl:when test="$langval='barama'">bbg</xsl:when>
            <xsl:when test="$langval='bugan'">bbh</xsl:when>
            <xsl:when test="$langval='barombi'">bbi</xsl:when>
            <xsl:when test="$langval='ghomálá'''">bbj</xsl:when>
            <xsl:when test="$langval='babanki'">bbk</xsl:when>
            <xsl:when test="$langval='bats'">bbl</xsl:when>
            <xsl:when test="$langval='babango'">bbm</xsl:when>
            <xsl:when test="$langval='uneapa'">bbn</xsl:when>
            <xsl:when test="$langval='northern bobo madaré'">bbo</xsl:when>
            <xsl:when test="$langval='west central banda'">bbp</xsl:when>
            <xsl:when test="$langval='bamali'">bbq</xsl:when>
            <xsl:when test="$langval='girawa'">bbr</xsl:when>
            <xsl:when test="$langval='bakpinka'">bbs</xsl:when>
            <xsl:when test="$langval='mburku'">bbt</xsl:when>
            <xsl:when test="$langval='kulung (nigeria)'">bbu</xsl:when>
            <xsl:when test="$langval='karnai'">bbv</xsl:when>
            <xsl:when test="$langval='baba'">bbw</xsl:when>
            <xsl:when test="$langval='bubia'">bbx</xsl:when>
            <xsl:when test="$langval='befang'">bby</xsl:when>
            <xsl:when test="$langval='babalia creole arabic'">bbz</xsl:when>
            <xsl:when test="$langval='central bai'">bca</xsl:when>
            <xsl:when test="$langval='bainouk-samik'">bcb</xsl:when>
            <xsl:when test="$langval='southern balochi'">bcc</xsl:when>
            <xsl:when test="$langval='north babar'">bcd</xsl:when>
            <xsl:when test="$langval='bamenyam'">bce</xsl:when>
            <xsl:when test="$langval='bamu'">bcf</xsl:when>
            <xsl:when test="$langval='baga binari'">bcg</xsl:when>
            <xsl:when test="$langval='bariai'">bch</xsl:when>
            <xsl:when test="$langval='baoulé'">bci</xsl:when>
            <xsl:when test="$langval='bardi'">bcj</xsl:when>
            <xsl:when test="$langval='bunaba'">bck</xsl:when>
            <xsl:when test="$langval='central bikol'">bcl</xsl:when>
            <xsl:when test="$langval='bannoni'">bcm</xsl:when>
            <xsl:when test="$langval='bali (nigeria)'">bcn</xsl:when>
            <xsl:when test="$langval='kaluli'">bco</xsl:when>
            <xsl:when test="$langval='bali (democratic republic of congo)'">bcp</xsl:when>
            <xsl:when test="$langval='bench'">bcq</xsl:when>
            <xsl:when test="$langval='babine'">bcr</xsl:when>
            <xsl:when test="$langval='kohumono'">bcs</xsl:when>
            <xsl:when test="$langval='bendi'">bct</xsl:when>
            <xsl:when test="$langval='awad bing'">bcu</xsl:when>
            <xsl:when test="$langval='shoo-minda-nye'">bcv</xsl:when>
            <xsl:when test="$langval='bana'">bcw</xsl:when>
            <xsl:when test="$langval='bacama'">bcy</xsl:when>
            <xsl:when test="$langval='bainouk-gunyaamolo'">bcz</xsl:when>
            <xsl:when test="$langval='bayot'">bda</xsl:when>
            <xsl:when test="$langval='basap'">bdb</xsl:when>
            <xsl:when test="$langval='emberá-baudó'">bdc</xsl:when>
            <xsl:when test="$langval='bunama'">bdd</xsl:when>
            <xsl:when test="$langval='bade'">bde</xsl:when>
            <xsl:when test="$langval='biage'">bdf</xsl:when>
            <xsl:when test="$langval='bonggi'">bdg</xsl:when>
            <xsl:when test="$langval='baka (sudan)'">bdh</xsl:when>
            <xsl:when test="$langval='burun'">bdi</xsl:when>
            <xsl:when test="$langval='bai'">bdj</xsl:when>
            <xsl:when test="$langval='budukh'">bdk</xsl:when>
            <xsl:when test="$langval='indonesian bajau'">bdl</xsl:when>
            <xsl:when test="$langval='buduma'">bdm</xsl:when>
            <xsl:when test="$langval='baldemu'">bdn</xsl:when>
            <xsl:when test="$langval='morom'">bdo</xsl:when>
            <xsl:when test="$langval='bende'">bdp</xsl:when>
            <xsl:when test="$langval='bahnar'">bdq</xsl:when>
            <xsl:when test="$langval='west coast bajau'">bdr</xsl:when>
            <xsl:when test="$langval='burunge'">bds</xsl:when>
            <xsl:when test="$langval='bokoto'">bdt</xsl:when>
            <xsl:when test="$langval='oroko'">bdu</xsl:when>
            <xsl:when test="$langval='bodo parja'">bdv</xsl:when>
            <xsl:when test="$langval='baham'">bdw</xsl:when>
            <xsl:when test="$langval='budong-budong'">bdx</xsl:when>
            <xsl:when test="$langval='bandjalang'">bdy</xsl:when>
            <xsl:when test="$langval='badeshi'">bdz</xsl:when>
            <xsl:when test="$langval='beaver'">bea</xsl:when>
            <xsl:when test="$langval='bebele'">beb</xsl:when>
            <xsl:when test="$langval='iceve-maci'">bec</xsl:when>
            <xsl:when test="$langval='bedoanas'">bed</xsl:when>
            <xsl:when test="$langval='byangsi'">bee</xsl:when>
            <xsl:when test="$langval='benabena'">bef</xsl:when>
            <xsl:when test="$langval='belait'">beg</xsl:when>
            <xsl:when test="$langval='biali'">beh</xsl:when>
            <xsl:when test="$langval='bekati'''">bei</xsl:when>
            <xsl:when test="$langval='beja'">bej</xsl:when>
            <xsl:when test="$langval='bebeli'">bek</xsl:when>
            <xsl:when test="$langval='belarusian'">bel</xsl:when>
            <xsl:when test="$langval='bemba (zambia)'">bem</xsl:when>
            <xsl:when test="$langval='bengali'">ben</xsl:when>
            <xsl:when test="$langval='beami'">beo</xsl:when>
            <xsl:when test="$langval='besoa'">bep</xsl:when>
            <xsl:when test="$langval='beembe'">beq</xsl:when>
            <xsl:when test="$langval='besme'">bes</xsl:when>
            <xsl:when test="$langval='guiberoua béte'">bet</xsl:when>
            <xsl:when test="$langval='blagar'">beu</xsl:when>
            <xsl:when test="$langval='daloa bété'">bev</xsl:when>
            <xsl:when test="$langval='betawi'">bew</xsl:when>
            <xsl:when test="$langval='jur modo'">bex</xsl:when>
            <xsl:when test="$langval='beli (papua new guinea)'">bey</xsl:when>
            <xsl:when test="$langval='bena (tanzania)'">bez</xsl:when>
            <xsl:when test="$langval='bari'">bfa</xsl:when>
            <xsl:when test="$langval='pauri bareli'">bfb</xsl:when>
            <xsl:when test="$langval='panyi bai'">bfc</xsl:when>
            <xsl:when test="$langval='bafut'">bfd</xsl:when>
            <xsl:when test="$langval='betaf'">bfe</xsl:when>
            <xsl:when test="$langval='bofi'">bff</xsl:when>
            <xsl:when test="$langval='busang kayan'">bfg</xsl:when>
            <xsl:when test="$langval='blafe'">bfh</xsl:when>
            <xsl:when test="$langval='british sign language'">bfi</xsl:when>
            <xsl:when test="$langval='bafanji'">bfj</xsl:when>
            <xsl:when test="$langval='ban khor sign language'">bfk</xsl:when>
            <xsl:when test="$langval='banda-ndélé'">bfl</xsl:when>
            <xsl:when test="$langval='mmen'">bfm</xsl:when>
            <xsl:when test="$langval='bunak'">bfn</xsl:when>
            <xsl:when test="$langval='malba birifor'">bfo</xsl:when>
            <xsl:when test="$langval='beba'">bfp</xsl:when>
            <xsl:when test="$langval='badaga'">bfq</xsl:when>
            <xsl:when test="$langval='bazigar'">bfr</xsl:when>
            <xsl:when test="$langval='southern bai'">bfs</xsl:when>
            <xsl:when test="$langval='balti'">bft</xsl:when>
            <xsl:when test="$langval='gahri'">bfu</xsl:when>
            <xsl:when test="$langval='bondo'">bfw</xsl:when>
            <xsl:when test="$langval='bantayanon'">bfx</xsl:when>
            <xsl:when test="$langval='bagheli'">bfy</xsl:when>
            <xsl:when test="$langval='mahasu pahari'">bfz</xsl:when>
            <xsl:when test="$langval='gwamhi-wuri'">bga</xsl:when>
            <xsl:when test="$langval='bobongko'">bgb</xsl:when>
            <xsl:when test="$langval='haryanvi'">bgc</xsl:when>
            <xsl:when test="$langval='rathwi bareli'">bgd</xsl:when>
            <xsl:when test="$langval='bauria'">bge</xsl:when>
            <xsl:when test="$langval='bangandu'">bgf</xsl:when>
            <xsl:when test="$langval='bugun'">bgg</xsl:when>
            <xsl:when test="$langval='giangan'">bgi</xsl:when>
            <xsl:when test="$langval='bangolan'">bgj</xsl:when>
            <xsl:when test="$langval='bit'">bgk</xsl:when>
            <xsl:when test="$langval='bo (laos)'">bgl</xsl:when>
            <xsl:when test="$langval='baga mboteni'">bgm</xsl:when>
            <xsl:when test="$langval='western balochi'">bgn</xsl:when>
            <xsl:when test="$langval='baga koga'">bgo</xsl:when>
            <xsl:when test="$langval='eastern balochi'">bgp</xsl:when>
            <xsl:when test="$langval='bagri'">bgq</xsl:when>
            <xsl:when test="$langval='bawm chin'">bgr</xsl:when>
            <xsl:when test="$langval='tagabawa'">bgs</xsl:when>
            <xsl:when test="$langval='bughotu'">bgt</xsl:when>
            <xsl:when test="$langval='mbongno'">bgu</xsl:when>
            <xsl:when test="$langval='warkay-bipim'">bgv</xsl:when>
            <xsl:when test="$langval='bhatri'">bgw</xsl:when>
            <xsl:when test="$langval='balkan gagauz turkish'">bgx</xsl:when>
            <xsl:when test="$langval='benggoi'">bgy</xsl:when>
            <xsl:when test="$langval='banggai'">bgz</xsl:when>
            <xsl:when test="$langval='bharia'">bha</xsl:when>
            <xsl:when test="$langval='bhili'">bhb</xsl:when>
            <xsl:when test="$langval='biga'">bhc</xsl:when>
            <xsl:when test="$langval='bhadrawahi'">bhd</xsl:when>
            <xsl:when test="$langval='bhaya'">bhe</xsl:when>
            <xsl:when test="$langval='odiai'">bhf</xsl:when>
            <xsl:when test="$langval='binandere'">bhg</xsl:when>
            <xsl:when test="$langval='bukharic'">bhh</xsl:when>
            <xsl:when test="$langval='bhilali'">bhi</xsl:when>
            <xsl:when test="$langval='bahing'">bhj</xsl:when>
            <xsl:when test="$langval='bimin'">bhl</xsl:when>
            <xsl:when test="$langval='bathari'">bhm</xsl:when>
            <xsl:when test="$langval='bohtan neo-aramaic'">bhn</xsl:when>
            <xsl:when test="$langval='bhojpuri'">bho</xsl:when>
            <xsl:when test="$langval='bima'">bhp</xsl:when>
            <xsl:when test="$langval='tukang besi south'">bhq</xsl:when>
            <xsl:when test="$langval='bara malagasy'">bhr</xsl:when>
            <xsl:when test="$langval='buwal'">bhs</xsl:when>
            <xsl:when test="$langval='bhattiyali'">bht</xsl:when>
            <xsl:when test="$langval='bhunjia'">bhu</xsl:when>
            <xsl:when test="$langval='bahau'">bhv</xsl:when>
            <xsl:when test="$langval='biak'">bhw</xsl:when>
            <xsl:when test="$langval='bhalay'">bhx</xsl:when>
            <xsl:when test="$langval='bhele'">bhy</xsl:when>
            <xsl:when test="$langval='bada (indonesia)'">bhz</xsl:when>
            <xsl:when test="$langval='badimaya'">bia</xsl:when>
            <xsl:when test="$langval='bissa'">bib</xsl:when>
            <xsl:when test="$langval='bikaru'">bic</xsl:when>
            <xsl:when test="$langval='bidiyo'">bid</xsl:when>
            <xsl:when test="$langval='bepour'">bie</xsl:when>
            <xsl:when test="$langval='biafada'">bif</xsl:when>
            <xsl:when test="$langval='biangai'">big</xsl:when>
            <xsl:when test="$langval='vaghat-ya-bijim-legeri'">bij</xsl:when>
            <xsl:when test="$langval='bikol'">bik</xsl:when>
            <xsl:when test="$langval='bile'">bil</xsl:when>
            <xsl:when test="$langval='bimoba'">bim</xsl:when>
            <xsl:when test="$langval='bini'">bin</xsl:when>
            <xsl:when test="$langval='nai'">bio</xsl:when>
            <xsl:when test="$langval='bila'">bip</xsl:when>
            <xsl:when test="$langval='bipi'">biq</xsl:when>
            <xsl:when test="$langval='bisorio'">bir</xsl:when>
            <xsl:when test="$langval='bislama'">bis</xsl:when>
            <xsl:when test="$langval='berinomo'">bit</xsl:when>
            <xsl:when test="$langval='biete'">biu</xsl:when>
            <xsl:when test="$langval='southern birifor'">biv</xsl:when>
            <xsl:when test="$langval='kol (cameroon)'">biw</xsl:when>
            <xsl:when test="$langval='bijori'">bix</xsl:when>
            <xsl:when test="$langval='birhor'">biy</xsl:when>
            <xsl:when test="$langval='baloi'">biz</xsl:when>
            <xsl:when test="$langval='budza'">bja</xsl:when>
            <xsl:when test="$langval='banggarla'">bjb</xsl:when>
            <xsl:when test="$langval='bariji'">bjc</xsl:when>
            <xsl:when test="$langval='biao-jiao mien'">bje</xsl:when>
            <xsl:when test="$langval='barzani jewish neo-aramaic'">bjf</xsl:when>
            <xsl:when test="$langval='bidyogo'">bjg</xsl:when>
            <xsl:when test="$langval='bahinemo'">bjh</xsl:when>
            <xsl:when test="$langval='burji'">bji</xsl:when>
            <xsl:when test="$langval='kanauji'">bjj</xsl:when>
            <xsl:when test="$langval='barok'">bjk</xsl:when>
            <xsl:when test="$langval='bulu (papua new guinea)'">bjl</xsl:when>
            <xsl:when test="$langval='bajelani'">bjm</xsl:when>
            <xsl:when test="$langval='banjar'">bjn</xsl:when>
            <xsl:when test="$langval='mid-southern banda'">bjo</xsl:when>
            <xsl:when test="$langval='fanamaket'">bjp</xsl:when>
            <xsl:when test="$langval='binumarien'">bjr</xsl:when>
            <xsl:when test="$langval='bajan'">bjs</xsl:when>
            <xsl:when test="$langval='balanta-ganja'">bjt</xsl:when>
            <xsl:when test="$langval='busuu'">bju</xsl:when>
            <xsl:when test="$langval='bedjond'">bjv</xsl:when>
            <xsl:when test="$langval='bakwé'">bjw</xsl:when>
            <xsl:when test="$langval='banao itneg'">bjx</xsl:when>
            <xsl:when test="$langval='bayali'">bjy</xsl:when>
            <xsl:when test="$langval='baruga'">bjz</xsl:when>
            <xsl:when test="$langval='kyak'">bka</xsl:when>
            <xsl:when test="$langval='baka (cameroon)'">bkc</xsl:when>
            <xsl:when test="$langval='binukid'">bkd</xsl:when>
            <xsl:when test="$langval='beeke'">bkf</xsl:when>
            <xsl:when test="$langval='buraka'">bkg</xsl:when>
            <xsl:when test="$langval='bakoko'">bkh</xsl:when>
            <xsl:when test="$langval='baki'">bki</xsl:when>
            <xsl:when test="$langval='pande'">bkj</xsl:when>
            <xsl:when test="$langval='brokskat'">bkk</xsl:when>
            <xsl:when test="$langval='berik'">bkl</xsl:when>
            <xsl:when test="$langval='kom (cameroon)'">bkm</xsl:when>
            <xsl:when test="$langval='bukitan'">bkn</xsl:when>
            <xsl:when test="$langval='kwa'''">bko</xsl:when>
            <xsl:when test="$langval='boko (democratic republic of congo)'">bkp</xsl:when>
            <xsl:when test="$langval='bakairí'">bkq</xsl:when>
            <xsl:when test="$langval='bakumpai'">bkr</xsl:when>
            <xsl:when test="$langval='northern sorsoganon'">bks</xsl:when>
            <xsl:when test="$langval='boloki'">bkt</xsl:when>
            <xsl:when test="$langval='buhid'">bku</xsl:when>
            <xsl:when test="$langval='bekwarra'">bkv</xsl:when>
            <xsl:when test="$langval='bekwel'">bkw</xsl:when>
            <xsl:when test="$langval='baikeno'">bkx</xsl:when>
            <xsl:when test="$langval='bokyi'">bky</xsl:when>
            <xsl:when test="$langval='bungku'">bkz</xsl:when>
            <xsl:when test="$langval='siksika'">bla</xsl:when>
            <xsl:when test="$langval='bilua'">blb</xsl:when>
            <xsl:when test="$langval='bella coola'">blc</xsl:when>
            <xsl:when test="$langval='bolango'">bld</xsl:when>
            <xsl:when test="$langval='balanta-kentohe'">ble</xsl:when>
            <xsl:when test="$langval='buol'">blf</xsl:when>
            <xsl:when test="$langval='balau'">blg</xsl:when>
            <xsl:when test="$langval='kuwaa'">blh</xsl:when>
            <xsl:when test="$langval='bolia'">bli</xsl:when>
            <xsl:when test="$langval='bolongan'">blj</xsl:when>
            <xsl:when test="$langval='pa''o karen'">blk</xsl:when>
            <xsl:when test="$langval='biloxi'">bll</xsl:when>
            <xsl:when test="$langval='beli (sudan)'">blm</xsl:when>
            <xsl:when test="$langval='southern catanduanes bikol'">bln</xsl:when>
            <xsl:when test="$langval='anii'">blo</xsl:when>
            <xsl:when test="$langval='blablanga'">blp</xsl:when>
            <xsl:when test="$langval='baluan-pam'">blq</xsl:when>
            <xsl:when test="$langval='blang'">blr</xsl:when>
            <xsl:when test="$langval='balaesang'">bls</xsl:when>
            <xsl:when test="$langval='tai dam'">blt</xsl:when>
            <xsl:when test="$langval='bolo'">blv</xsl:when>
            <xsl:when test="$langval='balangao'">blw</xsl:when>
            <xsl:when test="$langval='mag-indi ayta'">blx</xsl:when>
            <xsl:when test="$langval='notre'">bly</xsl:when>
            <xsl:when test="$langval='balantak'">blz</xsl:when>
            <xsl:when test="$langval='lame'">bma</xsl:when>
            <xsl:when test="$langval='bembe'">bmb</xsl:when>
            <xsl:when test="$langval='biem'">bmc</xsl:when>
            <xsl:when test="$langval='baga manduri'">bmd</xsl:when>
            <xsl:when test="$langval='limassa'">bme</xsl:when>
            <xsl:when test="$langval='bom'">bmf</xsl:when>
            <xsl:when test="$langval='bamwe'">bmg</xsl:when>
            <xsl:when test="$langval='kein'">bmh</xsl:when>
            <xsl:when test="$langval='bagirmi'">bmi</xsl:when>
            <xsl:when test="$langval='bote-majhi'">bmj</xsl:when>
            <xsl:when test="$langval='ghayavi'">bmk</xsl:when>
            <xsl:when test="$langval='bomboli'">bml</xsl:when>
            <xsl:when test="$langval='northern betsimisaraka malagasy'">bmm</xsl:when>
            <xsl:when test="$langval='bina (papua new guinea)'">bmn</xsl:when>
            <xsl:when test="$langval='bambalang'">bmo</xsl:when>
            <xsl:when test="$langval='bulgebi'">bmp</xsl:when>
            <xsl:when test="$langval='bomu'">bmq</xsl:when>
            <xsl:when test="$langval='muinane'">bmr</xsl:when>
            <xsl:when test="$langval='bilma kanuri'">bms</xsl:when>
            <xsl:when test="$langval='biao mon'">bmt</xsl:when>
            <xsl:when test="$langval='somba-siawari'">bmu</xsl:when>
            <xsl:when test="$langval='bum'">bmv</xsl:when>
            <xsl:when test="$langval='bomwali'">bmw</xsl:when>
            <xsl:when test="$langval='baimak'">bmx</xsl:when>
            <xsl:when test="$langval='baramu'">bmz</xsl:when>
            <xsl:when test="$langval='bonerate'">bna</xsl:when>
            <xsl:when test="$langval='bookan'">bnb</xsl:when>
            <xsl:when test="$langval='bontok'">bnc</xsl:when>
            <xsl:when test="$langval='banda (indonesia)'">bnd</xsl:when>
            <xsl:when test="$langval='bintauna'">bne</xsl:when>
            <xsl:when test="$langval='masiwang'">bnf</xsl:when>
            <xsl:when test="$langval='benga'">bng</xsl:when>
            <xsl:when test="$langval='bangi'">bni</xsl:when>
            <xsl:when test="$langval='eastern tawbuid'">bnj</xsl:when>
            <xsl:when test="$langval='bierebo'">bnk</xsl:when>
            <xsl:when test="$langval='boon'">bnl</xsl:when>
            <xsl:when test="$langval='batanga'">bnm</xsl:when>
            <xsl:when test="$langval='bunun'">bnn</xsl:when>
            <xsl:when test="$langval='bantoanon'">bno</xsl:when>
            <xsl:when test="$langval='bola'">bnp</xsl:when>
            <xsl:when test="$langval='bantik'">bnq</xsl:when>
            <xsl:when test="$langval='butmas-tur'">bnr</xsl:when>
            <xsl:when test="$langval='bundeli'">bns</xsl:when>
            <xsl:when test="$langval='bentong'">bnu</xsl:when>
            <xsl:when test="$langval='bonerif'">bnv</xsl:when>
            <xsl:when test="$langval='bisis'">bnw</xsl:when>
            <xsl:when test="$langval='bangubangu'">bnx</xsl:when>
            <xsl:when test="$langval='bintulu'">bny</xsl:when>
            <xsl:when test="$langval='beezen'">bnz</xsl:when>
            <xsl:when test="$langval='bora'">boa</xsl:when>
            <xsl:when test="$langval='aweer'">bob</xsl:when>
            <xsl:when test="$langval='tibetan'">bod</xsl:when>
            <xsl:when test="$langval='mundabli'">boe</xsl:when>
            <xsl:when test="$langval='bolon'">bof</xsl:when>
            <xsl:when test="$langval='bamako sign language'">bog</xsl:when>
            <xsl:when test="$langval='boma'">boh</xsl:when>
            <xsl:when test="$langval='barbareño'">boi</xsl:when>
            <xsl:when test="$langval='anjam'">boj</xsl:when>
            <xsl:when test="$langval='bonjo'">bok</xsl:when>
            <xsl:when test="$langval='bole'">bol</xsl:when>
            <xsl:when test="$langval='berom'">bom</xsl:when>
            <xsl:when test="$langval='bine'">bon</xsl:when>
            <xsl:when test="$langval='tiemacèwè bozo'">boo</xsl:when>
            <xsl:when test="$langval='bonkiman'">bop</xsl:when>
            <xsl:when test="$langval='bogaya'">boq</xsl:when>
            <xsl:when test="$langval='borôro'">bor</xsl:when>
            <xsl:when test="$langval='bosnian'">bos</xsl:when>
            <xsl:when test="$langval='bongo'">bot</xsl:when>
            <xsl:when test="$langval='bondei'">bou</xsl:when>
            <xsl:when test="$langval='tuwuli'">bov</xsl:when>
            <xsl:when test="$langval='rema'">bow</xsl:when>
            <xsl:when test="$langval='buamu'">box</xsl:when>
            <xsl:when test="$langval='bodo (central african republic)'">boy</xsl:when>
            <xsl:when test="$langval='tiéyaxo bozo'">boz</xsl:when>
            <xsl:when test="$langval='daakaka'">bpa</xsl:when>
            <xsl:when test="$langval='barbacoas'">bpb</xsl:when>
            <xsl:when test="$langval='banda-banda'">bpd</xsl:when>
            <xsl:when test="$langval='bonggo'">bpg</xsl:when>
            <xsl:when test="$langval='botlikh'">bph</xsl:when>
            <xsl:when test="$langval='bagupi'">bpi</xsl:when>
            <xsl:when test="$langval='binji'">bpj</xsl:when>
            <xsl:when test="$langval='orowe'">bpk</xsl:when>
            <xsl:when test="$langval='broome pearling lugger pidgin'">bpl</xsl:when>
            <xsl:when test="$langval='biyom'">bpm</xsl:when>
            <xsl:when test="$langval='dzao min'">bpn</xsl:when>
            <xsl:when test="$langval='anasi'">bpo</xsl:when>
            <xsl:when test="$langval='kaure'">bpp</xsl:when>
            <xsl:when test="$langval='banda malay'">bpq</xsl:when>
            <xsl:when test="$langval='koronadal blaan'">bpr</xsl:when>
            <xsl:when test="$langval='sarangani blaan'">bps</xsl:when>
            <xsl:when test="$langval='barrow point'">bpt</xsl:when>
            <xsl:when test="$langval='bongu'">bpu</xsl:when>
            <xsl:when test="$langval='bian marind'">bpv</xsl:when>
            <xsl:when test="$langval='bo (papua new guinea)'">bpw</xsl:when>
            <xsl:when test="$langval='palya bareli'">bpx</xsl:when>
            <xsl:when test="$langval='bishnupriya'">bpy</xsl:when>
            <xsl:when test="$langval='bilba'">bpz</xsl:when>
            <xsl:when test="$langval='tchumbuli'">bqa</xsl:when>
            <xsl:when test="$langval='bagusa'">bqb</xsl:when>
            <xsl:when test="$langval='boko (benin)'">bqc</xsl:when>
            <xsl:when test="$langval='bung'">bqd</xsl:when>
            <xsl:when test="$langval='baga kaloum'">bqf</xsl:when>
            <xsl:when test="$langval='bago-kusuntu'">bqg</xsl:when>
            <xsl:when test="$langval='baima'">bqh</xsl:when>
            <xsl:when test="$langval='bakhtiari'">bqi</xsl:when>
            <xsl:when test="$langval='bandial'">bqj</xsl:when>
            <xsl:when test="$langval='banda-mbrès'">bqk</xsl:when>
            <xsl:when test="$langval='bilakura'">bql</xsl:when>
            <xsl:when test="$langval='wumboko'">bqm</xsl:when>
            <xsl:when test="$langval='bulgarian sign language'">bqn</xsl:when>
            <xsl:when test="$langval='balo'">bqo</xsl:when>
            <xsl:when test="$langval='busa'">bqp</xsl:when>
            <xsl:when test="$langval='biritai'">bqq</xsl:when>
            <xsl:when test="$langval='burusu'">bqr</xsl:when>
            <xsl:when test="$langval='bosngun'">bqs</xsl:when>
            <xsl:when test="$langval='bamukumbit'">bqt</xsl:when>
            <xsl:when test="$langval='boguru'">bqu</xsl:when>
            <xsl:when test="$langval='koro wachi'">bqv</xsl:when>
            <xsl:when test="$langval='buru (nigeria)'">bqw</xsl:when>
            <xsl:when test="$langval='baangi'">bqx</xsl:when>
            <xsl:when test="$langval='bengkala sign language'">bqy</xsl:when>
            <xsl:when test="$langval='bakaka'">bqz</xsl:when>
            <xsl:when test="$langval='braj'">bra</xsl:when>
            <xsl:when test="$langval='lave'">brb</xsl:when>
            <xsl:when test="$langval='berbice creole dutch'">brc</xsl:when>
            <xsl:when test="$langval='baraamu'">brd</xsl:when>
            <xsl:when test="$langval='breton'">bre</xsl:when>
            <xsl:when test="$langval='bera'">brf</xsl:when>
            <xsl:when test="$langval='baure'">brg</xsl:when>
            <xsl:when test="$langval='brahui'">brh</xsl:when>
            <xsl:when test="$langval='mokpwe'">bri</xsl:when>
            <xsl:when test="$langval='bieria'">brj</xsl:when>
            <xsl:when test="$langval='birked'">brk</xsl:when>
            <xsl:when test="$langval='birwa'">brl</xsl:when>
            <xsl:when test="$langval='barambu'">brm</xsl:when>
            <xsl:when test="$langval='boruca'">brn</xsl:when>
            <xsl:when test="$langval='brokkat'">bro</xsl:when>
            <xsl:when test="$langval='barapasi'">brp</xsl:when>
            <xsl:when test="$langval='breri'">brq</xsl:when>
            <xsl:when test="$langval='birao'">brr</xsl:when>
            <xsl:when test="$langval='baras'">brs</xsl:when>
            <xsl:when test="$langval='bitare'">brt</xsl:when>
            <xsl:when test="$langval='eastern bru'">bru</xsl:when>
            <xsl:when test="$langval='western bru'">brv</xsl:when>
            <xsl:when test="$langval='bellari'">brw</xsl:when>
            <xsl:when test="$langval='bodo (india)'">brx</xsl:when>
            <xsl:when test="$langval='burui'">bry</xsl:when>
            <xsl:when test="$langval='bilbil'">brz</xsl:when>
            <xsl:when test="$langval='abinomn'">bsa</xsl:when>
            <xsl:when test="$langval='brunei bisaya'">bsb</xsl:when>
            <xsl:when test="$langval='bassari'">bsc</xsl:when>
            <xsl:when test="$langval='wushi'">bse</xsl:when>
            <xsl:when test="$langval='bauchi'">bsf</xsl:when>
            <xsl:when test="$langval='bashkardi'">bsg</xsl:when>
            <xsl:when test="$langval='kati'">bsh</xsl:when>
            <xsl:when test="$langval='bassossi'">bsi</xsl:when>
            <xsl:when test="$langval='bangwinji'">bsj</xsl:when>
            <xsl:when test="$langval='burushaski'">bsk</xsl:when>
            <xsl:when test="$langval='basa-gumna'">bsl</xsl:when>
            <xsl:when test="$langval='busami'">bsm</xsl:when>
            <xsl:when test="$langval='barasana-eduria'">bsn</xsl:when>
            <xsl:when test="$langval='buso'">bso</xsl:when>
            <xsl:when test="$langval='baga sitemu'">bsp</xsl:when>
            <xsl:when test="$langval='bassa'">bsq</xsl:when>
            <xsl:when test="$langval='bassa-kontagora'">bsr</xsl:when>
            <xsl:when test="$langval='akoose'">bss</xsl:when>
            <xsl:when test="$langval='basketo'">bst</xsl:when>
            <xsl:when test="$langval='bahonsuai'">bsu</xsl:when>
            <xsl:when test="$langval='baga sobané'">bsv</xsl:when>
            <xsl:when test="$langval='baiso'">bsw</xsl:when>
            <xsl:when test="$langval='yangkam'">bsx</xsl:when>
            <xsl:when test="$langval='sabah bisaya'">bsy</xsl:when>
            <xsl:when test="$langval='bata'">bta</xsl:when>
            <xsl:when test="$langval='bati (cameroon)'">btc</xsl:when>
            <xsl:when test="$langval='batak dairi'">btd</xsl:when>
            <xsl:when test="$langval='gamo-ningi'">bte</xsl:when>
            <xsl:when test="$langval='birgit'">btf</xsl:when>
            <xsl:when test="$langval='gagnoa bété'">btg</xsl:when>
            <xsl:when test="$langval='biatah bidayuh'">bth</xsl:when>
            <xsl:when test="$langval='burate'">bti</xsl:when>
            <xsl:when test="$langval='bacanese malay'">btj</xsl:when>
            <xsl:when test="$langval='bhatola'">btl</xsl:when>
            <xsl:when test="$langval='batak mandailing'">btm</xsl:when>
            <xsl:when test="$langval='ratagnon'">btn</xsl:when>
            <xsl:when test="$langval='rinconada bikol'">bto</xsl:when>
            <xsl:when test="$langval='budibud'">btp</xsl:when>
            <xsl:when test="$langval='batek'">btq</xsl:when>
            <xsl:when test="$langval='baetora'">btr</xsl:when>
            <xsl:when test="$langval='batak simalungun'">bts</xsl:when>
            <xsl:when test="$langval='bete-bendi'">btt</xsl:when>
            <xsl:when test="$langval='batu'">btu</xsl:when>
            <xsl:when test="$langval='bateri'">btv</xsl:when>
            <xsl:when test="$langval='butuanon'">btw</xsl:when>
            <xsl:when test="$langval='batak karo'">btx</xsl:when>
            <xsl:when test="$langval='bobot'">bty</xsl:when>
            <xsl:when test="$langval='batak alas-kluet'">btz</xsl:when>
            <xsl:when test="$langval='buriat'">bua</xsl:when>
            <xsl:when test="$langval='bua'">bub</xsl:when>
            <xsl:when test="$langval='bushi'">buc</xsl:when>
            <xsl:when test="$langval='ntcham'">bud</xsl:when>
            <xsl:when test="$langval='beothuk'">bue</xsl:when>
            <xsl:when test="$langval='bushoong'">buf</xsl:when>
            <xsl:when test="$langval='buginese'">bug</xsl:when>
            <xsl:when test="$langval='younuo bunu'">buh</xsl:when>
            <xsl:when test="$langval='bongili'">bui</xsl:when>
            <xsl:when test="$langval='basa-gurmana'">buj</xsl:when>
            <xsl:when test="$langval='bugawac'">buk</xsl:when>
            <xsl:when test="$langval='bulgarian'">bul</xsl:when>
            <xsl:when test="$langval='bulu (cameroon)'">bum</xsl:when>
            <xsl:when test="$langval='sherbro'">bun</xsl:when>
            <xsl:when test="$langval='terei'">buo</xsl:when>
            <xsl:when test="$langval='busoa'">bup</xsl:when>
            <xsl:when test="$langval='brem'">buq</xsl:when>
            <xsl:when test="$langval='bokobaru'">bus</xsl:when>
            <xsl:when test="$langval='bungain'">but</xsl:when>
            <xsl:when test="$langval='budu'">buu</xsl:when>
            <xsl:when test="$langval='bun'">buv</xsl:when>
            <xsl:when test="$langval='bubi'">buw</xsl:when>
            <xsl:when test="$langval='boghom'">bux</xsl:when>
            <xsl:when test="$langval='bullom so'">buy</xsl:when>
            <xsl:when test="$langval='bukwen'">buz</xsl:when>
            <xsl:when test="$langval='barein'">bva</xsl:when>
            <xsl:when test="$langval='bube'">bvb</xsl:when>
            <xsl:when test="$langval='baelelea'">bvc</xsl:when>
            <xsl:when test="$langval='baeggu'">bvd</xsl:when>
            <xsl:when test="$langval='berau malay'">bve</xsl:when>
            <xsl:when test="$langval='boor'">bvf</xsl:when>
            <xsl:when test="$langval='bonkeng'">bvg</xsl:when>
            <xsl:when test="$langval='bure'">bvh</xsl:when>
            <xsl:when test="$langval='belanda viri'">bvi</xsl:when>
            <xsl:when test="$langval='baan'">bvj</xsl:when>
            <xsl:when test="$langval='bukat'">bvk</xsl:when>
            <xsl:when test="$langval='bolivian sign language'">bvl</xsl:when>
            <xsl:when test="$langval='bamunka'">bvm</xsl:when>
            <xsl:when test="$langval='buna'">bvn</xsl:when>
            <xsl:when test="$langval='bolgo'">bvo</xsl:when>
            <xsl:when test="$langval='bumang'">bvp</xsl:when>
            <xsl:when test="$langval='birri'">bvq</xsl:when>
            <xsl:when test="$langval='burarra'">bvr</xsl:when>
            <xsl:when test="$langval='bati (indonesia)'">bvt</xsl:when>
            <xsl:when test="$langval='bukit malay'">bvu</xsl:when>
            <xsl:when test="$langval='baniva'">bvv</xsl:when>
            <xsl:when test="$langval='boga'">bvw</xsl:when>
            <xsl:when test="$langval='dibole'">bvx</xsl:when>
            <xsl:when test="$langval='baybayanon'">bvy</xsl:when>
            <xsl:when test="$langval='bauzi'">bvz</xsl:when>
            <xsl:when test="$langval='bwatoo'">bwa</xsl:when>
            <xsl:when test="$langval='namosi-naitasiri-serua'">bwb</xsl:when>
            <xsl:when test="$langval='bwile'">bwc</xsl:when>
            <xsl:when test="$langval='bwaidoka'">bwd</xsl:when>
            <xsl:when test="$langval='bwe karen'">bwe</xsl:when>
            <xsl:when test="$langval='boselewa'">bwf</xsl:when>
            <xsl:when test="$langval='barwe'">bwg</xsl:when>
            <xsl:when test="$langval='bishuo'">bwh</xsl:when>
            <xsl:when test="$langval='baniwa'">bwi</xsl:when>
            <xsl:when test="$langval='láá láá bwamu'">bwj</xsl:when>
            <xsl:when test="$langval='bauwaki'">bwk</xsl:when>
            <xsl:when test="$langval='bwela'">bwl</xsl:when>
            <xsl:when test="$langval='biwat'">bwm</xsl:when>
            <xsl:when test="$langval='wunai bunu'">bwn</xsl:when>
            <xsl:when test="$langval='boro (ethiopia)'">bwo</xsl:when>
            <xsl:when test="$langval='mandobo bawah'">bwp</xsl:when>
            <xsl:when test="$langval='southern bobo madaré'">bwq</xsl:when>
            <xsl:when test="$langval='bura-pabir'">bwr</xsl:when>
            <xsl:when test="$langval='bomboma'">bws</xsl:when>
            <xsl:when test="$langval='bafaw-balong'">bwt</xsl:when>
            <xsl:when test="$langval='buli (ghana)'">bwu</xsl:when>
            <xsl:when test="$langval='bwa'">bww</xsl:when>
            <xsl:when test="$langval='bu-nao bunu'">bwx</xsl:when>
            <xsl:when test="$langval='cwi bwamu'">bwy</xsl:when>
            <xsl:when test="$langval='bwisi'">bwz</xsl:when>
            <xsl:when test="$langval='tairaha'">bxa</xsl:when>
            <xsl:when test="$langval='belanda bor'">bxb</xsl:when>
            <xsl:when test="$langval='molengue'">bxc</xsl:when>
            <xsl:when test="$langval='pela'">bxd</xsl:when>
            <xsl:when test="$langval='birale'">bxe</xsl:when>
            <xsl:when test="$langval='bilur'">bxf</xsl:when>
            <xsl:when test="$langval='bangala'">bxg</xsl:when>
            <xsl:when test="$langval='buhutu'">bxh</xsl:when>
            <xsl:when test="$langval='pirlatapa'">bxi</xsl:when>
            <xsl:when test="$langval='bayungu'">bxj</xsl:when>
            <xsl:when test="$langval='bukusu'">bxk</xsl:when>
            <xsl:when test="$langval='jalkunan'">bxl</xsl:when>
            <xsl:when test="$langval='mongolia buriat'">bxm</xsl:when>
            <xsl:when test="$langval='burduna'">bxn</xsl:when>
            <xsl:when test="$langval='barikanchi'">bxo</xsl:when>
            <xsl:when test="$langval='bebil'">bxp</xsl:when>
            <xsl:when test="$langval='beele'">bxq</xsl:when>
            <xsl:when test="$langval='russia buriat'">bxr</xsl:when>
            <xsl:when test="$langval='busam'">bxs</xsl:when>
            <xsl:when test="$langval='china buriat'">bxu</xsl:when>
            <xsl:when test="$langval='berakou'">bxv</xsl:when>
            <xsl:when test="$langval='bankagooma'">bxw</xsl:when>
            <xsl:when test="$langval='binahari'">bxz</xsl:when>
            <xsl:when test="$langval='batak'">bya</xsl:when>
            <xsl:when test="$langval='bikya'">byb</xsl:when>
            <xsl:when test="$langval='ubaghara'">byc</xsl:when>
            <xsl:when test="$langval='benyadu'''">byd</xsl:when>
            <xsl:when test="$langval='pouye'">bye</xsl:when>
            <xsl:when test="$langval='bete'">byf</xsl:when>
            <xsl:when test="$langval='baygo'">byg</xsl:when>
            <xsl:when test="$langval='bhujel'">byh</xsl:when>
            <xsl:when test="$langval='buyu'">byi</xsl:when>
            <xsl:when test="$langval='bina (nigeria)'">byj</xsl:when>
            <xsl:when test="$langval='biao'">byk</xsl:when>
            <xsl:when test="$langval='bayono'">byl</xsl:when>
            <xsl:when test="$langval='bidyara'">bym</xsl:when>
            <xsl:when test="$langval='bilin'">byn</xsl:when>
            <xsl:when test="$langval='biyo'">byo</xsl:when>
            <xsl:when test="$langval='bumaji'">byp</xsl:when>
            <xsl:when test="$langval='basay'">byq</xsl:when>
            <xsl:when test="$langval='baruya'">byr</xsl:when>
            <xsl:when test="$langval='burak'">bys</xsl:when>
            <xsl:when test="$langval='berti'">byt</xsl:when>
            <xsl:when test="$langval='medumba'">byv</xsl:when>
            <xsl:when test="$langval='belhariya'">byw</xsl:when>
            <xsl:when test="$langval='qaqet'">byx</xsl:when>
            <xsl:when test="$langval='banaro'">byz</xsl:when>
            <xsl:when test="$langval='bandi'">bza</xsl:when>
            <xsl:when test="$langval='andio'">bzb</xsl:when>
            <xsl:when test="$langval='southern betsimisaraka malagasy'">bzc</xsl:when>
            <xsl:when test="$langval='bribri'">bzd</xsl:when>
            <xsl:when test="$langval='jenaama bozo'">bze</xsl:when>
            <xsl:when test="$langval='boikin'">bzf</xsl:when>
            <xsl:when test="$langval='babuza'">bzg</xsl:when>
            <xsl:when test="$langval='mapos buang'">bzh</xsl:when>
            <xsl:when test="$langval='bisu'">bzi</xsl:when>
            <xsl:when test="$langval='belize kriol english'">bzj</xsl:when>
            <xsl:when test="$langval='nicaragua creole english'">bzk</xsl:when>
            <xsl:when test="$langval='boano (sulawesi)'">bzl</xsl:when>
            <xsl:when test="$langval='bolondo'">bzm</xsl:when>
            <xsl:when test="$langval='boano (maluku)'">bzn</xsl:when>
            <xsl:when test="$langval='bozaba'">bzo</xsl:when>
            <xsl:when test="$langval='kemberano'">bzp</xsl:when>
            <xsl:when test="$langval='buli (indonesia)'">bzq</xsl:when>
            <xsl:when test="$langval='biri'">bzr</xsl:when>
            <xsl:when test="$langval='brazilian sign language'">bzs</xsl:when>
            <xsl:when test="$langval='brithenig'">bzt</xsl:when>
            <xsl:when test="$langval='burmeso'">bzu</xsl:when>
            <xsl:when test="$langval='naami'">bzv</xsl:when>
            <xsl:when test="$langval='basa (nigeria)'">bzw</xsl:when>
            <xsl:when test="$langval='kɛlɛngaxo bozo'">bzx</xsl:when>
            <xsl:when test="$langval='obanliku'">bzy</xsl:when>
            <xsl:when test="$langval='evant'">bzz</xsl:when>
            <xsl:when test="$langval='chortí'">caa</xsl:when>
            <xsl:when test="$langval='garifuna'">cab</xsl:when>
            <xsl:when test="$langval='chuj'">cac</xsl:when>
            <xsl:when test="$langval='caddo'">cad</xsl:when>
            <xsl:when test="$langval='lehar'">cae</xsl:when>
            <xsl:when test="$langval='southern carrier'">caf</xsl:when>
            <xsl:when test="$langval='nivaclé'">cag</xsl:when>
            <xsl:when test="$langval='cahuarano'">cah</xsl:when>
            <xsl:when test="$langval='chané'">caj</xsl:when>
            <xsl:when test="$langval='kaqchikel'">cak</xsl:when>
            <xsl:when test="$langval='carolinian'">cal</xsl:when>
            <xsl:when test="$langval='cemuhî'">cam</xsl:when>
            <xsl:when test="$langval='chambri'">can</xsl:when>
            <xsl:when test="$langval='chácobo'">cao</xsl:when>
            <xsl:when test="$langval='chipaya'">cap</xsl:when>
            <xsl:when test="$langval='car nicobarese'">caq</xsl:when>
            <xsl:when test="$langval='galibi carib'">car</xsl:when>
            <xsl:when test="$langval='tsimané'">cas</xsl:when>
            <xsl:when test="$langval='catalan'">cat</xsl:when>
            <xsl:when test="$langval='cavineña'">cav</xsl:when>
            <xsl:when test="$langval='callawalla'">caw</xsl:when>
            <xsl:when test="$langval='chiquitano'">cax</xsl:when>
            <xsl:when test="$langval='cayuga'">cay</xsl:when>
            <xsl:when test="$langval='canichana'">caz</xsl:when>
            <xsl:when test="$langval='cabiyarí'">cbb</xsl:when>
            <xsl:when test="$langval='carapana'">cbc</xsl:when>
            <xsl:when test="$langval='carijona'">cbd</xsl:when>
            <xsl:when test="$langval='chipiajes'">cbe</xsl:when>
            <xsl:when test="$langval='chimila'">cbg</xsl:when>
            <xsl:when test="$langval='cagua'">cbh</xsl:when>
            <xsl:when test="$langval='chachi'">cbi</xsl:when>
            <xsl:when test="$langval='ede cabe'">cbj</xsl:when>
            <xsl:when test="$langval='chavacano'">cbk</xsl:when>
            <xsl:when test="$langval='bualkhaw chin'">cbl</xsl:when>
            <xsl:when test="$langval='nyahkur'">cbn</xsl:when>
            <xsl:when test="$langval='izora'">cbo</xsl:when>
            <xsl:when test="$langval='tsucuba'">cbq</xsl:when>
            <xsl:when test="$langval='cashibo-cacataibo'">cbr</xsl:when>
            <xsl:when test="$langval='cashinahua'">cbs</xsl:when>
            <xsl:when test="$langval='chayahuita'">cbt</xsl:when>
            <xsl:when test="$langval='candoshi-shapra'">cbu</xsl:when>
            <xsl:when test="$langval='cacua'">cbv</xsl:when>
            <xsl:when test="$langval='kinabalian'">cbw</xsl:when>
            <xsl:when test="$langval='carabayo'">cby</xsl:when>
            <xsl:when test="$langval='cauca'">cca</xsl:when>
            <xsl:when test="$langval='chamicuro'">ccc</xsl:when>
            <xsl:when test="$langval='cafundo creole'">ccd</xsl:when>
            <xsl:when test="$langval='chopi'">cce</xsl:when>
            <xsl:when test="$langval='samba daka'">ccg</xsl:when>
            <xsl:when test="$langval='atsam'">cch</xsl:when>
            <xsl:when test="$langval='kasanga'">ccj</xsl:when>
            <xsl:when test="$langval='cutchi-swahili'">ccl</xsl:when>
            <xsl:when test="$langval='malaccan creole malay'">ccm</xsl:when>
            <xsl:when test="$langval='comaltepec chinantec'">cco</xsl:when>
            <xsl:when test="$langval='chakma'">ccp</xsl:when>
            <xsl:when test="$langval='cacaopera'">ccr</xsl:when>
            <xsl:when test="$langval='choni'">cda</xsl:when>
            <xsl:when test="$langval='chenchu'">cde</xsl:when>
            <xsl:when test="$langval='chiru'">cdf</xsl:when>
            <xsl:when test="$langval='chamari'">cdg</xsl:when>
            <xsl:when test="$langval='chambeali'">cdh</xsl:when>
            <xsl:when test="$langval='chodri'">cdi</xsl:when>
            <xsl:when test="$langval='churahi'">cdj</xsl:when>
            <xsl:when test="$langval='chepang'">cdm</xsl:when>
            <xsl:when test="$langval='chaudangsi'">cdn</xsl:when>
            <xsl:when test="$langval='min dong chinese'">cdo</xsl:when>
            <xsl:when test="$langval='cinda-regi-tiyal'">cdr</xsl:when>
            <xsl:when test="$langval='chadian sign language'">cds</xsl:when>
            <xsl:when test="$langval='chadong'">cdy</xsl:when>
            <xsl:when test="$langval='koda'">cdz</xsl:when>
            <xsl:when test="$langval='lower chehalis'">cea</xsl:when>
            <xsl:when test="$langval='cebuano'">ceb</xsl:when>
            <xsl:when test="$langval='chamacoco'">ceg</xsl:when>
            <xsl:when test="$langval='eastern khumi chin'">cek</xsl:when>
            <xsl:when test="$langval='cen'">cen</xsl:when>
            <xsl:when test="$langval='czech'">ces</xsl:when>
            <xsl:when test="$langval='centúúm'">cet</xsl:when>
            <xsl:when test="$langval='dijim-bwilim'">cfa</xsl:when>
            <xsl:when test="$langval='cara'">cfd</xsl:when>
            <xsl:when test="$langval='como karim'">cfg</xsl:when>
            <xsl:when test="$langval='falam chin'">cfm</xsl:when>
            <xsl:when test="$langval='changriwa'">cga</xsl:when>
            <xsl:when test="$langval='kagayanen'">cgc</xsl:when>
            <xsl:when test="$langval='chiga'">cgg</xsl:when>
            <xsl:when test="$langval='chocangacakha'">cgk</xsl:when>
            <xsl:when test="$langval='chamorro'">cha</xsl:when>
            <xsl:when test="$langval='chibcha'">chb</xsl:when>
            <xsl:when test="$langval='catawba'">chc</xsl:when>
            <xsl:when test="$langval='highland oaxaca chontal'">chd</xsl:when>
            <xsl:when test="$langval='chechen'">che</xsl:when>
            <xsl:when test="$langval='tabasco chontal'">chf</xsl:when>
            <xsl:when test="$langval='chagatai'">chg</xsl:when>
            <xsl:when test="$langval='chinook'">chh</xsl:when>
            <xsl:when test="$langval='ojitlán chinantec'">chj</xsl:when>
            <xsl:when test="$langval='chuukese'">chk</xsl:when>
            <xsl:when test="$langval='cahuilla'">chl</xsl:when>
            <xsl:when test="$langval='mari (russia)'">chm</xsl:when>
            <xsl:when test="$langval='chinook jargon'">chn</xsl:when>
            <xsl:when test="$langval='choctaw'">cho</xsl:when>
            <xsl:when test="$langval='chipewyan'">chp</xsl:when>
            <xsl:when test="$langval='quiotepec chinantec'">chq</xsl:when>
            <xsl:when test="$langval='cherokee'">chr</xsl:when>
            <xsl:when test="$langval='cholón'">cht</xsl:when>
            <xsl:when test="$langval='church slavic'">chu</xsl:when>
            <xsl:when test="$langval='chuvash'">chv</xsl:when>
            <xsl:when test="$langval='chuwabu'">chw</xsl:when>
            <xsl:when test="$langval='chantyal'">chx</xsl:when>
            <xsl:when test="$langval='cheyenne'">chy</xsl:when>
            <xsl:when test="$langval='ozumacín chinantec'">chz</xsl:when>
            <xsl:when test="$langval='cia-cia'">cia</xsl:when>
            <xsl:when test="$langval='ci gbe'">cib</xsl:when>
            <xsl:when test="$langval='chickasaw'">cic</xsl:when>
            <xsl:when test="$langval='chimariko'">cid</xsl:when>
            <xsl:when test="$langval='cineni'">cie</xsl:when>
            <xsl:when test="$langval='chinali'">cih</xsl:when>
            <xsl:when test="$langval='chitkuli kinnauri'">cik</xsl:when>
            <xsl:when test="$langval='cimbrian'">cim</xsl:when>
            <xsl:when test="$langval='cinta larga'">cin</xsl:when>
            <xsl:when test="$langval='chiapanec'">cip</xsl:when>
            <xsl:when test="$langval='tiri'">cir</xsl:when>
            <xsl:when test="$langval='chippewa'">ciw</xsl:when>
            <xsl:when test="$langval='chaima'">ciy</xsl:when>
            <xsl:when test="$langval='western cham'">cja</xsl:when>
            <xsl:when test="$langval='chru'">cje</xsl:when>
            <xsl:when test="$langval='upper chehalis'">cjh</xsl:when>
            <xsl:when test="$langval='chamalal'">cji</xsl:when>
            <xsl:when test="$langval='chokwe'">cjk</xsl:when>
            <xsl:when test="$langval='eastern cham'">cjm</xsl:when>
            <xsl:when test="$langval='chenapian'">cjn</xsl:when>
            <xsl:when test="$langval='ashéninka pajonal'">cjo</xsl:when>
            <xsl:when test="$langval='cabécar'">cjp</xsl:when>
            <xsl:when test="$langval='shor'">cjs</xsl:when>
            <xsl:when test="$langval='chuave'">cjv</xsl:when>
            <xsl:when test="$langval='jinyu chinese'">cjy</xsl:when>
            <xsl:when test="$langval='central kurdish'">ckb</xsl:when>
            <xsl:when test="$langval='chak'">ckh</xsl:when>
            <xsl:when test="$langval='cibak'">ckl</xsl:when>
            <xsl:when test="$langval='kaang chin'">ckn</xsl:when>
            <xsl:when test="$langval='anufo'">cko</xsl:when>
            <xsl:when test="$langval='kajakse'">ckq</xsl:when>
            <xsl:when test="$langval='kairak'">ckr</xsl:when>
            <xsl:when test="$langval='tayo'">cks</xsl:when>
            <xsl:when test="$langval='chukot'">ckt</xsl:when>
            <xsl:when test="$langval='koasati'">cku</xsl:when>
            <xsl:when test="$langval='kavalan'">ckv</xsl:when>
            <xsl:when test="$langval='caka'">ckx</xsl:when>
            <xsl:when test="$langval='cakfem-mushere'">cky</xsl:when>
            <xsl:when test="$langval='cakchiquel-quiché mixed language'">ckz</xsl:when>
            <xsl:when test="$langval='ron'">cla</xsl:when>
            <xsl:when test="$langval='chilcotin'">clc</xsl:when>
            <xsl:when test="$langval='chaldean neo-aramaic'">cld</xsl:when>
            <xsl:when test="$langval='lealao chinantec'">cle</xsl:when>
            <xsl:when test="$langval='chilisso'">clh</xsl:when>
            <xsl:when test="$langval='chakali'">cli</xsl:when>
            <xsl:when test="$langval='laitu chin'">clj</xsl:when>
            <xsl:when test="$langval='idu-mishmi'">clk</xsl:when>
            <xsl:when test="$langval='chala'">cll</xsl:when>
            <xsl:when test="$langval='clallam'">clm</xsl:when>
            <xsl:when test="$langval='lowland oaxaca chontal'">clo</xsl:when>
            <xsl:when test="$langval='lautu chin'">clt</xsl:when>
            <xsl:when test="$langval='caluyanun'">clu</xsl:when>
            <xsl:when test="$langval='chulym'">clw</xsl:when>
            <xsl:when test="$langval='eastern highland chatino'">cly</xsl:when>
            <xsl:when test="$langval='maa'">cma</xsl:when>
            <xsl:when test="$langval='cerma'">cme</xsl:when>
            <xsl:when test="$langval='classical mongolian'">cmg</xsl:when>
            <xsl:when test="$langval='emberá-chamí'">cmi</xsl:when>
            <xsl:when test="$langval='campalagian'">cml</xsl:when>
            <xsl:when test="$langval='michigamea'">cmm</xsl:when>
            <xsl:when test="$langval='mandarin chinese'">cmn</xsl:when>
            <xsl:when test="$langval='central mnong'">cmo</xsl:when>
            <xsl:when test="$langval='mro-khimi chin'">cmr</xsl:when>
            <xsl:when test="$langval='messapic'">cms</xsl:when>
            <xsl:when test="$langval='camtho'">cmt</xsl:when>
            <xsl:when test="$langval='changthang'">cna</xsl:when>
            <xsl:when test="$langval='chinbon chin'">cnb</xsl:when>
            <xsl:when test="$langval='côông'">cnc</xsl:when>
            <xsl:when test="$langval='northern qiang'">cng</xsl:when>
            <xsl:when test="$langval='haka chin'">cnh</xsl:when>
            <xsl:when test="$langval='asháninka'">cni</xsl:when>
            <xsl:when test="$langval='khumi chin'">cnk</xsl:when>
            <xsl:when test="$langval='lalana chinantec'">cnl</xsl:when>
            <xsl:when test="$langval='con'">cno</xsl:when>
            <xsl:when test="$langval='central asmat'">cns</xsl:when>
            <xsl:when test="$langval='tepetotutla chinantec'">cnt</xsl:when>
            <xsl:when test="$langval='chenoua'">cnu</xsl:when>
            <xsl:when test="$langval='ngawn chin'">cnw</xsl:when>
            <xsl:when test="$langval='middle cornish'">cnx</xsl:when>
            <xsl:when test="$langval='cocos islands malay'">coa</xsl:when>
            <xsl:when test="$langval='chicomuceltec'">cob</xsl:when>
            <xsl:when test="$langval='cocopa'">coc</xsl:when>
            <xsl:when test="$langval='cocama-cocamilla'">cod</xsl:when>
            <xsl:when test="$langval='koreguaje'">coe</xsl:when>
            <xsl:when test="$langval='colorado'">cof</xsl:when>
            <xsl:when test="$langval='chong'">cog</xsl:when>
            <xsl:when test="$langval='chonyi-dzihana-kauma'">coh</xsl:when>
            <xsl:when test="$langval='cochimi'">coj</xsl:when>
            <xsl:when test="$langval='santa teresa cora'">cok</xsl:when>
            <xsl:when test="$langval='columbia-wenatchi'">col</xsl:when>
            <xsl:when test="$langval='comanche'">com</xsl:when>
            <xsl:when test="$langval='cofán'">con</xsl:when>
            <xsl:when test="$langval='comox'">coo</xsl:when>
            <xsl:when test="$langval='coptic'">cop</xsl:when>
            <xsl:when test="$langval='coquille'">coq</xsl:when>
            <xsl:when test="$langval='cornish'">cor</xsl:when>
            <xsl:when test="$langval='corsican'">cos</xsl:when>
            <xsl:when test="$langval='caquinte'">cot</xsl:when>
            <xsl:when test="$langval='wamey'">cou</xsl:when>
            <xsl:when test="$langval='cao miao'">cov</xsl:when>
            <xsl:when test="$langval='cowlitz'">cow</xsl:when>
            <xsl:when test="$langval='nanti'">cox</xsl:when>
            <xsl:when test="$langval='coyaima'">coy</xsl:when>
            <xsl:when test="$langval='chochotec'">coz</xsl:when>
            <xsl:when test="$langval='palantla chinantec'">cpa</xsl:when>
            <xsl:when test="$langval='ucayali-yurúa ashéninka'">cpb</xsl:when>
            <xsl:when test="$langval='ajyíninka apurucayali'">cpc</xsl:when>
            <xsl:when test="$langval='cappadocian greek'">cpg</xsl:when>
            <xsl:when test="$langval='chinese pidgin english'">cpi</xsl:when>
            <xsl:when test="$langval='cherepon'">cpn</xsl:when>
            <xsl:when test="$langval='kpeego'">cpo</xsl:when>
            <xsl:when test="$langval='capiznon'">cps</xsl:when>
            <xsl:when test="$langval='pichis ashéninka'">cpu</xsl:when>
            <xsl:when test="$langval='pu-xian chinese'">cpx</xsl:when>
            <xsl:when test="$langval='south ucayali ashéninka'">cpy</xsl:when>
            <xsl:when test="$langval='chuanqiandian cluster miao'">cqd</xsl:when>
            <xsl:when test="$langval='chilean quechua'">cqu</xsl:when>
            <xsl:when test="$langval='chara'">cra</xsl:when>
            <xsl:when test="$langval='island carib'">crb</xsl:when>
            <xsl:when test="$langval='lonwolwol'">crc</xsl:when>
            <xsl:when test="$langval='coeur d''alene'">crd</xsl:when>
            <xsl:when test="$langval='cree'">cre</xsl:when>
            <xsl:when test="$langval='caramanta'">crf</xsl:when>
            <xsl:when test="$langval='michif'">crg</xsl:when>
            <xsl:when test="$langval='crimean tatar'">crh</xsl:when>
            <xsl:when test="$langval='sãotomense'">cri</xsl:when>
            <xsl:when test="$langval='southern east cree'">crj</xsl:when>
            <xsl:when test="$langval='plains cree'">crk</xsl:when>
            <xsl:when test="$langval='northern east cree'">crl</xsl:when>
            <xsl:when test="$langval='moose cree'">crm</xsl:when>
            <xsl:when test="$langval='el nayar cora'">crn</xsl:when>
            <xsl:when test="$langval='crow'">cro</xsl:when>
            <xsl:when test="$langval='iyo''wujwa chorote'">crq</xsl:when>
            <xsl:when test="$langval='carolina algonquian'">crr</xsl:when>
            <xsl:when test="$langval='seselwa creole french'">crs</xsl:when>
            <xsl:when test="$langval='iyojwa''ja chorote'">crt</xsl:when>
            <xsl:when test="$langval='chaura'">crv</xsl:when>
            <xsl:when test="$langval='chrau'">crw</xsl:when>
            <xsl:when test="$langval='carrier'">crx</xsl:when>
            <xsl:when test="$langval='cori'">cry</xsl:when>
            <xsl:when test="$langval='cruzeño'">crz</xsl:when>
            <xsl:when test="$langval='chiltepec chinantec'">csa</xsl:when>
            <xsl:when test="$langval='kashubian'">csb</xsl:when>
            <xsl:when test="$langval='catalan sign language'">csc</xsl:when>
            <xsl:when test="$langval='chiangmai sign language'">csd</xsl:when>
            <xsl:when test="$langval='czech sign language'">cse</xsl:when>
            <xsl:when test="$langval='cuba sign language'">csf</xsl:when>
            <xsl:when test="$langval='chilean sign language'">csg</xsl:when>
            <xsl:when test="$langval='asho chin'">csh</xsl:when>
            <xsl:when test="$langval='coast miwok'">csi</xsl:when>
            <xsl:when test="$langval='songlai chin'">csj</xsl:when>
            <xsl:when test="$langval='jola-kasa'">csk</xsl:when>
            <xsl:when test="$langval='chinese sign language'">csl</xsl:when>
            <xsl:when test="$langval='central sierra miwok'">csm</xsl:when>
            <xsl:when test="$langval='colombian sign language'">csn</xsl:when>
            <xsl:when test="$langval='sochiapam chinantec'">cso</xsl:when>
            <xsl:when test="$langval='croatia sign language'">csq</xsl:when>
            <xsl:when test="$langval='costa rican sign language'">csr</xsl:when>
            <xsl:when test="$langval='southern ohlone'">css</xsl:when>
            <xsl:when test="$langval='northern ohlone'">cst</xsl:when>
            <xsl:when test="$langval='sumtu chin'">csv</xsl:when>
            <xsl:when test="$langval='swampy cree'">csw</xsl:when>
            <xsl:when test="$langval='siyin chin'">csy</xsl:when>
            <xsl:when test="$langval='coos'">csz</xsl:when>
            <xsl:when test="$langval='tataltepec chatino'">cta</xsl:when>
            <xsl:when test="$langval='chetco'">ctc</xsl:when>
            <xsl:when test="$langval='tedim chin'">ctd</xsl:when>
            <xsl:when test="$langval='tepinapa chinantec'">cte</xsl:when>
            <xsl:when test="$langval='chittagonian'">ctg</xsl:when>
            <xsl:when test="$langval='thaiphum chin'">cth</xsl:when>
            <xsl:when test="$langval='tlacoatzintepec chinantec'">ctl</xsl:when>
            <xsl:when test="$langval='chitimacha'">ctm</xsl:when>
            <xsl:when test="$langval='chhintange'">ctn</xsl:when>
            <xsl:when test="$langval='emberá-catío'">cto</xsl:when>
            <xsl:when test="$langval='western highland chatino'">ctp</xsl:when>
            <xsl:when test="$langval='northern catanduanes bikol'">cts</xsl:when>
            <xsl:when test="$langval='wayanad chetti'">ctt</xsl:when>
            <xsl:when test="$langval='chol'">ctu</xsl:when>
            <xsl:when test="$langval='zacatepec chatino'">ctz</xsl:when>
            <xsl:when test="$langval='cua'">cua</xsl:when>
            <xsl:when test="$langval='cubeo'">cub</xsl:when>
            <xsl:when test="$langval='usila chinantec'">cuc</xsl:when>
            <xsl:when test="$langval='cung'">cug</xsl:when>
            <xsl:when test="$langval='chuka'">cuh</xsl:when>
            <xsl:when test="$langval='cuiba'">cui</xsl:when>
            <xsl:when test="$langval='mashco piro'">cuj</xsl:when>
            <xsl:when test="$langval='san blas kuna'">cuk</xsl:when>
            <xsl:when test="$langval='culina'">cul</xsl:when>
            <xsl:when test="$langval='cumeral'">cum</xsl:when>
            <xsl:when test="$langval='cumanagoto'">cuo</xsl:when>
            <xsl:when test="$langval='cupeño'">cup</xsl:when>
            <xsl:when test="$langval='cun'">cuq</xsl:when>
            <xsl:when test="$langval='chhulung'">cur</xsl:when>
            <xsl:when test="$langval='teutila cuicatec'">cut</xsl:when>
            <xsl:when test="$langval='tai ya'">cuu</xsl:when>
            <xsl:when test="$langval='cuvok'">cuv</xsl:when>
            <xsl:when test="$langval='chukwa'">cuw</xsl:when>
            <xsl:when test="$langval='tepeuxila cuicatec'">cux</xsl:when>
            <xsl:when test="$langval='chug'">cvg</xsl:when>
            <xsl:when test="$langval='valle nacional chinantec'">cvn</xsl:when>
            <xsl:when test="$langval='kabwa'">cwa</xsl:when>
            <xsl:when test="$langval='maindo'">cwb</xsl:when>
            <xsl:when test="$langval='woods cree'">cwd</xsl:when>
            <xsl:when test="$langval='kwere'">cwe</xsl:when>
            <xsl:when test="$langval='chewong'">cwg</xsl:when>
            <xsl:when test="$langval='kuwaataay'">cwt</xsl:when>
            <xsl:when test="$langval='nopala chatino'">cya</xsl:when>
            <xsl:when test="$langval='cayubaba'">cyb</xsl:when>
            <xsl:when test="$langval='welsh'">cym</xsl:when>
            <xsl:when test="$langval='cuyonon'">cyo</xsl:when>
            <xsl:when test="$langval='huizhou chinese'">czh</xsl:when>
            <xsl:when test="$langval='knaanic'">czk</xsl:when>
            <xsl:when test="$langval='zenzontepec chatino'">czn</xsl:when>
            <xsl:when test="$langval='min zhong chinese'">czo</xsl:when>
            <xsl:when test="$langval='zotung chin'">czt</xsl:when>
            <xsl:when test="$langval='dangaléat'">daa</xsl:when>
            <xsl:when test="$langval='dambi'">dac</xsl:when>
            <xsl:when test="$langval='marik'">dad</xsl:when>
            <xsl:when test="$langval='duupa'">dae</xsl:when>
            <xsl:when test="$langval='dagbani'">dag</xsl:when>
            <xsl:when test="$langval='gwahatike'">dah</xsl:when>
            <xsl:when test="$langval='day'">dai</xsl:when>
            <xsl:when test="$langval='dar fur daju'">daj</xsl:when>
            <xsl:when test="$langval='dakota'">dak</xsl:when>
            <xsl:when test="$langval='dahalo'">dal</xsl:when>
            <xsl:when test="$langval='damakawa'">dam</xsl:when>
            <xsl:when test="$langval='danish'">dan</xsl:when>
            <xsl:when test="$langval='daai chin'">dao</xsl:when>
            <xsl:when test="$langval='dandami maria'">daq</xsl:when>
            <xsl:when test="$langval='dargwa'">dar</xsl:when>
            <xsl:when test="$langval='daho-doo'">das</xsl:when>
            <xsl:when test="$langval='dar sila daju'">dau</xsl:when>
            <xsl:when test="$langval='taita'">dav</xsl:when>
            <xsl:when test="$langval='davawenyo'">daw</xsl:when>
            <xsl:when test="$langval='dayi'">dax</xsl:when>
            <xsl:when test="$langval='dao'">daz</xsl:when>
            <xsl:when test="$langval='bangime'">dba</xsl:when>
            <xsl:when test="$langval='deno'">dbb</xsl:when>
            <xsl:when test="$langval='dadiya'">dbd</xsl:when>
            <xsl:when test="$langval='dabe'">dbe</xsl:when>
            <xsl:when test="$langval='edopi'">dbf</xsl:when>
            <xsl:when test="$langval='dogul dom dogon'">dbg</xsl:when>
            <xsl:when test="$langval='doka'">dbi</xsl:when>
            <xsl:when test="$langval='ida''an'">dbj</xsl:when>
            <xsl:when test="$langval='dyirbal'">dbl</xsl:when>
            <xsl:when test="$langval='duguri'">dbm</xsl:when>
            <xsl:when test="$langval='duriankere'">dbn</xsl:when>
            <xsl:when test="$langval='dulbu'">dbo</xsl:when>
            <xsl:when test="$langval='duwai'">dbp</xsl:when>
            <xsl:when test="$langval='daba'">dbq</xsl:when>
            <xsl:when test="$langval='dabarre'">dbr</xsl:when>
            <xsl:when test="$langval='ben tey dogon'">dbt</xsl:when>
            <xsl:when test="$langval='bondum dom dogon'">dbu</xsl:when>
            <xsl:when test="$langval='dungu'">dbv</xsl:when>
            <xsl:when test="$langval='bankan tey dogon'">dbw</xsl:when>
            <xsl:when test="$langval='dibiyaso'">dby</xsl:when>
            <xsl:when test="$langval='deccan'">dcc</xsl:when>
            <xsl:when test="$langval='negerhollands'">dcr</xsl:when>
            <xsl:when test="$langval='dadi dadi'">dda</xsl:when>
            <xsl:when test="$langval='dongotono'">ddd</xsl:when>
            <xsl:when test="$langval='doondo'">dde</xsl:when>
            <xsl:when test="$langval='fataluku'">ddg</xsl:when>
            <xsl:when test="$langval='west goodenough'">ddi</xsl:when>
            <xsl:when test="$langval='jaru'">ddj</xsl:when>
            <xsl:when test="$langval='dendi (benin)'">ddn</xsl:when>
            <xsl:when test="$langval='dido'">ddo</xsl:when>
            <xsl:when test="$langval='dhudhuroa'">ddr</xsl:when>
            <xsl:when test="$langval='donno so dogon'">dds</xsl:when>
            <xsl:when test="$langval='dawera-daweloor'">ddw</xsl:when>
            <xsl:when test="$langval='dagik'">dec</xsl:when>
            <xsl:when test="$langval='dedua'">ded</xsl:when>
            <xsl:when test="$langval='dewoin'">dee</xsl:when>
            <xsl:when test="$langval='dezfuli'">def</xsl:when>
            <xsl:when test="$langval='degema'">deg</xsl:when>
            <xsl:when test="$langval='dehwari'">deh</xsl:when>
            <xsl:when test="$langval='demisa'">dei</xsl:when>
            <xsl:when test="$langval='dek'">dek</xsl:when>
            <xsl:when test="$langval='delaware'">del</xsl:when>
            <xsl:when test="$langval='dem'">dem</xsl:when>
            <xsl:when test="$langval='slave (athapascan)'">den</xsl:when>
            <xsl:when test="$langval='pidgin delaware'">dep</xsl:when>
            <xsl:when test="$langval='dendi (central african republic)'">deq</xsl:when>
            <xsl:when test="$langval='deori'">der</xsl:when>
            <xsl:when test="$langval='desano'">des</xsl:when>
            <xsl:when test="$langval='german'">deu</xsl:when>
            <xsl:when test="$langval='domung'">dev</xsl:when>
            <xsl:when test="$langval='dengese'">dez</xsl:when>
            <xsl:when test="$langval='southern dagaare'">dga</xsl:when>
            <xsl:when test="$langval='bunoge dogon'">dgb</xsl:when>
            <xsl:when test="$langval='casiguran dumagat agta'">dgc</xsl:when>
            <xsl:when test="$langval='dagaari dioula'">dgd</xsl:when>
            <xsl:when test="$langval='degenan'">dge</xsl:when>
            <xsl:when test="$langval='doga'">dgg</xsl:when>
            <xsl:when test="$langval='dghwede'">dgh</xsl:when>
            <xsl:when test="$langval='northern dagara'">dgi</xsl:when>
            <xsl:when test="$langval='dagba'">dgk</xsl:when>
            <xsl:when test="$langval='andaandi'">dgl</xsl:when>
            <xsl:when test="$langval='dagoman'">dgn</xsl:when>
            <xsl:when test="$langval='dogri (individual language)'">dgo</xsl:when>
            <xsl:when test="$langval='dogrib'">dgr</xsl:when>
            <xsl:when test="$langval='dogoso'">dgs</xsl:when>
            <xsl:when test="$langval='ndra''ngith'">dgt</xsl:when>
            <xsl:when test="$langval='degaru'">dgu</xsl:when>
            <xsl:when test="$langval='daungwurrung'">dgw</xsl:when>
            <xsl:when test="$langval='doghoro'">dgx</xsl:when>
            <xsl:when test="$langval='daga'">dgz</xsl:when>
            <xsl:when test="$langval='dhundari'">dhd</xsl:when>
            <xsl:when test="$langval='dhangu'">dhg</xsl:when>
            <xsl:when test="$langval='dhimal'">dhi</xsl:when>
            <xsl:when test="$langval='dhalandji'">dhl</xsl:when>
            <xsl:when test="$langval='zemba'">dhm</xsl:when>
            <xsl:when test="$langval='dhanki'">dhn</xsl:when>
            <xsl:when test="$langval='dhodia'">dho</xsl:when>
            <xsl:when test="$langval='dhargari'">dhr</xsl:when>
            <xsl:when test="$langval='dhaiso'">dhs</xsl:when>
            <xsl:when test="$langval='dhurga'">dhu</xsl:when>
            <xsl:when test="$langval='dehu'">dhv</xsl:when>
            <xsl:when test="$langval='dhanwar (nepal)'">dhw</xsl:when>
            <xsl:when test="$langval='dhungaloo'">dhx</xsl:when>
            <xsl:when test="$langval='dia'">dia</xsl:when>
            <xsl:when test="$langval='south central dinka'">dib</xsl:when>
            <xsl:when test="$langval='lakota dida'">dic</xsl:when>
            <xsl:when test="$langval='didinga'">did</xsl:when>
            <xsl:when test="$langval='dieri'">dif</xsl:when>
            <xsl:when test="$langval='digo'">dig</xsl:when>
            <xsl:when test="$langval='kumiai'">dih</xsl:when>
            <xsl:when test="$langval='dimbong'">dii</xsl:when>
            <xsl:when test="$langval='dai'">dij</xsl:when>
            <xsl:when test="$langval='southwestern dinka'">dik</xsl:when>
            <xsl:when test="$langval='dilling'">dil</xsl:when>
            <xsl:when test="$langval='dime'">dim</xsl:when>
            <xsl:when test="$langval='dinka'">din</xsl:when>
            <xsl:when test="$langval='dibo'">dio</xsl:when>
            <xsl:when test="$langval='northeastern dinka'">dip</xsl:when>
            <xsl:when test="$langval='dimli (individual language)'">diq</xsl:when>
            <xsl:when test="$langval='dirim'">dir</xsl:when>
            <xsl:when test="$langval='dimasa'">dis</xsl:when>
            <xsl:when test="$langval='dirari'">dit</xsl:when>
            <xsl:when test="$langval='diriku'">diu</xsl:when>
            <xsl:when test="$langval='dhivehi'">div</xsl:when>
            <xsl:when test="$langval='northwestern dinka'">diw</xsl:when>
            <xsl:when test="$langval='dixon reef'">dix</xsl:when>
            <xsl:when test="$langval='diuwe'">diy</xsl:when>
            <xsl:when test="$langval='ding'">diz</xsl:when>
            <xsl:when test="$langval='djadjawurrung'">dja</xsl:when>
            <xsl:when test="$langval='djinba'">djb</xsl:when>
            <xsl:when test="$langval='dar daju daju'">djc</xsl:when>
            <xsl:when test="$langval='djamindjung'">djd</xsl:when>
            <xsl:when test="$langval='zarma'">dje</xsl:when>
            <xsl:when test="$langval='djangun'">djf</xsl:when>
            <xsl:when test="$langval='djinang'">dji</xsl:when>
            <xsl:when test="$langval='djeebbana'">djj</xsl:when>
            <xsl:when test="$langval='eastern maroon creole'">djk</xsl:when>
            <xsl:when test="$langval='jamsay dogon'">djm</xsl:when>
            <xsl:when test="$langval='djauan'">djn</xsl:when>
            <xsl:when test="$langval='jangkang'">djo</xsl:when>
            <xsl:when test="$langval='djambarrpuyngu'">djr</xsl:when>
            <xsl:when test="$langval='kapriman'">dju</xsl:when>
            <xsl:when test="$langval='djawi'">djw</xsl:when>
            <xsl:when test="$langval='dakpakha'">dka</xsl:when>
            <xsl:when test="$langval='dakka'">dkk</xsl:when>
            <xsl:when test="$langval='kuijau'">dkr</xsl:when>
            <xsl:when test="$langval='southeastern dinka'">dks</xsl:when>
            <xsl:when test="$langval='mazagway'">dkx</xsl:when>
            <xsl:when test="$langval='dolgan'">dlg</xsl:when>
            <xsl:when test="$langval='dahalik'">dlk</xsl:when>
            <xsl:when test="$langval='dalmatian'">dlm</xsl:when>
            <xsl:when test="$langval='darlong'">dln</xsl:when>
            <xsl:when test="$langval='duma'">dma</xsl:when>
            <xsl:when test="$langval='mombo dogon'">dmb</xsl:when>
            <xsl:when test="$langval='gavak'">dmc</xsl:when>
            <xsl:when test="$langval='madhi madhi'">dmd</xsl:when>
            <xsl:when test="$langval='dugwor'">dme</xsl:when>
            <xsl:when test="$langval='upper kinabatangan'">dmg</xsl:when>
            <xsl:when test="$langval='domaaki'">dmk</xsl:when>
            <xsl:when test="$langval='dameli'">dml</xsl:when>
            <xsl:when test="$langval='dama'">dmm</xsl:when>
            <xsl:when test="$langval='kemedzung'">dmo</xsl:when>
            <xsl:when test="$langval='east damar'">dmr</xsl:when>
            <xsl:when test="$langval='dampelas'">dms</xsl:when>
            <xsl:when test="$langval='dubu'">dmu</xsl:when>
            <xsl:when test="$langval='dumpas'">dmv</xsl:when>
            <xsl:when test="$langval='mudburra'">dmw</xsl:when>
            <xsl:when test="$langval='dema'">dmx</xsl:when>
            <xsl:when test="$langval='demta'">dmy</xsl:when>
            <xsl:when test="$langval='upper grand valley dani'">dna</xsl:when>
            <xsl:when test="$langval='daonda'">dnd</xsl:when>
            <xsl:when test="$langval='ndendeule'">dne</xsl:when>
            <xsl:when test="$langval='dungan'">dng</xsl:when>
            <xsl:when test="$langval='lower grand valley dani'">dni</xsl:when>
            <xsl:when test="$langval='dan'">dnj</xsl:when>
            <xsl:when test="$langval='dengka'">dnk</xsl:when>
            <xsl:when test="$langval='dzùùngoo'">dnn</xsl:when>
            <xsl:when test="$langval='danaru'">dnr</xsl:when>
            <xsl:when test="$langval='mid grand valley dani'">dnt</xsl:when>
            <xsl:when test="$langval='danau'">dnu</xsl:when>
            <xsl:when test="$langval='danu'">dnv</xsl:when>
            <xsl:when test="$langval='western dani'">dnw</xsl:when>
            <xsl:when test="$langval='dení'">dny</xsl:when>
            <xsl:when test="$langval='dom'">doa</xsl:when>
            <xsl:when test="$langval='dobu'">dob</xsl:when>
            <xsl:when test="$langval='northern dong'">doc</xsl:when>
            <xsl:when test="$langval='doe'">doe</xsl:when>
            <xsl:when test="$langval='domu'">dof</xsl:when>
            <xsl:when test="$langval='dong'">doh</xsl:when>
            <xsl:when test="$langval='dogri (macrolanguage)'">doi</xsl:when>
            <xsl:when test="$langval='dondo'">dok</xsl:when>
            <xsl:when test="$langval='doso'">dol</xsl:when>
            <xsl:when test="$langval='toura (papua new guinea)'">don</xsl:when>
            <xsl:when test="$langval='dongo'">doo</xsl:when>
            <xsl:when test="$langval='lukpa'">dop</xsl:when>
            <xsl:when test="$langval='dominican sign language'">doq</xsl:when>
            <xsl:when test="$langval='dori''o'">dor</xsl:when>
            <xsl:when test="$langval='dogosé'">dos</xsl:when>
            <xsl:when test="$langval='dass'">dot</xsl:when>
            <xsl:when test="$langval='dombe'">dov</xsl:when>
            <xsl:when test="$langval='doyayo'">dow</xsl:when>
            <xsl:when test="$langval='bussa'">dox</xsl:when>
            <xsl:when test="$langval='dompo'">doy</xsl:when>
            <xsl:when test="$langval='dorze'">doz</xsl:when>
            <xsl:when test="$langval='papar'">dpp</xsl:when>
            <xsl:when test="$langval='dair'">drb</xsl:when>
            <xsl:when test="$langval='minderico'">drc</xsl:when>
            <xsl:when test="$langval='darmiya'">drd</xsl:when>
            <xsl:when test="$langval='dolpo'">dre</xsl:when>
            <xsl:when test="$langval='rungus'">drg</xsl:when>
            <xsl:when test="$langval='c''lela'">dri</xsl:when>
            <xsl:when test="$langval='paakantyi'">drl</xsl:when>
            <xsl:when test="$langval='west damar'">drn</xsl:when>
            <xsl:when test="$langval='daro-matu melanau'">dro</xsl:when>
            <xsl:when test="$langval='dura'">drq</xsl:when>
            <xsl:when test="$langval='dororo'">drr</xsl:when>
            <xsl:when test="$langval='gedeo'">drs</xsl:when>
            <xsl:when test="$langval='drents'">drt</xsl:when>
            <xsl:when test="$langval='rukai'">dru</xsl:when>
            <xsl:when test="$langval='darai'">dry</xsl:when>
            <xsl:when test="$langval='lower sorbian'">dsb</xsl:when>
            <xsl:when test="$langval='dutch sign language'">dse</xsl:when>
            <xsl:when test="$langval='daasanach'">dsh</xsl:when>
            <xsl:when test="$langval='disa'">dsi</xsl:when>
            <xsl:when test="$langval='danish sign language'">dsl</xsl:when>
            <xsl:when test="$langval='dusner'">dsn</xsl:when>
            <xsl:when test="$langval='desiya'">dso</xsl:when>
            <xsl:when test="$langval='tadaksahak'">dsq</xsl:when>
            <xsl:when test="$langval='daur'">dta</xsl:when>
            <xsl:when test="$langval='labuk-kinabatangan kadazan'">dtb</xsl:when>
            <xsl:when test="$langval='ditidaht'">dtd</xsl:when>
            <xsl:when test="$langval='adithinngithigh'">dth</xsl:when>
            <xsl:when test="$langval='ana tinga dogon'">dti</xsl:when>
            <xsl:when test="$langval='tene kan dogon'">dtk</xsl:when>
            <xsl:when test="$langval='tomo kan dogon'">dtm</xsl:when>
            <xsl:when test="$langval='tommo so dogon'">dto</xsl:when>
            <xsl:when test="$langval='central dusun'">dtp</xsl:when>
            <xsl:when test="$langval='lotud'">dtr</xsl:when>
            <xsl:when test="$langval='toro so dogon'">dts</xsl:when>
            <xsl:when test="$langval='toro tegu dogon'">dtt</xsl:when>
            <xsl:when test="$langval='tebul ure dogon'">dtu</xsl:when>
            <xsl:when test="$langval='dotyali'">dty</xsl:when>
            <xsl:when test="$langval='duala'">dua</xsl:when>
            <xsl:when test="$langval='dubli'">dub</xsl:when>
            <xsl:when test="$langval='duna'">duc</xsl:when>
            <xsl:when test="$langval='hun-saare'">dud</xsl:when>
            <xsl:when test="$langval='umiray dumaget agta'">due</xsl:when>
            <xsl:when test="$langval='dumbea'">duf</xsl:when>
            <xsl:when test="$langval='duruma'">dug</xsl:when>
            <xsl:when test="$langval='dungra bhil'">duh</xsl:when>
            <xsl:when test="$langval='dumun'">dui</xsl:when>
            <xsl:when test="$langval='dhuwal'">duj</xsl:when>
            <xsl:when test="$langval='uyajitaya'">duk</xsl:when>
            <xsl:when test="$langval='alabat island agta'">dul</xsl:when>
            <xsl:when test="$langval='middle dutch (ca. 1050-1350)'">dum</xsl:when>
            <xsl:when test="$langval='dusun deyah'">dun</xsl:when>
            <xsl:when test="$langval='dupaninan agta'">duo</xsl:when>
            <xsl:when test="$langval='duano'">dup</xsl:when>
            <xsl:when test="$langval='dusun malang'">duq</xsl:when>
            <xsl:when test="$langval='dii'">dur</xsl:when>
            <xsl:when test="$langval='dumi'">dus</xsl:when>
            <xsl:when test="$langval='drung'">duu</xsl:when>
            <xsl:when test="$langval='duvle'">duv</xsl:when>
            <xsl:when test="$langval='dusun witu'">duw</xsl:when>
            <xsl:when test="$langval='duungooma'">dux</xsl:when>
            <xsl:when test="$langval='dicamay agta'">duy</xsl:when>
            <xsl:when test="$langval='duli'">duz</xsl:when>
            <xsl:when test="$langval='duau'">dva</xsl:when>
            <xsl:when test="$langval='diri'">dwa</xsl:when>
            <xsl:when test="$langval='dawro'">dwr</xsl:when>
            <xsl:when test="$langval='dutton world speedwords'">dws</xsl:when>
            <xsl:when test="$langval='dawawa'">dww</xsl:when>
            <xsl:when test="$langval='dyan'">dya</xsl:when>
            <xsl:when test="$langval='dyaberdyaber'">dyb</xsl:when>
            <xsl:when test="$langval='dyugun'">dyd</xsl:when>
            <xsl:when test="$langval='villa viciosa agta'">dyg</xsl:when>
            <xsl:when test="$langval='djimini senoufo'">dyi</xsl:when>
            <xsl:when test="$langval='yanda dom dogon'">dym</xsl:when>
            <xsl:when test="$langval='dyangadi'">dyn</xsl:when>
            <xsl:when test="$langval='jola-fonyi'">dyo</xsl:when>
            <xsl:when test="$langval='dyula'">dyu</xsl:when>
            <xsl:when test="$langval='dyaabugay'">dyy</xsl:when>
            <xsl:when test="$langval='tunzu'">dza</xsl:when>
            <xsl:when test="$langval='djiwarli'">dze</xsl:when>
            <xsl:when test="$langval='dazaga'">dzg</xsl:when>
            <xsl:when test="$langval='dzalakha'">dzl</xsl:when>
            <xsl:when test="$langval='dzando'">dzn</xsl:when>
            <xsl:when test="$langval='dzongkha'">dzo</xsl:when>
            <xsl:when test="$langval='karenggapa'">eaa</xsl:when>
            <xsl:when test="$langval='ebughu'">ebg</xsl:when>
            <xsl:when test="$langval='eastern bontok'">ebk</xsl:when>
            <xsl:when test="$langval='teke-ebo'">ebo</xsl:when>
            <xsl:when test="$langval='ebrié'">ebr</xsl:when>
            <xsl:when test="$langval='embu'">ebu</xsl:when>
            <xsl:when test="$langval='eteocretan'">ecr</xsl:when>
            <xsl:when test="$langval='ecuadorian sign language'">ecs</xsl:when>
            <xsl:when test="$langval='eteocypriot'">ecy</xsl:when>
            <xsl:when test="$langval='e'">eee</xsl:when>
            <xsl:when test="$langval='efai'">efa</xsl:when>
            <xsl:when test="$langval='efe'">efe</xsl:when>
            <xsl:when test="$langval='efik'">efi</xsl:when>
            <xsl:when test="$langval='ega'">ega</xsl:when>
            <xsl:when test="$langval='emilian'">egl</xsl:when>
            <xsl:when test="$langval='eggon'">ego</xsl:when>
            <xsl:when test="$langval='egyptian (ancient)'">egy</xsl:when>
            <xsl:when test="$langval='ehueun'">ehu</xsl:when>
            <xsl:when test="$langval='eipomek'">eip</xsl:when>
            <xsl:when test="$langval='eitiep'">eit</xsl:when>
            <xsl:when test="$langval='askopan'">eiv</xsl:when>
            <xsl:when test="$langval='ejamat'">eja</xsl:when>
            <xsl:when test="$langval='ekajuk'">eka</xsl:when>
            <xsl:when test="$langval='eastern karnic'">ekc</xsl:when>
            <xsl:when test="$langval='ekit'">eke</xsl:when>
            <xsl:when test="$langval='ekari'">ekg</xsl:when>
            <xsl:when test="$langval='eki'">eki</xsl:when>
            <xsl:when test="$langval='standard estonian'">ekk</xsl:when>
            <xsl:when test="$langval='kol (bangladesh)'">ekl</xsl:when>
            <xsl:when test="$langval='elip'">ekm</xsl:when>
            <xsl:when test="$langval='koti'">eko</xsl:when>
            <xsl:when test="$langval='ekpeye'">ekp</xsl:when>
            <xsl:when test="$langval='yace'">ekr</xsl:when>
            <xsl:when test="$langval='eastern kayah'">eky</xsl:when>
            <xsl:when test="$langval='elepi'">ele</xsl:when>
            <xsl:when test="$langval='el hugeirat'">elh</xsl:when>
            <xsl:when test="$langval='nding'">eli</xsl:when>
            <xsl:when test="$langval='elkei'">elk</xsl:when>
            <xsl:when test="$langval='modern greek (1453-)'">ell</xsl:when>
            <xsl:when test="$langval='eleme'">elm</xsl:when>
            <xsl:when test="$langval='el molo'">elo</xsl:when>
            <xsl:when test="$langval='elu'">elu</xsl:when>
            <xsl:when test="$langval='elamite'">elx</xsl:when>
            <xsl:when test="$langval='emai-iuleha-ora'">ema</xsl:when>
            <xsl:when test="$langval='embaloh'">emb</xsl:when>
            <xsl:when test="$langval='emerillon'">eme</xsl:when>
            <xsl:when test="$langval='eastern meohang'">emg</xsl:when>
            <xsl:when test="$langval='mussau-emira'">emi</xsl:when>
            <xsl:when test="$langval='eastern maninkakan'">emk</xsl:when>
            <xsl:when test="$langval='mamulique'">emm</xsl:when>
            <xsl:when test="$langval='eman'">emn</xsl:when>
            <xsl:when test="$langval='northern emberá'">emp</xsl:when>
            <xsl:when test="$langval='pacific gulf yupik'">ems</xsl:when>
            <xsl:when test="$langval='eastern muria'">emu</xsl:when>
            <xsl:when test="$langval='emplawas'">emw</xsl:when>
            <xsl:when test="$langval='erromintxela'">emx</xsl:when>
            <xsl:when test="$langval='epigraphic mayan'">emy</xsl:when>
            <xsl:when test="$langval='apali'">ena</xsl:when>
            <xsl:when test="$langval='markweeta'">enb</xsl:when>
            <xsl:when test="$langval='en'">enc</xsl:when>
            <xsl:when test="$langval='ende'">end</xsl:when>
            <xsl:when test="$langval='forest enets'">enf</xsl:when>
            <xsl:when test="$langval='english'">eng</xsl:when>
            <xsl:when test="$langval='tundra enets'">enh</xsl:when>
            <xsl:when test="$langval='enlhet'">enl</xsl:when>
            <xsl:when test="$langval='middle english (1100-1500)'">enm</xsl:when>
            <xsl:when test="$langval='engenni'">enn</xsl:when>
            <xsl:when test="$langval='enggano'">eno</xsl:when>
            <xsl:when test="$langval='enga'">enq</xsl:when>
            <xsl:when test="$langval='emumu'">enr</xsl:when>
            <xsl:when test="$langval='enu'">enu</xsl:when>
            <xsl:when test="$langval='enwan (edu state)'">env</xsl:when>
            <xsl:when test="$langval='enwan (akwa ibom state)'">enw</xsl:when>
            <xsl:when test="$langval='enxet'">enx</xsl:when>
            <xsl:when test="$langval='beti (côte d''ivoire)'">eot</xsl:when>
            <xsl:when test="$langval='epie'">epi</xsl:when>
            <xsl:when test="$langval='esperanto'">epo</xsl:when>
            <xsl:when test="$langval='eravallan'">era</xsl:when>
            <xsl:when test="$langval='sie'">erg</xsl:when>
            <xsl:when test="$langval='eruwa'">erh</xsl:when>
            <xsl:when test="$langval='ogea'">eri</xsl:when>
            <xsl:when test="$langval='south efate'">erk</xsl:when>
            <xsl:when test="$langval='horpa'">ero</xsl:when>
            <xsl:when test="$langval='erre'">err</xsl:when>
            <xsl:when test="$langval='ersu'">ers</xsl:when>
            <xsl:when test="$langval='eritai'">ert</xsl:when>
            <xsl:when test="$langval='erokwanas'">erw</xsl:when>
            <xsl:when test="$langval='ese ejja'">ese</xsl:when>
            <xsl:when test="$langval='eshtehardi'">esh</xsl:when>
            <xsl:when test="$langval='north alaskan inupiatun'">esi</xsl:when>
            <xsl:when test="$langval='northwest alaska inupiatun'">esk</xsl:when>
            <xsl:when test="$langval='egypt sign language'">esl</xsl:when>
            <xsl:when test="$langval='esuma'">esm</xsl:when>
            <xsl:when test="$langval='salvadoran sign language'">esn</xsl:when>
            <xsl:when test="$langval='estonian sign language'">eso</xsl:when>
            <xsl:when test="$langval='esselen'">esq</xsl:when>
            <xsl:when test="$langval='central siberian yupik'">ess</xsl:when>
            <xsl:when test="$langval='estonian'">est</xsl:when>
            <xsl:when test="$langval='central yupik'">esu</xsl:when>
            <xsl:when test="$langval='eskayan'">esy</xsl:when>
            <xsl:when test="$langval='etebi'">etb</xsl:when>
            <xsl:when test="$langval='etchemin'">etc</xsl:when>
            <xsl:when test="$langval='ethiopian sign language'">eth</xsl:when>
            <xsl:when test="$langval='eton (vanuatu)'">etn</xsl:when>
            <xsl:when test="$langval='eton (cameroon)'">eto</xsl:when>
            <xsl:when test="$langval='edolo'">etr</xsl:when>
            <xsl:when test="$langval='yekhee'">ets</xsl:when>
            <xsl:when test="$langval='etruscan'">ett</xsl:when>
            <xsl:when test="$langval='ejagham'">etu</xsl:when>
            <xsl:when test="$langval='eten'">etx</xsl:when>
            <xsl:when test="$langval='semimi'">etz</xsl:when>
            <xsl:when test="$langval='basque'">eus</xsl:when>
            <xsl:when test="$langval='even'">eve</xsl:when>
            <xsl:when test="$langval='uvbie'">evh</xsl:when>
            <xsl:when test="$langval='evenki'">evn</xsl:when>
            <xsl:when test="$langval='ewe'">ewe</xsl:when>
            <xsl:when test="$langval='ewondo'">ewo</xsl:when>
            <xsl:when test="$langval='extremaduran'">ext</xsl:when>
            <xsl:when test="$langval='eyak'">eya</xsl:when>
            <xsl:when test="$langval='keiyo'">eyo</xsl:when>
            <xsl:when test="$langval='ezaa'">eza</xsl:when>
            <xsl:when test="$langval='uzekwe'">eze</xsl:when>
            <xsl:when test="$langval='fasu'">faa</xsl:when>
            <xsl:when test="$langval='fa d''ambu'">fab</xsl:when>
            <xsl:when test="$langval='wagi'">fad</xsl:when>
            <xsl:when test="$langval='fagani'">faf</xsl:when>
            <xsl:when test="$langval='finongan'">fag</xsl:when>
            <xsl:when test="$langval='baissa fali'">fah</xsl:when>
            <xsl:when test="$langval='faiwol'">fai</xsl:when>
            <xsl:when test="$langval='faita'">faj</xsl:when>
            <xsl:when test="$langval='fang (cameroon)'">fak</xsl:when>
            <xsl:when test="$langval='south fali'">fal</xsl:when>
            <xsl:when test="$langval='fam'">fam</xsl:when>
            <xsl:when test="$langval='fang (equatorial guinea)'">fan</xsl:when>
            <xsl:when test="$langval='faroese'">fao</xsl:when>
            <xsl:when test="$langval='palor'">fap</xsl:when>
            <xsl:when test="$langval='fataleka'">far</xsl:when>
            <xsl:when test="$langval='persian'">fas</xsl:when>
            <xsl:when test="$langval='fanti'">fat</xsl:when>
            <xsl:when test="$langval='fayu'">fau</xsl:when>
            <xsl:when test="$langval='fala'">fax</xsl:when>
            <xsl:when test="$langval='southwestern fars'">fay</xsl:when>
            <xsl:when test="$langval='northwestern fars'">faz</xsl:when>
            <xsl:when test="$langval='west albay bikol'">fbl</xsl:when>
            <xsl:when test="$langval='quebec sign language'">fcs</xsl:when>
            <xsl:when test="$langval='feroge'">fer</xsl:when>
            <xsl:when test="$langval='foia foia'">ffi</xsl:when>
            <xsl:when test="$langval='maasina fulfulde'">ffm</xsl:when>
            <xsl:when test="$langval='fongoro'">fgr</xsl:when>
            <xsl:when test="$langval='nobiin'">fia</xsl:when>
            <xsl:when test="$langval='fyer'">fie</xsl:when>
            <xsl:when test="$langval='fijian'">fij</xsl:when>
            <xsl:when test="$langval='filipino'">fil</xsl:when>
            <xsl:when test="$langval='finnish'">fin</xsl:when>
            <xsl:when test="$langval='fipa'">fip</xsl:when>
            <xsl:when test="$langval='firan'">fir</xsl:when>
            <xsl:when test="$langval='tornedalen finnish'">fit</xsl:when>
            <xsl:when test="$langval='fiwaga'">fiw</xsl:when>
            <xsl:when test="$langval='kirya-konzəl'">fkk</xsl:when>
            <xsl:when test="$langval='kven finnish'">fkv</xsl:when>
            <xsl:when test="$langval='kalispel-pend d''oreille'">fla</xsl:when>
            <xsl:when test="$langval='foau'">flh</xsl:when>
            <xsl:when test="$langval='fali'">fli</xsl:when>
            <xsl:when test="$langval='north fali'">fll</xsl:when>
            <xsl:when test="$langval='flinders island'">fln</xsl:when>
            <xsl:when test="$langval='fuliiru'">flr</xsl:when>
            <xsl:when test="$langval='flaaitaal'">fly</xsl:when>
            <xsl:when test="$langval='fe''fe'''">fmp</xsl:when>
            <xsl:when test="$langval='far western muria'">fmu</xsl:when>
            <xsl:when test="$langval='fanagalo'">fng</xsl:when>
            <xsl:when test="$langval='fania'">fni</xsl:when>
            <xsl:when test="$langval='foodo'">fod</xsl:when>
            <xsl:when test="$langval='foi'">foi</xsl:when>
            <xsl:when test="$langval='foma'">fom</xsl:when>
            <xsl:when test="$langval='fon'">fon</xsl:when>
            <xsl:when test="$langval='fore'">for</xsl:when>
            <xsl:when test="$langval='siraya'">fos</xsl:when>
            <xsl:when test="$langval='fernando po creole english'">fpe</xsl:when>
            <xsl:when test="$langval='fas'">fqs</xsl:when>
            <xsl:when test="$langval='french'">fra</xsl:when>
            <xsl:when test="$langval='cajun french'">frc</xsl:when>
            <xsl:when test="$langval='fordata'">frd</xsl:when>
            <xsl:when test="$langval='frankish'">frk</xsl:when>
            <xsl:when test="$langval='middle french (ca. 1400-1600)'">frm</xsl:when>
            <xsl:when test="$langval='old french (842-ca. 1400)'">fro</xsl:when>
            <xsl:when test="$langval='arpitan'">frp</xsl:when>
            <xsl:when test="$langval='forak'">frq</xsl:when>
            <xsl:when test="$langval='northern frisian'">frr</xsl:when>
            <xsl:when test="$langval='eastern frisian'">frs</xsl:when>
            <xsl:when test="$langval='fortsenal'">frt</xsl:when>
            <xsl:when test="$langval='western frisian'">fry</xsl:when>
            <xsl:when test="$langval='finnish sign language'">fse</xsl:when>
            <xsl:when test="$langval='french sign language'">fsl</xsl:when>
            <xsl:when test="$langval='finland-swedish sign language'">fss</xsl:when>
            <xsl:when test="$langval='adamawa fulfulde'">fub</xsl:when>
            <xsl:when test="$langval='pulaar'">fuc</xsl:when>
            <xsl:when test="$langval='east futuna'">fud</xsl:when>
            <xsl:when test="$langval='borgu fulfulde'">fue</xsl:when>
            <xsl:when test="$langval='pular'">fuf</xsl:when>
            <xsl:when test="$langval='western niger fulfulde'">fuh</xsl:when>
            <xsl:when test="$langval='bagirmi fulfulde'">fui</xsl:when>
            <xsl:when test="$langval='ko'">fuj</xsl:when>
            <xsl:when test="$langval='fulah'">ful</xsl:when>
            <xsl:when test="$langval='fum'">fum</xsl:when>
            <xsl:when test="$langval='fulniô'">fun</xsl:when>
            <xsl:when test="$langval='central-eastern niger fulfulde'">fuq</xsl:when>
            <xsl:when test="$langval='friulian'">fur</xsl:when>
            <xsl:when test="$langval='futuna-aniwa'">fut</xsl:when>
            <xsl:when test="$langval='furu'">fuu</xsl:when>
            <xsl:when test="$langval='nigerian fulfulde'">fuv</xsl:when>
            <xsl:when test="$langval='fuyug'">fuy</xsl:when>
            <xsl:when test="$langval='fur'">fvr</xsl:when>
            <xsl:when test="$langval='fwâi'">fwa</xsl:when>
            <xsl:when test="$langval='fwe'">fwe</xsl:when>
            <xsl:when test="$langval='ga'">gaa</xsl:when>
            <xsl:when test="$langval='gabri'">gab</xsl:when>
            <xsl:when test="$langval='mixed great andamanese'">gac</xsl:when>
            <xsl:when test="$langval='gaddang'">gad</xsl:when>
            <xsl:when test="$langval='guarequena'">gae</xsl:when>
            <xsl:when test="$langval='gende'">gaf</xsl:when>
            <xsl:when test="$langval='gagauz'">gag</xsl:when>
            <xsl:when test="$langval='alekano'">gah</xsl:when>
            <xsl:when test="$langval='borei'">gai</xsl:when>
            <xsl:when test="$langval='gadsup'">gaj</xsl:when>
            <xsl:when test="$langval='gamkonora'">gak</xsl:when>
            <xsl:when test="$langval='galolen'">gal</xsl:when>
            <xsl:when test="$langval='kandawo'">gam</xsl:when>
            <xsl:when test="$langval='gan chinese'">gan</xsl:when>
            <xsl:when test="$langval='gants'">gao</xsl:when>
            <xsl:when test="$langval='gal'">gap</xsl:when>
            <xsl:when test="$langval='gata'''">gaq</xsl:when>
            <xsl:when test="$langval='galeya'">gar</xsl:when>
            <xsl:when test="$langval='adiwasi garasia'">gas</xsl:when>
            <xsl:when test="$langval='kenati'">gat</xsl:when>
            <xsl:when test="$langval='mudhili gadaba'">gau</xsl:when>
            <xsl:when test="$langval='nobonob'">gaw</xsl:when>
            <xsl:when test="$langval='borana-arsi-guji oromo'">gax</xsl:when>
            <xsl:when test="$langval='gayo'">gay</xsl:when>
            <xsl:when test="$langval='west central oromo'">gaz</xsl:when>
            <xsl:when test="$langval='gbaya (central african republic)'">gba</xsl:when>
            <xsl:when test="$langval='kaytetye'">gbb</xsl:when>
            <xsl:when test="$langval='karadjeri'">gbd</xsl:when>
            <xsl:when test="$langval='niksek'">gbe</xsl:when>
            <xsl:when test="$langval='gaikundi'">gbf</xsl:when>
            <xsl:when test="$langval='gbanziri'">gbg</xsl:when>
            <xsl:when test="$langval='defi gbe'">gbh</xsl:when>
            <xsl:when test="$langval='galela'">gbi</xsl:when>
            <xsl:when test="$langval='bodo gadaba'">gbj</xsl:when>
            <xsl:when test="$langval='gaddi'">gbk</xsl:when>
            <xsl:when test="$langval='gamit'">gbl</xsl:when>
            <xsl:when test="$langval='garhwali'">gbm</xsl:when>
            <xsl:when test="$langval='mo''da'">gbn</xsl:when>
            <xsl:when test="$langval='northern grebo'">gbo</xsl:when>
            <xsl:when test="$langval='gbaya-bossangoa'">gbp</xsl:when>
            <xsl:when test="$langval='gbaya-bozoum'">gbq</xsl:when>
            <xsl:when test="$langval='gbagyi'">gbr</xsl:when>
            <xsl:when test="$langval='gbesi gbe'">gbs</xsl:when>
            <xsl:when test="$langval='gagadu'">gbu</xsl:when>
            <xsl:when test="$langval='gbanu'">gbv</xsl:when>
            <xsl:when test="$langval='gabi-gabi'">gbw</xsl:when>
            <xsl:when test="$langval='eastern xwla gbe'">gbx</xsl:when>
            <xsl:when test="$langval='gbari'">gby</xsl:when>
            <xsl:when test="$langval='zoroastrian dari'">gbz</xsl:when>
            <xsl:when test="$langval='mali'">gcc</xsl:when>
            <xsl:when test="$langval='ganggalida'">gcd</xsl:when>
            <xsl:when test="$langval='galice'">gce</xsl:when>
            <xsl:when test="$langval='guadeloupean creole french'">gcf</xsl:when>
            <xsl:when test="$langval='grenadian creole english'">gcl</xsl:when>
            <xsl:when test="$langval='gaina'">gcn</xsl:when>
            <xsl:when test="$langval='guianese creole french'">gcr</xsl:when>
            <xsl:when test="$langval='colonia tovar german'">gct</xsl:when>
            <xsl:when test="$langval='gade lohar'">gda</xsl:when>
            <xsl:when test="$langval='pottangi ollar gadaba'">gdb</xsl:when>
            <xsl:when test="$langval='gugu badhun'">gdc</xsl:when>
            <xsl:when test="$langval='gedaged'">gdd</xsl:when>
            <xsl:when test="$langval='gude'">gde</xsl:when>
            <xsl:when test="$langval='guduf-gava'">gdf</xsl:when>
            <xsl:when test="$langval='ga''dang'">gdg</xsl:when>
            <xsl:when test="$langval='gadjerawang'">gdh</xsl:when>
            <xsl:when test="$langval='gundi'">gdi</xsl:when>
            <xsl:when test="$langval='gurdjar'">gdj</xsl:when>
            <xsl:when test="$langval='gadang'">gdk</xsl:when>
            <xsl:when test="$langval='dirasha'">gdl</xsl:when>
            <xsl:when test="$langval='laal'">gdm</xsl:when>
            <xsl:when test="$langval='umanakaina'">gdn</xsl:when>
            <xsl:when test="$langval='ghodoberi'">gdo</xsl:when>
            <xsl:when test="$langval='mehri'">gdq</xsl:when>
            <xsl:when test="$langval='wipi'">gdr</xsl:when>
            <xsl:when test="$langval='ghandruk sign language'">gds</xsl:when>
            <xsl:when test="$langval='kungardutyi'">gdt</xsl:when>
            <xsl:when test="$langval='gudu'">gdu</xsl:when>
            <xsl:when test="$langval='godwari'">gdx</xsl:when>
            <xsl:when test="$langval='geruma'">gea</xsl:when>
            <xsl:when test="$langval='kire'">geb</xsl:when>
            <xsl:when test="$langval='gboloo grebo'">gec</xsl:when>
            <xsl:when test="$langval='gade'">ged</xsl:when>
            <xsl:when test="$langval='gengle'">geg</xsl:when>
            <xsl:when test="$langval='hutterite german'">geh</xsl:when>
            <xsl:when test="$langval='gebe'">gei</xsl:when>
            <xsl:when test="$langval='gen'">gej</xsl:when>
            <xsl:when test="$langval='yiwom'">gek</xsl:when>
            <xsl:when test="$langval='ut-ma''in'">gel</xsl:when>
            <xsl:when test="$langval='geme'">geq</xsl:when>
            <xsl:when test="$langval='geser-gorom'">ges</xsl:when>
            <xsl:when test="$langval='eviya'">gev</xsl:when>
            <xsl:when test="$langval='gera'">gew</xsl:when>
            <xsl:when test="$langval='garre'">gex</xsl:when>
            <xsl:when test="$langval='enya'">gey</xsl:when>
            <xsl:when test="$langval='geez'">gez</xsl:when>
            <xsl:when test="$langval='patpatar'">gfk</xsl:when>
            <xsl:when test="$langval='gafat'">gft</xsl:when>
            <xsl:when test="$langval='gao'">gga</xsl:when>
            <xsl:when test="$langval='gbii'">ggb</xsl:when>
            <xsl:when test="$langval='gugadj'">ggd</xsl:when>
            <xsl:when test="$langval='guragone'">gge</xsl:when>
            <xsl:when test="$langval='gurgula'">ggg</xsl:when>
            <xsl:when test="$langval='kungarakany'">ggk</xsl:when>
            <xsl:when test="$langval='ganglau'">ggl</xsl:when>
            <xsl:when test="$langval='eastern gurung'">ggn</xsl:when>
            <xsl:when test="$langval='southern gondi'">ggo</xsl:when>
            <xsl:when test="$langval='gitua'">ggt</xsl:when>
            <xsl:when test="$langval='gagu'">ggu</xsl:when>
            <xsl:when test="$langval='gogodala'">ggw</xsl:when>
            <xsl:when test="$langval='ghadamès'">gha</xsl:when>
            <xsl:when test="$langval='hiberno-scottish gaelic'">ghc</xsl:when>
            <xsl:when test="$langval='southern ghale'">ghe</xsl:when>
            <xsl:when test="$langval='northern ghale'">ghh</xsl:when>
            <xsl:when test="$langval='geko karen'">ghk</xsl:when>
            <xsl:when test="$langval='ghulfan'">ghl</xsl:when>
            <xsl:when test="$langval='ghanongga'">ghn</xsl:when>
            <xsl:when test="$langval='ghomara'">gho</xsl:when>
            <xsl:when test="$langval='ghera'">ghr</xsl:when>
            <xsl:when test="$langval='guhu-samane'">ghs</xsl:when>
            <xsl:when test="$langval='kuke'">ght</xsl:when>
            <xsl:when test="$langval='kitja'">gia</xsl:when>
            <xsl:when test="$langval='gibanawa'">gib</xsl:when>
            <xsl:when test="$langval='gail'">gic</xsl:when>
            <xsl:when test="$langval='gidar'">gid</xsl:when>
            <xsl:when test="$langval='goaria'">gig</xsl:when>
            <xsl:when test="$langval='githabul'">gih</xsl:when>
            <xsl:when test="$langval='gilbertese'">gil</xsl:when>
            <xsl:when test="$langval='gimi (eastern highlands)'">gim</xsl:when>
            <xsl:when test="$langval='hinukh'">gin</xsl:when>
            <xsl:when test="$langval='gimi (west new britain)'">gip</xsl:when>
            <xsl:when test="$langval='green gelao'">giq</xsl:when>
            <xsl:when test="$langval='red gelao'">gir</xsl:when>
            <xsl:when test="$langval='north giziga'">gis</xsl:when>
            <xsl:when test="$langval='gitxsan'">git</xsl:when>
            <xsl:when test="$langval='mulao'">giu</xsl:when>
            <xsl:when test="$langval='white gelao'">giw</xsl:when>
            <xsl:when test="$langval='gilima'">gix</xsl:when>
            <xsl:when test="$langval='giyug'">giy</xsl:when>
            <xsl:when test="$langval='south giziga'">giz</xsl:when>
            <xsl:when test="$langval='geji'">gji</xsl:when>
            <xsl:when test="$langval='kachi koli'">gjk</xsl:when>
            <xsl:when test="$langval='gunditjmara'">gjm</xsl:when>
            <xsl:when test="$langval='gonja'">gjn</xsl:when>
            <xsl:when test="$langval='gujari'">gju</xsl:when>
            <xsl:when test="$langval='guya'">gka</xsl:when>
            <xsl:when test="$langval='ndai'">gke</xsl:when>
            <xsl:when test="$langval='gokana'">gkn</xsl:when>
            <xsl:when test="$langval='kok-nar'">gko</xsl:when>
            <xsl:when test="$langval='guinea kpelle'">gkp</xsl:when>
            <xsl:when test="$langval='ǂungkue'">gku</xsl:when>
            <xsl:when test="$langval='scottish gaelic'">gla</xsl:when>
            <xsl:when test="$langval='bon gula'">glc</xsl:when>
            <xsl:when test="$langval='nanai'">gld</xsl:when>
            <xsl:when test="$langval='irish'">gle</xsl:when>
            <xsl:when test="$langval='galician'">glg</xsl:when>
            <xsl:when test="$langval='northwest pashai'">glh</xsl:when>
            <xsl:when test="$langval='guliguli'">gli</xsl:when>
            <xsl:when test="$langval='gula iro'">glj</xsl:when>
            <xsl:when test="$langval='gilaki'">glk</xsl:when>
            <xsl:when test="$langval='garlali'">gll</xsl:when>
            <xsl:when test="$langval='galambu'">glo</xsl:when>
            <xsl:when test="$langval='glaro-twabo'">glr</xsl:when>
            <xsl:when test="$langval='gula (chad)'">glu</xsl:when>
            <xsl:when test="$langval='manx'">glv</xsl:when>
            <xsl:when test="$langval='glavda'">glw</xsl:when>
            <xsl:when test="$langval='gule'">gly</xsl:when>
            <xsl:when test="$langval='gambera'">gma</xsl:when>
            <xsl:when test="$langval='gula''alaa'">gmb</xsl:when>
            <xsl:when test="$langval='mághdì'">gmd</xsl:when>
            <xsl:when test="$langval='magɨyi'">gmg</xsl:when>
            <xsl:when test="$langval='middle high german (ca. 1050-1500)'">gmh</xsl:when>
            <xsl:when test="$langval='middle low german'">gml</xsl:when>
            <xsl:when test="$langval='gbaya-mbodomo'">gmm</xsl:when>
            <xsl:when test="$langval='gimnime'">gmn</xsl:when>
            <xsl:when test="$langval='gumalu'">gmu</xsl:when>
            <xsl:when test="$langval='gamo'">gmv</xsl:when>
            <xsl:when test="$langval='magoma'">gmx</xsl:when>
            <xsl:when test="$langval='mycenaean greek'">gmy</xsl:when>
            <xsl:when test="$langval='mgbolizhia'">gmz</xsl:when>
            <xsl:when test="$langval='kaansa'">gna</xsl:when>
            <xsl:when test="$langval='gangte'">gnb</xsl:when>
            <xsl:when test="$langval='guanche'">gnc</xsl:when>
            <xsl:when test="$langval='zulgo-gemzek'">gnd</xsl:when>
            <xsl:when test="$langval='ganang'">gne</xsl:when>
            <xsl:when test="$langval='ngangam'">gng</xsl:when>
            <xsl:when test="$langval='lere'">gnh</xsl:when>
            <xsl:when test="$langval='gooniyandi'">gni</xsl:when>
            <xsl:when test="$langval='//gana'">gnk</xsl:when>
            <xsl:when test="$langval='gangulu'">gnl</xsl:when>
            <xsl:when test="$langval='ginuman'">gnm</xsl:when>
            <xsl:when test="$langval='gumatj'">gnn</xsl:when>
            <xsl:when test="$langval='northern gondi'">gno</xsl:when>
            <xsl:when test="$langval='gana'">gnq</xsl:when>
            <xsl:when test="$langval='gureng gureng'">gnr</xsl:when>
            <xsl:when test="$langval='guntai'">gnt</xsl:when>
            <xsl:when test="$langval='gnau'">gnu</xsl:when>
            <xsl:when test="$langval='western bolivian guaraní'">gnw</xsl:when>
            <xsl:when test="$langval='ganzi'">gnz</xsl:when>
            <xsl:when test="$langval='guro'">goa</xsl:when>
            <xsl:when test="$langval='playero'">gob</xsl:when>
            <xsl:when test="$langval='gorakor'">goc</xsl:when>
            <xsl:when test="$langval='godié'">god</xsl:when>
            <xsl:when test="$langval='gongduk'">goe</xsl:when>
            <xsl:when test="$langval='gofa'">gof</xsl:when>
            <xsl:when test="$langval='gogo'">gog</xsl:when>
            <xsl:when test="$langval='old high german (ca. 750-1050)'">goh</xsl:when>
            <xsl:when test="$langval='gobasi'">goi</xsl:when>
            <xsl:when test="$langval='gowlan'">goj</xsl:when>
            <xsl:when test="$langval='gowli'">gok</xsl:when>
            <xsl:when test="$langval='gola'">gol</xsl:when>
            <xsl:when test="$langval='goan konkani'">gom</xsl:when>
            <xsl:when test="$langval='gondi'">gon</xsl:when>
            <xsl:when test="$langval='gone dau'">goo</xsl:when>
            <xsl:when test="$langval='yeretuar'">gop</xsl:when>
            <xsl:when test="$langval='gorap'">goq</xsl:when>
            <xsl:when test="$langval='gorontalo'">gor</xsl:when>
            <xsl:when test="$langval='gronings'">gos</xsl:when>
            <xsl:when test="$langval='gothic'">got</xsl:when>
            <xsl:when test="$langval='gavar'">gou</xsl:when>
            <xsl:when test="$langval='gorowa'">gow</xsl:when>
            <xsl:when test="$langval='gobu'">gox</xsl:when>
            <xsl:when test="$langval='goundo'">goy</xsl:when>
            <xsl:when test="$langval='gozarkhani'">goz</xsl:when>
            <xsl:when test="$langval='gupa-abawa'">gpa</xsl:when>
            <xsl:when test="$langval='ghanaian pidgin english'">gpe</xsl:when>
            <xsl:when test="$langval='taiap'">gpn</xsl:when>
            <xsl:when test="$langval='ga''anda'">gqa</xsl:when>
            <xsl:when test="$langval='guiqiong'">gqi</xsl:when>
            <xsl:when test="$langval='guana (brazil)'">gqn</xsl:when>
            <xsl:when test="$langval='gor'">gqr</xsl:when>
            <xsl:when test="$langval='qau'">gqu</xsl:when>
            <xsl:when test="$langval='rajput garasia'">gra</xsl:when>
            <xsl:when test="$langval='grebo'">grb</xsl:when>
            <xsl:when test="$langval='ancient greek (to 1453)'">grc</xsl:when>
            <xsl:when test="$langval='guruntum-mbaaru'">grd</xsl:when>
            <xsl:when test="$langval='madi'">grg</xsl:when>
            <xsl:when test="$langval='gbiri-niragu'">grh</xsl:when>
            <xsl:when test="$langval='ghari'">gri</xsl:when>
            <xsl:when test="$langval='southern grebo'">grj</xsl:when>
            <xsl:when test="$langval='kota marudu talantang'">grm</xsl:when>
            <xsl:when test="$langval='guarani'">grn</xsl:when>
            <xsl:when test="$langval='groma'">gro</xsl:when>
            <xsl:when test="$langval='gorovu'">grq</xsl:when>
            <xsl:when test="$langval='taznatit'">grr</xsl:when>
            <xsl:when test="$langval='gresi'">grs</xsl:when>
            <xsl:when test="$langval='garo'">grt</xsl:when>
            <xsl:when test="$langval='kistane'">gru</xsl:when>
            <xsl:when test="$langval='central grebo'">grv</xsl:when>
            <xsl:when test="$langval='gweda'">grw</xsl:when>
            <xsl:when test="$langval='guriaso'">grx</xsl:when>
            <xsl:when test="$langval='barclayville grebo'">gry</xsl:when>
            <xsl:when test="$langval='guramalum'">grz</xsl:when>
            <xsl:when test="$langval='ghanaian sign language'">gse</xsl:when>
            <xsl:when test="$langval='german sign language'">gsg</xsl:when>
            <xsl:when test="$langval='gusilay'">gsl</xsl:when>
            <xsl:when test="$langval='guatemalan sign language'">gsm</xsl:when>
            <xsl:when test="$langval='gusan'">gsn</xsl:when>
            <xsl:when test="$langval='southwest gbaya'">gso</xsl:when>
            <xsl:when test="$langval='wasembo'">gsp</xsl:when>
            <xsl:when test="$langval='greek sign language'">gss</xsl:when>
            <xsl:when test="$langval='swiss german'">gsw</xsl:when>
            <xsl:when test="$langval='guató'">gta</xsl:when>
            <xsl:when test="$langval='aghu-tharnggala'">gtu</xsl:when>
            <xsl:when test="$langval='shiki'">gua</xsl:when>
            <xsl:when test="$langval='guajajára'">gub</xsl:when>
            <xsl:when test="$langval='wayuu'">guc</xsl:when>
            <xsl:when test="$langval='yocoboué dida'">gud</xsl:when>
            <xsl:when test="$langval='gurinji'">gue</xsl:when>
            <xsl:when test="$langval='gupapuyngu'">guf</xsl:when>
            <xsl:when test="$langval='paraguayan guaraní'">gug</xsl:when>
            <xsl:when test="$langval='guahibo'">guh</xsl:when>
            <xsl:when test="$langval='eastern bolivian guaraní'">gui</xsl:when>
            <xsl:when test="$langval='gujarati'">guj</xsl:when>
            <xsl:when test="$langval='gumuz'">guk</xsl:when>
            <xsl:when test="$langval='sea island creole english'">gul</xsl:when>
            <xsl:when test="$langval='guambiano'">gum</xsl:when>
            <xsl:when test="$langval='mbyá guaraní'">gun</xsl:when>
            <xsl:when test="$langval='guayabero'">guo</xsl:when>
            <xsl:when test="$langval='gunwinggu'">gup</xsl:when>
            <xsl:when test="$langval='aché'">guq</xsl:when>
            <xsl:when test="$langval='farefare'">gur</xsl:when>
            <xsl:when test="$langval='guinean sign language'">gus</xsl:when>
            <xsl:when test="$langval='maléku jaíka'">gut</xsl:when>
            <xsl:when test="$langval='yanomamö'">guu</xsl:when>
            <xsl:when test="$langval='gey'">guv</xsl:when>
            <xsl:when test="$langval='gun'">guw</xsl:when>
            <xsl:when test="$langval='gourmanchéma'">gux</xsl:when>
            <xsl:when test="$langval='gusii'">guz</xsl:when>
            <xsl:when test="$langval='guana (paraguay)'">gva</xsl:when>
            <xsl:when test="$langval='guanano'">gvc</xsl:when>
            <xsl:when test="$langval='duwet'">gve</xsl:when>
            <xsl:when test="$langval='golin'">gvf</xsl:when>
            <xsl:when test="$langval='guajá'">gvj</xsl:when>
            <xsl:when test="$langval='gulay'">gvl</xsl:when>
            <xsl:when test="$langval='gurmana'">gvm</xsl:when>
            <xsl:when test="$langval='kuku-yalanji'">gvn</xsl:when>
            <xsl:when test="$langval='gavião do jiparaná'">gvo</xsl:when>
            <xsl:when test="$langval='pará gavião'">gvp</xsl:when>
            <xsl:when test="$langval='western gurung'">gvr</xsl:when>
            <xsl:when test="$langval='gumawana'">gvs</xsl:when>
            <xsl:when test="$langval='guyani'">gvy</xsl:when>
            <xsl:when test="$langval='mbato'">gwa</xsl:when>
            <xsl:when test="$langval='gwa'">gwb</xsl:when>
            <xsl:when test="$langval='kalami'">gwc</xsl:when>
            <xsl:when test="$langval='gawwada'">gwd</xsl:when>
            <xsl:when test="$langval='gweno'">gwe</xsl:when>
            <xsl:when test="$langval='gowro'">gwf</xsl:when>
            <xsl:when test="$langval='moo'">gwg</xsl:when>
            <xsl:when test="$langval='gwichʼin'">gwi</xsl:when>
            <xsl:when test="$langval='/gwi'">gwj</xsl:when>
            <xsl:when test="$langval='awngthim'">gwm</xsl:when>
            <xsl:when test="$langval='gwandara'">gwn</xsl:when>
            <xsl:when test="$langval='gwere'">gwr</xsl:when>
            <xsl:when test="$langval='gawar-bati'">gwt</xsl:when>
            <xsl:when test="$langval='guwamu'">gwu</xsl:when>
            <xsl:when test="$langval='kwini'">gww</xsl:when>
            <xsl:when test="$langval='gua'">gwx</xsl:when>
            <xsl:when test="$langval='wè southern'">gxx</xsl:when>
            <xsl:when test="$langval='northwest gbaya'">gya</xsl:when>
            <xsl:when test="$langval='garus'">gyb</xsl:when>
            <xsl:when test="$langval='kayardild'">gyd</xsl:when>
            <xsl:when test="$langval='gyem'">gye</xsl:when>
            <xsl:when test="$langval='gungabula'">gyf</xsl:when>
            <xsl:when test="$langval='gbayi'">gyg</xsl:when>
            <xsl:when test="$langval='gyele'">gyi</xsl:when>
            <xsl:when test="$langval='gayil'">gyl</xsl:when>
            <xsl:when test="$langval='ngäbere'">gym</xsl:when>
            <xsl:when test="$langval='guyanese creole english'">gyn</xsl:when>
            <xsl:when test="$langval='guarayu'">gyr</xsl:when>
            <xsl:when test="$langval='gunya'">gyy</xsl:when>
            <xsl:when test="$langval='ganza'">gza</xsl:when>
            <xsl:when test="$langval='gazi'">gzi</xsl:when>
            <xsl:when test="$langval='gane'">gzn</xsl:when>
            <xsl:when test="$langval='han'">haa</xsl:when>
            <xsl:when test="$langval='hanoi sign language'">hab</xsl:when>
            <xsl:when test="$langval='gurani'">hac</xsl:when>
            <xsl:when test="$langval='hatam'">had</xsl:when>
            <xsl:when test="$langval='eastern oromo'">hae</xsl:when>
            <xsl:when test="$langval='haiphong sign language'">haf</xsl:when>
            <xsl:when test="$langval='hanga'">hag</xsl:when>
            <xsl:when test="$langval='hahon'">hah</xsl:when>
            <xsl:when test="$langval='haida'">hai</xsl:when>
            <xsl:when test="$langval='hajong'">haj</xsl:when>
            <xsl:when test="$langval='hakka chinese'">hak</xsl:when>
            <xsl:when test="$langval='halang'">hal</xsl:when>
            <xsl:when test="$langval='hewa'">ham</xsl:when>
            <xsl:when test="$langval='hangaza'">han</xsl:when>
            <xsl:when test="$langval='hakö'">hao</xsl:when>
            <xsl:when test="$langval='hupla'">hap</xsl:when>
            <xsl:when test="$langval='ha'">haq</xsl:when>
            <xsl:when test="$langval='harari'">har</xsl:when>
            <xsl:when test="$langval='haisla'">has</xsl:when>
            <xsl:when test="$langval='haitian'">hat</xsl:when>
            <xsl:when test="$langval='hausa'">hau</xsl:when>
            <xsl:when test="$langval='havu'">hav</xsl:when>
            <xsl:when test="$langval='hawaiian'">haw</xsl:when>
            <xsl:when test="$langval='southern haida'">hax</xsl:when>
            <xsl:when test="$langval='haya'">hay</xsl:when>
            <xsl:when test="$langval='hazaragi'">haz</xsl:when>
            <xsl:when test="$langval='hamba'">hba</xsl:when>
            <xsl:when test="$langval='huba'">hbb</xsl:when>
            <xsl:when test="$langval='heiban'">hbn</xsl:when>
            <xsl:when test="$langval='ancient hebrew'">hbo</xsl:when>
            <xsl:when test="$langval='serbo-croatian'">hbs</xsl:when>
            <xsl:when test="$langval='habu'">hbu</xsl:when>
            <xsl:when test="$langval='andaman creole hindi'">hca</xsl:when>
            <xsl:when test="$langval='huichol'">hch</xsl:when>
            <xsl:when test="$langval='northern haida'">hdn</xsl:when>
            <xsl:when test="$langval='honduras sign language'">hds</xsl:when>
            <xsl:when test="$langval='hadiyya'">hdy</xsl:when>
            <xsl:when test="$langval='northern qiandong miao'">hea</xsl:when>
            <xsl:when test="$langval='hebrew'">heb</xsl:when>
            <xsl:when test="$langval='herdé'">hed</xsl:when>
            <xsl:when test="$langval='helong'">heg</xsl:when>
            <xsl:when test="$langval='hehe'">heh</xsl:when>
            <xsl:when test="$langval='heiltsuk'">hei</xsl:when>
            <xsl:when test="$langval='hemba'">hem</xsl:when>
            <xsl:when test="$langval='herero'">her</xsl:when>
            <xsl:when test="$langval='hai//om'">hgm</xsl:when>
            <xsl:when test="$langval='haigwai'">hgw</xsl:when>
            <xsl:when test="$langval='hoia hoia'">hhi</xsl:when>
            <xsl:when test="$langval='kerak'">hhr</xsl:when>
            <xsl:when test="$langval='hoyahoya'">hhy</xsl:when>
            <xsl:when test="$langval='lamang'">hia</xsl:when>
            <xsl:when test="$langval='hibito'">hib</xsl:when>
            <xsl:when test="$langval='hidatsa'">hid</xsl:when>
            <xsl:when test="$langval='fiji hindi'">hif</xsl:when>
            <xsl:when test="$langval='kamwe'">hig</xsl:when>
            <xsl:when test="$langval='pamosu'">hih</xsl:when>
            <xsl:when test="$langval='hinduri'">hii</xsl:when>
            <xsl:when test="$langval='hijuk'">hij</xsl:when>
            <xsl:when test="$langval='seit-kaitetu'">hik</xsl:when>
            <xsl:when test="$langval='hiligaynon'">hil</xsl:when>
            <xsl:when test="$langval='hindi'">hin</xsl:when>
            <xsl:when test="$langval='tsoa'">hio</xsl:when>
            <xsl:when test="$langval='himarimã'">hir</xsl:when>
            <xsl:when test="$langval='hittite'">hit</xsl:when>
            <xsl:when test="$langval='hiw'">hiw</xsl:when>
            <xsl:when test="$langval='hixkaryána'">hix</xsl:when>
            <xsl:when test="$langval='haji'">hji</xsl:when>
            <xsl:when test="$langval='kahe'">hka</xsl:when>
            <xsl:when test="$langval='hunde'">hke</xsl:when>
            <xsl:when test="$langval='hunjara-kaina ke'">hkk</xsl:when>
            <xsl:when test="$langval='hong kong sign language'">hks</xsl:when>
            <xsl:when test="$langval='halia'">hla</xsl:when>
            <xsl:when test="$langval='halbi'">hlb</xsl:when>
            <xsl:when test="$langval='halang doan'">hld</xsl:when>
            <xsl:when test="$langval='hlersu'">hle</xsl:when>
            <xsl:when test="$langval='matu chin'">hlt</xsl:when>
            <xsl:when test="$langval='hieroglyphic luwian'">hlu</xsl:when>
            <xsl:when test="$langval='southern mashan hmong'">hma</xsl:when>
            <xsl:when test="$langval='humburi senni songhay'">hmb</xsl:when>
            <xsl:when test="$langval='central huishui hmong'">hmc</xsl:when>
            <xsl:when test="$langval='large flowery miao'">hmd</xsl:when>
            <xsl:when test="$langval='eastern huishui hmong'">hme</xsl:when>
            <xsl:when test="$langval='hmong don'">hmf</xsl:when>
            <xsl:when test="$langval='southwestern guiyang hmong'">hmg</xsl:when>
            <xsl:when test="$langval='southwestern huishui hmong'">hmh</xsl:when>
            <xsl:when test="$langval='northern huishui hmong'">hmi</xsl:when>
            <xsl:when test="$langval='ge'">hmj</xsl:when>
            <xsl:when test="$langval='maek'">hmk</xsl:when>
            <xsl:when test="$langval='luopohe hmong'">hml</xsl:when>
            <xsl:when test="$langval='central mashan hmong'">hmm</xsl:when>
            <xsl:when test="$langval='hmong'">hmn</xsl:when>
            <xsl:when test="$langval='hiri motu'">hmo</xsl:when>
            <xsl:when test="$langval='northern mashan hmong'">hmp</xsl:when>
            <xsl:when test="$langval='eastern qiandong miao'">hmq</xsl:when>
            <xsl:when test="$langval='hmar'">hmr</xsl:when>
            <xsl:when test="$langval='southern qiandong miao'">hms</xsl:when>
            <xsl:when test="$langval='hamtai'">hmt</xsl:when>
            <xsl:when test="$langval='hamap'">hmu</xsl:when>
            <xsl:when test="$langval='hmong dô'">hmv</xsl:when>
            <xsl:when test="$langval='western mashan hmong'">hmw</xsl:when>
            <xsl:when test="$langval='southern guiyang hmong'">hmy</xsl:when>
            <xsl:when test="$langval='hmong shua'">hmz</xsl:when>
            <xsl:when test="$langval='mina (cameroon)'">hna</xsl:when>
            <xsl:when test="$langval='southern hindko'">hnd</xsl:when>
            <xsl:when test="$langval='chhattisgarhi'">hne</xsl:when>
            <xsl:when test="$langval='//ani'">hnh</xsl:when>
            <xsl:when test="$langval='hani'">hni</xsl:when>
            <xsl:when test="$langval='hmong njua'">hnj</xsl:when>
            <xsl:when test="$langval='hanunoo'">hnn</xsl:when>
            <xsl:when test="$langval='northern hindko'">hno</xsl:when>
            <xsl:when test="$langval='caribbean hindustani'">hns</xsl:when>
            <xsl:when test="$langval='hung'">hnu</xsl:when>
            <xsl:when test="$langval='hoava'">hoa</xsl:when>
            <xsl:when test="$langval='mari (madang province)'">hob</xsl:when>
            <xsl:when test="$langval='ho'">hoc</xsl:when>
            <xsl:when test="$langval='holma'">hod</xsl:when>
            <xsl:when test="$langval='horom'">hoe</xsl:when>
            <xsl:when test="$langval='hobyót'">hoh</xsl:when>
            <xsl:when test="$langval='holikachuk'">hoi</xsl:when>
            <xsl:when test="$langval='hadothi'">hoj</xsl:when>
            <xsl:when test="$langval='holu'">hol</xsl:when>
            <xsl:when test="$langval='homa'">hom</xsl:when>
            <xsl:when test="$langval='holoholo'">hoo</xsl:when>
            <xsl:when test="$langval='hopi'">hop</xsl:when>
            <xsl:when test="$langval='horo'">hor</xsl:when>
            <xsl:when test="$langval='ho chi minh city sign language'">hos</xsl:when>
            <xsl:when test="$langval='hote'">hot</xsl:when>
            <xsl:when test="$langval='hovongan'">hov</xsl:when>
            <xsl:when test="$langval='honi'">how</xsl:when>
            <xsl:when test="$langval='holiya'">hoy</xsl:when>
            <xsl:when test="$langval='hozo'">hoz</xsl:when>
            <xsl:when test="$langval='hpon'">hpo</xsl:when>
            <xsl:when test="$langval='hawai''i sign language (hsl)'">hps</xsl:when>
            <xsl:when test="$langval='hrangkhol'">hra</xsl:when>
            <xsl:when test="$langval='niwer mil'">hrc</xsl:when>
            <xsl:when test="$langval='hre'">hre</xsl:when>
            <xsl:when test="$langval='haruku'">hrk</xsl:when>
            <xsl:when test="$langval='horned miao'">hrm</xsl:when>
            <xsl:when test="$langval='haroi'">hro</xsl:when>
            <xsl:when test="$langval='nhirrpi'">hrp</xsl:when>
            <xsl:when test="$langval='hértevin'">hrt</xsl:when>
            <xsl:when test="$langval='hruso'">hru</xsl:when>
            <xsl:when test="$langval='croatian'">hrv</xsl:when>
            <xsl:when test="$langval='warwar feni'">hrw</xsl:when>
            <xsl:when test="$langval='hunsrik'">hrx</xsl:when>
            <xsl:when test="$langval='harzani'">hrz</xsl:when>
            <xsl:when test="$langval='upper sorbian'">hsb</xsl:when>
            <xsl:when test="$langval='hungarian sign language'">hsh</xsl:when>
            <xsl:when test="$langval='hausa sign language'">hsl</xsl:when>
            <xsl:when test="$langval='xiang chinese'">hsn</xsl:when>
            <xsl:when test="$langval='harsusi'">hss</xsl:when>
            <xsl:when test="$langval='hoti'">hti</xsl:when>
            <xsl:when test="$langval='minica huitoto'">hto</xsl:when>
            <xsl:when test="$langval='hadza'">hts</xsl:when>
            <xsl:when test="$langval='hitu'">htu</xsl:when>
            <xsl:when test="$langval='middle hittite'">htx</xsl:when>
            <xsl:when test="$langval='huambisa'">hub</xsl:when>
            <xsl:when test="$langval='=/hua'">huc</xsl:when>
            <xsl:when test="$langval='huaulu'">hud</xsl:when>
            <xsl:when test="$langval='san francisco del mar huave'">hue</xsl:when>
            <xsl:when test="$langval='humene'">huf</xsl:when>
            <xsl:when test="$langval='huachipaeri'">hug</xsl:when>
            <xsl:when test="$langval='huilliche'">huh</xsl:when>
            <xsl:when test="$langval='huli'">hui</xsl:when>
            <xsl:when test="$langval='northern guiyang hmong'">huj</xsl:when>
            <xsl:when test="$langval='hulung'">huk</xsl:when>
            <xsl:when test="$langval='hula'">hul</xsl:when>
            <xsl:when test="$langval='hungana'">hum</xsl:when>
            <xsl:when test="$langval='hungarian'">hun</xsl:when>
            <xsl:when test="$langval='hu'">huo</xsl:when>
            <xsl:when test="$langval='hupa'">hup</xsl:when>
            <xsl:when test="$langval='tsat'">huq</xsl:when>
            <xsl:when test="$langval='halkomelem'">hur</xsl:when>
            <xsl:when test="$langval='huastec'">hus</xsl:when>
            <xsl:when test="$langval='humla'">hut</xsl:when>
            <xsl:when test="$langval='murui huitoto'">huu</xsl:when>
            <xsl:when test="$langval='san mateo del mar huave'">huv</xsl:when>
            <xsl:when test="$langval='hukumina'">huw</xsl:when>
            <xsl:when test="$langval='nüpode huitoto'">hux</xsl:when>
            <xsl:when test="$langval='hulaulá'">huy</xsl:when>
            <xsl:when test="$langval='hunzib'">huz</xsl:when>
            <xsl:when test="$langval='haitian vodoun culture language'">hvc</xsl:when>
            <xsl:when test="$langval='san dionisio del mar huave'">hve</xsl:when>
            <xsl:when test="$langval='haveke'">hvk</xsl:when>
            <xsl:when test="$langval='sabu'">hvn</xsl:when>
            <xsl:when test="$langval='santa maría del mar huave'">hvv</xsl:when>
            <xsl:when test="$langval='wané'">hwa</xsl:when>
            <xsl:when test="$langval='hawai''i creole english'">hwc</xsl:when>
            <xsl:when test="$langval='hwana'">hwo</xsl:when>
            <xsl:when test="$langval='hya'">hya</xsl:when>
            <xsl:when test="$langval='armenian'">hye</xsl:when>
            <xsl:when test="$langval='iaai'">iai</xsl:when>
            <xsl:when test="$langval='iatmul'">ian</xsl:when>
            <xsl:when test="$langval='iapama'">iap</xsl:when>
            <xsl:when test="$langval='purari'">iar</xsl:when>
            <xsl:when test="$langval='iban'">iba</xsl:when>
            <xsl:when test="$langval='ibibio'">ibb</xsl:when>
            <xsl:when test="$langval='iwaidja'">ibd</xsl:when>
            <xsl:when test="$langval='akpes'">ibe</xsl:when>
            <xsl:when test="$langval='ibanag'">ibg</xsl:when>
            <xsl:when test="$langval='ibaloi'">ibl</xsl:when>
            <xsl:when test="$langval='agoi'">ibm</xsl:when>
            <xsl:when test="$langval='ibino'">ibn</xsl:when>
            <xsl:when test="$langval='igbo'">ibo</xsl:when>
            <xsl:when test="$langval='ibuoro'">ibr</xsl:when>
            <xsl:when test="$langval='ibu'">ibu</xsl:when>
            <xsl:when test="$langval='ibani'">iby</xsl:when>
            <xsl:when test="$langval='ede ica'">ica</xsl:when>
            <xsl:when test="$langval='etkywan'">ich</xsl:when>
            <xsl:when test="$langval='icelandic sign language'">icl</xsl:when>
            <xsl:when test="$langval='islander creole english'">icr</xsl:when>
            <xsl:when test="$langval='idakho-isukha-tiriki'">ida</xsl:when>
            <xsl:when test="$langval='indo-portuguese'">idb</xsl:when>
            <xsl:when test="$langval='idon'">idc</xsl:when>
            <xsl:when test="$langval='ede idaca'">idd</xsl:when>
            <xsl:when test="$langval='idere'">ide</xsl:when>
            <xsl:when test="$langval='idi'">idi</xsl:when>
            <xsl:when test="$langval='ido'">ido</xsl:when>
            <xsl:when test="$langval='indri'">idr</xsl:when>
            <xsl:when test="$langval='idesa'">ids</xsl:when>
            <xsl:when test="$langval='idaté'">idt</xsl:when>
            <xsl:when test="$langval='idoma'">idu</xsl:when>
            <xsl:when test="$langval='amganad ifugao'">ifa</xsl:when>
            <xsl:when test="$langval='batad ifugao'">ifb</xsl:when>
            <xsl:when test="$langval='ifè'">ife</xsl:when>
            <xsl:when test="$langval='ifo'">iff</xsl:when>
            <xsl:when test="$langval='tuwali ifugao'">ifk</xsl:when>
            <xsl:when test="$langval='teke-fuumu'">ifm</xsl:when>
            <xsl:when test="$langval='mayoyao ifugao'">ifu</xsl:when>
            <xsl:when test="$langval='keley-i kallahan'">ify</xsl:when>
            <xsl:when test="$langval='ebira'">igb</xsl:when>
            <xsl:when test="$langval='igede'">ige</xsl:when>
            <xsl:when test="$langval='igana'">igg</xsl:when>
            <xsl:when test="$langval='igala'">igl</xsl:when>
            <xsl:when test="$langval='kanggape'">igm</xsl:when>
            <xsl:when test="$langval='ignaciano'">ign</xsl:when>
            <xsl:when test="$langval='isebe'">igo</xsl:when>
            <xsl:when test="$langval='interglossa'">igs</xsl:when>
            <xsl:when test="$langval='igwe'">igw</xsl:when>
            <xsl:when test="$langval='iha based pidgin'">ihb</xsl:when>
            <xsl:when test="$langval='ihievbe'">ihi</xsl:when>
            <xsl:when test="$langval='iha'">ihp</xsl:when>
            <xsl:when test="$langval='bidhawal'">ihw</xsl:when>
            <xsl:when test="$langval='sichuan yi'">iii</xsl:when>
            <xsl:when test="$langval='thiin'">iin</xsl:when>
            <xsl:when test="$langval='izon'">ijc</xsl:when>
            <xsl:when test="$langval='biseni'">ije</xsl:when>
            <xsl:when test="$langval='ede ije'">ijj</xsl:when>
            <xsl:when test="$langval='kalabari'">ijn</xsl:when>
            <xsl:when test="$langval='southeast ijo'">ijs</xsl:when>
            <xsl:when test="$langval='eastern canadian inuktitut'">ike</xsl:when>
            <xsl:when test="$langval='iko'">iki</xsl:when>
            <xsl:when test="$langval='ika'">ikk</xsl:when>
            <xsl:when test="$langval='ikulu'">ikl</xsl:when>
            <xsl:when test="$langval='olulumo-ikom'">iko</xsl:when>
            <xsl:when test="$langval='ikpeshi'">ikp</xsl:when>
            <xsl:when test="$langval='ikaranggal'">ikr</xsl:when>
            <xsl:when test="$langval='inuit sign language'">iks</xsl:when>
            <xsl:when test="$langval='inuinnaqtun'">ikt</xsl:when>
            <xsl:when test="$langval='inuktitut'">iku</xsl:when>
            <xsl:when test="$langval='iku-gora-ankwa'">ikv</xsl:when>
            <xsl:when test="$langval='ikwere'">ikw</xsl:when>
            <xsl:when test="$langval='ik'">ikx</xsl:when>
            <xsl:when test="$langval='ikizu'">ikz</xsl:when>
            <xsl:when test="$langval='ile ape'">ila</xsl:when>
            <xsl:when test="$langval='ila'">ilb</xsl:when>
            <xsl:when test="$langval='interlingue'">ile</xsl:when>
            <xsl:when test="$langval='garig-ilgar'">ilg</xsl:when>
            <xsl:when test="$langval='ili turki'">ili</xsl:when>
            <xsl:when test="$langval='ilongot'">ilk</xsl:when>
            <xsl:when test="$langval='iranun'">ill</xsl:when>
            <xsl:when test="$langval='iloko'">ilo</xsl:when>
            <xsl:when test="$langval='international sign'">ils</xsl:when>
            <xsl:when test="$langval='ili''uun'">ilu</xsl:when>
            <xsl:when test="$langval='ilue'">ilv</xsl:when>
            <xsl:when test="$langval='mala malasar'">ima</xsl:when>
            <xsl:when test="$langval='anamgura'">imi</xsl:when>
            <xsl:when test="$langval='miluk'">iml</xsl:when>
            <xsl:when test="$langval='imonda'">imn</xsl:when>
            <xsl:when test="$langval='imbongu'">imo</xsl:when>
            <xsl:when test="$langval='imroing'">imr</xsl:when>
            <xsl:when test="$langval='marsian'">ims</xsl:when>
            <xsl:when test="$langval='milyan'">imy</xsl:when>
            <xsl:when test="$langval='interlingua (international auxiliary language association)'">ina</xsl:when>
            <xsl:when test="$langval='inga'">inb</xsl:when>
            <xsl:when test="$langval='indonesian'">ind</xsl:when>
            <xsl:when test="$langval='degexit''an'">ing</xsl:when>
            <xsl:when test="$langval='ingush'">inh</xsl:when>
            <xsl:when test="$langval='jungle inga'">inj</xsl:when>
            <xsl:when test="$langval='indonesian sign language'">inl</xsl:when>
            <xsl:when test="$langval='minaean'">inm</xsl:when>
            <xsl:when test="$langval='isinai'">inn</xsl:when>
            <xsl:when test="$langval='inoke-yate'">ino</xsl:when>
            <xsl:when test="$langval='iñapari'">inp</xsl:when>
            <xsl:when test="$langval='indian sign language'">ins</xsl:when>
            <xsl:when test="$langval='intha'">int</xsl:when>
            <xsl:when test="$langval='ineseño'">inz</xsl:when>
            <xsl:when test="$langval='inor'">ior</xsl:when>
            <xsl:when test="$langval='tuma-irumu'">iou</xsl:when>
            <xsl:when test="$langval='iowa-oto'">iow</xsl:when>
            <xsl:when test="$langval='ipili'">ipi</xsl:when>
            <xsl:when test="$langval='inupiaq'">ipk</xsl:when>
            <xsl:when test="$langval='ipiko'">ipo</xsl:when>
            <xsl:when test="$langval='iquito'">iqu</xsl:when>
            <xsl:when test="$langval='ikwo'">iqw</xsl:when>
            <xsl:when test="$langval='iresim'">ire</xsl:when>
            <xsl:when test="$langval='irarutu'">irh</xsl:when>
            <xsl:when test="$langval='irigwe'">iri</xsl:when>
            <xsl:when test="$langval='iraqw'">irk</xsl:when>
            <xsl:when test="$langval='irántxe'">irn</xsl:when>
            <xsl:when test="$langval='ir'">irr</xsl:when>
            <xsl:when test="$langval='irula'">iru</xsl:when>
            <xsl:when test="$langval='kamberau'">irx</xsl:when>
            <xsl:when test="$langval='iraya'">iry</xsl:when>
            <xsl:when test="$langval='isabi'">isa</xsl:when>
            <xsl:when test="$langval='isconahua'">isc</xsl:when>
            <xsl:when test="$langval='isnag'">isd</xsl:when>
            <xsl:when test="$langval='italian sign language'">ise</xsl:when>
            <xsl:when test="$langval='irish sign language'">isg</xsl:when>
            <xsl:when test="$langval='esan'">ish</xsl:when>
            <xsl:when test="$langval='nkem-nkum'">isi</xsl:when>
            <xsl:when test="$langval='ishkashimi'">isk</xsl:when>
            <xsl:when test="$langval='icelandic'">isl</xsl:when>
            <xsl:when test="$langval='masimasi'">ism</xsl:when>
            <xsl:when test="$langval='isanzu'">isn</xsl:when>
            <xsl:when test="$langval='isoko'">iso</xsl:when>
            <xsl:when test="$langval='israeli sign language'">isr</xsl:when>
            <xsl:when test="$langval='istriot'">ist</xsl:when>
            <xsl:when test="$langval='isu (menchum division)'">isu</xsl:when>
            <xsl:when test="$langval='italian'">ita</xsl:when>
            <xsl:when test="$langval='binongan itneg'">itb</xsl:when>
            <xsl:when test="$langval='itene'">ite</xsl:when>
            <xsl:when test="$langval='inlaod itneg'">iti</xsl:when>
            <xsl:when test="$langval='judeo-italian'">itk</xsl:when>
            <xsl:when test="$langval='itelmen'">itl</xsl:when>
            <xsl:when test="$langval='itu mbon uzo'">itm</xsl:when>
            <xsl:when test="$langval='itonama'">ito</xsl:when>
            <xsl:when test="$langval='iteri'">itr</xsl:when>
            <xsl:when test="$langval='isekiri'">its</xsl:when>
            <xsl:when test="$langval='maeng itneg'">itt</xsl:when>
            <xsl:when test="$langval='itawit'">itv</xsl:when>
            <xsl:when test="$langval='ito'">itw</xsl:when>
            <xsl:when test="$langval='itik'">itx</xsl:when>
            <xsl:when test="$langval='moyadan itneg'">ity</xsl:when>
            <xsl:when test="$langval='itzá'">itz</xsl:when>
            <xsl:when test="$langval='iu mien'">ium</xsl:when>
            <xsl:when test="$langval='ibatan'">ivb</xsl:when>
            <xsl:when test="$langval='ivatan'">ivv</xsl:when>
            <xsl:when test="$langval='i-wak'">iwk</xsl:when>
            <xsl:when test="$langval='iwam'">iwm</xsl:when>
            <xsl:when test="$langval='iwur'">iwo</xsl:when>
            <xsl:when test="$langval='sepik iwam'">iws</xsl:when>
            <xsl:when test="$langval='ixcatec'">ixc</xsl:when>
            <xsl:when test="$langval='ixil'">ixl</xsl:when>
            <xsl:when test="$langval='iyayu'">iya</xsl:when>
            <xsl:when test="$langval='mesaka'">iyo</xsl:when>
            <xsl:when test="$langval='yaka (congo)'">iyx</xsl:when>
            <xsl:when test="$langval='ingrian'">izh</xsl:when>
            <xsl:when test="$langval='izere'">izr</xsl:when>
            <xsl:when test="$langval='izii'">izz</xsl:when>
            <xsl:when test="$langval='jamamadí'">jaa</xsl:when>
            <xsl:when test="$langval='hyam'">jab</xsl:when>
            <xsl:when test="$langval='popti'''">jac</xsl:when>
            <xsl:when test="$langval='jahanka'">jad</xsl:when>
            <xsl:when test="$langval='yabem'">jae</xsl:when>
            <xsl:when test="$langval='jara'">jaf</xsl:when>
            <xsl:when test="$langval='jah hut'">jah</xsl:when>
            <xsl:when test="$langval='zazao'">jaj</xsl:when>
            <xsl:when test="$langval='jakun'">jak</xsl:when>
            <xsl:when test="$langval='yalahatan'">jal</xsl:when>
            <xsl:when test="$langval='jamaican creole english'">jam</xsl:when>
            <xsl:when test="$langval='jandai'">jan</xsl:when>
            <xsl:when test="$langval='yanyuwa'">jao</xsl:when>
            <xsl:when test="$langval='yaqay'">jaq</xsl:when>
            <xsl:when test="$langval='new caledonian javanese'">jas</xsl:when>
            <xsl:when test="$langval='jakati'">jat</xsl:when>
            <xsl:when test="$langval='yaur'">jau</xsl:when>
            <xsl:when test="$langval='javanese'">jav</xsl:when>
            <xsl:when test="$langval='jambi malay'">jax</xsl:when>
            <xsl:when test="$langval='yan-nhangu'">jay</xsl:when>
            <xsl:when test="$langval='jawe'">jaz</xsl:when>
            <xsl:when test="$langval='judeo-berber'">jbe</xsl:when>
            <xsl:when test="$langval='badjiri'">jbi</xsl:when>
            <xsl:when test="$langval='arandai'">jbj</xsl:when>
            <xsl:when test="$langval='barikewa'">jbk</xsl:when>
            <xsl:when test="$langval='nafusi'">jbn</xsl:when>
            <xsl:when test="$langval='lojban'">jbo</xsl:when>
            <xsl:when test="$langval='jofotek-bromnya'">jbr</xsl:when>
            <xsl:when test="$langval='jabutí'">jbt</xsl:when>
            <xsl:when test="$langval='jukun takum'">jbu</xsl:when>
            <xsl:when test="$langval='yawijibaya'">jbw</xsl:when>
            <xsl:when test="$langval='jamaican country sign language'">jcs</xsl:when>
            <xsl:when test="$langval='krymchak'">jct</xsl:when>
            <xsl:when test="$langval='jad'">jda</xsl:when>
            <xsl:when test="$langval='jadgali'">jdg</xsl:when>
            <xsl:when test="$langval='judeo-tat'">jdt</xsl:when>
            <xsl:when test="$langval='jebero'">jeb</xsl:when>
            <xsl:when test="$langval='jerung'">jee</xsl:when>
            <xsl:when test="$langval='jeng'">jeg</xsl:when>
            <xsl:when test="$langval='jeh'">jeh</xsl:when>
            <xsl:when test="$langval='yei'">jei</xsl:when>
            <xsl:when test="$langval='jeri kuo'">jek</xsl:when>
            <xsl:when test="$langval='yelmek'">jel</xsl:when>
            <xsl:when test="$langval='dza'">jen</xsl:when>
            <xsl:when test="$langval='jere'">jer</xsl:when>
            <xsl:when test="$langval='manem'">jet</xsl:when>
            <xsl:when test="$langval='jonkor bourmataguil'">jeu</xsl:when>
            <xsl:when test="$langval='ngbee'">jgb</xsl:when>
            <xsl:when test="$langval='judeo-georgian'">jge</xsl:when>
            <xsl:when test="$langval='gwak'">jgk</xsl:when>
            <xsl:when test="$langval='ngomba'">jgo</xsl:when>
            <xsl:when test="$langval='jehai'">jhi</xsl:when>
            <xsl:when test="$langval='jhankot sign language'">jhs</xsl:when>
            <xsl:when test="$langval='jina'">jia</xsl:when>
            <xsl:when test="$langval='jibu'">jib</xsl:when>
            <xsl:when test="$langval='tol'">jic</xsl:when>
            <xsl:when test="$langval='bu'">jid</xsl:when>
            <xsl:when test="$langval='jilbe'">jie</xsl:when>
            <xsl:when test="$langval='djingili'">jig</xsl:when>
            <xsl:when test="$langval='stodsde'">jih</xsl:when>
            <xsl:when test="$langval='jiiddu'">jii</xsl:when>
            <xsl:when test="$langval='jilim'">jil</xsl:when>
            <xsl:when test="$langval='jimi (cameroon)'">jim</xsl:when>
            <xsl:when test="$langval='jiamao'">jio</xsl:when>
            <xsl:when test="$langval='guanyinqiao'">jiq</xsl:when>
            <xsl:when test="$langval='jita'">jit</xsl:when>
            <xsl:when test="$langval='youle jinuo'">jiu</xsl:when>
            <xsl:when test="$langval='shuar'">jiv</xsl:when>
            <xsl:when test="$langval='buyuan jinuo'">jiy</xsl:when>
            <xsl:when test="$langval='jejueo'">jje</xsl:when>
            <xsl:when test="$langval='bankal'">jjr</xsl:when>
            <xsl:when test="$langval='mobwa karen'">jkm</xsl:when>
            <xsl:when test="$langval='kubo'">jko</xsl:when>
            <xsl:when test="$langval='paku karen'">jkp</xsl:when>
            <xsl:when test="$langval='koro (india)'">jkr</xsl:when>
            <xsl:when test="$langval='labir'">jku</xsl:when>
            <xsl:when test="$langval='ngile'">jle</xsl:when>
            <xsl:when test="$langval='jamaican sign language'">jls</xsl:when>
            <xsl:when test="$langval='dima'">jma</xsl:when>
            <xsl:when test="$langval='zumbun'">jmb</xsl:when>
            <xsl:when test="$langval='machame'">jmc</xsl:when>
            <xsl:when test="$langval='yamdena'">jmd</xsl:when>
            <xsl:when test="$langval='jimi (nigeria)'">jmi</xsl:when>
            <xsl:when test="$langval='jumli'">jml</xsl:when>
            <xsl:when test="$langval='makuri naga'">jmn</xsl:when>
            <xsl:when test="$langval='kamara'">jmr</xsl:when>
            <xsl:when test="$langval='mashi (nigeria)'">jms</xsl:when>
            <xsl:when test="$langval='mouwase'">jmw</xsl:when>
            <xsl:when test="$langval='western juxtlahuaca mixtec'">jmx</xsl:when>
            <xsl:when test="$langval='jangshung'">jna</xsl:when>
            <xsl:when test="$langval='jandavra'">jnd</xsl:when>
            <xsl:when test="$langval='yangman'">jng</xsl:when>
            <xsl:when test="$langval='janji'">jni</xsl:when>
            <xsl:when test="$langval='yemsa'">jnj</xsl:when>
            <xsl:when test="$langval='rawat'">jnl</xsl:when>
            <xsl:when test="$langval='jaunsari'">jns</xsl:when>
            <xsl:when test="$langval='joba'">job</xsl:when>
            <xsl:when test="$langval='wojenaka'">jod</xsl:when>
            <xsl:when test="$langval='jorá'">jor</xsl:when>
            <xsl:when test="$langval='jordanian sign language'">jos</xsl:when>
            <xsl:when test="$langval='jowulu'">jow</xsl:when>
            <xsl:when test="$langval='jewish palestinian aramaic'">jpa</xsl:when>
            <xsl:when test="$langval='japanese'">jpn</xsl:when>
            <xsl:when test="$langval='judeo-persian'">jpr</xsl:when>
            <xsl:when test="$langval='jaqaru'">jqr</xsl:when>
            <xsl:when test="$langval='jarai'">jra</xsl:when>
            <xsl:when test="$langval='judeo-arabic'">jrb</xsl:when>
            <xsl:when test="$langval='jiru'">jrr</xsl:when>
            <xsl:when test="$langval='jorto'">jrt</xsl:when>
            <xsl:when test="$langval='japrería'">jru</xsl:when>
            <xsl:when test="$langval='japanese sign language'">jsl</xsl:when>
            <xsl:when test="$langval='júma'">jua</xsl:when>
            <xsl:when test="$langval='wannu'">jub</xsl:when>
            <xsl:when test="$langval='jurchen'">juc</xsl:when>
            <xsl:when test="$langval='worodougou'">jud</xsl:when>
            <xsl:when test="$langval='hõne'">juh</xsl:when>
            <xsl:when test="$langval='ngadjuri'">jui</xsl:when>
            <xsl:when test="$langval='wapan'">juk</xsl:when>
            <xsl:when test="$langval='jirel'">jul</xsl:when>
            <xsl:when test="$langval='jumjum'">jum</xsl:when>
            <xsl:when test="$langval='juang'">jun</xsl:when>
            <xsl:when test="$langval='jiba'">juo</xsl:when>
            <xsl:when test="$langval='hupdë'">jup</xsl:when>
            <xsl:when test="$langval='jurúna'">jur</xsl:when>
            <xsl:when test="$langval='jumla sign language'">jus</xsl:when>
            <xsl:when test="$langval='jutish'">jut</xsl:when>
            <xsl:when test="$langval='ju'">juu</xsl:when>
            <xsl:when test="$langval='wãpha'">juw</xsl:when>
            <xsl:when test="$langval='juray'">juy</xsl:when>
            <xsl:when test="$langval='javindo'">jvd</xsl:when>
            <xsl:when test="$langval='caribbean javanese'">jvn</xsl:when>
            <xsl:when test="$langval='jwira-pepesa'">jwi</xsl:when>
            <xsl:when test="$langval='jiarong'">jya</xsl:when>
            <xsl:when test="$langval='judeo-yemeni arabic'">jye</xsl:when>
            <xsl:when test="$langval='jaya'">jyy</xsl:when>
            <xsl:when test="$langval='kara-kalpak'">kaa</xsl:when>
            <xsl:when test="$langval='kabyle'">kab</xsl:when>
            <xsl:when test="$langval='kachin'">kac</xsl:when>
            <xsl:when test="$langval='adara'">kad</xsl:when>
            <xsl:when test="$langval='ketangalan'">kae</xsl:when>
            <xsl:when test="$langval='katso'">kaf</xsl:when>
            <xsl:when test="$langval='kajaman'">kag</xsl:when>
            <xsl:when test="$langval='kara (central african republic)'">kah</xsl:when>
            <xsl:when test="$langval='karekare'">kai</xsl:when>
            <xsl:when test="$langval='jju'">kaj</xsl:when>
            <xsl:when test="$langval='kayapa kallahan'">kak</xsl:when>
            <xsl:when test="$langval='kalaallisut'">kal</xsl:when>
            <xsl:when test="$langval='kamba (kenya)'">kam</xsl:when>
            <xsl:when test="$langval='kannada'">kan</xsl:when>
            <xsl:when test="$langval='xaasongaxango'">kao</xsl:when>
            <xsl:when test="$langval='bezhta'">kap</xsl:when>
            <xsl:when test="$langval='capanahua'">kaq</xsl:when>
            <xsl:when test="$langval='kashmiri'">kas</xsl:when>
            <xsl:when test="$langval='georgian'">kat</xsl:when>
            <xsl:when test="$langval='kanuri'">kau</xsl:when>
            <xsl:when test="$langval='katukína'">kav</xsl:when>
            <xsl:when test="$langval='kawi'">kaw</xsl:when>
            <xsl:when test="$langval='kao'">kax</xsl:when>
            <xsl:when test="$langval='kamayurá'">kay</xsl:when>
            <xsl:when test="$langval='kazakh'">kaz</xsl:when>
            <xsl:when test="$langval='kalarko'">kba</xsl:when>
            <xsl:when test="$langval='kaxuiâna'">kbb</xsl:when>
            <xsl:when test="$langval='kadiwéu'">kbc</xsl:when>
            <xsl:when test="$langval='kabardian'">kbd</xsl:when>
            <xsl:when test="$langval='kanju'">kbe</xsl:when>
            <xsl:when test="$langval='khamba'">kbg</xsl:when>
            <xsl:when test="$langval='camsá'">kbh</xsl:when>
            <xsl:when test="$langval='kaptiau'">kbi</xsl:when>
            <xsl:when test="$langval='kari'">kbj</xsl:when>
            <xsl:when test="$langval='grass koiari'">kbk</xsl:when>
            <xsl:when test="$langval='kanembu'">kbl</xsl:when>
            <xsl:when test="$langval='iwal'">kbm</xsl:when>
            <xsl:when test="$langval='kare (central african republic)'">kbn</xsl:when>
            <xsl:when test="$langval='keliko'">kbo</xsl:when>
            <xsl:when test="$langval='kabiyè'">kbp</xsl:when>
            <xsl:when test="$langval='kamano'">kbq</xsl:when>
            <xsl:when test="$langval='kafa'">kbr</xsl:when>
            <xsl:when test="$langval='kande'">kbs</xsl:when>
            <xsl:when test="$langval='abadi'">kbt</xsl:when>
            <xsl:when test="$langval='kabutra'">kbu</xsl:when>
            <xsl:when test="$langval='dera (indonesia)'">kbv</xsl:when>
            <xsl:when test="$langval='kaiep'">kbw</xsl:when>
            <xsl:when test="$langval='ap ma'">kbx</xsl:when>
            <xsl:when test="$langval='manga kanuri'">kby</xsl:when>
            <xsl:when test="$langval='duhwa'">kbz</xsl:when>
            <xsl:when test="$langval='khanty'">kca</xsl:when>
            <xsl:when test="$langval='kawacha'">kcb</xsl:when>
            <xsl:when test="$langval='lubila'">kcc</xsl:when>
            <xsl:when test="$langval='ngkâlmpw kanum'">kcd</xsl:when>
            <xsl:when test="$langval='kaivi'">kce</xsl:when>
            <xsl:when test="$langval='ukaan'">kcf</xsl:when>
            <xsl:when test="$langval='tyap'">kcg</xsl:when>
            <xsl:when test="$langval='vono'">kch</xsl:when>
            <xsl:when test="$langval='kamantan'">kci</xsl:when>
            <xsl:when test="$langval='kobiana'">kcj</xsl:when>
            <xsl:when test="$langval='kalanga'">kck</xsl:when>
            <xsl:when test="$langval='kela (papua new guinea)'">kcl</xsl:when>
            <xsl:when test="$langval='gula (central african republic)'">kcm</xsl:when>
            <xsl:when test="$langval='nubi'">kcn</xsl:when>
            <xsl:when test="$langval='kinalakna'">kco</xsl:when>
            <xsl:when test="$langval='kanga'">kcp</xsl:when>
            <xsl:when test="$langval='kamo'">kcq</xsl:when>
            <xsl:when test="$langval='katla'">kcr</xsl:when>
            <xsl:when test="$langval='koenoem'">kcs</xsl:when>
            <xsl:when test="$langval='kaian'">kct</xsl:when>
            <xsl:when test="$langval='kami (tanzania)'">kcu</xsl:when>
            <xsl:when test="$langval='kete'">kcv</xsl:when>
            <xsl:when test="$langval='kabwari'">kcw</xsl:when>
            <xsl:when test="$langval='kachama-ganjule'">kcx</xsl:when>
            <xsl:when test="$langval='korandje'">kcy</xsl:when>
            <xsl:when test="$langval='konongo'">kcz</xsl:when>
            <xsl:when test="$langval='worimi'">kda</xsl:when>
            <xsl:when test="$langval='kutu'">kdc</xsl:when>
            <xsl:when test="$langval='yankunytjatjara'">kdd</xsl:when>
            <xsl:when test="$langval='makonde'">kde</xsl:when>
            <xsl:when test="$langval='mamusi'">kdf</xsl:when>
            <xsl:when test="$langval='seba'">kdg</xsl:when>
            <xsl:when test="$langval='tem'">kdh</xsl:when>
            <xsl:when test="$langval='kumam'">kdi</xsl:when>
            <xsl:when test="$langval='karamojong'">kdj</xsl:when>
            <xsl:when test="$langval='numèè'">kdk</xsl:when>
            <xsl:when test="$langval='tsikimba'">kdl</xsl:when>
            <xsl:when test="$langval='kagoma'">kdm</xsl:when>
            <xsl:when test="$langval='kunda'">kdn</xsl:when>
            <xsl:when test="$langval='kaningdon-nindem'">kdp</xsl:when>
            <xsl:when test="$langval='koch'">kdq</xsl:when>
            <xsl:when test="$langval='karaim'">kdr</xsl:when>
            <xsl:when test="$langval='kuy'">kdt</xsl:when>
            <xsl:when test="$langval='kadaru'">kdu</xsl:when>
            <xsl:when test="$langval='koneraw'">kdw</xsl:when>
            <xsl:when test="$langval='kam'">kdx</xsl:when>
            <xsl:when test="$langval='keder'">kdy</xsl:when>
            <xsl:when test="$langval='kwaja'">kdz</xsl:when>
            <xsl:when test="$langval='kabuverdianu'">kea</xsl:when>
            <xsl:when test="$langval='kélé'">keb</xsl:when>
            <xsl:when test="$langval='keiga'">kec</xsl:when>
            <xsl:when test="$langval='kerewe'">ked</xsl:when>
            <xsl:when test="$langval='eastern keres'">kee</xsl:when>
            <xsl:when test="$langval='kpessi'">kef</xsl:when>
            <xsl:when test="$langval='tese'">keg</xsl:when>
            <xsl:when test="$langval='keak'">keh</xsl:when>
            <xsl:when test="$langval='kei'">kei</xsl:when>
            <xsl:when test="$langval='kadar'">kej</xsl:when>
            <xsl:when test="$langval='kekchí'">kek</xsl:when>
            <xsl:when test="$langval='kela (democratic republic of congo)'">kel</xsl:when>
            <xsl:when test="$langval='kemak'">kem</xsl:when>
            <xsl:when test="$langval='kenyang'">ken</xsl:when>
            <xsl:when test="$langval='kakwa'">keo</xsl:when>
            <xsl:when test="$langval='kaikadi'">kep</xsl:when>
            <xsl:when test="$langval='kamar'">keq</xsl:when>
            <xsl:when test="$langval='kera'">ker</xsl:when>
            <xsl:when test="$langval='kugbo'">kes</xsl:when>
            <xsl:when test="$langval='ket'">ket</xsl:when>
            <xsl:when test="$langval='akebu'">keu</xsl:when>
            <xsl:when test="$langval='kanikkaran'">kev</xsl:when>
            <xsl:when test="$langval='west kewa'">kew</xsl:when>
            <xsl:when test="$langval='kukna'">kex</xsl:when>
            <xsl:when test="$langval='kupia'">key</xsl:when>
            <xsl:when test="$langval='kukele'">kez</xsl:when>
            <xsl:when test="$langval='kodava'">kfa</xsl:when>
            <xsl:when test="$langval='northwestern kolami'">kfb</xsl:when>
            <xsl:when test="$langval='konda-dora'">kfc</xsl:when>
            <xsl:when test="$langval='korra koraga'">kfd</xsl:when>
            <xsl:when test="$langval='kota (india)'">kfe</xsl:when>
            <xsl:when test="$langval='koya'">kff</xsl:when>
            <xsl:when test="$langval='kudiya'">kfg</xsl:when>
            <xsl:when test="$langval='kurichiya'">kfh</xsl:when>
            <xsl:when test="$langval='kannada kurumba'">kfi</xsl:when>
            <xsl:when test="$langval='kemiehua'">kfj</xsl:when>
            <xsl:when test="$langval='kinnauri'">kfk</xsl:when>
            <xsl:when test="$langval='kung'">kfl</xsl:when>
            <xsl:when test="$langval='khunsari'">kfm</xsl:when>
            <xsl:when test="$langval='kuk'">kfn</xsl:when>
            <xsl:when test="$langval='koro (côte d''ivoire)'">kfo</xsl:when>
            <xsl:when test="$langval='korwa'">kfp</xsl:when>
            <xsl:when test="$langval='korku'">kfq</xsl:when>
            <xsl:when test="$langval='kachchi'">kfr</xsl:when>
            <xsl:when test="$langval='bilaspuri'">kfs</xsl:when>
            <xsl:when test="$langval='kanjari'">kft</xsl:when>
            <xsl:when test="$langval='katkari'">kfu</xsl:when>
            <xsl:when test="$langval='kurmukar'">kfv</xsl:when>
            <xsl:when test="$langval='kharam naga'">kfw</xsl:when>
            <xsl:when test="$langval='kullu pahari'">kfx</xsl:when>
            <xsl:when test="$langval='kumaoni'">kfy</xsl:when>
            <xsl:when test="$langval='koromfé'">kfz</xsl:when>
            <xsl:when test="$langval='koyaga'">kga</xsl:when>
            <xsl:when test="$langval='kawe'">kgb</xsl:when>
            <xsl:when test="$langval='kasseng'">kgc</xsl:when>
            <xsl:when test="$langval='kataang'">kgd</xsl:when>
            <xsl:when test="$langval='komering'">kge</xsl:when>
            <xsl:when test="$langval='kube'">kgf</xsl:when>
            <xsl:when test="$langval='kusunda'">kgg</xsl:when>
            <xsl:when test="$langval='selangor sign language'">kgi</xsl:when>
            <xsl:when test="$langval='gamale kham'">kgj</xsl:when>
            <xsl:when test="$langval='kaiwá'">kgk</xsl:when>
            <xsl:when test="$langval='kunggari'">kgl</xsl:when>
            <xsl:when test="$langval='karipúna'">kgm</xsl:when>
            <xsl:when test="$langval='karingani'">kgn</xsl:when>
            <xsl:when test="$langval='krongo'">kgo</xsl:when>
            <xsl:when test="$langval='kaingang'">kgp</xsl:when>
            <xsl:when test="$langval='kamoro'">kgq</xsl:when>
            <xsl:when test="$langval='abun'">kgr</xsl:when>
            <xsl:when test="$langval='kumbainggar'">kgs</xsl:when>
            <xsl:when test="$langval='somyev'">kgt</xsl:when>
            <xsl:when test="$langval='kobol'">kgu</xsl:when>
            <xsl:when test="$langval='karas'">kgv</xsl:when>
            <xsl:when test="$langval='karon dori'">kgw</xsl:when>
            <xsl:when test="$langval='kamaru'">kgx</xsl:when>
            <xsl:when test="$langval='kyerung'">kgy</xsl:when>
            <xsl:when test="$langval='khasi'">kha</xsl:when>
            <xsl:when test="$langval='lü'">khb</xsl:when>
            <xsl:when test="$langval='tukang besi north'">khc</xsl:when>
            <xsl:when test="$langval='bädi kanum'">khd</xsl:when>
            <xsl:when test="$langval='korowai'">khe</xsl:when>
            <xsl:when test="$langval='khuen'">khf</xsl:when>
            <xsl:when test="$langval='khams tibetan'">khg</xsl:when>
            <xsl:when test="$langval='kehu'">khh</xsl:when>
            <xsl:when test="$langval='kuturmi'">khj</xsl:when>
            <xsl:when test="$langval='halh mongolian'">khk</xsl:when>
            <xsl:when test="$langval='lusi'">khl</xsl:when>
            <xsl:when test="$langval='central khmer'">khm</xsl:when>
            <xsl:when test="$langval='khandesi'">khn</xsl:when>
            <xsl:when test="$langval='khotanese'">kho</xsl:when>
            <xsl:when test="$langval='kapori'">khp</xsl:when>
            <xsl:when test="$langval='koyra chiini songhay'">khq</xsl:when>
            <xsl:when test="$langval='kharia'">khr</xsl:when>
            <xsl:when test="$langval='kasua'">khs</xsl:when>
            <xsl:when test="$langval='khamti'">kht</xsl:when>
            <xsl:when test="$langval='nkhumbi'">khu</xsl:when>
            <xsl:when test="$langval='khvarshi'">khv</xsl:when>
            <xsl:when test="$langval='khowar'">khw</xsl:when>
            <xsl:when test="$langval='kanu'">khx</xsl:when>
            <xsl:when test="$langval='kele (democratic republic of congo)'">khy</xsl:when>
            <xsl:when test="$langval='keapara'">khz</xsl:when>
            <xsl:when test="$langval='kim'">kia</xsl:when>
            <xsl:when test="$langval='koalib'">kib</xsl:when>
            <xsl:when test="$langval='kickapoo'">kic</xsl:when>
            <xsl:when test="$langval='koshin'">kid</xsl:when>
            <xsl:when test="$langval='kibet'">kie</xsl:when>
            <xsl:when test="$langval='eastern parbate kham'">kif</xsl:when>
            <xsl:when test="$langval='kimaama'">kig</xsl:when>
            <xsl:when test="$langval='kilmeri'">kih</xsl:when>
            <xsl:when test="$langval='kitsai'">kii</xsl:when>
            <xsl:when test="$langval='kilivila'">kij</xsl:when>
            <xsl:when test="$langval='kikuyu'">kik</xsl:when>
            <xsl:when test="$langval='kariya'">kil</xsl:when>
            <xsl:when test="$langval='karagas'">kim</xsl:when>
            <xsl:when test="$langval='kinyarwanda'">kin</xsl:when>
            <xsl:when test="$langval='kiowa'">kio</xsl:when>
            <xsl:when test="$langval='sheshi kham'">kip</xsl:when>
            <xsl:when test="$langval='kosadle'">kiq</xsl:when>
            <xsl:when test="$langval='kirghiz'">kir</xsl:when>
            <xsl:when test="$langval='kis'">kis</xsl:when>
            <xsl:when test="$langval='agob'">kit</xsl:when>
            <xsl:when test="$langval='kirmanjki (individual language)'">kiu</xsl:when>
            <xsl:when test="$langval='kimbu'">kiv</xsl:when>
            <xsl:when test="$langval='northeast kiwai'">kiw</xsl:when>
            <xsl:when test="$langval='khiamniungan naga'">kix</xsl:when>
            <xsl:when test="$langval='kirikiri'">kiy</xsl:when>
            <xsl:when test="$langval='kisi'">kiz</xsl:when>
            <xsl:when test="$langval='mlap'">kja</xsl:when>
            <xsl:when test="$langval='q''anjob''al'">kjb</xsl:when>
            <xsl:when test="$langval='coastal konjo'">kjc</xsl:when>
            <xsl:when test="$langval='southern kiwai'">kjd</xsl:when>
            <xsl:when test="$langval='kisar'">kje</xsl:when>
            <xsl:when test="$langval='khalaj'">kjf</xsl:when>
            <xsl:when test="$langval='khmu'">kjg</xsl:when>
            <xsl:when test="$langval='khakas'">kjh</xsl:when>
            <xsl:when test="$langval='zabana'">kji</xsl:when>
            <xsl:when test="$langval='khinalugh'">kjj</xsl:when>
            <xsl:when test="$langval='highland konjo'">kjk</xsl:when>
            <xsl:when test="$langval='western parbate kham'">kjl</xsl:when>
            <xsl:when test="$langval='kháng'">kjm</xsl:when>
            <xsl:when test="$langval='kunjen'">kjn</xsl:when>
            <xsl:when test="$langval='harijan kinnauri'">kjo</xsl:when>
            <xsl:when test="$langval='pwo eastern karen'">kjp</xsl:when>
            <xsl:when test="$langval='western keres'">kjq</xsl:when>
            <xsl:when test="$langval='kurudu'">kjr</xsl:when>
            <xsl:when test="$langval='east kewa'">kjs</xsl:when>
            <xsl:when test="$langval='phrae pwo karen'">kjt</xsl:when>
            <xsl:when test="$langval='kashaya'">kju</xsl:when>
            <xsl:when test="$langval='kaikavian literary language'">kjv</xsl:when>
            <xsl:when test="$langval='ramopa'">kjx</xsl:when>
            <xsl:when test="$langval='erave'">kjy</xsl:when>
            <xsl:when test="$langval='bumthangkha'">kjz</xsl:when>
            <xsl:when test="$langval='kakanda'">kka</xsl:when>
            <xsl:when test="$langval='kwerisa'">kkb</xsl:when>
            <xsl:when test="$langval='odoodee'">kkc</xsl:when>
            <xsl:when test="$langval='kinuku'">kkd</xsl:when>
            <xsl:when test="$langval='kakabe'">kke</xsl:when>
            <xsl:when test="$langval='kalaktang monpa'">kkf</xsl:when>
            <xsl:when test="$langval='mabaka valley kalinga'">kkg</xsl:when>
            <xsl:when test="$langval='khün'">kkh</xsl:when>
            <xsl:when test="$langval='kagulu'">kki</xsl:when>
            <xsl:when test="$langval='kako'">kkj</xsl:when>
            <xsl:when test="$langval='kokota'">kkk</xsl:when>
            <xsl:when test="$langval='kosarek yale'">kkl</xsl:when>
            <xsl:when test="$langval='kiong'">kkm</xsl:when>
            <xsl:when test="$langval='kon keu'">kkn</xsl:when>
            <xsl:when test="$langval='karko'">kko</xsl:when>
            <xsl:when test="$langval='gugubera'">kkp</xsl:when>
            <xsl:when test="$langval='kaiku'">kkq</xsl:when>
            <xsl:when test="$langval='kir-balar'">kkr</xsl:when>
            <xsl:when test="$langval='giiwo'">kks</xsl:when>
            <xsl:when test="$langval='koi'">kkt</xsl:when>
            <xsl:when test="$langval='tumi'">kku</xsl:when>
            <xsl:when test="$langval='kangean'">kkv</xsl:when>
            <xsl:when test="$langval='teke-kukuya'">kkw</xsl:when>
            <xsl:when test="$langval='kohin'">kkx</xsl:when>
            <xsl:when test="$langval='guguyimidjir'">kky</xsl:when>
            <xsl:when test="$langval='kaska'">kkz</xsl:when>
            <xsl:when test="$langval='klamath-modoc'">kla</xsl:when>
            <xsl:when test="$langval='kiliwa'">klb</xsl:when>
            <xsl:when test="$langval='kolbila'">klc</xsl:when>
            <xsl:when test="$langval='gamilaraay'">kld</xsl:when>
            <xsl:when test="$langval='kulung (nepal)'">kle</xsl:when>
            <xsl:when test="$langval='kendeje'">klf</xsl:when>
            <xsl:when test="$langval='tagakaulo'">klg</xsl:when>
            <xsl:when test="$langval='weliki'">klh</xsl:when>
            <xsl:when test="$langval='kalumpang'">kli</xsl:when>
            <xsl:when test="$langval='turkic khalaj'">klj</xsl:when>
            <xsl:when test="$langval='kono (nigeria)'">klk</xsl:when>
            <xsl:when test="$langval='kagan kalagan'">kll</xsl:when>
            <xsl:when test="$langval='migum'">klm</xsl:when>
            <xsl:when test="$langval='kalenjin'">kln</xsl:when>
            <xsl:when test="$langval='kapya'">klo</xsl:when>
            <xsl:when test="$langval='kamasa'">klp</xsl:when>
            <xsl:when test="$langval='rumu'">klq</xsl:when>
            <xsl:when test="$langval='khaling'">klr</xsl:when>
            <xsl:when test="$langval='kalasha'">kls</xsl:when>
            <xsl:when test="$langval='nukna'">klt</xsl:when>
            <xsl:when test="$langval='klao'">klu</xsl:when>
            <xsl:when test="$langval='maskelynes'">klv</xsl:when>
            <xsl:when test="$langval='lindu'">klw</xsl:when>
            <xsl:when test="$langval='koluwawa'">klx</xsl:when>
            <xsl:when test="$langval='kalao'">kly</xsl:when>
            <xsl:when test="$langval='kabola'">klz</xsl:when>
            <xsl:when test="$langval='konni'">kma</xsl:when>
            <xsl:when test="$langval='kimbundu'">kmb</xsl:when>
            <xsl:when test="$langval='southern dong'">kmc</xsl:when>
            <xsl:when test="$langval='majukayang kalinga'">kmd</xsl:when>
            <xsl:when test="$langval='bakole'">kme</xsl:when>
            <xsl:when test="$langval='kare (papua new guinea)'">kmf</xsl:when>
            <xsl:when test="$langval='kâte'">kmg</xsl:when>
            <xsl:when test="$langval='kalam'">kmh</xsl:when>
            <xsl:when test="$langval='kami (nigeria)'">kmi</xsl:when>
            <xsl:when test="$langval='kumarbhag paharia'">kmj</xsl:when>
            <xsl:when test="$langval='limos kalinga'">kmk</xsl:when>
            <xsl:when test="$langval='tanudan kalinga'">kml</xsl:when>
            <xsl:when test="$langval='kom (india)'">kmm</xsl:when>
            <xsl:when test="$langval='awtuw'">kmn</xsl:when>
            <xsl:when test="$langval='kwoma'">kmo</xsl:when>
            <xsl:when test="$langval='gimme'">kmp</xsl:when>
            <xsl:when test="$langval='kwama'">kmq</xsl:when>
            <xsl:when test="$langval='northern kurdish'">kmr</xsl:when>
            <xsl:when test="$langval='kamasau'">kms</xsl:when>
            <xsl:when test="$langval='kemtuik'">kmt</xsl:when>
            <xsl:when test="$langval='kanite'">kmu</xsl:when>
            <xsl:when test="$langval='karipúna creole french'">kmv</xsl:when>
            <xsl:when test="$langval='komo (democratic republic of congo)'">kmw</xsl:when>
            <xsl:when test="$langval='waboda'">kmx</xsl:when>
            <xsl:when test="$langval='koma'">kmy</xsl:when>
            <xsl:when test="$langval='khorasani turkish'">kmz</xsl:when>
            <xsl:when test="$langval='dera (nigeria)'">kna</xsl:when>
            <xsl:when test="$langval='lubuagan kalinga'">knb</xsl:when>
            <xsl:when test="$langval='central kanuri'">knc</xsl:when>
            <xsl:when test="$langval='konda'">knd</xsl:when>
            <xsl:when test="$langval='kankanaey'">kne</xsl:when>
            <xsl:when test="$langval='mankanya'">knf</xsl:when>
            <xsl:when test="$langval='koongo'">kng</xsl:when>
            <xsl:when test="$langval='kanufi'">kni</xsl:when>
            <xsl:when test="$langval='western kanjobal'">knj</xsl:when>
            <xsl:when test="$langval='kuranko'">knk</xsl:when>
            <xsl:when test="$langval='keninjal'">knl</xsl:when>
            <xsl:when test="$langval='kanamarí'">knm</xsl:when>
            <xsl:when test="$langval='konkani (individual language)'">knn</xsl:when>
            <xsl:when test="$langval='kono (sierra leone)'">kno</xsl:when>
            <xsl:when test="$langval='kwanja'">knp</xsl:when>
            <xsl:when test="$langval='kintaq'">knq</xsl:when>
            <xsl:when test="$langval='kaningra'">knr</xsl:when>
            <xsl:when test="$langval='kensiu'">kns</xsl:when>
            <xsl:when test="$langval='panoan katukína'">knt</xsl:when>
            <xsl:when test="$langval='kono (guinea)'">knu</xsl:when>
            <xsl:when test="$langval='tabo'">knv</xsl:when>
            <xsl:when test="$langval='kung-ekoka'">knw</xsl:when>
            <xsl:when test="$langval='kendayan'">knx</xsl:when>
            <xsl:when test="$langval='kanyok'">kny</xsl:when>
            <xsl:when test="$langval='kalamsé'">knz</xsl:when>
            <xsl:when test="$langval='konomala'">koa</xsl:when>
            <xsl:when test="$langval='kpati'">koc</xsl:when>
            <xsl:when test="$langval='kodi'">kod</xsl:when>
            <xsl:when test="$langval='kacipo-balesi'">koe</xsl:when>
            <xsl:when test="$langval='kubi'">kof</xsl:when>
            <xsl:when test="$langval='cogui'">kog</xsl:when>
            <xsl:when test="$langval='koyo'">koh</xsl:when>
            <xsl:when test="$langval='komi-permyak'">koi</xsl:when>
            <xsl:when test="$langval='konkani (macrolanguage)'">kok</xsl:when>
            <xsl:when test="$langval='kol (papua new guinea)'">kol</xsl:when>
            <xsl:when test="$langval='komi'">kom</xsl:when>
            <xsl:when test="$langval='kongo'">kon</xsl:when>
            <xsl:when test="$langval='konzo'">koo</xsl:when>
            <xsl:when test="$langval='waube'">kop</xsl:when>
            <xsl:when test="$langval='kota (gabon)'">koq</xsl:when>
            <xsl:when test="$langval='korean'">kor</xsl:when>
            <xsl:when test="$langval='kosraean'">kos</xsl:when>
            <xsl:when test="$langval='lagwan'">kot</xsl:when>
            <xsl:when test="$langval='koke'">kou</xsl:when>
            <xsl:when test="$langval='kudu-camo'">kov</xsl:when>
            <xsl:when test="$langval='kugama'">kow</xsl:when>
            <xsl:when test="$langval='coxima'">kox</xsl:when>
            <xsl:when test="$langval='koyukon'">koy</xsl:when>
            <xsl:when test="$langval='korak'">koz</xsl:when>
            <xsl:when test="$langval='kutto'">kpa</xsl:when>
            <xsl:when test="$langval='mullu kurumba'">kpb</xsl:when>
            <xsl:when test="$langval='curripaco'">kpc</xsl:when>
            <xsl:when test="$langval='koba'">kpd</xsl:when>
            <xsl:when test="$langval='kpelle'">kpe</xsl:when>
            <xsl:when test="$langval='komba'">kpf</xsl:when>
            <xsl:when test="$langval='kapingamarangi'">kpg</xsl:when>
            <xsl:when test="$langval='kplang'">kph</xsl:when>
            <xsl:when test="$langval='kofei'">kpi</xsl:when>
            <xsl:when test="$langval='karajá'">kpj</xsl:when>
            <xsl:when test="$langval='kpan'">kpk</xsl:when>
            <xsl:when test="$langval='kpala'">kpl</xsl:when>
            <xsl:when test="$langval='koho'">kpm</xsl:when>
            <xsl:when test="$langval='kepkiriwát'">kpn</xsl:when>
            <xsl:when test="$langval='ikposo'">kpo</xsl:when>
            <xsl:when test="$langval='korupun-sela'">kpq</xsl:when>
            <xsl:when test="$langval='korafe-yegha'">kpr</xsl:when>
            <xsl:when test="$langval='tehit'">kps</xsl:when>
            <xsl:when test="$langval='karata'">kpt</xsl:when>
            <xsl:when test="$langval='kafoa'">kpu</xsl:when>
            <xsl:when test="$langval='komi-zyrian'">kpv</xsl:when>
            <xsl:when test="$langval='kobon'">kpw</xsl:when>
            <xsl:when test="$langval='mountain koiali'">kpx</xsl:when>
            <xsl:when test="$langval='koryak'">kpy</xsl:when>
            <xsl:when test="$langval='kupsabiny'">kpz</xsl:when>
            <xsl:when test="$langval='mum'">kqa</xsl:when>
            <xsl:when test="$langval='kovai'">kqb</xsl:when>
            <xsl:when test="$langval='doromu-koki'">kqc</xsl:when>
            <xsl:when test="$langval='koy sanjaq surat'">kqd</xsl:when>
            <xsl:when test="$langval='kalagan'">kqe</xsl:when>
            <xsl:when test="$langval='kakabai'">kqf</xsl:when>
            <xsl:when test="$langval='khe'">kqg</xsl:when>
            <xsl:when test="$langval='kisankasa'">kqh</xsl:when>
            <xsl:when test="$langval='koitabu'">kqi</xsl:when>
            <xsl:when test="$langval='koromira'">kqj</xsl:when>
            <xsl:when test="$langval='kotafon gbe'">kqk</xsl:when>
            <xsl:when test="$langval='kyenele'">kql</xsl:when>
            <xsl:when test="$langval='khisa'">kqm</xsl:when>
            <xsl:when test="$langval='kaonde'">kqn</xsl:when>
            <xsl:when test="$langval='eastern krahn'">kqo</xsl:when>
            <xsl:when test="$langval='kimré'">kqp</xsl:when>
            <xsl:when test="$langval='krenak'">kqq</xsl:when>
            <xsl:when test="$langval='kimaragang'">kqr</xsl:when>
            <xsl:when test="$langval='northern kissi'">kqs</xsl:when>
            <xsl:when test="$langval='klias river kadazan'">kqt</xsl:when>
            <xsl:when test="$langval='seroa'">kqu</xsl:when>
            <xsl:when test="$langval='okolod'">kqv</xsl:when>
            <xsl:when test="$langval='kandas'">kqw</xsl:when>
            <xsl:when test="$langval='mser'">kqx</xsl:when>
            <xsl:when test="$langval='koorete'">kqy</xsl:when>
            <xsl:when test="$langval='korana'">kqz</xsl:when>
            <xsl:when test="$langval='kumhali'">kra</xsl:when>
            <xsl:when test="$langval='karkin'">krb</xsl:when>
            <xsl:when test="$langval='karachay-balkar'">krc</xsl:when>
            <xsl:when test="$langval='kairui-midiki'">krd</xsl:when>
            <xsl:when test="$langval='panará'">kre</xsl:when>
            <xsl:when test="$langval='koro (vanuatu)'">krf</xsl:when>
            <xsl:when test="$langval='kurama'">krh</xsl:when>
            <xsl:when test="$langval='krio'">kri</xsl:when>
            <xsl:when test="$langval='kinaray-a'">krj</xsl:when>
            <xsl:when test="$langval='kerek'">krk</xsl:when>
            <xsl:when test="$langval='karelian'">krl</xsl:when>
            <xsl:when test="$langval='krim'">krm</xsl:when>
            <xsl:when test="$langval='sapo'">krn</xsl:when>
            <xsl:when test="$langval='korop'">krp</xsl:when>
            <xsl:when test="$langval='kru''ng 2'">krr</xsl:when>
            <xsl:when test="$langval='gbaya (sudan)'">krs</xsl:when>
            <xsl:when test="$langval='tumari kanuri'">krt</xsl:when>
            <xsl:when test="$langval='kurukh'">kru</xsl:when>
            <xsl:when test="$langval='kavet'">krv</xsl:when>
            <xsl:when test="$langval='western krahn'">krw</xsl:when>
            <xsl:when test="$langval='karon'">krx</xsl:when>
            <xsl:when test="$langval='kryts'">kry</xsl:when>
            <xsl:when test="$langval='sota kanum'">krz</xsl:when>
            <xsl:when test="$langval='shuwa-zamani'">ksa</xsl:when>
            <xsl:when test="$langval='shambala'">ksb</xsl:when>
            <xsl:when test="$langval='southern kalinga'">ksc</xsl:when>
            <xsl:when test="$langval='kuanua'">ksd</xsl:when>
            <xsl:when test="$langval='kuni'">kse</xsl:when>
            <xsl:when test="$langval='bafia'">ksf</xsl:when>
            <xsl:when test="$langval='kusaghe'">ksg</xsl:when>
            <xsl:when test="$langval='kölsch'">ksh</xsl:when>
            <xsl:when test="$langval='krisa'">ksi</xsl:when>
            <xsl:when test="$langval='uare'">ksj</xsl:when>
            <xsl:when test="$langval='kansa'">ksk</xsl:when>
            <xsl:when test="$langval='kumalu'">ksl</xsl:when>
            <xsl:when test="$langval='kumba'">ksm</xsl:when>
            <xsl:when test="$langval='kasiguranin'">ksn</xsl:when>
            <xsl:when test="$langval='kofa'">kso</xsl:when>
            <xsl:when test="$langval='kaba'">ksp</xsl:when>
            <xsl:when test="$langval='kwaami'">ksq</xsl:when>
            <xsl:when test="$langval='borong'">ksr</xsl:when>
            <xsl:when test="$langval='southern kisi'">kss</xsl:when>
            <xsl:when test="$langval='winyé'">kst</xsl:when>
            <xsl:when test="$langval='khamyang'">ksu</xsl:when>
            <xsl:when test="$langval='kusu'">ksv</xsl:when>
            <xsl:when test="$langval='s''gaw karen'">ksw</xsl:when>
            <xsl:when test="$langval='kedang'">ksx</xsl:when>
            <xsl:when test="$langval='kharia thar'">ksy</xsl:when>
            <xsl:when test="$langval='kodaku'">ksz</xsl:when>
            <xsl:when test="$langval='katua'">kta</xsl:when>
            <xsl:when test="$langval='kambaata'">ktb</xsl:when>
            <xsl:when test="$langval='kholok'">ktc</xsl:when>
            <xsl:when test="$langval='kokata'">ktd</xsl:when>
            <xsl:when test="$langval='nubri'">kte</xsl:when>
            <xsl:when test="$langval='kwami'">ktf</xsl:when>
            <xsl:when test="$langval='kalkutung'">ktg</xsl:when>
            <xsl:when test="$langval='karanga'">kth</xsl:when>
            <xsl:when test="$langval='north muyu'">kti</xsl:when>
            <xsl:when test="$langval='plapo krumen'">ktj</xsl:when>
            <xsl:when test="$langval='kaniet'">ktk</xsl:when>
            <xsl:when test="$langval='koroshi'">ktl</xsl:when>
            <xsl:when test="$langval='kurti'">ktm</xsl:when>
            <xsl:when test="$langval='karitiâna'">ktn</xsl:when>
            <xsl:when test="$langval='kuot'">kto</xsl:when>
            <xsl:when test="$langval='kaduo'">ktp</xsl:when>
            <xsl:when test="$langval='katabaga'">ktq</xsl:when>
            <xsl:when test="$langval='kota marudu tinagas'">ktr</xsl:when>
            <xsl:when test="$langval='south muyu'">kts</xsl:when>
            <xsl:when test="$langval='ketum'">ktt</xsl:when>
            <xsl:when test="$langval='kituba (democratic republic of congo)'">ktu</xsl:when>
            <xsl:when test="$langval='eastern katu'">ktv</xsl:when>
            <xsl:when test="$langval='kato'">ktw</xsl:when>
            <xsl:when test="$langval='kaxararí'">ktx</xsl:when>
            <xsl:when test="$langval='kango (bas-uélé district)'">kty</xsl:when>
            <xsl:when test="$langval='ju/''hoan'">ktz</xsl:when>
            <xsl:when test="$langval='kuanyama'">kua</xsl:when>
            <xsl:when test="$langval='kutep'">kub</xsl:when>
            <xsl:when test="$langval='kwinsu'">kuc</xsl:when>
            <xsl:when test="$langval='''auhelawa'">kud</xsl:when>
            <xsl:when test="$langval='kuman (papua new guinea)'">kue</xsl:when>
            <xsl:when test="$langval='western katu'">kuf</xsl:when>
            <xsl:when test="$langval='kupa'">kug</xsl:when>
            <xsl:when test="$langval='kushi'">kuh</xsl:when>
            <xsl:when test="$langval='kuikúro-kalapálo'">kui</xsl:when>
            <xsl:when test="$langval='kuria'">kuj</xsl:when>
            <xsl:when test="$langval='kepo'''">kuk</xsl:when>
            <xsl:when test="$langval='kulere'">kul</xsl:when>
            <xsl:when test="$langval='kumyk'">kum</xsl:when>
            <xsl:when test="$langval='kunama'">kun</xsl:when>
            <xsl:when test="$langval='kumukio'">kuo</xsl:when>
            <xsl:when test="$langval='kunimaipa'">kup</xsl:when>
            <xsl:when test="$langval='karipuna'">kuq</xsl:when>
            <xsl:when test="$langval='kurdish'">kur</xsl:when>
            <xsl:when test="$langval='kusaal'">kus</xsl:when>
            <xsl:when test="$langval='kutenai'">kut</xsl:when>
            <xsl:when test="$langval='upper kuskokwim'">kuu</xsl:when>
            <xsl:when test="$langval='kur'">kuv</xsl:when>
            <xsl:when test="$langval='kpagua'">kuw</xsl:when>
            <xsl:when test="$langval='kukatja'">kux</xsl:when>
            <xsl:when test="$langval='kuuku-ya''u'">kuy</xsl:when>
            <xsl:when test="$langval='kunza'">kuz</xsl:when>
            <xsl:when test="$langval='bagvalal'">kva</xsl:when>
            <xsl:when test="$langval='kubu'">kvb</xsl:when>
            <xsl:when test="$langval='kove'">kvc</xsl:when>
            <xsl:when test="$langval='kui (indonesia)'">kvd</xsl:when>
            <xsl:when test="$langval='kalabakan'">kve</xsl:when>
            <xsl:when test="$langval='kabalai'">kvf</xsl:when>
            <xsl:when test="$langval='kuni-boazi'">kvg</xsl:when>
            <xsl:when test="$langval='komodo'">kvh</xsl:when>
            <xsl:when test="$langval='kwang'">kvi</xsl:when>
            <xsl:when test="$langval='psikye'">kvj</xsl:when>
            <xsl:when test="$langval='korean sign language'">kvk</xsl:when>
            <xsl:when test="$langval='kayaw'">kvl</xsl:when>
            <xsl:when test="$langval='kendem'">kvm</xsl:when>
            <xsl:when test="$langval='border kuna'">kvn</xsl:when>
            <xsl:when test="$langval='dobel'">kvo</xsl:when>
            <xsl:when test="$langval='kompane'">kvp</xsl:when>
            <xsl:when test="$langval='geba karen'">kvq</xsl:when>
            <xsl:when test="$langval='kerinci'">kvr</xsl:when>
            <xsl:when test="$langval='kunggara'">kvs</xsl:when>
            <xsl:when test="$langval='lahta karen'">kvt</xsl:when>
            <xsl:when test="$langval='yinbaw karen'">kvu</xsl:when>
            <xsl:when test="$langval='kola'">kvv</xsl:when>
            <xsl:when test="$langval='wersing'">kvw</xsl:when>
            <xsl:when test="$langval='parkari koli'">kvx</xsl:when>
            <xsl:when test="$langval='yintale karen'">kvy</xsl:when>
            <xsl:when test="$langval='tsakwambo'">kvz</xsl:when>
            <xsl:when test="$langval='dâw'">kwa</xsl:when>
            <xsl:when test="$langval='kwa'">kwb</xsl:when>
            <xsl:when test="$langval='likwala'">kwc</xsl:when>
            <xsl:when test="$langval='kwaio'">kwd</xsl:when>
            <xsl:when test="$langval='kwerba'">kwe</xsl:when>
            <xsl:when test="$langval='kwara''ae'">kwf</xsl:when>
            <xsl:when test="$langval='sara kaba deme'">kwg</xsl:when>
            <xsl:when test="$langval='kowiai'">kwh</xsl:when>
            <xsl:when test="$langval='awa-cuaiquer'">kwi</xsl:when>
            <xsl:when test="$langval='kwanga'">kwj</xsl:when>
            <xsl:when test="$langval='kwakiutl'">kwk</xsl:when>
            <xsl:when test="$langval='kofyar'">kwl</xsl:when>
            <xsl:when test="$langval='kwambi'">kwm</xsl:when>
            <xsl:when test="$langval='kwangali'">kwn</xsl:when>
            <xsl:when test="$langval='kwomtari'">kwo</xsl:when>
            <xsl:when test="$langval='kodia'">kwp</xsl:when>
            <xsl:when test="$langval='kwer'">kwr</xsl:when>
            <xsl:when test="$langval='kwese'">kws</xsl:when>
            <xsl:when test="$langval='kwesten'">kwt</xsl:when>
            <xsl:when test="$langval='kwakum'">kwu</xsl:when>
            <xsl:when test="$langval='sara kaba náà'">kwv</xsl:when>
            <xsl:when test="$langval='kwinti'">kww</xsl:when>
            <xsl:when test="$langval='khirwar'">kwx</xsl:when>
            <xsl:when test="$langval='san salvador kongo'">kwy</xsl:when>
            <xsl:when test="$langval='kwadi'">kwz</xsl:when>
            <xsl:when test="$langval='kairiru'">kxa</xsl:when>
            <xsl:when test="$langval='krobu'">kxb</xsl:when>
            <xsl:when test="$langval='konso'">kxc</xsl:when>
            <xsl:when test="$langval='brunei'">kxd</xsl:when>
            <xsl:when test="$langval='manumanaw karen'">kxf</xsl:when>
            <xsl:when test="$langval='karo (ethiopia)'">kxh</xsl:when>
            <xsl:when test="$langval='keningau murut'">kxi</xsl:when>
            <xsl:when test="$langval='kulfa'">kxj</xsl:when>
            <xsl:when test="$langval='zayein karen'">kxk</xsl:when>
            <xsl:when test="$langval='nepali kurux'">kxl</xsl:when>
            <xsl:when test="$langval='northern khmer'">kxm</xsl:when>
            <xsl:when test="$langval='kanowit-tanjong melanau'">kxn</xsl:when>
            <xsl:when test="$langval='kanoé'">kxo</xsl:when>
            <xsl:when test="$langval='wadiyara koli'">kxp</xsl:when>
            <xsl:when test="$langval='smärky kanum'">kxq</xsl:when>
            <xsl:when test="$langval='koro (papua new guinea)'">kxr</xsl:when>
            <xsl:when test="$langval='kangjia'">kxs</xsl:when>
            <xsl:when test="$langval='koiwat'">kxt</xsl:when>
            <xsl:when test="$langval='kui (india)'">kxu</xsl:when>
            <xsl:when test="$langval='kuvi'">kxv</xsl:when>
            <xsl:when test="$langval='konai'">kxw</xsl:when>
            <xsl:when test="$langval='likuba'">kxx</xsl:when>
            <xsl:when test="$langval='kayong'">kxy</xsl:when>
            <xsl:when test="$langval='kerewo'">kxz</xsl:when>
            <xsl:when test="$langval='kwaya'">kya</xsl:when>
            <xsl:when test="$langval='butbut kalinga'">kyb</xsl:when>
            <xsl:when test="$langval='kyaka'">kyc</xsl:when>
            <xsl:when test="$langval='karey'">kyd</xsl:when>
            <xsl:when test="$langval='krache'">kye</xsl:when>
            <xsl:when test="$langval='kouya'">kyf</xsl:when>
            <xsl:when test="$langval='keyagana'">kyg</xsl:when>
            <xsl:when test="$langval='karok'">kyh</xsl:when>
            <xsl:when test="$langval='kiput'">kyi</xsl:when>
            <xsl:when test="$langval='karao'">kyj</xsl:when>
            <xsl:when test="$langval='kamayo'">kyk</xsl:when>
            <xsl:when test="$langval='kalapuya'">kyl</xsl:when>
            <xsl:when test="$langval='kpatili'">kym</xsl:when>
            <xsl:when test="$langval='northern binukidnon'">kyn</xsl:when>
            <xsl:when test="$langval='kelon'">kyo</xsl:when>
            <xsl:when test="$langval='kang'">kyp</xsl:when>
            <xsl:when test="$langval='kenga'">kyq</xsl:when>
            <xsl:when test="$langval='kuruáya'">kyr</xsl:when>
            <xsl:when test="$langval='baram kayan'">kys</xsl:when>
            <xsl:when test="$langval='kayagar'">kyt</xsl:when>
            <xsl:when test="$langval='western kayah'">kyu</xsl:when>
            <xsl:when test="$langval='kayort'">kyv</xsl:when>
            <xsl:when test="$langval='kudmali'">kyw</xsl:when>
            <xsl:when test="$langval='rapoisi'">kyx</xsl:when>
            <xsl:when test="$langval='kambaira'">kyy</xsl:when>
            <xsl:when test="$langval='kayabí'">kyz</xsl:when>
            <xsl:when test="$langval='western karaboro'">kza</xsl:when>
            <xsl:when test="$langval='kaibobo'">kzb</xsl:when>
            <xsl:when test="$langval='bondoukou kulango'">kzc</xsl:when>
            <xsl:when test="$langval='kadai'">kzd</xsl:when>
            <xsl:when test="$langval='kosena'">kze</xsl:when>
            <xsl:when test="$langval='da''a kaili'">kzf</xsl:when>
            <xsl:when test="$langval='kikai'">kzg</xsl:when>
            <xsl:when test="$langval='kelabit'">kzi</xsl:when>
            <xsl:when test="$langval='coastal kadazan'">kzj</xsl:when>
            <xsl:when test="$langval='kazukuru'">kzk</xsl:when>
            <xsl:when test="$langval='kayeli'">kzl</xsl:when>
            <xsl:when test="$langval='kais'">kzm</xsl:when>
            <xsl:when test="$langval='kokola'">kzn</xsl:when>
            <xsl:when test="$langval='kaningi'">kzo</xsl:when>
            <xsl:when test="$langval='kaidipang'">kzp</xsl:when>
            <xsl:when test="$langval='kaike'">kzq</xsl:when>
            <xsl:when test="$langval='karang'">kzr</xsl:when>
            <xsl:when test="$langval='sugut dusun'">kzs</xsl:when>
            <xsl:when test="$langval='tambunan dusun'">kzt</xsl:when>
            <xsl:when test="$langval='kayupulau'">kzu</xsl:when>
            <xsl:when test="$langval='komyandaret'">kzv</xsl:when>
            <xsl:when test="$langval='karirí-xocó'">kzw</xsl:when>
            <xsl:when test="$langval='kamarian'">kzx</xsl:when>
            <xsl:when test="$langval='kango (tshopo district)'">kzy</xsl:when>
            <xsl:when test="$langval='kalabra'">kzz</xsl:when>
            <xsl:when test="$langval='southern subanen'">laa</xsl:when>
            <xsl:when test="$langval='linear a'">lab</xsl:when>
            <xsl:when test="$langval='lacandon'">lac</xsl:when>
            <xsl:when test="$langval='ladino'">lad</xsl:when>
            <xsl:when test="$langval='pattani'">lae</xsl:when>
            <xsl:when test="$langval='lafofa'">laf</xsl:when>
            <xsl:when test="$langval='langi'">lag</xsl:when>
            <xsl:when test="$langval='lahnda'">lah</xsl:when>
            <xsl:when test="$langval='lambya'">lai</xsl:when>
            <xsl:when test="$langval='lango (uganda)'">laj</xsl:when>
            <xsl:when test="$langval='laka (nigeria)'">lak</xsl:when>
            <xsl:when test="$langval='lalia'">lal</xsl:when>
            <xsl:when test="$langval='lamba'">lam</xsl:when>
            <xsl:when test="$langval='laru'">lan</xsl:when>
            <xsl:when test="$langval='lao'">lao</xsl:when>
            <xsl:when test="$langval='laka (chad)'">lap</xsl:when>
            <xsl:when test="$langval='qabiao'">laq</xsl:when>
            <xsl:when test="$langval='larteh'">lar</xsl:when>
            <xsl:when test="$langval='lama (togo)'">las</xsl:when>
            <xsl:when test="$langval='latin'">lat</xsl:when>
            <xsl:when test="$langval='laba'">lau</xsl:when>
            <xsl:when test="$langval='latvian'">lav</xsl:when>
            <xsl:when test="$langval='lauje'">law</xsl:when>
            <xsl:when test="$langval='tiwa'">lax</xsl:when>
            <xsl:when test="$langval='lama bai'">lay</xsl:when>
            <xsl:when test="$langval='aribwatsa'">laz</xsl:when>
            <xsl:when test="$langval='lui'">lba</xsl:when>
            <xsl:when test="$langval='label'">lbb</xsl:when>
            <xsl:when test="$langval='lakkia'">lbc</xsl:when>
            <xsl:when test="$langval='lak'">lbe</xsl:when>
            <xsl:when test="$langval='tinani'">lbf</xsl:when>
            <xsl:when test="$langval='laopang'">lbg</xsl:when>
            <xsl:when test="$langval='la''bi'">lbi</xsl:when>
            <xsl:when test="$langval='ladakhi'">lbj</xsl:when>
            <xsl:when test="$langval='central bontok'">lbk</xsl:when>
            <xsl:when test="$langval='libon bikol'">lbl</xsl:when>
            <xsl:when test="$langval='lodhi'">lbm</xsl:when>
            <xsl:when test="$langval='lamet'">lbn</xsl:when>
            <xsl:when test="$langval='laven'">lbo</xsl:when>
            <xsl:when test="$langval='wampar'">lbq</xsl:when>
            <xsl:when test="$langval='lohorung'">lbr</xsl:when>
            <xsl:when test="$langval='libyan sign language'">lbs</xsl:when>
            <xsl:when test="$langval='lachi'">lbt</xsl:when>
            <xsl:when test="$langval='labu'">lbu</xsl:when>
            <xsl:when test="$langval='lavatbura-lamusong'">lbv</xsl:when>
            <xsl:when test="$langval='tolaki'">lbw</xsl:when>
            <xsl:when test="$langval='lawangan'">lbx</xsl:when>
            <xsl:when test="$langval='lamu-lamu'">lby</xsl:when>
            <xsl:when test="$langval='lardil'">lbz</xsl:when>
            <xsl:when test="$langval='legenyem'">lcc</xsl:when>
            <xsl:when test="$langval='lola'">lcd</xsl:when>
            <xsl:when test="$langval='loncong'">lce</xsl:when>
            <xsl:when test="$langval='lubu'">lcf</xsl:when>
            <xsl:when test="$langval='luchazi'">lch</xsl:when>
            <xsl:when test="$langval='lisela'">lcl</xsl:when>
            <xsl:when test="$langval='tungag'">lcm</xsl:when>
            <xsl:when test="$langval='western lawa'">lcp</xsl:when>
            <xsl:when test="$langval='luhu'">lcq</xsl:when>
            <xsl:when test="$langval='lisabata-nuniali'">lcs</xsl:when>
            <xsl:when test="$langval='kla-dan'">lda</xsl:when>
            <xsl:when test="$langval='dũya'">ldb</xsl:when>
            <xsl:when test="$langval='luri'">ldd</xsl:when>
            <xsl:when test="$langval='lenyima'">ldg</xsl:when>
            <xsl:when test="$langval='lamja-dengsa-tola'">ldh</xsl:when>
            <xsl:when test="$langval='laari'">ldi</xsl:when>
            <xsl:when test="$langval='lemoro'">ldj</xsl:when>
            <xsl:when test="$langval='leelau'">ldk</xsl:when>
            <xsl:when test="$langval='kaan'">ldl</xsl:when>
            <xsl:when test="$langval='landoma'">ldm</xsl:when>
            <xsl:when test="$langval='láadan'">ldn</xsl:when>
            <xsl:when test="$langval='loo'">ldo</xsl:when>
            <xsl:when test="$langval='tso'">ldp</xsl:when>
            <xsl:when test="$langval='lufu'">ldq</xsl:when>
            <xsl:when test="$langval='lega-shabunda'">lea</xsl:when>
            <xsl:when test="$langval='lala-bisa'">leb</xsl:when>
            <xsl:when test="$langval='leco'">lec</xsl:when>
            <xsl:when test="$langval='lendu'">led</xsl:when>
            <xsl:when test="$langval='lyélé'">lee</xsl:when>
            <xsl:when test="$langval='lelemi'">lef</xsl:when>
            <xsl:when test="$langval='lenje'">leh</xsl:when>
            <xsl:when test="$langval='lemio'">lei</xsl:when>
            <xsl:when test="$langval='lengola'">lej</xsl:when>
            <xsl:when test="$langval='leipon'">lek</xsl:when>
            <xsl:when test="$langval='lele (democratic republic of congo)'">lel</xsl:when>
            <xsl:when test="$langval='nomaande'">lem</xsl:when>
            <xsl:when test="$langval='lenca'">len</xsl:when>
            <xsl:when test="$langval='leti (cameroon)'">leo</xsl:when>
            <xsl:when test="$langval='lepcha'">lep</xsl:when>
            <xsl:when test="$langval='lembena'">leq</xsl:when>
            <xsl:when test="$langval='lenkau'">ler</xsl:when>
            <xsl:when test="$langval='lese'">les</xsl:when>
            <xsl:when test="$langval='lesing-gelimi'">let</xsl:when>
            <xsl:when test="$langval='kara (papua new guinea)'">leu</xsl:when>
            <xsl:when test="$langval='lamma'">lev</xsl:when>
            <xsl:when test="$langval='ledo kaili'">lew</xsl:when>
            <xsl:when test="$langval='luang'">lex</xsl:when>
            <xsl:when test="$langval='lemolang'">ley</xsl:when>
            <xsl:when test="$langval='lezghian'">lez</xsl:when>
            <xsl:when test="$langval='lefa'">lfa</xsl:when>
            <xsl:when test="$langval='lingua franca nova'">lfn</xsl:when>
            <xsl:when test="$langval='lungga'">lga</xsl:when>
            <xsl:when test="$langval='laghu'">lgb</xsl:when>
            <xsl:when test="$langval='lugbara'">lgg</xsl:when>
            <xsl:when test="$langval='laghuu'">lgh</xsl:when>
            <xsl:when test="$langval='lengilu'">lgi</xsl:when>
            <xsl:when test="$langval='lingarak'">lgk</xsl:when>
            <xsl:when test="$langval='wala'">lgl</xsl:when>
            <xsl:when test="$langval='lega-mwenga'">lgm</xsl:when>
            <xsl:when test="$langval='opuuo'">lgn</xsl:when>
            <xsl:when test="$langval='logba'">lgq</xsl:when>
            <xsl:when test="$langval='lengo'">lgr</xsl:when>
            <xsl:when test="$langval='pahi'">lgt</xsl:when>
            <xsl:when test="$langval='longgu'">lgu</xsl:when>
            <xsl:when test="$langval='ligenza'">lgz</xsl:when>
            <xsl:when test="$langval='laha (viet nam)'">lha</xsl:when>
            <xsl:when test="$langval='laha (indonesia)'">lhh</xsl:when>
            <xsl:when test="$langval='lahu shi'">lhi</xsl:when>
            <xsl:when test="$langval='lahul lohar'">lhl</xsl:when>
            <xsl:when test="$langval='lhomi'">lhm</xsl:when>
            <xsl:when test="$langval='lahanan'">lhn</xsl:when>
            <xsl:when test="$langval='lhokpu'">lhp</xsl:when>
            <xsl:when test="$langval='mlahsö'">lhs</xsl:when>
            <xsl:when test="$langval='lo-toga'">lht</xsl:when>
            <xsl:when test="$langval='lahu'">lhu</xsl:when>
            <xsl:when test="$langval='west-central limba'">lia</xsl:when>
            <xsl:when test="$langval='likum'">lib</xsl:when>
            <xsl:when test="$langval='hlai'">lic</xsl:when>
            <xsl:when test="$langval='nyindrou'">lid</xsl:when>
            <xsl:when test="$langval='likila'">lie</xsl:when>
            <xsl:when test="$langval='limbu'">lif</xsl:when>
            <xsl:when test="$langval='ligbi'">lig</xsl:when>
            <xsl:when test="$langval='lihir'">lih</xsl:when>
            <xsl:when test="$langval='ligurian'">lij</xsl:when>
            <xsl:when test="$langval='lika'">lik</xsl:when>
            <xsl:when test="$langval='lillooet'">lil</xsl:when>
            <xsl:when test="$langval='limburgan'">lim</xsl:when>
            <xsl:when test="$langval='lingala'">lin</xsl:when>
            <xsl:when test="$langval='liki'">lio</xsl:when>
            <xsl:when test="$langval='sekpele'">lip</xsl:when>
            <xsl:when test="$langval='libido'">liq</xsl:when>
            <xsl:when test="$langval='liberian english'">lir</xsl:when>
            <xsl:when test="$langval='lisu'">lis</xsl:when>
            <xsl:when test="$langval='lithuanian'">lit</xsl:when>
            <xsl:when test="$langval='logorik'">liu</xsl:when>
            <xsl:when test="$langval='liv'">liv</xsl:when>
            <xsl:when test="$langval='col'">liw</xsl:when>
            <xsl:when test="$langval='liabuku'">lix</xsl:when>
            <xsl:when test="$langval='banda-bambari'">liy</xsl:when>
            <xsl:when test="$langval='libinza'">liz</xsl:when>
            <xsl:when test="$langval='golpa'">lja</xsl:when>
            <xsl:when test="$langval='rampi'">lje</xsl:when>
            <xsl:when test="$langval='laiyolo'">lji</xsl:when>
            <xsl:when test="$langval='li''o'">ljl</xsl:when>
            <xsl:when test="$langval='lampung api'">ljp</xsl:when>
            <xsl:when test="$langval='yirandali'">ljw</xsl:when>
            <xsl:when test="$langval='yuru'">ljx</xsl:when>
            <xsl:when test="$langval='lakalei'">lka</xsl:when>
            <xsl:when test="$langval='kabras'">lkb</xsl:when>
            <xsl:when test="$langval='kucong'">lkc</xsl:when>
            <xsl:when test="$langval='lakondê'">lkd</xsl:when>
            <xsl:when test="$langval='kenyi'">lke</xsl:when>
            <xsl:when test="$langval='lakha'">lkh</xsl:when>
            <xsl:when test="$langval='laki'">lki</xsl:when>
            <xsl:when test="$langval='remun'">lkj</xsl:when>
            <xsl:when test="$langval='laeko-libuat'">lkl</xsl:when>
            <xsl:when test="$langval='kalaamaya'">lkm</xsl:when>
            <xsl:when test="$langval='lakon'">lkn</xsl:when>
            <xsl:when test="$langval='khayo'">lko</xsl:when>
            <xsl:when test="$langval='päri'">lkr</xsl:when>
            <xsl:when test="$langval='kisa'">lks</xsl:when>
            <xsl:when test="$langval='lakota'">lkt</xsl:when>
            <xsl:when test="$langval='kungkari'">lku</xsl:when>
            <xsl:when test="$langval='lokoya'">lky</xsl:when>
            <xsl:when test="$langval='lala-roba'">lla</xsl:when>
            <xsl:when test="$langval='lolo'">llb</xsl:when>
            <xsl:when test="$langval='lele (guinea)'">llc</xsl:when>
            <xsl:when test="$langval='ladin'">lld</xsl:when>
            <xsl:when test="$langval='lele (papua new guinea)'">lle</xsl:when>
            <xsl:when test="$langval='hermit'">llf</xsl:when>
            <xsl:when test="$langval='lole'">llg</xsl:when>
            <xsl:when test="$langval='lamu'">llh</xsl:when>
            <xsl:when test="$langval='teke-laali'">lli</xsl:when>
            <xsl:when test="$langval='ladji ladji'">llj</xsl:when>
            <xsl:when test="$langval='lelak'">llk</xsl:when>
            <xsl:when test="$langval='lilau'">lll</xsl:when>
            <xsl:when test="$langval='lasalimu'">llm</xsl:when>
            <xsl:when test="$langval='lele (chad)'">lln</xsl:when>
            <xsl:when test="$langval='khlor'">llo</xsl:when>
            <xsl:when test="$langval='north efate'">llp</xsl:when>
            <xsl:when test="$langval='lolak'">llq</xsl:when>
            <xsl:when test="$langval='lithuanian sign language'">lls</xsl:when>
            <xsl:when test="$langval='lau'">llu</xsl:when>
            <xsl:when test="$langval='lauan'">llx</xsl:when>
            <xsl:when test="$langval='east limba'">lma</xsl:when>
            <xsl:when test="$langval='merei'">lmb</xsl:when>
            <xsl:when test="$langval='limilngan'">lmc</xsl:when>
            <xsl:when test="$langval='lumun'">lmd</xsl:when>
            <xsl:when test="$langval='pévé'">lme</xsl:when>
            <xsl:when test="$langval='south lembata'">lmf</xsl:when>
            <xsl:when test="$langval='lamogai'">lmg</xsl:when>
            <xsl:when test="$langval='lambichhong'">lmh</xsl:when>
            <xsl:when test="$langval='lombi'">lmi</xsl:when>
            <xsl:when test="$langval='west lembata'">lmj</xsl:when>
            <xsl:when test="$langval='lamkang'">lmk</xsl:when>
            <xsl:when test="$langval='hano'">lml</xsl:when>
            <xsl:when test="$langval='lambadi'">lmn</xsl:when>
            <xsl:when test="$langval='lombard'">lmo</xsl:when>
            <xsl:when test="$langval='limbum'">lmp</xsl:when>
            <xsl:when test="$langval='lamatuka'">lmq</xsl:when>
            <xsl:when test="$langval='lamalera'">lmr</xsl:when>
            <xsl:when test="$langval='lamenu'">lmu</xsl:when>
            <xsl:when test="$langval='lomaiviti'">lmv</xsl:when>
            <xsl:when test="$langval='lake miwok'">lmw</xsl:when>
            <xsl:when test="$langval='laimbue'">lmx</xsl:when>
            <xsl:when test="$langval='lamboya'">lmy</xsl:when>
            <xsl:when test="$langval='lumbee'">lmz</xsl:when>
            <xsl:when test="$langval='langbashe'">lna</xsl:when>
            <xsl:when test="$langval='mbalanhu'">lnb</xsl:when>
            <xsl:when test="$langval='lundayeh'">lnd</xsl:when>
            <xsl:when test="$langval='langobardic'">lng</xsl:when>
            <xsl:when test="$langval='lanoh'">lnh</xsl:when>
            <xsl:when test="$langval='daantanai'''">lni</xsl:when>
            <xsl:when test="$langval='leningitij'">lnj</xsl:when>
            <xsl:when test="$langval='south central banda'">lnl</xsl:when>
            <xsl:when test="$langval='langam'">lnm</xsl:when>
            <xsl:when test="$langval='lorediakarkar'">lnn</xsl:when>
            <xsl:when test="$langval='lango (sudan)'">lno</xsl:when>
            <xsl:when test="$langval='lamnso'''">lns</xsl:when>
            <xsl:when test="$langval='longuda'">lnu</xsl:when>
            <xsl:when test="$langval='lanima'">lnw</xsl:when>
            <xsl:when test="$langval='lonzo'">lnz</xsl:when>
            <xsl:when test="$langval='loloda'">loa</xsl:when>
            <xsl:when test="$langval='lobi'">lob</xsl:when>
            <xsl:when test="$langval='inonhan'">loc</xsl:when>
            <xsl:when test="$langval='saluan'">loe</xsl:when>
            <xsl:when test="$langval='logol'">lof</xsl:when>
            <xsl:when test="$langval='logo'">log</xsl:when>
            <xsl:when test="$langval='narim'">loh</xsl:when>
            <xsl:when test="$langval='loma (côte d''ivoire)'">loi</xsl:when>
            <xsl:when test="$langval='lou'">loj</xsl:when>
            <xsl:when test="$langval='loko'">lok</xsl:when>
            <xsl:when test="$langval='mongo'">lol</xsl:when>
            <xsl:when test="$langval='loma (liberia)'">lom</xsl:when>
            <xsl:when test="$langval='malawi lomwe'">lon</xsl:when>
            <xsl:when test="$langval='lombo'">loo</xsl:when>
            <xsl:when test="$langval='lopa'">lop</xsl:when>
            <xsl:when test="$langval='lobala'">loq</xsl:when>
            <xsl:when test="$langval='téén'">lor</xsl:when>
            <xsl:when test="$langval='loniu'">los</xsl:when>
            <xsl:when test="$langval='otuho'">lot</xsl:when>
            <xsl:when test="$langval='louisiana creole french'">lou</xsl:when>
            <xsl:when test="$langval='lopi'">lov</xsl:when>
            <xsl:when test="$langval='tampias lobu'">low</xsl:when>
            <xsl:when test="$langval='loun'">lox</xsl:when>
            <xsl:when test="$langval='loke'">loy</xsl:when>
            <xsl:when test="$langval='lozi'">loz</xsl:when>
            <xsl:when test="$langval='lelepa'">lpa</xsl:when>
            <xsl:when test="$langval='lepki'">lpe</xsl:when>
            <xsl:when test="$langval='long phuri naga'">lpn</xsl:when>
            <xsl:when test="$langval='lipo'">lpo</xsl:when>
            <xsl:when test="$langval='lopit'">lpx</xsl:when>
            <xsl:when test="$langval='rara bakati'''">lra</xsl:when>
            <xsl:when test="$langval='northern luri'">lrc</xsl:when>
            <xsl:when test="$langval='laurentian'">lre</xsl:when>
            <xsl:when test="$langval='laragia'">lrg</xsl:when>
            <xsl:when test="$langval='marachi'">lri</xsl:when>
            <xsl:when test="$langval='loarki'">lrk</xsl:when>
            <xsl:when test="$langval='lari'">lrl</xsl:when>
            <xsl:when test="$langval='marama'">lrm</xsl:when>
            <xsl:when test="$langval='lorang'">lrn</xsl:when>
            <xsl:when test="$langval='laro'">lro</xsl:when>
            <xsl:when test="$langval='southern yamphu'">lrr</xsl:when>
            <xsl:when test="$langval='larantuka malay'">lrt</xsl:when>
            <xsl:when test="$langval='larevat'">lrv</xsl:when>
            <xsl:when test="$langval='lemerig'">lrz</xsl:when>
            <xsl:when test="$langval='lasgerdi'">lsa</xsl:when>
            <xsl:when test="$langval='lishana deni'">lsd</xsl:when>
            <xsl:when test="$langval='lusengo'">lse</xsl:when>
            <xsl:when test="$langval='lyons sign language'">lsg</xsl:when>
            <xsl:when test="$langval='lish'">lsh</xsl:when>
            <xsl:when test="$langval='lashi'">lsi</xsl:when>
            <xsl:when test="$langval='latvian sign language'">lsl</xsl:when>
            <xsl:when test="$langval='saamia'">lsm</xsl:when>
            <xsl:when test="$langval='laos sign language'">lso</xsl:when>
            <xsl:when test="$langval='panamanian sign language'">lsp</xsl:when>
            <xsl:when test="$langval='aruop'">lsr</xsl:when>
            <xsl:when test="$langval='lasi'">lss</xsl:when>
            <xsl:when test="$langval='trinidad and tobago sign language'">lst</xsl:when>
            <xsl:when test="$langval='mauritian sign language'">lsy</xsl:when>
            <xsl:when test="$langval='late middle chinese'">ltc</xsl:when>
            <xsl:when test="$langval='latgalian'">ltg</xsl:when>
            <xsl:when test="$langval='leti (indonesia)'">lti</xsl:when>
            <xsl:when test="$langval='latundê'">ltn</xsl:when>
            <xsl:when test="$langval='tsotso'">lto</xsl:when>
            <xsl:when test="$langval='tachoni'">lts</xsl:when>
            <xsl:when test="$langval='latu'">ltu</xsl:when>
            <xsl:when test="$langval='luxembourgish'">ltz</xsl:when>
            <xsl:when test="$langval='luba-lulua'">lua</xsl:when>
            <xsl:when test="$langval='luba-katanga'">lub</xsl:when>
            <xsl:when test="$langval='aringa'">luc</xsl:when>
            <xsl:when test="$langval='ludian'">lud</xsl:when>
            <xsl:when test="$langval='luvale'">lue</xsl:when>
            <xsl:when test="$langval='laua'">luf</xsl:when>
            <xsl:when test="$langval='ganda'">lug</xsl:when>
            <xsl:when test="$langval='luiseno'">lui</xsl:when>
            <xsl:when test="$langval='luna'">luj</xsl:when>
            <xsl:when test="$langval='lunanakha'">luk</xsl:when>
            <xsl:when test="$langval='olu''bo'">lul</xsl:when>
            <xsl:when test="$langval='luimbi'">lum</xsl:when>
            <xsl:when test="$langval='lunda'">lun</xsl:when>
            <xsl:when test="$langval='luo (kenya and tanzania)'">luo</xsl:when>
            <xsl:when test="$langval='lumbu'">lup</xsl:when>
            <xsl:when test="$langval='lucumi'">luq</xsl:when>
            <xsl:when test="$langval='laura'">lur</xsl:when>
            <xsl:when test="$langval='lushai'">lus</xsl:when>
            <xsl:when test="$langval='lushootseed'">lut</xsl:when>
            <xsl:when test="$langval='lumba-yakkha'">luu</xsl:when>
            <xsl:when test="$langval='luwati'">luv</xsl:when>
            <xsl:when test="$langval='luo (cameroon)'">luw</xsl:when>
            <xsl:when test="$langval='luyia'">luy</xsl:when>
            <xsl:when test="$langval='southern luri'">luz</xsl:when>
            <xsl:when test="$langval='maku''a'">lva</xsl:when>
            <xsl:when test="$langval='lavukaleve'">lvk</xsl:when>
            <xsl:when test="$langval='standard latvian'">lvs</xsl:when>
            <xsl:when test="$langval='levuka'">lvu</xsl:when>
            <xsl:when test="$langval='lwalu'">lwa</xsl:when>
            <xsl:when test="$langval='lewo eleng'">lwe</xsl:when>
            <xsl:when test="$langval='wanga'">lwg</xsl:when>
            <xsl:when test="$langval='white lachi'">lwh</xsl:when>
            <xsl:when test="$langval='eastern lawa'">lwl</xsl:when>
            <xsl:when test="$langval='laomian'">lwm</xsl:when>
            <xsl:when test="$langval='luwo'">lwo</xsl:when>
            <xsl:when test="$langval='lewotobi'">lwt</xsl:when>
            <xsl:when test="$langval='lawu'">lwu</xsl:when>
            <xsl:when test="$langval='lewo'">lww</xsl:when>
            <xsl:when test="$langval='layakha'">lya</xsl:when>
            <xsl:when test="$langval='lyngngam'">lyg</xsl:when>
            <xsl:when test="$langval='luyana'">lyn</xsl:when>
            <xsl:when test="$langval='literary chinese'">lzh</xsl:when>
            <xsl:when test="$langval='litzlitz'">lzl</xsl:when>
            <xsl:when test="$langval='leinong naga'">lzn</xsl:when>
            <xsl:when test="$langval='laz'">lzz</xsl:when>
            <xsl:when test="$langval='san jerónimo tecóatl mazatec'">maa</xsl:when>
            <xsl:when test="$langval='yutanduchi mixtec'">mab</xsl:when>
            <xsl:when test="$langval='madurese'">mad</xsl:when>
            <xsl:when test="$langval='bo-rukul'">mae</xsl:when>
            <xsl:when test="$langval='mafa'">maf</xsl:when>
            <xsl:when test="$langval='magahi'">mag</xsl:when>
            <xsl:when test="$langval='marshallese'">mah</xsl:when>
            <xsl:when test="$langval='maithili'">mai</xsl:when>
            <xsl:when test="$langval='jalapa de díaz mazatec'">maj</xsl:when>
            <xsl:when test="$langval='makasar'">mak</xsl:when>
            <xsl:when test="$langval='malayalam'">mal</xsl:when>
            <xsl:when test="$langval='mam'">mam</xsl:when>
            <xsl:when test="$langval='mandingo'">man</xsl:when>
            <xsl:when test="$langval='chiquihuitlán mazatec'">maq</xsl:when>
            <xsl:when test="$langval='marathi'">mar</xsl:when>
            <xsl:when test="$langval='masai'">mas</xsl:when>
            <xsl:when test="$langval='san francisco matlatzinca'">mat</xsl:when>
            <xsl:when test="$langval='huautla mazatec'">mau</xsl:when>
            <xsl:when test="$langval='sateré-mawé'">mav</xsl:when>
            <xsl:when test="$langval='mampruli'">maw</xsl:when>
            <xsl:when test="$langval='north moluccan malay'">max</xsl:when>
            <xsl:when test="$langval='central mazahua'">maz</xsl:when>
            <xsl:when test="$langval='higaonon'">mba</xsl:when>
            <xsl:when test="$langval='western bukidnon manobo'">mbb</xsl:when>
            <xsl:when test="$langval='macushi'">mbc</xsl:when>
            <xsl:when test="$langval='dibabawon manobo'">mbd</xsl:when>
            <xsl:when test="$langval='molale'">mbe</xsl:when>
            <xsl:when test="$langval='baba malay'">mbf</xsl:when>
            <xsl:when test="$langval='mangseng'">mbh</xsl:when>
            <xsl:when test="$langval='ilianen manobo'">mbi</xsl:when>
            <xsl:when test="$langval='nadëb'">mbj</xsl:when>
            <xsl:when test="$langval='malol'">mbk</xsl:when>
            <xsl:when test="$langval='maxakalí'">mbl</xsl:when>
            <xsl:when test="$langval='ombamba'">mbm</xsl:when>
            <xsl:when test="$langval='macaguán'">mbn</xsl:when>
            <xsl:when test="$langval='mbo (cameroon)'">mbo</xsl:when>
            <xsl:when test="$langval='malayo'">mbp</xsl:when>
            <xsl:when test="$langval='maisin'">mbq</xsl:when>
            <xsl:when test="$langval='nukak makú'">mbr</xsl:when>
            <xsl:when test="$langval='sarangani manobo'">mbs</xsl:when>
            <xsl:when test="$langval='matigsalug manobo'">mbt</xsl:when>
            <xsl:when test="$langval='mbula-bwazza'">mbu</xsl:when>
            <xsl:when test="$langval='mbulungish'">mbv</xsl:when>
            <xsl:when test="$langval='maring'">mbw</xsl:when>
            <xsl:when test="$langval='mari (east sepik province)'">mbx</xsl:when>
            <xsl:when test="$langval='memoni'">mby</xsl:when>
            <xsl:when test="$langval='amoltepec mixtec'">mbz</xsl:when>
            <xsl:when test="$langval='maca'">mca</xsl:when>
            <xsl:when test="$langval='machiguenga'">mcb</xsl:when>
            <xsl:when test="$langval='bitur'">mcc</xsl:when>
            <xsl:when test="$langval='sharanahua'">mcd</xsl:when>
            <xsl:when test="$langval='itundujia mixtec'">mce</xsl:when>
            <xsl:when test="$langval='matsés'">mcf</xsl:when>
            <xsl:when test="$langval='mapoyo'">mcg</xsl:when>
            <xsl:when test="$langval='maquiritari'">mch</xsl:when>
            <xsl:when test="$langval='mese'">mci</xsl:when>
            <xsl:when test="$langval='mvanip'">mcj</xsl:when>
            <xsl:when test="$langval='mbunda'">mck</xsl:when>
            <xsl:when test="$langval='macaguaje'">mcl</xsl:when>
            <xsl:when test="$langval='malaccan creole portuguese'">mcm</xsl:when>
            <xsl:when test="$langval='masana'">mcn</xsl:when>
            <xsl:when test="$langval='coatlán mixe'">mco</xsl:when>
            <xsl:when test="$langval='makaa'">mcp</xsl:when>
            <xsl:when test="$langval='ese'">mcq</xsl:when>
            <xsl:when test="$langval='menya'">mcr</xsl:when>
            <xsl:when test="$langval='mambai'">mcs</xsl:when>
            <xsl:when test="$langval='mengisa'">mct</xsl:when>
            <xsl:when test="$langval='cameroon mambila'">mcu</xsl:when>
            <xsl:when test="$langval='minanibai'">mcv</xsl:when>
            <xsl:when test="$langval='mawa (chad)'">mcw</xsl:when>
            <xsl:when test="$langval='mpiemo'">mcx</xsl:when>
            <xsl:when test="$langval='south watut'">mcy</xsl:when>
            <xsl:when test="$langval='mawan'">mcz</xsl:when>
            <xsl:when test="$langval='mada (nigeria)'">mda</xsl:when>
            <xsl:when test="$langval='morigi'">mdb</xsl:when>
            <xsl:when test="$langval='male (papua new guinea)'">mdc</xsl:when>
            <xsl:when test="$langval='mbum'">mdd</xsl:when>
            <xsl:when test="$langval='maba (chad)'">mde</xsl:when>
            <xsl:when test="$langval='moksha'">mdf</xsl:when>
            <xsl:when test="$langval='massalat'">mdg</xsl:when>
            <xsl:when test="$langval='maguindanaon'">mdh</xsl:when>
            <xsl:when test="$langval='mamvu'">mdi</xsl:when>
            <xsl:when test="$langval='mangbetu'">mdj</xsl:when>
            <xsl:when test="$langval='mangbutu'">mdk</xsl:when>
            <xsl:when test="$langval='maltese sign language'">mdl</xsl:when>
            <xsl:when test="$langval='mayogo'">mdm</xsl:when>
            <xsl:when test="$langval='mbati'">mdn</xsl:when>
            <xsl:when test="$langval='mbala'">mdp</xsl:when>
            <xsl:when test="$langval='mbole'">mdq</xsl:when>
            <xsl:when test="$langval='mandar'">mdr</xsl:when>
            <xsl:when test="$langval='maria (papua new guinea)'">mds</xsl:when>
            <xsl:when test="$langval='mbere'">mdt</xsl:when>
            <xsl:when test="$langval='mboko'">mdu</xsl:when>
            <xsl:when test="$langval='santa lucía monteverde mixtec'">mdv</xsl:when>
            <xsl:when test="$langval='mbosi'">mdw</xsl:when>
            <xsl:when test="$langval='dizin'">mdx</xsl:when>
            <xsl:when test="$langval='male (ethiopia)'">mdy</xsl:when>
            <xsl:when test="$langval='suruí do pará'">mdz</xsl:when>
            <xsl:when test="$langval='menka'">mea</xsl:when>
            <xsl:when test="$langval='ikobi'">meb</xsl:when>
            <xsl:when test="$langval='mara'">mec</xsl:when>
            <xsl:when test="$langval='melpa'">med</xsl:when>
            <xsl:when test="$langval='mengen'">mee</xsl:when>
            <xsl:when test="$langval='megam'">mef</xsl:when>
            <xsl:when test="$langval='southwestern tlaxiaco mixtec'">meh</xsl:when>
            <xsl:when test="$langval='midob'">mei</xsl:when>
            <xsl:when test="$langval='meyah'">mej</xsl:when>
            <xsl:when test="$langval='mekeo'">mek</xsl:when>
            <xsl:when test="$langval='central melanau'">mel</xsl:when>
            <xsl:when test="$langval='mangala'">mem</xsl:when>
            <xsl:when test="$langval='mende (sierra leone)'">men</xsl:when>
            <xsl:when test="$langval='kedah malay'">meo</xsl:when>
            <xsl:when test="$langval='miriwung'">mep</xsl:when>
            <xsl:when test="$langval='merey'">meq</xsl:when>
            <xsl:when test="$langval='meru'">mer</xsl:when>
            <xsl:when test="$langval='masmaje'">mes</xsl:when>
            <xsl:when test="$langval='mato'">met</xsl:when>
            <xsl:when test="$langval='motu'">meu</xsl:when>
            <xsl:when test="$langval='mano'">mev</xsl:when>
            <xsl:when test="$langval='maaka'">mew</xsl:when>
            <xsl:when test="$langval='hassaniyya'">mey</xsl:when>
            <xsl:when test="$langval='menominee'">mez</xsl:when>
            <xsl:when test="$langval='pattani malay'">mfa</xsl:when>
            <xsl:when test="$langval='bangka'">mfb</xsl:when>
            <xsl:when test="$langval='mba'">mfc</xsl:when>
            <xsl:when test="$langval='mendankwe-nkwen'">mfd</xsl:when>
            <xsl:when test="$langval='morisyen'">mfe</xsl:when>
            <xsl:when test="$langval='naki'">mff</xsl:when>
            <xsl:when test="$langval='mogofin'">mfg</xsl:when>
            <xsl:when test="$langval='matal'">mfh</xsl:when>
            <xsl:when test="$langval='wandala'">mfi</xsl:when>
            <xsl:when test="$langval='mefele'">mfj</xsl:when>
            <xsl:when test="$langval='north mofu'">mfk</xsl:when>
            <xsl:when test="$langval='putai'">mfl</xsl:when>
            <xsl:when test="$langval='marghi south'">mfm</xsl:when>
            <xsl:when test="$langval='cross river mbembe'">mfn</xsl:when>
            <xsl:when test="$langval='mbe'">mfo</xsl:when>
            <xsl:when test="$langval='makassar malay'">mfp</xsl:when>
            <xsl:when test="$langval='moba'">mfq</xsl:when>
            <xsl:when test="$langval='marithiel'">mfr</xsl:when>
            <xsl:when test="$langval='mexican sign language'">mfs</xsl:when>
            <xsl:when test="$langval='mokerang'">mft</xsl:when>
            <xsl:when test="$langval='mbwela'">mfu</xsl:when>
            <xsl:when test="$langval='mandjak'">mfv</xsl:when>
            <xsl:when test="$langval='mulaha'">mfw</xsl:when>
            <xsl:when test="$langval='melo'">mfx</xsl:when>
            <xsl:when test="$langval='mayo'">mfy</xsl:when>
            <xsl:when test="$langval='mabaan'">mfz</xsl:when>
            <xsl:when test="$langval='middle irish (900-1200)'">mga</xsl:when>
            <xsl:when test="$langval='mararit'">mgb</xsl:when>
            <xsl:when test="$langval='morokodo'">mgc</xsl:when>
            <xsl:when test="$langval='moru'">mgd</xsl:when>
            <xsl:when test="$langval='mango'">mge</xsl:when>
            <xsl:when test="$langval='maklew'">mgf</xsl:when>
            <xsl:when test="$langval='mpumpong'">mgg</xsl:when>
            <xsl:when test="$langval='makhuwa-meetto'">mgh</xsl:when>
            <xsl:when test="$langval='lijili'">mgi</xsl:when>
            <xsl:when test="$langval='abureni'">mgj</xsl:when>
            <xsl:when test="$langval='mawes'">mgk</xsl:when>
            <xsl:when test="$langval='maleu-kilenge'">mgl</xsl:when>
            <xsl:when test="$langval='mambae'">mgm</xsl:when>
            <xsl:when test="$langval='mbangi'">mgn</xsl:when>
            <xsl:when test="$langval='meta'''">mgo</xsl:when>
            <xsl:when test="$langval='eastern magar'">mgp</xsl:when>
            <xsl:when test="$langval='malila'">mgq</xsl:when>
            <xsl:when test="$langval='mambwe-lungu'">mgr</xsl:when>
            <xsl:when test="$langval='manda (tanzania)'">mgs</xsl:when>
            <xsl:when test="$langval='mongol'">mgt</xsl:when>
            <xsl:when test="$langval='mailu'">mgu</xsl:when>
            <xsl:when test="$langval='matengo'">mgv</xsl:when>
            <xsl:when test="$langval='matumbi'">mgw</xsl:when>
            <xsl:when test="$langval='mbunga'">mgy</xsl:when>
            <xsl:when test="$langval='mbugwe'">mgz</xsl:when>
            <xsl:when test="$langval='manda (india)'">mha</xsl:when>
            <xsl:when test="$langval='mahongwe'">mhb</xsl:when>
            <xsl:when test="$langval='mocho'">mhc</xsl:when>
            <xsl:when test="$langval='mbugu'">mhd</xsl:when>
            <xsl:when test="$langval='besisi'">mhe</xsl:when>
            <xsl:when test="$langval='mamaa'">mhf</xsl:when>
            <xsl:when test="$langval='margu'">mhg</xsl:when>
            <xsl:when test="$langval='ma''di'">mhi</xsl:when>
            <xsl:when test="$langval='mogholi'">mhj</xsl:when>
            <xsl:when test="$langval='mungaka'">mhk</xsl:when>
            <xsl:when test="$langval='mauwake'">mhl</xsl:when>
            <xsl:when test="$langval='makhuwa-moniga'">mhm</xsl:when>
            <xsl:when test="$langval='mócheno'">mhn</xsl:when>
            <xsl:when test="$langval='mashi (zambia)'">mho</xsl:when>
            <xsl:when test="$langval='balinese malay'">mhp</xsl:when>
            <xsl:when test="$langval='mandan'">mhq</xsl:when>
            <xsl:when test="$langval='eastern mari'">mhr</xsl:when>
            <xsl:when test="$langval='buru (indonesia)'">mhs</xsl:when>
            <xsl:when test="$langval='mandahuaca'">mht</xsl:when>
            <xsl:when test="$langval='digaro-mishmi'">mhu</xsl:when>
            <xsl:when test="$langval='mbukushu'">mhw</xsl:when>
            <xsl:when test="$langval='maru'">mhx</xsl:when>
            <xsl:when test="$langval='ma''anyan'">mhy</xsl:when>
            <xsl:when test="$langval='mor (mor islands)'">mhz</xsl:when>
            <xsl:when test="$langval='miami'">mia</xsl:when>
            <xsl:when test="$langval='atatláhuca mixtec'">mib</xsl:when>
            <xsl:when test="$langval='mi''kmaq'">mic</xsl:when>
            <xsl:when test="$langval='mandaic'">mid</xsl:when>
            <xsl:when test="$langval='ocotepec mixtec'">mie</xsl:when>
            <xsl:when test="$langval='mofu-gudur'">mif</xsl:when>
            <xsl:when test="$langval='san miguel el grande mixtec'">mig</xsl:when>
            <xsl:when test="$langval='chayuco mixtec'">mih</xsl:when>
            <xsl:when test="$langval='chigmecatitlán mixtec'">mii</xsl:when>
            <xsl:when test="$langval='abar'">mij</xsl:when>
            <xsl:when test="$langval='mikasuki'">mik</xsl:when>
            <xsl:when test="$langval='peñoles mixtec'">mil</xsl:when>
            <xsl:when test="$langval='alacatlatzala mixtec'">mim</xsl:when>
            <xsl:when test="$langval='minangkabau'">min</xsl:when>
            <xsl:when test="$langval='pinotepa nacional mixtec'">mio</xsl:when>
            <xsl:when test="$langval='apasco-apoala mixtec'">mip</xsl:when>
            <xsl:when test="$langval='mískito'">miq</xsl:when>
            <xsl:when test="$langval='isthmus mixe'">mir</xsl:when>
            <xsl:when test="$langval='uncoded languages'">mis</xsl:when>
            <xsl:when test="$langval='southern puebla mixtec'">mit</xsl:when>
            <xsl:when test="$langval='cacaloxtepec mixtec'">miu</xsl:when>
            <xsl:when test="$langval='akoye'">miw</xsl:when>
            <xsl:when test="$langval='mixtepec mixtec'">mix</xsl:when>
            <xsl:when test="$langval='ayutla mixtec'">miy</xsl:when>
            <xsl:when test="$langval='coatzospan mixtec'">miz</xsl:when>
            <xsl:when test="$langval='san juan colorado mixtec'">mjc</xsl:when>
            <xsl:when test="$langval='northwest maidu'">mjd</xsl:when>
            <xsl:when test="$langval='muskum'">mje</xsl:when>
            <xsl:when test="$langval='tu'">mjg</xsl:when>
            <xsl:when test="$langval='mwera (nyasa)'">mjh</xsl:when>
            <xsl:when test="$langval='kim mun'">mji</xsl:when>
            <xsl:when test="$langval='mawak'">mjj</xsl:when>
            <xsl:when test="$langval='matukar'">mjk</xsl:when>
            <xsl:when test="$langval='mandeali'">mjl</xsl:when>
            <xsl:when test="$langval='medebur'">mjm</xsl:when>
            <xsl:when test="$langval='ma (papua new guinea)'">mjn</xsl:when>
            <xsl:when test="$langval='malankuravan'">mjo</xsl:when>
            <xsl:when test="$langval='malapandaram'">mjp</xsl:when>
            <xsl:when test="$langval='malaryan'">mjq</xsl:when>
            <xsl:when test="$langval='malavedan'">mjr</xsl:when>
            <xsl:when test="$langval='miship'">mjs</xsl:when>
            <xsl:when test="$langval='sauria paharia'">mjt</xsl:when>
            <xsl:when test="$langval='manna-dora'">mju</xsl:when>
            <xsl:when test="$langval='mannan'">mjv</xsl:when>
            <xsl:when test="$langval='karbi'">mjw</xsl:when>
            <xsl:when test="$langval='mahali'">mjx</xsl:when>
            <xsl:when test="$langval='mahican'">mjy</xsl:when>
            <xsl:when test="$langval='majhi'">mjz</xsl:when>
            <xsl:when test="$langval='mbre'">mka</xsl:when>
            <xsl:when test="$langval='mal paharia'">mkb</xsl:when>
            <xsl:when test="$langval='siliput'">mkc</xsl:when>
            <xsl:when test="$langval='macedonian'">mkd</xsl:when>
            <xsl:when test="$langval='mawchi'">mke</xsl:when>
            <xsl:when test="$langval='miya'">mkf</xsl:when>
            <xsl:when test="$langval='mak (china)'">mkg</xsl:when>
            <xsl:when test="$langval='dhatki'">mki</xsl:when>
            <xsl:when test="$langval='mokilese'">mkj</xsl:when>
            <xsl:when test="$langval='byep'">mkk</xsl:when>
            <xsl:when test="$langval='mokole'">mkl</xsl:when>
            <xsl:when test="$langval='moklen'">mkm</xsl:when>
            <xsl:when test="$langval='kupang malay'">mkn</xsl:when>
            <xsl:when test="$langval='mingang doso'">mko</xsl:when>
            <xsl:when test="$langval='moikodi'">mkp</xsl:when>
            <xsl:when test="$langval='bay miwok'">mkq</xsl:when>
            <xsl:when test="$langval='malas'">mkr</xsl:when>
            <xsl:when test="$langval='silacayoapan mixtec'">mks</xsl:when>
            <xsl:when test="$langval='vamale'">mkt</xsl:when>
            <xsl:when test="$langval='konyanka maninka'">mku</xsl:when>
            <xsl:when test="$langval='mafea'">mkv</xsl:when>
            <xsl:when test="$langval='kituba (congo)'">mkw</xsl:when>
            <xsl:when test="$langval='kinamiging manobo'">mkx</xsl:when>
            <xsl:when test="$langval='east makian'">mky</xsl:when>
            <xsl:when test="$langval='makasae'">mkz</xsl:when>
            <xsl:when test="$langval='malo'">mla</xsl:when>
            <xsl:when test="$langval='mbule'">mlb</xsl:when>
            <xsl:when test="$langval='cao lan'">mlc</xsl:when>
            <xsl:when test="$langval='manambu'">mle</xsl:when>
            <xsl:when test="$langval='mal'">mlf</xsl:when>
            <xsl:when test="$langval='malagasy'">mlg</xsl:when>
            <xsl:when test="$langval='mape'">mlh</xsl:when>
            <xsl:when test="$langval='malimpung'">mli</xsl:when>
            <xsl:when test="$langval='miltu'">mlj</xsl:when>
            <xsl:when test="$langval='ilwana'">mlk</xsl:when>
            <xsl:when test="$langval='malua bay'">mll</xsl:when>
            <xsl:when test="$langval='mulam'">mlm</xsl:when>
            <xsl:when test="$langval='malango'">mln</xsl:when>
            <xsl:when test="$langval='mlomp'">mlo</xsl:when>
            <xsl:when test="$langval='bargam'">mlp</xsl:when>
            <xsl:when test="$langval='western maninkakan'">mlq</xsl:when>
            <xsl:when test="$langval='vame'">mlr</xsl:when>
            <xsl:when test="$langval='masalit'">mls</xsl:when>
            <xsl:when test="$langval='maltese'">mlt</xsl:when>
            <xsl:when test="$langval='to''abaita'">mlu</xsl:when>
            <xsl:when test="$langval='motlav'">mlv</xsl:when>
            <xsl:when test="$langval='moloko'">mlw</xsl:when>
            <xsl:when test="$langval='malfaxal'">mlx</xsl:when>
            <xsl:when test="$langval='malaynon'">mlz</xsl:when>
            <xsl:when test="$langval='mama'">mma</xsl:when>
            <xsl:when test="$langval='momina'">mmb</xsl:when>
            <xsl:when test="$langval='michoacán mazahua'">mmc</xsl:when>
            <xsl:when test="$langval='maonan'">mmd</xsl:when>
            <xsl:when test="$langval='mae'">mme</xsl:when>
            <xsl:when test="$langval='mundat'">mmf</xsl:when>
            <xsl:when test="$langval='north ambrym'">mmg</xsl:when>
            <xsl:when test="$langval='mehináku'">mmh</xsl:when>
            <xsl:when test="$langval='musar'">mmi</xsl:when>
            <xsl:when test="$langval='majhwar'">mmj</xsl:when>
            <xsl:when test="$langval='mukha-dora'">mmk</xsl:when>
            <xsl:when test="$langval='man met'">mml</xsl:when>
            <xsl:when test="$langval='maii'">mmm</xsl:when>
            <xsl:when test="$langval='mamanwa'">mmn</xsl:when>
            <xsl:when test="$langval='mangga buang'">mmo</xsl:when>
            <xsl:when test="$langval='siawi'">mmp</xsl:when>
            <xsl:when test="$langval='musak'">mmq</xsl:when>
            <xsl:when test="$langval='western xiangxi miao'">mmr</xsl:when>
            <xsl:when test="$langval='malalamai'">mmt</xsl:when>
            <xsl:when test="$langval='mmaala'">mmu</xsl:when>
            <xsl:when test="$langval='miriti'">mmv</xsl:when>
            <xsl:when test="$langval='emae'">mmw</xsl:when>
            <xsl:when test="$langval='madak'">mmx</xsl:when>
            <xsl:when test="$langval='migaama'">mmy</xsl:when>
            <xsl:when test="$langval='mabaale'">mmz</xsl:when>
            <xsl:when test="$langval='mbula'">mna</xsl:when>
            <xsl:when test="$langval='muna'">mnb</xsl:when>
            <xsl:when test="$langval='manchu'">mnc</xsl:when>
            <xsl:when test="$langval='mondé'">mnd</xsl:when>
            <xsl:when test="$langval='naba'">mne</xsl:when>
            <xsl:when test="$langval='mundani'">mnf</xsl:when>
            <xsl:when test="$langval='eastern mnong'">mng</xsl:when>
            <xsl:when test="$langval='mono (democratic republic of congo)'">mnh</xsl:when>
            <xsl:when test="$langval='manipuri'">mni</xsl:when>
            <xsl:when test="$langval='munji'">mnj</xsl:when>
            <xsl:when test="$langval='mandinka'">mnk</xsl:when>
            <xsl:when test="$langval='tiale'">mnl</xsl:when>
            <xsl:when test="$langval='mapena'">mnm</xsl:when>
            <xsl:when test="$langval='southern mnong'">mnn</xsl:when>
            <xsl:when test="$langval='min bei chinese'">mnp</xsl:when>
            <xsl:when test="$langval='minriq'">mnq</xsl:when>
            <xsl:when test="$langval='mono (usa)'">mnr</xsl:when>
            <xsl:when test="$langval='mansi'">mns</xsl:when>
            <xsl:when test="$langval='mer'">mnu</xsl:when>
            <xsl:when test="$langval='rennell-bellona'">mnv</xsl:when>
            <xsl:when test="$langval='mon'">mnw</xsl:when>
            <xsl:when test="$langval='manikion'">mnx</xsl:when>
            <xsl:when test="$langval='manyawa'">mny</xsl:when>
            <xsl:when test="$langval='moni'">mnz</xsl:when>
            <xsl:when test="$langval='mwan'">moa</xsl:when>
            <xsl:when test="$langval='mocoví'">moc</xsl:when>
            <xsl:when test="$langval='mobilian'">mod</xsl:when>
            <xsl:when test="$langval='montagnais'">moe</xsl:when>
            <xsl:when test="$langval='mongondow'">mog</xsl:when>
            <xsl:when test="$langval='mohawk'">moh</xsl:when>
            <xsl:when test="$langval='mboi'">moi</xsl:when>
            <xsl:when test="$langval='monzombo'">moj</xsl:when>
            <xsl:when test="$langval='morori'">mok</xsl:when>
            <xsl:when test="$langval='mangue'">mom</xsl:when>
            <xsl:when test="$langval='mongolian'">mon</xsl:when>
            <xsl:when test="$langval='monom'">moo</xsl:when>
            <xsl:when test="$langval='mopán maya'">mop</xsl:when>
            <xsl:when test="$langval='mor (bomberai peninsula)'">moq</xsl:when>
            <xsl:when test="$langval='moro'">mor</xsl:when>
            <xsl:when test="$langval='mossi'">mos</xsl:when>
            <xsl:when test="$langval='barí'">mot</xsl:when>
            <xsl:when test="$langval='mogum'">mou</xsl:when>
            <xsl:when test="$langval='mohave'">mov</xsl:when>
            <xsl:when test="$langval='moi (congo)'">mow</xsl:when>
            <xsl:when test="$langval='molima'">mox</xsl:when>
            <xsl:when test="$langval='shekkacho'">moy</xsl:when>
            <xsl:when test="$langval='mukulu'">moz</xsl:when>
            <xsl:when test="$langval='mpoto'">mpa</xsl:when>
            <xsl:when test="$langval='mullukmulluk'">mpb</xsl:when>
            <xsl:when test="$langval='mangarayi'">mpc</xsl:when>
            <xsl:when test="$langval='machinere'">mpd</xsl:when>
            <xsl:when test="$langval='majang'">mpe</xsl:when>
            <xsl:when test="$langval='marba'">mpg</xsl:when>
            <xsl:when test="$langval='maung'">mph</xsl:when>
            <xsl:when test="$langval='mpade'">mpi</xsl:when>
            <xsl:when test="$langval='martu wangka'">mpj</xsl:when>
            <xsl:when test="$langval='mbara (chad)'">mpk</xsl:when>
            <xsl:when test="$langval='middle watut'">mpl</xsl:when>
            <xsl:when test="$langval='yosondúa mixtec'">mpm</xsl:when>
            <xsl:when test="$langval='mindiri'">mpn</xsl:when>
            <xsl:when test="$langval='miu'">mpo</xsl:when>
            <xsl:when test="$langval='migabac'">mpp</xsl:when>
            <xsl:when test="$langval='matís'">mpq</xsl:when>
            <xsl:when test="$langval='vangunu'">mpr</xsl:when>
            <xsl:when test="$langval='dadibi'">mps</xsl:when>
            <xsl:when test="$langval='mian'">mpt</xsl:when>
            <xsl:when test="$langval='makuráp'">mpu</xsl:when>
            <xsl:when test="$langval='mungkip'">mpv</xsl:when>
            <xsl:when test="$langval='mapidian'">mpw</xsl:when>
            <xsl:when test="$langval='misima-panaeati'">mpx</xsl:when>
            <xsl:when test="$langval='mapia'">mpy</xsl:when>
            <xsl:when test="$langval='mpi'">mpz</xsl:when>
            <xsl:when test="$langval='maba (indonesia)'">mqa</xsl:when>
            <xsl:when test="$langval='mbuko'">mqb</xsl:when>
            <xsl:when test="$langval='mangole'">mqc</xsl:when>
            <xsl:when test="$langval='matepi'">mqe</xsl:when>
            <xsl:when test="$langval='momuna'">mqf</xsl:when>
            <xsl:when test="$langval='kota bangun kutai malay'">mqg</xsl:when>
            <xsl:when test="$langval='tlazoyaltepec mixtec'">mqh</xsl:when>
            <xsl:when test="$langval='mariri'">mqi</xsl:when>
            <xsl:when test="$langval='mamasa'">mqj</xsl:when>
            <xsl:when test="$langval='rajah kabunsuwan manobo'">mqk</xsl:when>
            <xsl:when test="$langval='mbelime'">mql</xsl:when>
            <xsl:when test="$langval='south marquesan'">mqm</xsl:when>
            <xsl:when test="$langval='moronene'">mqn</xsl:when>
            <xsl:when test="$langval='modole'">mqo</xsl:when>
            <xsl:when test="$langval='manipa'">mqp</xsl:when>
            <xsl:when test="$langval='minokok'">mqq</xsl:when>
            <xsl:when test="$langval='mander'">mqr</xsl:when>
            <xsl:when test="$langval='west makian'">mqs</xsl:when>
            <xsl:when test="$langval='mok'">mqt</xsl:when>
            <xsl:when test="$langval='mandari'">mqu</xsl:when>
            <xsl:when test="$langval='mosimo'">mqv</xsl:when>
            <xsl:when test="$langval='murupi'">mqw</xsl:when>
            <xsl:when test="$langval='mamuju'">mqx</xsl:when>
            <xsl:when test="$langval='manggarai'">mqy</xsl:when>
            <xsl:when test="$langval='pano'">mqz</xsl:when>
            <xsl:when test="$langval='mlabri'">mra</xsl:when>
            <xsl:when test="$langval='marino'">mrb</xsl:when>
            <xsl:when test="$langval='maricopa'">mrc</xsl:when>
            <xsl:when test="$langval='western magar'">mrd</xsl:when>
            <xsl:when test="$langval='martha''s vineyard sign language'">mre</xsl:when>
            <xsl:when test="$langval='elseng'">mrf</xsl:when>
            <xsl:when test="$langval='mising'">mrg</xsl:when>
            <xsl:when test="$langval='mara chin'">mrh</xsl:when>
            <xsl:when test="$langval='maori'">mri</xsl:when>
            <xsl:when test="$langval='western mari'">mrj</xsl:when>
            <xsl:when test="$langval='hmwaveke'">mrk</xsl:when>
            <xsl:when test="$langval='mortlockese'">mrl</xsl:when>
            <xsl:when test="$langval='merlav'">mrm</xsl:when>
            <xsl:when test="$langval='cheke holo'">mrn</xsl:when>
            <xsl:when test="$langval='mru'">mro</xsl:when>
            <xsl:when test="$langval='morouas'">mrp</xsl:when>
            <xsl:when test="$langval='north marquesan'">mrq</xsl:when>
            <xsl:when test="$langval='maria (india)'">mrr</xsl:when>
            <xsl:when test="$langval='maragus'">mrs</xsl:when>
            <xsl:when test="$langval='marghi central'">mrt</xsl:when>
            <xsl:when test="$langval='mono (cameroon)'">mru</xsl:when>
            <xsl:when test="$langval='mangareva'">mrv</xsl:when>
            <xsl:when test="$langval='maranao'">mrw</xsl:when>
            <xsl:when test="$langval='maremgi'">mrx</xsl:when>
            <xsl:when test="$langval='mandaya'">mry</xsl:when>
            <xsl:when test="$langval='marind'">mrz</xsl:when>
            <xsl:when test="$langval='malay (macrolanguage)'">msa</xsl:when>
            <xsl:when test="$langval='masbatenyo'">msb</xsl:when>
            <xsl:when test="$langval='sankaran maninka'">msc</xsl:when>
            <xsl:when test="$langval='yucatec maya sign language'">msd</xsl:when>
            <xsl:when test="$langval='musey'">mse</xsl:when>
            <xsl:when test="$langval='mekwei'">msf</xsl:when>
            <xsl:when test="$langval='moraid'">msg</xsl:when>
            <xsl:when test="$langval='masikoro malagasy'">msh</xsl:when>
            <xsl:when test="$langval='sabah malay'">msi</xsl:when>
            <xsl:when test="$langval='ma (democratic republic of congo)'">msj</xsl:when>
            <xsl:when test="$langval='mansaka'">msk</xsl:when>
            <xsl:when test="$langval='molof'">msl</xsl:when>
            <xsl:when test="$langval='agusan manobo'">msm</xsl:when>
            <xsl:when test="$langval='vurës'">msn</xsl:when>
            <xsl:when test="$langval='mombum'">mso</xsl:when>
            <xsl:when test="$langval='maritsauá'">msp</xsl:when>
            <xsl:when test="$langval='caac'">msq</xsl:when>
            <xsl:when test="$langval='mongolian sign language'">msr</xsl:when>
            <xsl:when test="$langval='west masela'">mss</xsl:when>
            <xsl:when test="$langval='musom'">msu</xsl:when>
            <xsl:when test="$langval='maslam'">msv</xsl:when>
            <xsl:when test="$langval='mansoanka'">msw</xsl:when>
            <xsl:when test="$langval='moresada'">msx</xsl:when>
            <xsl:when test="$langval='aruamu'">msy</xsl:when>
            <xsl:when test="$langval='momare'">msz</xsl:when>
            <xsl:when test="$langval='cotabato manobo'">mta</xsl:when>
            <xsl:when test="$langval='anyin morofo'">mtb</xsl:when>
            <xsl:when test="$langval='munit'">mtc</xsl:when>
            <xsl:when test="$langval='mualang'">mtd</xsl:when>
            <xsl:when test="$langval='mono (solomon islands)'">mte</xsl:when>
            <xsl:when test="$langval='murik (papua new guinea)'">mtf</xsl:when>
            <xsl:when test="$langval='una'">mtg</xsl:when>
            <xsl:when test="$langval='munggui'">mth</xsl:when>
            <xsl:when test="$langval='maiwa (papua new guinea)'">mti</xsl:when>
            <xsl:when test="$langval='moskona'">mtj</xsl:when>
            <xsl:when test="$langval='mbe'''">mtk</xsl:when>
            <xsl:when test="$langval='montol'">mtl</xsl:when>
            <xsl:when test="$langval='mator'">mtm</xsl:when>
            <xsl:when test="$langval='matagalpa'">mtn</xsl:when>
            <xsl:when test="$langval='totontepec mixe'">mto</xsl:when>
            <xsl:when test="$langval='wichí lhamtés nocten'">mtp</xsl:when>
            <xsl:when test="$langval='muong'">mtq</xsl:when>
            <xsl:when test="$langval='mewari'">mtr</xsl:when>
            <xsl:when test="$langval='yora'">mts</xsl:when>
            <xsl:when test="$langval='mota'">mtt</xsl:when>
            <xsl:when test="$langval='tututepec mixtec'">mtu</xsl:when>
            <xsl:when test="$langval='asaro''o'">mtv</xsl:when>
            <xsl:when test="$langval='southern binukidnon'">mtw</xsl:when>
            <xsl:when test="$langval='tidaá mixtec'">mtx</xsl:when>
            <xsl:when test="$langval='nabi'">mty</xsl:when>
            <xsl:when test="$langval='mundang'">mua</xsl:when>
            <xsl:when test="$langval='mubi'">mub</xsl:when>
            <xsl:when test="$langval='ajumbu'">muc</xsl:when>
            <xsl:when test="$langval='mednyj aleut'">mud</xsl:when>
            <xsl:when test="$langval='media lengua'">mue</xsl:when>
            <xsl:when test="$langval='musgu'">mug</xsl:when>
            <xsl:when test="$langval='mündü'">muh</xsl:when>
            <xsl:when test="$langval='musi'">mui</xsl:when>
            <xsl:when test="$langval='mabire'">muj</xsl:when>
            <xsl:when test="$langval='mugom'">muk</xsl:when>
            <xsl:when test="$langval='multiple languages'">mul</xsl:when>
            <xsl:when test="$langval='maiwala'">mum</xsl:when>
            <xsl:when test="$langval='nyong'">muo</xsl:when>
            <xsl:when test="$langval='malvi'">mup</xsl:when>
            <xsl:when test="$langval='eastern xiangxi miao'">muq</xsl:when>
            <xsl:when test="$langval='murle'">mur</xsl:when>
            <xsl:when test="$langval='creek'">mus</xsl:when>
            <xsl:when test="$langval='western muria'">mut</xsl:when>
            <xsl:when test="$langval='yaaku'">muu</xsl:when>
            <xsl:when test="$langval='muthuvan'">muv</xsl:when>
            <xsl:when test="$langval='bo-ung'">mux</xsl:when>
            <xsl:when test="$langval='muyang'">muy</xsl:when>
            <xsl:when test="$langval='mursi'">muz</xsl:when>
            <xsl:when test="$langval='manam'">mva</xsl:when>
            <xsl:when test="$langval='mattole'">mvb</xsl:when>
            <xsl:when test="$langval='mamboru'">mvd</xsl:when>
            <xsl:when test="$langval='marwari (pakistan)'">mve</xsl:when>
            <xsl:when test="$langval='peripheral mongolian'">mvf</xsl:when>
            <xsl:when test="$langval='yucuañe mixtec'">mvg</xsl:when>
            <xsl:when test="$langval='mulgi'">mvh</xsl:when>
            <xsl:when test="$langval='miyako'">mvi</xsl:when>
            <xsl:when test="$langval='mekmek'">mvk</xsl:when>
            <xsl:when test="$langval='mbara (australia)'">mvl</xsl:when>
            <xsl:when test="$langval='muya'">mvm</xsl:when>
            <xsl:when test="$langval='minaveha'">mvn</xsl:when>
            <xsl:when test="$langval='marovo'">mvo</xsl:when>
            <xsl:when test="$langval='duri'">mvp</xsl:when>
            <xsl:when test="$langval='moere'">mvq</xsl:when>
            <xsl:when test="$langval='marau'">mvr</xsl:when>
            <xsl:when test="$langval='massep'">mvs</xsl:when>
            <xsl:when test="$langval='mpotovoro'">mvt</xsl:when>
            <xsl:when test="$langval='marfa'">mvu</xsl:when>
            <xsl:when test="$langval='tagal murut'">mvv</xsl:when>
            <xsl:when test="$langval='machinga'">mvw</xsl:when>
            <xsl:when test="$langval='meoswar'">mvx</xsl:when>
            <xsl:when test="$langval='indus kohistani'">mvy</xsl:when>
            <xsl:when test="$langval='mesqan'">mvz</xsl:when>
            <xsl:when test="$langval='mwatebu'">mwa</xsl:when>
            <xsl:when test="$langval='juwal'">mwb</xsl:when>
            <xsl:when test="$langval='are'">mwc</xsl:when>
            <xsl:when test="$langval='mwera (chimwera)'">mwe</xsl:when>
            <xsl:when test="$langval='murrinh-patha'">mwf</xsl:when>
            <xsl:when test="$langval='aiklep'">mwg</xsl:when>
            <xsl:when test="$langval='mouk-aria'">mwh</xsl:when>
            <xsl:when test="$langval='labo'">mwi</xsl:when>
            <xsl:when test="$langval='kita maninkakan'">mwk</xsl:when>
            <xsl:when test="$langval='mirandese'">mwl</xsl:when>
            <xsl:when test="$langval='sar'">mwm</xsl:when>
            <xsl:when test="$langval='nyamwanga'">mwn</xsl:when>
            <xsl:when test="$langval='central maewo'">mwo</xsl:when>
            <xsl:when test="$langval='kala lagaw ya'">mwp</xsl:when>
            <xsl:when test="$langval='mün chin'">mwq</xsl:when>
            <xsl:when test="$langval='marwari'">mwr</xsl:when>
            <xsl:when test="$langval='mwimbi-muthambi'">mws</xsl:when>
            <xsl:when test="$langval='moken'">mwt</xsl:when>
            <xsl:when test="$langval='mittu'">mwu</xsl:when>
            <xsl:when test="$langval='mentawai'">mwv</xsl:when>
            <xsl:when test="$langval='hmong daw'">mww</xsl:when>
            <xsl:when test="$langval='mediak'">mwx</xsl:when>
            <xsl:when test="$langval='mosiro'">mwy</xsl:when>
            <xsl:when test="$langval='moingi'">mwz</xsl:when>
            <xsl:when test="$langval='northwest oaxaca mixtec'">mxa</xsl:when>
            <xsl:when test="$langval='tezoatlán mixtec'">mxb</xsl:when>
            <xsl:when test="$langval='manyika'">mxc</xsl:when>
            <xsl:when test="$langval='modang'">mxd</xsl:when>
            <xsl:when test="$langval='mele-fila'">mxe</xsl:when>
            <xsl:when test="$langval='malgbe'">mxf</xsl:when>
            <xsl:when test="$langval='mbangala'">mxg</xsl:when>
            <xsl:when test="$langval='mvuba'">mxh</xsl:when>
            <xsl:when test="$langval='mozarabic'">mxi</xsl:when>
            <xsl:when test="$langval='miju-mishmi'">mxj</xsl:when>
            <xsl:when test="$langval='monumbo'">mxk</xsl:when>
            <xsl:when test="$langval='maxi gbe'">mxl</xsl:when>
            <xsl:when test="$langval='meramera'">mxm</xsl:when>
            <xsl:when test="$langval='moi (indonesia)'">mxn</xsl:when>
            <xsl:when test="$langval='mbowe'">mxo</xsl:when>
            <xsl:when test="$langval='tlahuitoltepec mixe'">mxp</xsl:when>
            <xsl:when test="$langval='juquila mixe'">mxq</xsl:when>
            <xsl:when test="$langval='murik (malaysia)'">mxr</xsl:when>
            <xsl:when test="$langval='huitepec mixtec'">mxs</xsl:when>
            <xsl:when test="$langval='jamiltepec mixtec'">mxt</xsl:when>
            <xsl:when test="$langval='mada (cameroon)'">mxu</xsl:when>
            <xsl:when test="$langval='metlatónoc mixtec'">mxv</xsl:when>
            <xsl:when test="$langval='namo'">mxw</xsl:when>
            <xsl:when test="$langval='mahou'">mxx</xsl:when>
            <xsl:when test="$langval='southeastern nochixtlán mixtec'">mxy</xsl:when>
            <xsl:when test="$langval='central masela'">mxz</xsl:when>
            <xsl:when test="$langval='burmese'">mya</xsl:when>
            <xsl:when test="$langval='mbay'">myb</xsl:when>
            <xsl:when test="$langval='mayeka'">myc</xsl:when>
            <xsl:when test="$langval='maramba'">myd</xsl:when>
            <xsl:when test="$langval='myene'">mye</xsl:when>
            <xsl:when test="$langval='bambassi'">myf</xsl:when>
            <xsl:when test="$langval='manta'">myg</xsl:when>
            <xsl:when test="$langval='makah'">myh</xsl:when>
            <xsl:when test="$langval='mina (india)'">myi</xsl:when>
            <xsl:when test="$langval='mangayat'">myj</xsl:when>
            <xsl:when test="$langval='mamara senoufo'">myk</xsl:when>
            <xsl:when test="$langval='moma'">myl</xsl:when>
            <xsl:when test="$langval='me''en'">mym</xsl:when>
            <xsl:when test="$langval='anfillo'">myo</xsl:when>
            <xsl:when test="$langval='pirahã'">myp</xsl:when>
            <xsl:when test="$langval='muniche'">myr</xsl:when>
            <xsl:when test="$langval='mesmes'">mys</xsl:when>
            <xsl:when test="$langval='mundurukú'">myu</xsl:when>
            <xsl:when test="$langval='erzya'">myv</xsl:when>
            <xsl:when test="$langval='muyuw'">myw</xsl:when>
            <xsl:when test="$langval='masaaba'">myx</xsl:when>
            <xsl:when test="$langval='macuna'">myy</xsl:when>
            <xsl:when test="$langval='classical mandaic'">myz</xsl:when>
            <xsl:when test="$langval='santa maría zacatepec mixtec'">mza</xsl:when>
            <xsl:when test="$langval='tumzabt'">mzb</xsl:when>
            <xsl:when test="$langval='madagascar sign language'">mzc</xsl:when>
            <xsl:when test="$langval='malimba'">mzd</xsl:when>
            <xsl:when test="$langval='morawa'">mze</xsl:when>
            <xsl:when test="$langval='monastic sign language'">mzg</xsl:when>
            <xsl:when test="$langval='wichí lhamtés güisnay'">mzh</xsl:when>
            <xsl:when test="$langval='ixcatlán mazatec'">mzi</xsl:when>
            <xsl:when test="$langval='manya'">mzj</xsl:when>
            <xsl:when test="$langval='nigeria mambila'">mzk</xsl:when>
            <xsl:when test="$langval='mazatlán mixe'">mzl</xsl:when>
            <xsl:when test="$langval='mumuye'">mzm</xsl:when>
            <xsl:when test="$langval='mazanderani'">mzn</xsl:when>
            <xsl:when test="$langval='matipuhy'">mzo</xsl:when>
            <xsl:when test="$langval='movima'">mzp</xsl:when>
            <xsl:when test="$langval='mori atas'">mzq</xsl:when>
            <xsl:when test="$langval='marúbo'">mzr</xsl:when>
            <xsl:when test="$langval='macanese'">mzs</xsl:when>
            <xsl:when test="$langval='mintil'">mzt</xsl:when>
            <xsl:when test="$langval='inapang'">mzu</xsl:when>
            <xsl:when test="$langval='manza'">mzv</xsl:when>
            <xsl:when test="$langval='deg'">mzw</xsl:when>
            <xsl:when test="$langval='mawayana'">mzx</xsl:when>
            <xsl:when test="$langval='mozambican sign language'">mzy</xsl:when>
            <xsl:when test="$langval='maiadomu'">mzz</xsl:when>
            <xsl:when test="$langval='namla'">naa</xsl:when>
            <xsl:when test="$langval='southern nambikuára'">nab</xsl:when>
            <xsl:when test="$langval='narak'">nac</xsl:when>
            <xsl:when test="$langval='nijadali'">nad</xsl:when>
            <xsl:when test="$langval='naka''ela'">nae</xsl:when>
            <xsl:when test="$langval='nabak'">naf</xsl:when>
            <xsl:when test="$langval='naga pidgin'">nag</xsl:when>
            <xsl:when test="$langval='nalu'">naj</xsl:when>
            <xsl:when test="$langval='nakanai'">nak</xsl:when>
            <xsl:when test="$langval='nalik'">nal</xsl:when>
            <xsl:when test="$langval='ngan''gityemerri'">nam</xsl:when>
            <xsl:when test="$langval='min nan chinese'">nan</xsl:when>
            <xsl:when test="$langval='naaba'">nao</xsl:when>
            <xsl:when test="$langval='neapolitan'">nap</xsl:when>
            <xsl:when test="$langval='khoekhoe'">naq</xsl:when>
            <xsl:when test="$langval='iguta'">nar</xsl:when>
            <xsl:when test="$langval='naasioi'">nas</xsl:when>
            <xsl:when test="$langval='ca̱hungwa̱rya̱'">nat</xsl:when>
            <xsl:when test="$langval='nauru'">nau</xsl:when>
            <xsl:when test="$langval='navajo'">nav</xsl:when>
            <xsl:when test="$langval='nawuri'">naw</xsl:when>
            <xsl:when test="$langval='nakwi'">nax</xsl:when>
            <xsl:when test="$langval='narrinyeri'">nay</xsl:when>
            <xsl:when test="$langval='coatepec nahuatl'">naz</xsl:when>
            <xsl:when test="$langval='nyemba'">nba</xsl:when>
            <xsl:when test="$langval='ndoe'">nbb</xsl:when>
            <xsl:when test="$langval='chang naga'">nbc</xsl:when>
            <xsl:when test="$langval='ngbinda'">nbd</xsl:when>
            <xsl:when test="$langval='konyak naga'">nbe</xsl:when>
            <xsl:when test="$langval='nagarchal'">nbg</xsl:when>
            <xsl:when test="$langval='ngamo'">nbh</xsl:when>
            <xsl:when test="$langval='mao naga'">nbi</xsl:when>
            <xsl:when test="$langval='ngarinman'">nbj</xsl:when>
            <xsl:when test="$langval='nake'">nbk</xsl:when>
            <xsl:when test="$langval='south ndebele'">nbl</xsl:when>
            <xsl:when test="$langval='ngbaka ma''bo'">nbm</xsl:when>
            <xsl:when test="$langval='kuri'">nbn</xsl:when>
            <xsl:when test="$langval='nkukoli'">nbo</xsl:when>
            <xsl:when test="$langval='nnam'">nbp</xsl:when>
            <xsl:when test="$langval='nggem'">nbq</xsl:when>
            <xsl:when test="$langval='numana-nunku-gbantu-numbu'">nbr</xsl:when>
            <xsl:when test="$langval='namibian sign language'">nbs</xsl:when>
            <xsl:when test="$langval='na'">nbt</xsl:when>
            <xsl:when test="$langval='rongmei naga'">nbu</xsl:when>
            <xsl:when test="$langval='ngamambo'">nbv</xsl:when>
            <xsl:when test="$langval='southern ngbandi'">nbw</xsl:when>
            <xsl:when test="$langval='ningera'">nby</xsl:when>
            <xsl:when test="$langval='iyo'">nca</xsl:when>
            <xsl:when test="$langval='central nicobarese'">ncb</xsl:when>
            <xsl:when test="$langval='ponam'">ncc</xsl:when>
            <xsl:when test="$langval='nachering'">ncd</xsl:when>
            <xsl:when test="$langval='yale'">nce</xsl:when>
            <xsl:when test="$langval='notsi'">ncf</xsl:when>
            <xsl:when test="$langval='nisga''a'">ncg</xsl:when>
            <xsl:when test="$langval='central huasteca nahuatl'">nch</xsl:when>
            <xsl:when test="$langval='classical nahuatl'">nci</xsl:when>
            <xsl:when test="$langval='northern puebla nahuatl'">ncj</xsl:when>
            <xsl:when test="$langval='nakara'">nck</xsl:when>
            <xsl:when test="$langval='michoacán nahuatl'">ncl</xsl:when>
            <xsl:when test="$langval='nambo'">ncm</xsl:when>
            <xsl:when test="$langval='nauna'">ncn</xsl:when>
            <xsl:when test="$langval='sibe'">nco</xsl:when>
            <xsl:when test="$langval='ndaktup'">ncp</xsl:when>
            <xsl:when test="$langval='ncane'">ncr</xsl:when>
            <xsl:when test="$langval='nicaraguan sign language'">ncs</xsl:when>
            <xsl:when test="$langval='chothe naga'">nct</xsl:when>
            <xsl:when test="$langval='chumburung'">ncu</xsl:when>
            <xsl:when test="$langval='central puebla nahuatl'">ncx</xsl:when>
            <xsl:when test="$langval='natchez'">ncz</xsl:when>
            <xsl:when test="$langval='ndasa'">nda</xsl:when>
            <xsl:when test="$langval='kenswei nsei'">ndb</xsl:when>
            <xsl:when test="$langval='ndau'">ndc</xsl:when>
            <xsl:when test="$langval='nde-nsele-nta'">ndd</xsl:when>
            <xsl:when test="$langval='north ndebele'">nde</xsl:when>
            <xsl:when test="$langval='nadruvian'">ndf</xsl:when>
            <xsl:when test="$langval='ndengereko'">ndg</xsl:when>
            <xsl:when test="$langval='ndali'">ndh</xsl:when>
            <xsl:when test="$langval='samba leko'">ndi</xsl:when>
            <xsl:when test="$langval='ndamba'">ndj</xsl:when>
            <xsl:when test="$langval='ndaka'">ndk</xsl:when>
            <xsl:when test="$langval='ndolo'">ndl</xsl:when>
            <xsl:when test="$langval='ndam'">ndm</xsl:when>
            <xsl:when test="$langval='ngundi'">ndn</xsl:when>
            <xsl:when test="$langval='ndonga'">ndo</xsl:when>
            <xsl:when test="$langval='ndo'">ndp</xsl:when>
            <xsl:when test="$langval='ndombe'">ndq</xsl:when>
            <xsl:when test="$langval='ndoola'">ndr</xsl:when>
            <xsl:when test="$langval='low german'">nds</xsl:when>
            <xsl:when test="$langval='ndunga'">ndt</xsl:when>
            <xsl:when test="$langval='dugun'">ndu</xsl:when>
            <xsl:when test="$langval='ndut'">ndv</xsl:when>
            <xsl:when test="$langval='ndobo'">ndw</xsl:when>
            <xsl:when test="$langval='nduga'">ndx</xsl:when>
            <xsl:when test="$langval='lutos'">ndy</xsl:when>
            <xsl:when test="$langval='ndogo'">ndz</xsl:when>
            <xsl:when test="$langval='eastern ngad''a'">nea</xsl:when>
            <xsl:when test="$langval='toura (côte d''ivoire)'">neb</xsl:when>
            <xsl:when test="$langval='nedebang'">nec</xsl:when>
            <xsl:when test="$langval='nde-gbite'">ned</xsl:when>
            <xsl:when test="$langval='nêlêmwa-nixumwak'">nee</xsl:when>
            <xsl:when test="$langval='nefamese'">nef</xsl:when>
            <xsl:when test="$langval='negidal'">neg</xsl:when>
            <xsl:when test="$langval='nyenkha'">neh</xsl:when>
            <xsl:when test="$langval='neo-hittite'">nei</xsl:when>
            <xsl:when test="$langval='neko'">nej</xsl:when>
            <xsl:when test="$langval='neku'">nek</xsl:when>
            <xsl:when test="$langval='nemi'">nem</xsl:when>
            <xsl:when test="$langval='nengone'">nen</xsl:when>
            <xsl:when test="$langval='ná-meo'">neo</xsl:when>
            <xsl:when test="$langval='nepali (macrolanguage)'">nep</xsl:when>
            <xsl:when test="$langval='north central mixe'">neq</xsl:when>
            <xsl:when test="$langval='yahadian'">ner</xsl:when>
            <xsl:when test="$langval='bhoti kinnauri'">nes</xsl:when>
            <xsl:when test="$langval='nete'">net</xsl:when>
            <xsl:when test="$langval='neo'">neu</xsl:when>
            <xsl:when test="$langval='nyaheun'">nev</xsl:when>
            <xsl:when test="$langval='newari'">new</xsl:when>
            <xsl:when test="$langval='neme'">nex</xsl:when>
            <xsl:when test="$langval='neyo'">ney</xsl:when>
            <xsl:when test="$langval='nez perce'">nez</xsl:when>
            <xsl:when test="$langval='dhao'">nfa</xsl:when>
            <xsl:when test="$langval='ahwai'">nfd</xsl:when>
            <xsl:when test="$langval='ayiwo'">nfl</xsl:when>
            <xsl:when test="$langval='nafaanra'">nfr</xsl:when>
            <xsl:when test="$langval='mfumte'">nfu</xsl:when>
            <xsl:when test="$langval='ngbaka'">nga</xsl:when>
            <xsl:when test="$langval='northern ngbandi'">ngb</xsl:when>
            <xsl:when test="$langval='ngombe (democratic republic of congo)'">ngc</xsl:when>
            <xsl:when test="$langval='ngando (central african republic)'">ngd</xsl:when>
            <xsl:when test="$langval='ngemba'">nge</xsl:when>
            <xsl:when test="$langval='ngbaka manza'">ngg</xsl:when>
            <xsl:when test="$langval='n/u'">ngh</xsl:when>
            <xsl:when test="$langval='ngizim'">ngi</xsl:when>
            <xsl:when test="$langval='ngie'">ngj</xsl:when>
            <xsl:when test="$langval='dalabon'">ngk</xsl:when>
            <xsl:when test="$langval='lomwe'">ngl</xsl:when>
            <xsl:when test="$langval='ngatik men''s creole'">ngm</xsl:when>
            <xsl:when test="$langval='ngwo'">ngn</xsl:when>
            <xsl:when test="$langval='ngoni'">ngo</xsl:when>
            <xsl:when test="$langval='ngulu'">ngp</xsl:when>
            <xsl:when test="$langval='ngurimi'">ngq</xsl:when>
            <xsl:when test="$langval='engdewu'">ngr</xsl:when>
            <xsl:when test="$langval='gvoko'">ngs</xsl:when>
            <xsl:when test="$langval='ngeq'">ngt</xsl:when>
            <xsl:when test="$langval='guerrero nahuatl'">ngu</xsl:when>
            <xsl:when test="$langval='nagumi'">ngv</xsl:when>
            <xsl:when test="$langval='ngwaba'">ngw</xsl:when>
            <xsl:when test="$langval='nggwahyi'">ngx</xsl:when>
            <xsl:when test="$langval='tibea'">ngy</xsl:when>
            <xsl:when test="$langval='ngungwel'">ngz</xsl:when>
            <xsl:when test="$langval='nhanda'">nha</xsl:when>
            <xsl:when test="$langval='beng'">nhb</xsl:when>
            <xsl:when test="$langval='tabasco nahuatl'">nhc</xsl:when>
            <xsl:when test="$langval='chiripá'">nhd</xsl:when>
            <xsl:when test="$langval='eastern huasteca nahuatl'">nhe</xsl:when>
            <xsl:when test="$langval='nhuwala'">nhf</xsl:when>
            <xsl:when test="$langval='tetelcingo nahuatl'">nhg</xsl:when>
            <xsl:when test="$langval='nahari'">nhh</xsl:when>
            <xsl:when test="$langval='zacatlán-ahuacatlán-tepetzintla nahuatl'">nhi</xsl:when>
            <xsl:when test="$langval='isthmus-cosoleacaque nahuatl'">nhk</xsl:when>
            <xsl:when test="$langval='morelos nahuatl'">nhm</xsl:when>
            <xsl:when test="$langval='central nahuatl'">nhn</xsl:when>
            <xsl:when test="$langval='takuu'">nho</xsl:when>
            <xsl:when test="$langval='isthmus-pajapan nahuatl'">nhp</xsl:when>
            <xsl:when test="$langval='huaxcaleca nahuatl'">nhq</xsl:when>
            <xsl:when test="$langval='naro'">nhr</xsl:when>
            <xsl:when test="$langval='ometepec nahuatl'">nht</xsl:when>
            <xsl:when test="$langval='noone'">nhu</xsl:when>
            <xsl:when test="$langval='temascaltepec nahuatl'">nhv</xsl:when>
            <xsl:when test="$langval='western huasteca nahuatl'">nhw</xsl:when>
            <xsl:when test="$langval='isthmus-mecayapan nahuatl'">nhx</xsl:when>
            <xsl:when test="$langval='northern oaxaca nahuatl'">nhy</xsl:when>
            <xsl:when test="$langval='santa maría la alta nahuatl'">nhz</xsl:when>
            <xsl:when test="$langval='nias'">nia</xsl:when>
            <xsl:when test="$langval='nakame'">nib</xsl:when>
            <xsl:when test="$langval='ngandi'">nid</xsl:when>
            <xsl:when test="$langval='niellim'">nie</xsl:when>
            <xsl:when test="$langval='nek'">nif</xsl:when>
            <xsl:when test="$langval='ngalakan'">nig</xsl:when>
            <xsl:when test="$langval='nyiha (tanzania)'">nih</xsl:when>
            <xsl:when test="$langval='nii'">nii</xsl:when>
            <xsl:when test="$langval='ngaju'">nij</xsl:when>
            <xsl:when test="$langval='southern nicobarese'">nik</xsl:when>
            <xsl:when test="$langval='nila'">nil</xsl:when>
            <xsl:when test="$langval='nilamba'">nim</xsl:when>
            <xsl:when test="$langval='ninzo'">nin</xsl:when>
            <xsl:when test="$langval='nganasan'">nio</xsl:when>
            <xsl:when test="$langval='nandi'">niq</xsl:when>
            <xsl:when test="$langval='nimboran'">nir</xsl:when>
            <xsl:when test="$langval='nimi'">nis</xsl:when>
            <xsl:when test="$langval='southeastern kolami'">nit</xsl:when>
            <xsl:when test="$langval='niuean'">niu</xsl:when>
            <xsl:when test="$langval='gilyak'">niv</xsl:when>
            <xsl:when test="$langval='nimo'">niw</xsl:when>
            <xsl:when test="$langval='hema'">nix</xsl:when>
            <xsl:when test="$langval='ngiti'">niy</xsl:when>
            <xsl:when test="$langval='ningil'">niz</xsl:when>
            <xsl:when test="$langval='nzanyi'">nja</xsl:when>
            <xsl:when test="$langval='nocte naga'">njb</xsl:when>
            <xsl:when test="$langval='ndonde hamba'">njd</xsl:when>
            <xsl:when test="$langval='lotha naga'">njh</xsl:when>
            <xsl:when test="$langval='gudanji'">nji</xsl:when>
            <xsl:when test="$langval='njen'">njj</xsl:when>
            <xsl:when test="$langval='njalgulgule'">njl</xsl:when>
            <xsl:when test="$langval='angami naga'">njm</xsl:when>
            <xsl:when test="$langval='liangmai naga'">njn</xsl:when>
            <xsl:when test="$langval='ao naga'">njo</xsl:when>
            <xsl:when test="$langval='njerep'">njr</xsl:when>
            <xsl:when test="$langval='nisa'">njs</xsl:when>
            <xsl:when test="$langval='ndyuka-trio pidgin'">njt</xsl:when>
            <xsl:when test="$langval='ngadjunmaya'">nju</xsl:when>
            <xsl:when test="$langval='kunyi'">njx</xsl:when>
            <xsl:when test="$langval='njyem'">njy</xsl:when>
            <xsl:when test="$langval='nyishi'">njz</xsl:when>
            <xsl:when test="$langval='nkoya'">nka</xsl:when>
            <xsl:when test="$langval='khoibu naga'">nkb</xsl:when>
            <xsl:when test="$langval='nkongho'">nkc</xsl:when>
            <xsl:when test="$langval='koireng'">nkd</xsl:when>
            <xsl:when test="$langval='duke'">nke</xsl:when>
            <xsl:when test="$langval='inpui naga'">nkf</xsl:when>
            <xsl:when test="$langval='nekgini'">nkg</xsl:when>
            <xsl:when test="$langval='khezha naga'">nkh</xsl:when>
            <xsl:when test="$langval='thangal naga'">nki</xsl:when>
            <xsl:when test="$langval='nakai'">nkj</xsl:when>
            <xsl:when test="$langval='nokuku'">nkk</xsl:when>
            <xsl:when test="$langval='namat'">nkm</xsl:when>
            <xsl:when test="$langval='nkangala'">nkn</xsl:when>
            <xsl:when test="$langval='nkonya'">nko</xsl:when>
            <xsl:when test="$langval='niuatoputapu'">nkp</xsl:when>
            <xsl:when test="$langval='nkami'">nkq</xsl:when>
            <xsl:when test="$langval='nukuoro'">nkr</xsl:when>
            <xsl:when test="$langval='north asmat'">nks</xsl:when>
            <xsl:when test="$langval='nyika (tanzania)'">nkt</xsl:when>
            <xsl:when test="$langval='bouna kulango'">nku</xsl:when>
            <xsl:when test="$langval='nyika (malawi and zambia)'">nkv</xsl:when>
            <xsl:when test="$langval='nkutu'">nkw</xsl:when>
            <xsl:when test="$langval='nkoroo'">nkx</xsl:when>
            <xsl:when test="$langval='nkari'">nkz</xsl:when>
            <xsl:when test="$langval='ngombale'">nla</xsl:when>
            <xsl:when test="$langval='nalca'">nlc</xsl:when>
            <xsl:when test="$langval='dutch'">nld</xsl:when>
            <xsl:when test="$langval='east nyala'">nle</xsl:when>
            <xsl:when test="$langval='gela'">nlg</xsl:when>
            <xsl:when test="$langval='grangali'">nli</xsl:when>
            <xsl:when test="$langval='nyali'">nlj</xsl:when>
            <xsl:when test="$langval='ninia yali'">nlk</xsl:when>
            <xsl:when test="$langval='nihali'">nll</xsl:when>
            <xsl:when test="$langval='ngul'">nlo</xsl:when>
            <xsl:when test="$langval='lao naga'">nlq</xsl:when>
            <xsl:when test="$langval='nchumbulu'">nlu</xsl:when>
            <xsl:when test="$langval='orizaba nahuatl'">nlv</xsl:when>
            <xsl:when test="$langval='walangama'">nlw</xsl:when>
            <xsl:when test="$langval='nahali'">nlx</xsl:when>
            <xsl:when test="$langval='nyamal'">nly</xsl:when>
            <xsl:when test="$langval='nalögo'">nlz</xsl:when>
            <xsl:when test="$langval='maram naga'">nma</xsl:when>
            <xsl:when test="$langval='big nambas'">nmb</xsl:when>
            <xsl:when test="$langval='ngam'">nmc</xsl:when>
            <xsl:when test="$langval='ndumu'">nmd</xsl:when>
            <xsl:when test="$langval='mzieme naga'">nme</xsl:when>
            <xsl:when test="$langval='tangkhul naga (india)'">nmf</xsl:when>
            <xsl:when test="$langval='kwasio'">nmg</xsl:when>
            <xsl:when test="$langval='monsang naga'">nmh</xsl:when>
            <xsl:when test="$langval='nyam'">nmi</xsl:when>
            <xsl:when test="$langval='ngombe (central african republic)'">nmj</xsl:when>
            <xsl:when test="$langval='namakura'">nmk</xsl:when>
            <xsl:when test="$langval='ndemli'">nml</xsl:when>
            <xsl:when test="$langval='manangba'">nmm</xsl:when>
            <xsl:when test="$langval='!xóõ'">nmn</xsl:when>
            <xsl:when test="$langval='moyon naga'">nmo</xsl:when>
            <xsl:when test="$langval='nimanbur'">nmp</xsl:when>
            <xsl:when test="$langval='nambya'">nmq</xsl:when>
            <xsl:when test="$langval='nimbari'">nmr</xsl:when>
            <xsl:when test="$langval='letemboi'">nms</xsl:when>
            <xsl:when test="$langval='namonuito'">nmt</xsl:when>
            <xsl:when test="$langval='northeast maidu'">nmu</xsl:when>
            <xsl:when test="$langval='ngamini'">nmv</xsl:when>
            <xsl:when test="$langval='nimoa'">nmw</xsl:when>
            <xsl:when test="$langval='nama (papua new guinea)'">nmx</xsl:when>
            <xsl:when test="$langval='namuyi'">nmy</xsl:when>
            <xsl:when test="$langval='nawdm'">nmz</xsl:when>
            <xsl:when test="$langval='nyangumarta'">nna</xsl:when>
            <xsl:when test="$langval='nande'">nnb</xsl:when>
            <xsl:when test="$langval='nancere'">nnc</xsl:when>
            <xsl:when test="$langval='west ambae'">nnd</xsl:when>
            <xsl:when test="$langval='ngandyera'">nne</xsl:when>
            <xsl:when test="$langval='ngaing'">nnf</xsl:when>
            <xsl:when test="$langval='maring naga'">nng</xsl:when>
            <xsl:when test="$langval='ngiemboon'">nnh</xsl:when>
            <xsl:when test="$langval='north nuaulu'">nni</xsl:when>
            <xsl:when test="$langval='nyangatom'">nnj</xsl:when>
            <xsl:when test="$langval='nankina'">nnk</xsl:when>
            <xsl:when test="$langval='northern rengma naga'">nnl</xsl:when>
            <xsl:when test="$langval='namia'">nnm</xsl:when>
            <xsl:when test="$langval='ngete'">nnn</xsl:when>
            <xsl:when test="$langval='norwegian nynorsk'">nno</xsl:when>
            <xsl:when test="$langval='wancho naga'">nnp</xsl:when>
            <xsl:when test="$langval='ngindo'">nnq</xsl:when>
            <xsl:when test="$langval='narungga'">nnr</xsl:when>
            <xsl:when test="$langval='ningye'">nns</xsl:when>
            <xsl:when test="$langval='nanticoke'">nnt</xsl:when>
            <xsl:when test="$langval='dwang'">nnu</xsl:when>
            <xsl:when test="$langval='nugunu (australia)'">nnv</xsl:when>
            <xsl:when test="$langval='southern nuni'">nnw</xsl:when>
            <xsl:when test="$langval='nyangga'">nny</xsl:when>
            <xsl:when test="$langval='nda''nda'''">nnz</xsl:when>
            <xsl:when test="$langval='woun meu'">noa</xsl:when>
            <xsl:when test="$langval='norwegian bokmål'">nob</xsl:when>
            <xsl:when test="$langval='nuk'">noc</xsl:when>
            <xsl:when test="$langval='northern thai'">nod</xsl:when>
            <xsl:when test="$langval='nimadi'">noe</xsl:when>
            <xsl:when test="$langval='nomane'">nof</xsl:when>
            <xsl:when test="$langval='nogai'">nog</xsl:when>
            <xsl:when test="$langval='nomu'">noh</xsl:when>
            <xsl:when test="$langval='noiri'">noi</xsl:when>
            <xsl:when test="$langval='nonuya'">noj</xsl:when>
            <xsl:when test="$langval='nooksack'">nok</xsl:when>
            <xsl:when test="$langval='nomlaki'">nol</xsl:when>
            <xsl:when test="$langval='nocamán'">nom</xsl:when>
            <xsl:when test="$langval='old norse'">non</xsl:when>
            <xsl:when test="$langval='numanggang'">nop</xsl:when>
            <xsl:when test="$langval='ngongo'">noq</xsl:when>
            <xsl:when test="$langval='norwegian'">nor</xsl:when>
            <xsl:when test="$langval='eastern nisu'">nos</xsl:when>
            <xsl:when test="$langval='nomatsiguenga'">not</xsl:when>
            <xsl:when test="$langval='ewage-notu'">nou</xsl:when>
            <xsl:when test="$langval='novial'">nov</xsl:when>
            <xsl:when test="$langval='nyambo'">now</xsl:when>
            <xsl:when test="$langval='noy'">noy</xsl:when>
            <xsl:when test="$langval='nayi'">noz</xsl:when>
            <xsl:when test="$langval='nar phu'">npa</xsl:when>
            <xsl:when test="$langval='nupbikha'">npb</xsl:when>
            <xsl:when test="$langval='ponyo-gongwang naga'">npg</xsl:when>
            <xsl:when test="$langval='phom naga'">nph</xsl:when>
            <xsl:when test="$langval='nepali (individual language)'">npi</xsl:when>
            <xsl:when test="$langval='southeastern puebla nahuatl'">npl</xsl:when>
            <xsl:when test="$langval='mondropolon'">npn</xsl:when>
            <xsl:when test="$langval='pochuri naga'">npo</xsl:when>
            <xsl:when test="$langval='nipsan'">nps</xsl:when>
            <xsl:when test="$langval='puimei naga'">npu</xsl:when>
            <xsl:when test="$langval='napu'">npy</xsl:when>
            <xsl:when test="$langval='southern nago'">nqg</xsl:when>
            <xsl:when test="$langval='kura ede nago'">nqk</xsl:when>
            <xsl:when test="$langval='ndom'">nqm</xsl:when>
            <xsl:when test="$langval='nen'">nqn</xsl:when>
            <xsl:when test="$langval='n''ko'">nqo</xsl:when>
            <xsl:when test="$langval='kyan-karyaw naga'">nqq</xsl:when>
            <xsl:when test="$langval='akyaung ari naga'">nqy</xsl:when>
            <xsl:when test="$langval='ngom'">nra</xsl:when>
            <xsl:when test="$langval='nara'">nrb</xsl:when>
            <xsl:when test="$langval='noric'">nrc</xsl:when>
            <xsl:when test="$langval='southern rengma naga'">nre</xsl:when>
            <xsl:when test="$langval='jèrriais'">nrf</xsl:when>
            <xsl:when test="$langval='narango'">nrg</xsl:when>
            <xsl:when test="$langval='chokri naga'">nri</xsl:when>
            <xsl:when test="$langval='ngarla'">nrk</xsl:when>
            <xsl:when test="$langval='ngarluma'">nrl</xsl:when>
            <xsl:when test="$langval='narom'">nrm</xsl:when>
            <xsl:when test="$langval='norn'">nrn</xsl:when>
            <xsl:when test="$langval='north picene'">nrp</xsl:when>
            <xsl:when test="$langval='norra'">nrr</xsl:when>
            <xsl:when test="$langval='northern kalapuya'">nrt</xsl:when>
            <xsl:when test="$langval='narua'">nru</xsl:when>
            <xsl:when test="$langval='ngurmbur'">nrx</xsl:when>
            <xsl:when test="$langval='lala'">nrz</xsl:when>
            <xsl:when test="$langval='sangtam naga'">nsa</xsl:when>
            <xsl:when test="$langval='nshi'">nsc</xsl:when>
            <xsl:when test="$langval='southern nisu'">nsd</xsl:when>
            <xsl:when test="$langval='nsenga'">nse</xsl:when>
            <xsl:when test="$langval='northwestern nisu'">nsf</xsl:when>
            <xsl:when test="$langval='ngasa'">nsg</xsl:when>
            <xsl:when test="$langval='ngoshie'">nsh</xsl:when>
            <xsl:when test="$langval='nigerian sign language'">nsi</xsl:when>
            <xsl:when test="$langval='naskapi'">nsk</xsl:when>
            <xsl:when test="$langval='norwegian sign language'">nsl</xsl:when>
            <xsl:when test="$langval='sumi naga'">nsm</xsl:when>
            <xsl:when test="$langval='nehan'">nsn</xsl:when>
            <xsl:when test="$langval='pedi'">nso</xsl:when>
            <xsl:when test="$langval='nepalese sign language'">nsp</xsl:when>
            <xsl:when test="$langval='northern sierra miwok'">nsq</xsl:when>
            <xsl:when test="$langval='maritime sign language'">nsr</xsl:when>
            <xsl:when test="$langval='nali'">nss</xsl:when>
            <xsl:when test="$langval='tase naga'">nst</xsl:when>
            <xsl:when test="$langval='sierra negra nahuatl'">nsu</xsl:when>
            <xsl:when test="$langval='southwestern nisu'">nsv</xsl:when>
            <xsl:when test="$langval='navut'">nsw</xsl:when>
            <xsl:when test="$langval='nsongo'">nsx</xsl:when>
            <xsl:when test="$langval='nasal'">nsy</xsl:when>
            <xsl:when test="$langval='nisenan'">nsz</xsl:when>
            <xsl:when test="$langval='nathembo'">nte</xsl:when>
            <xsl:when test="$langval='ngantangarra'">ntg</xsl:when>
            <xsl:when test="$langval='natioro'">nti</xsl:when>
            <xsl:when test="$langval='ngaanyatjarra'">ntj</xsl:when>
            <xsl:when test="$langval='ikoma-nata-isenye'">ntk</xsl:when>
            <xsl:when test="$langval='nateni'">ntm</xsl:when>
            <xsl:when test="$langval='ntomba'">nto</xsl:when>
            <xsl:when test="$langval='northern tepehuan'">ntp</xsl:when>
            <xsl:when test="$langval='delo'">ntr</xsl:when>
            <xsl:when test="$langval='natagaimas'">nts</xsl:when>
            <xsl:when test="$langval='natügu'">ntu</xsl:when>
            <xsl:when test="$langval='nottoway'">ntw</xsl:when>
            <xsl:when test="$langval='tangkhul naga (myanmar)'">ntx</xsl:when>
            <xsl:when test="$langval='mantsi'">nty</xsl:when>
            <xsl:when test="$langval='natanzi'">ntz</xsl:when>
            <xsl:when test="$langval='yuanga'">nua</xsl:when>
            <xsl:when test="$langval='nukuini'">nuc</xsl:when>
            <xsl:when test="$langval='ngala'">nud</xsl:when>
            <xsl:when test="$langval='ngundu'">nue</xsl:when>
            <xsl:when test="$langval='nusu'">nuf</xsl:when>
            <xsl:when test="$langval='nungali'">nug</xsl:when>
            <xsl:when test="$langval='ndunda'">nuh</xsl:when>
            <xsl:when test="$langval='ngumbi'">nui</xsl:when>
            <xsl:when test="$langval='nyole'">nuj</xsl:when>
            <xsl:when test="$langval='nuu-chah-nulth'">nuk</xsl:when>
            <xsl:when test="$langval='nusa laut'">nul</xsl:when>
            <xsl:when test="$langval='niuafo''ou'">num</xsl:when>
            <xsl:when test="$langval='anong'">nun</xsl:when>
            <xsl:when test="$langval='nguôn'">nuo</xsl:when>
            <xsl:when test="$langval='nupe-nupe-tako'">nup</xsl:when>
            <xsl:when test="$langval='nukumanu'">nuq</xsl:when>
            <xsl:when test="$langval='nukuria'">nur</xsl:when>
            <xsl:when test="$langval='nuer'">nus</xsl:when>
            <xsl:when test="$langval='nung (viet nam)'">nut</xsl:when>
            <xsl:when test="$langval='ngbundu'">nuu</xsl:when>
            <xsl:when test="$langval='northern nuni'">nuv</xsl:when>
            <xsl:when test="$langval='nguluwan'">nuw</xsl:when>
            <xsl:when test="$langval='mehek'">nux</xsl:when>
            <xsl:when test="$langval='nunggubuyu'">nuy</xsl:when>
            <xsl:when test="$langval='tlamacazapa nahuatl'">nuz</xsl:when>
            <xsl:when test="$langval='nasarian'">nvh</xsl:when>
            <xsl:when test="$langval='namiae'">nvm</xsl:when>
            <xsl:when test="$langval='nyokon'">nvo</xsl:when>
            <xsl:when test="$langval='nawathinehena'">nwa</xsl:when>
            <xsl:when test="$langval='nyabwa'">nwb</xsl:when>
            <xsl:when test="$langval='classical newari'">nwc</xsl:when>
            <xsl:when test="$langval='ngwe'">nwe</xsl:when>
            <xsl:when test="$langval='ngayawung'">nwg</xsl:when>
            <xsl:when test="$langval='southwest tanna'">nwi</xsl:when>
            <xsl:when test="$langval='nyamusa-molo'">nwm</xsl:when>
            <xsl:when test="$langval='nauo'">nwo</xsl:when>
            <xsl:when test="$langval='nawaru'">nwr</xsl:when>
            <xsl:when test="$langval='middle newar'">nwx</xsl:when>
            <xsl:when test="$langval='nottoway-meherrin'">nwy</xsl:when>
            <xsl:when test="$langval='nauete'">nxa</xsl:when>
            <xsl:when test="$langval='ngando (democratic republic of congo)'">nxd</xsl:when>
            <xsl:when test="$langval='nage'">nxe</xsl:when>
            <xsl:when test="$langval='ngad''a'">nxg</xsl:when>
            <xsl:when test="$langval='nindi'">nxi</xsl:when>
            <xsl:when test="$langval='koki naga'">nxk</xsl:when>
            <xsl:when test="$langval='south nuaulu'">nxl</xsl:when>
            <xsl:when test="$langval='numidian'">nxm</xsl:when>
            <xsl:when test="$langval='ngawun'">nxn</xsl:when>
            <xsl:when test="$langval='ndambomo'">nxo</xsl:when>
            <xsl:when test="$langval='naxi'">nxq</xsl:when>
            <xsl:when test="$langval='ninggerum'">nxr</xsl:when>
            <xsl:when test="$langval='narau'">nxu</xsl:when>
            <xsl:when test="$langval='nafri'">nxx</xsl:when>
            <xsl:when test="$langval='nyanja'">nya</xsl:when>
            <xsl:when test="$langval='nyangbo'">nyb</xsl:when>
            <xsl:when test="$langval='nyanga-li'">nyc</xsl:when>
            <xsl:when test="$langval='nyore'">nyd</xsl:when>
            <xsl:when test="$langval='nyengo'">nye</xsl:when>
            <xsl:when test="$langval='giryama'">nyf</xsl:when>
            <xsl:when test="$langval='nyindu'">nyg</xsl:when>
            <xsl:when test="$langval='nyigina'">nyh</xsl:when>
            <xsl:when test="$langval='ama (sudan)'">nyi</xsl:when>
            <xsl:when test="$langval='nyanga'">nyj</xsl:when>
            <xsl:when test="$langval='nyaneka'">nyk</xsl:when>
            <xsl:when test="$langval='nyeu'">nyl</xsl:when>
            <xsl:when test="$langval='nyamwezi'">nym</xsl:when>
            <xsl:when test="$langval='nyankole'">nyn</xsl:when>
            <xsl:when test="$langval='nyoro'">nyo</xsl:when>
            <xsl:when test="$langval='nyang''i'">nyp</xsl:when>
            <xsl:when test="$langval='nayini'">nyq</xsl:when>
            <xsl:when test="$langval='nyiha (malawi)'">nyr</xsl:when>
            <xsl:when test="$langval='nyunga'">nys</xsl:when>
            <xsl:when test="$langval='nyawaygi'">nyt</xsl:when>
            <xsl:when test="$langval='nyungwe'">nyu</xsl:when>
            <xsl:when test="$langval='nyulnyul'">nyv</xsl:when>
            <xsl:when test="$langval='nyaw'">nyw</xsl:when>
            <xsl:when test="$langval='nganyaywana'">nyx</xsl:when>
            <xsl:when test="$langval='nyakyusa-ngonde'">nyy</xsl:when>
            <xsl:when test="$langval='tigon mbembe'">nza</xsl:when>
            <xsl:when test="$langval='njebi'">nzb</xsl:when>
            <xsl:when test="$langval='nzima'">nzi</xsl:when>
            <xsl:when test="$langval='nzakara'">nzk</xsl:when>
            <xsl:when test="$langval='zeme naga'">nzm</xsl:when>
            <xsl:when test="$langval='new zealand sign language'">nzs</xsl:when>
            <xsl:when test="$langval='teke-nzikou'">nzu</xsl:when>
            <xsl:when test="$langval='nzakambay'">nzy</xsl:when>
            <xsl:when test="$langval='nanga dama dogon'">nzz</xsl:when>
            <xsl:when test="$langval='orok'">oaa</xsl:when>
            <xsl:when test="$langval='oroch'">oac</xsl:when>
            <xsl:when test="$langval='old aramaic (up to 700 bce)'">oar</xsl:when>
            <xsl:when test="$langval='old avar'">oav</xsl:when>
            <xsl:when test="$langval='obispeño'">obi</xsl:when>
            <xsl:when test="$langval='southern bontok'">obk</xsl:when>
            <xsl:when test="$langval='oblo'">obl</xsl:when>
            <xsl:when test="$langval='moabite'">obm</xsl:when>
            <xsl:when test="$langval='obo manobo'">obo</xsl:when>
            <xsl:when test="$langval='old burmese'">obr</xsl:when>
            <xsl:when test="$langval='old breton'">obt</xsl:when>
            <xsl:when test="$langval='obulom'">obu</xsl:when>
            <xsl:when test="$langval='ocaina'">oca</xsl:when>
            <xsl:when test="$langval='old chinese'">och</xsl:when>
            <xsl:when test="$langval='occitan (post 1500)'">oci</xsl:when>
            <xsl:when test="$langval='old cornish'">oco</xsl:when>
            <xsl:when test="$langval='atzingo matlatzinca'">ocu</xsl:when>
            <xsl:when test="$langval='odut'">oda</xsl:when>
            <xsl:when test="$langval='od'">odk</xsl:when>
            <xsl:when test="$langval='old dutch'">odt</xsl:when>
            <xsl:when test="$langval='odual'">odu</xsl:when>
            <xsl:when test="$langval='ofo'">ofo</xsl:when>
            <xsl:when test="$langval='old frisian'">ofs</xsl:when>
            <xsl:when test="$langval='efutop'">ofu</xsl:when>
            <xsl:when test="$langval='ogbia'">ogb</xsl:when>
            <xsl:when test="$langval='ogbah'">ogc</xsl:when>
            <xsl:when test="$langval='old georgian'">oge</xsl:when>
            <xsl:when test="$langval='ogbogolo'">ogg</xsl:when>
            <xsl:when test="$langval='khana'">ogo</xsl:when>
            <xsl:when test="$langval='ogbronuagum'">ogu</xsl:when>
            <xsl:when test="$langval='old hittite'">oht</xsl:when>
            <xsl:when test="$langval='old hungarian'">ohu</xsl:when>
            <xsl:when test="$langval='oirata'">oia</xsl:when>
            <xsl:when test="$langval='inebu one'">oin</xsl:when>
            <xsl:when test="$langval='northwestern ojibwa'">ojb</xsl:when>
            <xsl:when test="$langval='central ojibwa'">ojc</xsl:when>
            <xsl:when test="$langval='eastern ojibwa'">ojg</xsl:when>
            <xsl:when test="$langval='ojibwa'">oji</xsl:when>
            <xsl:when test="$langval='old japanese'">ojp</xsl:when>
            <xsl:when test="$langval='severn ojibwa'">ojs</xsl:when>
            <xsl:when test="$langval='ontong java'">ojv</xsl:when>
            <xsl:when test="$langval='western ojibwa'">ojw</xsl:when>
            <xsl:when test="$langval='okanagan'">oka</xsl:when>
            <xsl:when test="$langval='okobo'">okb</xsl:when>
            <xsl:when test="$langval='okodia'">okd</xsl:when>
            <xsl:when test="$langval='okpe (southwestern edo)'">oke</xsl:when>
            <xsl:when test="$langval='koko babangk'">okg</xsl:when>
            <xsl:when test="$langval='koresh-e rostam'">okh</xsl:when>
            <xsl:when test="$langval='okiek'">oki</xsl:when>
            <xsl:when test="$langval='oko-juwoi'">okj</xsl:when>
            <xsl:when test="$langval='kwamtim one'">okk</xsl:when>
            <xsl:when test="$langval='old kentish sign language'">okl</xsl:when>
            <xsl:when test="$langval='middle korean (10th-16th cent.)'">okm</xsl:when>
            <xsl:when test="$langval='oki-no-erabu'">okn</xsl:when>
            <xsl:when test="$langval='old korean (3rd-9th cent.)'">oko</xsl:when>
            <xsl:when test="$langval='kirike'">okr</xsl:when>
            <xsl:when test="$langval='oko-eni-osayen'">oks</xsl:when>
            <xsl:when test="$langval='oku'">oku</xsl:when>
            <xsl:when test="$langval='orokaiva'">okv</xsl:when>
            <xsl:when test="$langval='okpe (northwestern edo)'">okx</xsl:when>
            <xsl:when test="$langval='walungge'">ola</xsl:when>
            <xsl:when test="$langval='mochi'">old</xsl:when>
            <xsl:when test="$langval='olekha'">ole</xsl:when>
            <xsl:when test="$langval='olkol'">olk</xsl:when>
            <xsl:when test="$langval='oloma'">olm</xsl:when>
            <xsl:when test="$langval='livvi'">olo</xsl:when>
            <xsl:when test="$langval='olrat'">olr</xsl:when>
            <xsl:when test="$langval='old lithuanian'">olt</xsl:when>
            <xsl:when test="$langval='omaha-ponca'">oma</xsl:when>
            <xsl:when test="$langval='east ambae'">omb</xsl:when>
            <xsl:when test="$langval='mochica'">omc</xsl:when>
            <xsl:when test="$langval='omejes'">ome</xsl:when>
            <xsl:when test="$langval='omagua'">omg</xsl:when>
            <xsl:when test="$langval='omi'">omi</xsl:when>
            <xsl:when test="$langval='omok'">omk</xsl:when>
            <xsl:when test="$langval='ombo'">oml</xsl:when>
            <xsl:when test="$langval='minoan'">omn</xsl:when>
            <xsl:when test="$langval='utarmbung'">omo</xsl:when>
            <xsl:when test="$langval='old manipuri'">omp</xsl:when>
            <xsl:when test="$langval='old marathi'">omr</xsl:when>
            <xsl:when test="$langval='omotik'">omt</xsl:when>
            <xsl:when test="$langval='omurano'">omu</xsl:when>
            <xsl:when test="$langval='south tairora'">omw</xsl:when>
            <xsl:when test="$langval='old mon'">omx</xsl:when>
            <xsl:when test="$langval='ona'">ona</xsl:when>
            <xsl:when test="$langval='lingao'">onb</xsl:when>
            <xsl:when test="$langval='oneida'">one</xsl:when>
            <xsl:when test="$langval='olo'">ong</xsl:when>
            <xsl:when test="$langval='onin'">oni</xsl:when>
            <xsl:when test="$langval='onjob'">onj</xsl:when>
            <xsl:when test="$langval='kabore one'">onk</xsl:when>
            <xsl:when test="$langval='onobasulu'">onn</xsl:when>
            <xsl:when test="$langval='onondaga'">ono</xsl:when>
            <xsl:when test="$langval='sartang'">onp</xsl:when>
            <xsl:when test="$langval='northern one'">onr</xsl:when>
            <xsl:when test="$langval='ono'">ons</xsl:when>
            <xsl:when test="$langval='ontenu'">ont</xsl:when>
            <xsl:when test="$langval='unua'">onu</xsl:when>
            <xsl:when test="$langval='old nubian'">onw</xsl:when>
            <xsl:when test="$langval='onin based pidgin'">onx</xsl:when>
            <xsl:when test="$langval='tohono o''odham'">ood</xsl:when>
            <xsl:when test="$langval='ong'">oog</xsl:when>
            <xsl:when test="$langval='Önge'">oon</xsl:when>
            <xsl:when test="$langval='oorlams'">oor</xsl:when>
            <xsl:when test="$langval='old ossetic'">oos</xsl:when>
            <xsl:when test="$langval='okpamheri'">opa</xsl:when>
            <xsl:when test="$langval='kopkaka'">opk</xsl:when>
            <xsl:when test="$langval='oksapmin'">opm</xsl:when>
            <xsl:when test="$langval='opao'">opo</xsl:when>
            <xsl:when test="$langval='opata'">opt</xsl:when>
            <xsl:when test="$langval='ofayé'">opy</xsl:when>
            <xsl:when test="$langval='oroha'">ora</xsl:when>
            <xsl:when test="$langval='orma'">orc</xsl:when>
            <xsl:when test="$langval='orejón'">ore</xsl:when>
            <xsl:when test="$langval='oring'">org</xsl:when>
            <xsl:when test="$langval='oroqen'">orh</xsl:when>
            <xsl:when test="$langval='oriya (macrolanguage)'">ori</xsl:when>
            <xsl:when test="$langval='oromo'">orm</xsl:when>
            <xsl:when test="$langval='orang kanaq'">orn</xsl:when>
            <xsl:when test="$langval='orokolo'">oro</xsl:when>
            <xsl:when test="$langval='oruma'">orr</xsl:when>
            <xsl:when test="$langval='orang seletar'">ors</xsl:when>
            <xsl:when test="$langval='adivasi oriya'">ort</xsl:when>
            <xsl:when test="$langval='ormuri'">oru</xsl:when>
            <xsl:when test="$langval='old russian'">orv</xsl:when>
            <xsl:when test="$langval='oro win'">orw</xsl:when>
            <xsl:when test="$langval='oro'">orx</xsl:when>
            <xsl:when test="$langval='oriya (individual language)'">ory</xsl:when>
            <xsl:when test="$langval='ormu'">orz</xsl:when>
            <xsl:when test="$langval='osage'">osa</xsl:when>
            <xsl:when test="$langval='oscan'">osc</xsl:when>
            <xsl:when test="$langval='osing'">osi</xsl:when>
            <xsl:when test="$langval='ososo'">oso</xsl:when>
            <xsl:when test="$langval='old spanish'">osp</xsl:when>
            <xsl:when test="$langval='ossetian'">oss</xsl:when>
            <xsl:when test="$langval='osatu'">ost</xsl:when>
            <xsl:when test="$langval='southern one'">osu</xsl:when>
            <xsl:when test="$langval='old saxon'">osx</xsl:when>
            <xsl:when test="$langval='ottoman turkish (1500-1928)'">ota</xsl:when>
            <xsl:when test="$langval='old tibetan'">otb</xsl:when>
            <xsl:when test="$langval='ot danum'">otd</xsl:when>
            <xsl:when test="$langval='mezquital otomi'">ote</xsl:when>
            <xsl:when test="$langval='oti'">oti</xsl:when>
            <xsl:when test="$langval='old turkish'">otk</xsl:when>
            <xsl:when test="$langval='tilapa otomi'">otl</xsl:when>
            <xsl:when test="$langval='eastern highland otomi'">otm</xsl:when>
            <xsl:when test="$langval='tenango otomi'">otn</xsl:when>
            <xsl:when test="$langval='querétaro otomi'">otq</xsl:when>
            <xsl:when test="$langval='otoro'">otr</xsl:when>
            <xsl:when test="$langval='estado de méxico otomi'">ots</xsl:when>
            <xsl:when test="$langval='temoaya otomi'">ott</xsl:when>
            <xsl:when test="$langval='otuke'">otu</xsl:when>
            <xsl:when test="$langval='ottawa'">otw</xsl:when>
            <xsl:when test="$langval='texcatepec otomi'">otx</xsl:when>
            <xsl:when test="$langval='old tamil'">oty</xsl:when>
            <xsl:when test="$langval='ixtenco otomi'">otz</xsl:when>
            <xsl:when test="$langval='tagargrent'">oua</xsl:when>
            <xsl:when test="$langval='glio-oubi'">oub</xsl:when>
            <xsl:when test="$langval='oune'">oue</xsl:when>
            <xsl:when test="$langval='old uighur'">oui</xsl:when>
            <xsl:when test="$langval='ouma'">oum</xsl:when>
            <xsl:when test="$langval='owiniga'">owi</xsl:when>
            <xsl:when test="$langval='old welsh'">owl</xsl:when>
            <xsl:when test="$langval='oy'">oyb</xsl:when>
            <xsl:when test="$langval='oyda'">oyd</xsl:when>
            <xsl:when test="$langval='wayampi'">oym</xsl:when>
            <xsl:when test="$langval='oya''oya'">oyy</xsl:when>
            <xsl:when test="$langval='koonzime'">ozm</xsl:when>
            <xsl:when test="$langval='parecís'">pab</xsl:when>
            <xsl:when test="$langval='pacoh'">pac</xsl:when>
            <xsl:when test="$langval='paumarí'">pad</xsl:when>
            <xsl:when test="$langval='pagibete'">pae</xsl:when>
            <xsl:when test="$langval='paranawát'">paf</xsl:when>
            <xsl:when test="$langval='pangasinan'">pag</xsl:when>
            <xsl:when test="$langval='tenharim'">pah</xsl:when>
            <xsl:when test="$langval='pe'">pai</xsl:when>
            <xsl:when test="$langval='parakanã'">pak</xsl:when>
            <xsl:when test="$langval='pahlavi'">pal</xsl:when>
            <xsl:when test="$langval='pampanga'">pam</xsl:when>
            <xsl:when test="$langval='panjabi'">pan</xsl:when>
            <xsl:when test="$langval='northern paiute'">pao</xsl:when>
            <xsl:when test="$langval='papiamento'">pap</xsl:when>
            <xsl:when test="$langval='parya'">paq</xsl:when>
            <xsl:when test="$langval='panamint'">par</xsl:when>
            <xsl:when test="$langval='papasena'">pas</xsl:when>
            <xsl:when test="$langval='papitalai'">pat</xsl:when>
            <xsl:when test="$langval='palauan'">pau</xsl:when>
            <xsl:when test="$langval='pakaásnovos'">pav</xsl:when>
            <xsl:when test="$langval='pawnee'">paw</xsl:when>
            <xsl:when test="$langval='pankararé'">pax</xsl:when>
            <xsl:when test="$langval='pech'">pay</xsl:when>
            <xsl:when test="$langval='pankararú'">paz</xsl:when>
            <xsl:when test="$langval='páez'">pbb</xsl:when>
            <xsl:when test="$langval='patamona'">pbc</xsl:when>
            <xsl:when test="$langval='mezontla popoloca'">pbe</xsl:when>
            <xsl:when test="$langval='coyotepec popoloca'">pbf</xsl:when>
            <xsl:when test="$langval='paraujano'">pbg</xsl:when>
            <xsl:when test="$langval='e''ñapa woromaipu'">pbh</xsl:when>
            <xsl:when test="$langval='parkwa'">pbi</xsl:when>
            <xsl:when test="$langval='mak (nigeria)'">pbl</xsl:when>
            <xsl:when test="$langval='kpasam'">pbn</xsl:when>
            <xsl:when test="$langval='papel'">pbo</xsl:when>
            <xsl:when test="$langval='badyara'">pbp</xsl:when>
            <xsl:when test="$langval='pangwa'">pbr</xsl:when>
            <xsl:when test="$langval='central pame'">pbs</xsl:when>
            <xsl:when test="$langval='southern pashto'">pbt</xsl:when>
            <xsl:when test="$langval='northern pashto'">pbu</xsl:when>
            <xsl:when test="$langval='pnar'">pbv</xsl:when>
            <xsl:when test="$langval='pyu (papua new guinea)'">pby</xsl:when>
            <xsl:when test="$langval='santa inés ahuatempan popoloca'">pca</xsl:when>
            <xsl:when test="$langval='pear'">pcb</xsl:when>
            <xsl:when test="$langval='bouyei'">pcc</xsl:when>
            <xsl:when test="$langval='picard'">pcd</xsl:when>
            <xsl:when test="$langval='ruching palaung'">pce</xsl:when>
            <xsl:when test="$langval='paliyan'">pcf</xsl:when>
            <xsl:when test="$langval='paniya'">pcg</xsl:when>
            <xsl:when test="$langval='pardhan'">pch</xsl:when>
            <xsl:when test="$langval='duruwa'">pci</xsl:when>
            <xsl:when test="$langval='parenga'">pcj</xsl:when>
            <xsl:when test="$langval='paite chin'">pck</xsl:when>
            <xsl:when test="$langval='pardhi'">pcl</xsl:when>
            <xsl:when test="$langval='nigerian pidgin'">pcm</xsl:when>
            <xsl:when test="$langval='piti'">pcn</xsl:when>
            <xsl:when test="$langval='pacahuara'">pcp</xsl:when>
            <xsl:when test="$langval='pyapun'">pcw</xsl:when>
            <xsl:when test="$langval='anam'">pda</xsl:when>
            <xsl:when test="$langval='pennsylvania german'">pdc</xsl:when>
            <xsl:when test="$langval='pa di'">pdi</xsl:when>
            <xsl:when test="$langval='podena'">pdn</xsl:when>
            <xsl:when test="$langval='padoe'">pdo</xsl:when>
            <xsl:when test="$langval='plautdietsch'">pdt</xsl:when>
            <xsl:when test="$langval='kayan'">pdu</xsl:when>
            <xsl:when test="$langval='peranakan indonesian'">pea</xsl:when>
            <xsl:when test="$langval='eastern pomo'">peb</xsl:when>
            <xsl:when test="$langval='mala (papua new guinea)'">ped</xsl:when>
            <xsl:when test="$langval='taje'">pee</xsl:when>
            <xsl:when test="$langval='northeastern pomo'">pef</xsl:when>
            <xsl:when test="$langval='pengo'">peg</xsl:when>
            <xsl:when test="$langval='bonan'">peh</xsl:when>
            <xsl:when test="$langval='chichimeca-jonaz'">pei</xsl:when>
            <xsl:when test="$langval='northern pomo'">pej</xsl:when>
            <xsl:when test="$langval='penchal'">pek</xsl:when>
            <xsl:when test="$langval='pekal'">pel</xsl:when>
            <xsl:when test="$langval='phende'">pem</xsl:when>
            <xsl:when test="$langval='old persian (ca. 600-400 b.c.)'">peo</xsl:when>
            <xsl:when test="$langval='kunja'">pep</xsl:when>
            <xsl:when test="$langval='southern pomo'">peq</xsl:when>
            <xsl:when test="$langval='iranian persian'">pes</xsl:when>
            <xsl:when test="$langval='pémono'">pev</xsl:when>
            <xsl:when test="$langval='petats'">pex</xsl:when>
            <xsl:when test="$langval='petjo'">pey</xsl:when>
            <xsl:when test="$langval='eastern penan'">pez</xsl:when>
            <xsl:when test="$langval='pááfang'">pfa</xsl:when>
            <xsl:when test="$langval='peere'">pfe</xsl:when>
            <xsl:when test="$langval='pfaelzisch'">pfl</xsl:when>
            <xsl:when test="$langval='sudanese creole arabic'">pga</xsl:when>
            <xsl:when test="$langval='gāndhārī'">pgd</xsl:when>
            <xsl:when test="$langval='pangwali'">pgg</xsl:when>
            <xsl:when test="$langval='pagi'">pgi</xsl:when>
            <xsl:when test="$langval='rerep'">pgk</xsl:when>
            <xsl:when test="$langval='primitive irish'">pgl</xsl:when>
            <xsl:when test="$langval='paelignian'">pgn</xsl:when>
            <xsl:when test="$langval='pangseng'">pgs</xsl:when>
            <xsl:when test="$langval='pagu'">pgu</xsl:when>
            <xsl:when test="$langval='pa-hng'">pha</xsl:when>
            <xsl:when test="$langval='phudagi'">phd</xsl:when>
            <xsl:when test="$langval='phuong'">phg</xsl:when>
            <xsl:when test="$langval='phukha'">phh</xsl:when>
            <xsl:when test="$langval='phake'">phk</xsl:when>
            <xsl:when test="$langval='phalura'">phl</xsl:when>
            <xsl:when test="$langval='phimbi'">phm</xsl:when>
            <xsl:when test="$langval='phoenician'">phn</xsl:when>
            <xsl:when test="$langval='phunoi'">pho</xsl:when>
            <xsl:when test="$langval='phana'''">phq</xsl:when>
            <xsl:when test="$langval='pahari-potwari'">phr</xsl:when>
            <xsl:when test="$langval='phu thai'">pht</xsl:when>
            <xsl:when test="$langval='phuan'">phu</xsl:when>
            <xsl:when test="$langval='pahlavani'">phv</xsl:when>
            <xsl:when test="$langval='phangduwali'">phw</xsl:when>
            <xsl:when test="$langval='pima bajo'">pia</xsl:when>
            <xsl:when test="$langval='yine'">pib</xsl:when>
            <xsl:when test="$langval='pinji'">pic</xsl:when>
            <xsl:when test="$langval='piaroa'">pid</xsl:when>
            <xsl:when test="$langval='piro'">pie</xsl:when>
            <xsl:when test="$langval='pingelapese'">pif</xsl:when>
            <xsl:when test="$langval='pisabo'">pig</xsl:when>
            <xsl:when test="$langval='pitcairn-norfolk'">pih</xsl:when>
            <xsl:when test="$langval='pini'">pii</xsl:when>
            <xsl:when test="$langval='pijao'">pij</xsl:when>
            <xsl:when test="$langval='yom'">pil</xsl:when>
            <xsl:when test="$langval='powhatan'">pim</xsl:when>
            <xsl:when test="$langval='piame'">pin</xsl:when>
            <xsl:when test="$langval='piapoco'">pio</xsl:when>
            <xsl:when test="$langval='pero'">pip</xsl:when>
            <xsl:when test="$langval='piratapuyo'">pir</xsl:when>
            <xsl:when test="$langval='pijin'">pis</xsl:when>
            <xsl:when test="$langval='pitta pitta'">pit</xsl:when>
            <xsl:when test="$langval='pintupi-luritja'">piu</xsl:when>
            <xsl:when test="$langval='pileni'">piv</xsl:when>
            <xsl:when test="$langval='pimbwe'">piw</xsl:when>
            <xsl:when test="$langval='piu'">pix</xsl:when>
            <xsl:when test="$langval='piya-kwonci'">piy</xsl:when>
            <xsl:when test="$langval='pije'">piz</xsl:when>
            <xsl:when test="$langval='pitjantjatjara'">pjt</xsl:when>
            <xsl:when test="$langval='ardhamāgadhī prākrit'">pka</xsl:when>
            <xsl:when test="$langval='pokomo'">pkb</xsl:when>
            <xsl:when test="$langval='paekche'">pkc</xsl:when>
            <xsl:when test="$langval='pak-tong'">pkg</xsl:when>
            <xsl:when test="$langval='pankhu'">pkh</xsl:when>
            <xsl:when test="$langval='pakanha'">pkn</xsl:when>
            <xsl:when test="$langval='pökoot'">pko</xsl:when>
            <xsl:when test="$langval='pukapuka'">pkp</xsl:when>
            <xsl:when test="$langval='attapady kurumba'">pkr</xsl:when>
            <xsl:when test="$langval='pakistan sign language'">pks</xsl:when>
            <xsl:when test="$langval='maleng'">pkt</xsl:when>
            <xsl:when test="$langval='paku'">pku</xsl:when>
            <xsl:when test="$langval='miani'">pla</xsl:when>
            <xsl:when test="$langval='polonombauk'">plb</xsl:when>
            <xsl:when test="$langval='central palawano'">plc</xsl:when>
            <xsl:when test="$langval='polari'">pld</xsl:when>
            <xsl:when test="$langval='palu''e'">ple</xsl:when>
            <xsl:when test="$langval='pilagá'">plg</xsl:when>
            <xsl:when test="$langval='paulohi'">plh</xsl:when>
            <xsl:when test="$langval='pali'">pli</xsl:when>
            <xsl:when test="$langval='polci'">plj</xsl:when>
            <xsl:when test="$langval='kohistani shina'">plk</xsl:when>
            <xsl:when test="$langval='shwe palaung'">pll</xsl:when>
            <xsl:when test="$langval='palenquero'">pln</xsl:when>
            <xsl:when test="$langval='oluta popoluca'">plo</xsl:when>
            <xsl:when test="$langval='palpa'">plp</xsl:when>
            <xsl:when test="$langval='palaic'">plq</xsl:when>
            <xsl:when test="$langval='palaka senoufo'">plr</xsl:when>
            <xsl:when test="$langval='san marcos tlacoyalco popoloca'">pls</xsl:when>
            <xsl:when test="$langval='plateau malagasy'">plt</xsl:when>
            <xsl:when test="$langval='palikúr'">plu</xsl:when>
            <xsl:when test="$langval='southwest palawano'">plv</xsl:when>
            <xsl:when test="$langval='brooke''s point palawano'">plw</xsl:when>
            <xsl:when test="$langval='bolyu'">ply</xsl:when>
            <xsl:when test="$langval='paluan'">plz</xsl:when>
            <xsl:when test="$langval='paama'">pma</xsl:when>
            <xsl:when test="$langval='pambia'">pmb</xsl:when>
            <xsl:when test="$langval='palumata'">pmc</xsl:when>
            <xsl:when test="$langval='pallanganmiddang'">pmd</xsl:when>
            <xsl:when test="$langval='pwaamei'">pme</xsl:when>
            <xsl:when test="$langval='pamona'">pmf</xsl:when>
            <xsl:when test="$langval='māhārāṣṭri prākrit'">pmh</xsl:when>
            <xsl:when test="$langval='northern pumi'">pmi</xsl:when>
            <xsl:when test="$langval='southern pumi'">pmj</xsl:when>
            <xsl:when test="$langval='pamlico'">pmk</xsl:when>
            <xsl:when test="$langval='lingua franca'">pml</xsl:when>
            <xsl:when test="$langval='pomo'">pmm</xsl:when>
            <xsl:when test="$langval='pam'">pmn</xsl:when>
            <xsl:when test="$langval='pom'">pmo</xsl:when>
            <xsl:when test="$langval='northern pame'">pmq</xsl:when>
            <xsl:when test="$langval='paynamar'">pmr</xsl:when>
            <xsl:when test="$langval='piemontese'">pms</xsl:when>
            <xsl:when test="$langval='tuamotuan'">pmt</xsl:when>
            <xsl:when test="$langval='plains miwok'">pmw</xsl:when>
            <xsl:when test="$langval='poumei naga'">pmx</xsl:when>
            <xsl:when test="$langval='papuan malay'">pmy</xsl:when>
            <xsl:when test="$langval='southern pame'">pmz</xsl:when>
            <xsl:when test="$langval='punan bah-biau'">pna</xsl:when>
            <xsl:when test="$langval='western panjabi'">pnb</xsl:when>
            <xsl:when test="$langval='pannei'">pnc</xsl:when>
            <xsl:when test="$langval='western penan'">pne</xsl:when>
            <xsl:when test="$langval='pongu'">png</xsl:when>
            <xsl:when test="$langval='penrhyn'">pnh</xsl:when>
            <xsl:when test="$langval='aoheng'">pni</xsl:when>
            <xsl:when test="$langval='pinjarup'">pnj</xsl:when>
            <xsl:when test="$langval='paunaka'">pnk</xsl:when>
            <xsl:when test="$langval='paleni'">pnl</xsl:when>
            <xsl:when test="$langval='punan batu 1'">pnm</xsl:when>
            <xsl:when test="$langval='pinai-hagahai'">pnn</xsl:when>
            <xsl:when test="$langval='panobo'">pno</xsl:when>
            <xsl:when test="$langval='pancana'">pnp</xsl:when>
            <xsl:when test="$langval='pana (burkina faso)'">pnq</xsl:when>
            <xsl:when test="$langval='panim'">pnr</xsl:when>
            <xsl:when test="$langval='ponosakan'">pns</xsl:when>
            <xsl:when test="$langval='pontic'">pnt</xsl:when>
            <xsl:when test="$langval='jiongnai bunu'">pnu</xsl:when>
            <xsl:when test="$langval='pinigura'">pnv</xsl:when>
            <xsl:when test="$langval='panytyima'">pnw</xsl:when>
            <xsl:when test="$langval='phong-kniang'">pnx</xsl:when>
            <xsl:when test="$langval='pinyin'">pny</xsl:when>
            <xsl:when test="$langval='pana (central african republic)'">pnz</xsl:when>
            <xsl:when test="$langval='poqomam'">poc</xsl:when>
            <xsl:when test="$langval='ponares'">pod</xsl:when>
            <xsl:when test="$langval='san juan atzingo popoloca'">poe</xsl:when>
            <xsl:when test="$langval='poke'">pof</xsl:when>
            <xsl:when test="$langval='potiguára'">pog</xsl:when>
            <xsl:when test="$langval='poqomchi'''">poh</xsl:when>
            <xsl:when test="$langval='highland popoluca'">poi</xsl:when>
            <xsl:when test="$langval='pokangá'">pok</xsl:when>
            <xsl:when test="$langval='polish'">pol</xsl:when>
            <xsl:when test="$langval='southeastern pomo'">pom</xsl:when>
            <xsl:when test="$langval='pohnpeian'">pon</xsl:when>
            <xsl:when test="$langval='central pomo'">poo</xsl:when>
            <xsl:when test="$langval='pwapwâ'">pop</xsl:when>
            <xsl:when test="$langval='texistepec popoluca'">poq</xsl:when>
            <xsl:when test="$langval='portuguese'">por</xsl:when>
            <xsl:when test="$langval='sayula popoluca'">pos</xsl:when>
            <xsl:when test="$langval='potawatomi'">pot</xsl:when>
            <xsl:when test="$langval='upper guinea crioulo'">pov</xsl:when>
            <xsl:when test="$langval='san felipe otlaltepec popoloca'">pow</xsl:when>
            <xsl:when test="$langval='polabian'">pox</xsl:when>
            <xsl:when test="$langval='pogolo'">poy</xsl:when>
            <xsl:when test="$langval='pao'">ppa</xsl:when>
            <xsl:when test="$langval='papi'">ppe</xsl:when>
            <xsl:when test="$langval='paipai'">ppi</xsl:when>
            <xsl:when test="$langval='uma'">ppk</xsl:when>
            <xsl:when test="$langval='pipil'">ppl</xsl:when>
            <xsl:when test="$langval='papuma'">ppm</xsl:when>
            <xsl:when test="$langval='papapana'">ppn</xsl:when>
            <xsl:when test="$langval='folopa'">ppo</xsl:when>
            <xsl:when test="$langval='pelende'">ppp</xsl:when>
            <xsl:when test="$langval='pei'">ppq</xsl:when>
            <xsl:when test="$langval='san luís temalacayuca popoloca'">pps</xsl:when>
            <xsl:when test="$langval='pare'">ppt</xsl:when>
            <xsl:when test="$langval='papora'">ppu</xsl:when>
            <xsl:when test="$langval='pa''a'">pqa</xsl:when>
            <xsl:when test="$langval='malecite-passamaquoddy'">pqm</xsl:when>
            <xsl:when test="$langval='lua'''">prb</xsl:when>
            <xsl:when test="$langval='parachi'">prc</xsl:when>
            <xsl:when test="$langval='parsi-dari'">prd</xsl:when>
            <xsl:when test="$langval='principense'">pre</xsl:when>
            <xsl:when test="$langval='paranan'">prf</xsl:when>
            <xsl:when test="$langval='prussian'">prg</xsl:when>
            <xsl:when test="$langval='porohanon'">prh</xsl:when>
            <xsl:when test="$langval='paicî'">pri</xsl:when>
            <xsl:when test="$langval='parauk'">prk</xsl:when>
            <xsl:when test="$langval='peruvian sign language'">prl</xsl:when>
            <xsl:when test="$langval='kibiri'">prm</xsl:when>
            <xsl:when test="$langval='prasuni'">prn</xsl:when>
            <xsl:when test="$langval='old provençal (to 1500)'">pro</xsl:when>
            <xsl:when test="$langval='parsi'">prp</xsl:when>
            <xsl:when test="$langval='ashéninka perené'">prq</xsl:when>
            <xsl:when test="$langval='puri'">prr</xsl:when>
            <xsl:when test="$langval='dari'">prs</xsl:when>
            <xsl:when test="$langval='phai'">prt</xsl:when>
            <xsl:when test="$langval='puragi'">pru</xsl:when>
            <xsl:when test="$langval='parawen'">prw</xsl:when>
            <xsl:when test="$langval='purik'">prx</xsl:when>
            <xsl:when test="$langval='pray 3'">pry</xsl:when>
            <xsl:when test="$langval='providencia sign language'">prz</xsl:when>
            <xsl:when test="$langval='asue awyu'">psa</xsl:when>
            <xsl:when test="$langval='persian sign language'">psc</xsl:when>
            <xsl:when test="$langval='plains indian sign language'">psd</xsl:when>
            <xsl:when test="$langval='central malay'">pse</xsl:when>
            <xsl:when test="$langval='penang sign language'">psg</xsl:when>
            <xsl:when test="$langval='southwest pashai'">psh</xsl:when>
            <xsl:when test="$langval='southeast pashai'">psi</xsl:when>
            <xsl:when test="$langval='puerto rican sign language'">psl</xsl:when>
            <xsl:when test="$langval='pauserna'">psm</xsl:when>
            <xsl:when test="$langval='panasuan'">psn</xsl:when>
            <xsl:when test="$langval='polish sign language'">pso</xsl:when>
            <xsl:when test="$langval='philippine sign language'">psp</xsl:when>
            <xsl:when test="$langval='pasi'">psq</xsl:when>
            <xsl:when test="$langval='portuguese sign language'">psr</xsl:when>
            <xsl:when test="$langval='kaulong'">pss</xsl:when>
            <xsl:when test="$langval='central pashto'">pst</xsl:when>
            <xsl:when test="$langval='sauraseni prākrit'">psu</xsl:when>
            <xsl:when test="$langval='port sandwich'">psw</xsl:when>
            <xsl:when test="$langval='piscataway'">psy</xsl:when>
            <xsl:when test="$langval='pai tavytera'">pta</xsl:when>
            <xsl:when test="$langval='pataxó hã-ha-hãe'">pth</xsl:when>
            <xsl:when test="$langval='pintiini'">pti</xsl:when>
            <xsl:when test="$langval='patani'">ptn</xsl:when>
            <xsl:when test="$langval='zo''é'">pto</xsl:when>
            <xsl:when test="$langval='patep'">ptp</xsl:when>
            <xsl:when test="$langval='pattapu'">ptq</xsl:when>
            <xsl:when test="$langval='piamatsina'">ptr</xsl:when>
            <xsl:when test="$langval='enrekang'">ptt</xsl:when>
            <xsl:when test="$langval='bambam'">ptu</xsl:when>
            <xsl:when test="$langval='port vato'">ptv</xsl:when>
            <xsl:when test="$langval='pentlatch'">ptw</xsl:when>
            <xsl:when test="$langval='pathiya'">pty</xsl:when>
            <xsl:when test="$langval='western highland purepecha'">pua</xsl:when>
            <xsl:when test="$langval='purum'">pub</xsl:when>
            <xsl:when test="$langval='punan merap'">puc</xsl:when>
            <xsl:when test="$langval='punan aput'">pud</xsl:when>
            <xsl:when test="$langval='puelche'">pue</xsl:when>
            <xsl:when test="$langval='punan merah'">puf</xsl:when>
            <xsl:when test="$langval='phuie'">pug</xsl:when>
            <xsl:when test="$langval='puinave'">pui</xsl:when>
            <xsl:when test="$langval='punan tubu'">puj</xsl:when>
            <xsl:when test="$langval='pu ko'">puk</xsl:when>
            <xsl:when test="$langval='puma'">pum</xsl:when>
            <xsl:when test="$langval='puoc'">puo</xsl:when>
            <xsl:when test="$langval='pulabu'">pup</xsl:when>
            <xsl:when test="$langval='puquina'">puq</xsl:when>
            <xsl:when test="$langval='puruborá'">pur</xsl:when>
            <xsl:when test="$langval='pushto'">pus</xsl:when>
            <xsl:when test="$langval='putoh'">put</xsl:when>
            <xsl:when test="$langval='punu'">puu</xsl:when>
            <xsl:when test="$langval='puluwatese'">puw</xsl:when>
            <xsl:when test="$langval='puare'">pux</xsl:when>
            <xsl:when test="$langval='purisimeño'">puy</xsl:when>
            <xsl:when test="$langval='pawaia'">pwa</xsl:when>
            <xsl:when test="$langval='panawa'">pwb</xsl:when>
            <xsl:when test="$langval='gapapaiwa'">pwg</xsl:when>
            <xsl:when test="$langval='patwin'">pwi</xsl:when>
            <xsl:when test="$langval='molbog'">pwm</xsl:when>
            <xsl:when test="$langval='paiwan'">pwn</xsl:when>
            <xsl:when test="$langval='pwo western karen'">pwo</xsl:when>
            <xsl:when test="$langval='powari'">pwr</xsl:when>
            <xsl:when test="$langval='pwo northern karen'">pww</xsl:when>
            <xsl:when test="$langval='quetzaltepec mixe'">pxm</xsl:when>
            <xsl:when test="$langval='pye krumen'">pye</xsl:when>
            <xsl:when test="$langval='fyam'">pym</xsl:when>
            <xsl:when test="$langval='poyanáwa'">pyn</xsl:when>
            <xsl:when test="$langval='paraguayan sign language'">pys</xsl:when>
            <xsl:when test="$langval='puyuma'">pyu</xsl:when>
            <xsl:when test="$langval='pyu (myanmar)'">pyx</xsl:when>
            <xsl:when test="$langval='pyen'">pyy</xsl:when>
            <xsl:when test="$langval='para naga'">pzn</xsl:when>
            <xsl:when test="$langval='quapaw'">qua</xsl:when>
            <xsl:when test="$langval='huallaga huánuco quechua'">qub</xsl:when>
            <xsl:when test="$langval='k''iche'''">quc</xsl:when>
            <xsl:when test="$langval='calderón highland quichua'">qud</xsl:when>
            <xsl:when test="$langval='quechua'">que</xsl:when>
            <xsl:when test="$langval='lambayeque quechua'">quf</xsl:when>
            <xsl:when test="$langval='chimborazo highland quichua'">qug</xsl:when>
            <xsl:when test="$langval='south bolivian quechua'">quh</xsl:when>
            <xsl:when test="$langval='quileute'">qui</xsl:when>
            <xsl:when test="$langval='chachapoyas quechua'">quk</xsl:when>
            <xsl:when test="$langval='north bolivian quechua'">qul</xsl:when>
            <xsl:when test="$langval='sipacapense'">qum</xsl:when>
            <xsl:when test="$langval='quinault'">qun</xsl:when>
            <xsl:when test="$langval='southern pastaza quechua'">qup</xsl:when>
            <xsl:when test="$langval='quinqui'">quq</xsl:when>
            <xsl:when test="$langval='yanahuanca pasco quechua'">qur</xsl:when>
            <xsl:when test="$langval='santiago del estero quichua'">qus</xsl:when>
            <xsl:when test="$langval='sacapulteco'">quv</xsl:when>
            <xsl:when test="$langval='tena lowland quichua'">quw</xsl:when>
            <xsl:when test="$langval='yauyos quechua'">qux</xsl:when>
            <xsl:when test="$langval='ayacucho quechua'">quy</xsl:when>
            <xsl:when test="$langval='cusco quechua'">quz</xsl:when>
            <xsl:when test="$langval='ambo-pasco quechua'">qva</xsl:when>
            <xsl:when test="$langval='cajamarca quechua'">qvc</xsl:when>
            <xsl:when test="$langval='eastern apurímac quechua'">qve</xsl:when>
            <xsl:when test="$langval='huamalíes-dos de mayo huánuco quechua'">qvh</xsl:when>
            <xsl:when test="$langval='imbabura highland quichua'">qvi</xsl:when>
            <xsl:when test="$langval='loja highland quichua'">qvj</xsl:when>
            <xsl:when test="$langval='cajatambo north lima quechua'">qvl</xsl:when>
            <xsl:when test="$langval='margos-yarowilca-lauricocha quechua'">qvm</xsl:when>
            <xsl:when test="$langval='north junín quechua'">qvn</xsl:when>
            <xsl:when test="$langval='napo lowland quechua'">qvo</xsl:when>
            <xsl:when test="$langval='pacaraos quechua'">qvp</xsl:when>
            <xsl:when test="$langval='san martín quechua'">qvs</xsl:when>
            <xsl:when test="$langval='huaylla wanca quechua'">qvw</xsl:when>
            <xsl:when test="$langval='queyu'">qvy</xsl:when>
            <xsl:when test="$langval='northern pastaza quichua'">qvz</xsl:when>
            <xsl:when test="$langval='corongo ancash quechua'">qwa</xsl:when>
            <xsl:when test="$langval='classical quechua'">qwc</xsl:when>
            <xsl:when test="$langval='huaylas ancash quechua'">qwh</xsl:when>
            <xsl:when test="$langval='kuman (russia)'">qwm</xsl:when>
            <xsl:when test="$langval='sihuas ancash quechua'">qws</xsl:when>
            <xsl:when test="$langval='kwalhioqua-tlatskanai'">qwt</xsl:when>
            <xsl:when test="$langval='chiquián ancash quechua'">qxa</xsl:when>
            <xsl:when test="$langval='chincha quechua'">qxc</xsl:when>
            <xsl:when test="$langval='panao huánuco quechua'">qxh</xsl:when>
            <xsl:when test="$langval='salasaca highland quichua'">qxl</xsl:when>
            <xsl:when test="$langval='northern conchucos ancash quechua'">qxn</xsl:when>
            <xsl:when test="$langval='southern conchucos ancash quechua'">qxo</xsl:when>
            <xsl:when test="$langval='puno quechua'">qxp</xsl:when>
            <xsl:when test="$langval='qashqa''i'">qxq</xsl:when>
            <xsl:when test="$langval='cañar highland quichua'">qxr</xsl:when>
            <xsl:when test="$langval='southern qiang'">qxs</xsl:when>
            <xsl:when test="$langval='santa ana de tusi pasco quechua'">qxt</xsl:when>
            <xsl:when test="$langval='arequipa-la unión quechua'">qxu</xsl:when>
            <xsl:when test="$langval='jauja wanca quechua'">qxw</xsl:when>
            <xsl:when test="$langval='quenya'">qya</xsl:when>
            <xsl:when test="$langval='quiripi'">qyp</xsl:when>
            <xsl:when test="$langval='dungmali'">raa</xsl:when>
            <xsl:when test="$langval='camling'">rab</xsl:when>
            <xsl:when test="$langval='rasawa'">rac</xsl:when>
            <xsl:when test="$langval='rade'">rad</xsl:when>
            <xsl:when test="$langval='western meohang'">raf</xsl:when>
            <xsl:when test="$langval='logooli'">rag</xsl:when>
            <xsl:when test="$langval='rabha'">rah</xsl:when>
            <xsl:when test="$langval='ramoaaina'">rai</xsl:when>
            <xsl:when test="$langval='rajasthani'">raj</xsl:when>
            <xsl:when test="$langval='tulu-bohuai'">rak</xsl:when>
            <xsl:when test="$langval='ralte'">ral</xsl:when>
            <xsl:when test="$langval='canela'">ram</xsl:when>
            <xsl:when test="$langval='riantana'">ran</xsl:when>
            <xsl:when test="$langval='rao'">rao</xsl:when>
            <xsl:when test="$langval='rapanui'">rap</xsl:when>
            <xsl:when test="$langval='saam'">raq</xsl:when>
            <xsl:when test="$langval='rarotongan'">rar</xsl:when>
            <xsl:when test="$langval='tegali'">ras</xsl:when>
            <xsl:when test="$langval='razajerdi'">rat</xsl:when>
            <xsl:when test="$langval='raute'">rau</xsl:when>
            <xsl:when test="$langval='sampang'">rav</xsl:when>
            <xsl:when test="$langval='rawang'">raw</xsl:when>
            <xsl:when test="$langval='rang'">rax</xsl:when>
            <xsl:when test="$langval='rapa'">ray</xsl:when>
            <xsl:when test="$langval='rahambuu'">raz</xsl:when>
            <xsl:when test="$langval='rumai palaung'">rbb</xsl:when>
            <xsl:when test="$langval='northern bontok'">rbk</xsl:when>
            <xsl:when test="$langval='miraya bikol'">rbl</xsl:when>
            <xsl:when test="$langval='barababaraba'">rbp</xsl:when>
            <xsl:when test="$langval='réunion creole french'">rcf</xsl:when>
            <xsl:when test="$langval='rudbari'">rdb</xsl:when>
            <xsl:when test="$langval='rerau'">rea</xsl:when>
            <xsl:when test="$langval='rembong'">reb</xsl:when>
            <xsl:when test="$langval='rejang kayan'">ree</xsl:when>
            <xsl:when test="$langval='kara (tanzania)'">reg</xsl:when>
            <xsl:when test="$langval='reli'">rei</xsl:when>
            <xsl:when test="$langval='rejang'">rej</xsl:when>
            <xsl:when test="$langval='rendille'">rel</xsl:when>
            <xsl:when test="$langval='remo'">rem</xsl:when>
            <xsl:when test="$langval='rengao'">ren</xsl:when>
            <xsl:when test="$langval='rer bare'">rer</xsl:when>
            <xsl:when test="$langval='reshe'">res</xsl:when>
            <xsl:when test="$langval='retta'">ret</xsl:when>
            <xsl:when test="$langval='reyesano'">rey</xsl:when>
            <xsl:when test="$langval='roria'">rga</xsl:when>
            <xsl:when test="$langval='romano-greek'">rge</xsl:when>
            <xsl:when test="$langval='rangkas'">rgk</xsl:when>
            <xsl:when test="$langval='romagnol'">rgn</xsl:when>
            <xsl:when test="$langval='resígaro'">rgr</xsl:when>
            <xsl:when test="$langval='southern roglai'">rgs</xsl:when>
            <xsl:when test="$langval='ringgou'">rgu</xsl:when>
            <xsl:when test="$langval='rohingya'">rhg</xsl:when>
            <xsl:when test="$langval='yahang'">rhp</xsl:when>
            <xsl:when test="$langval='riang (india)'">ria</xsl:when>
            <xsl:when test="$langval='rien'">rie</xsl:when>
            <xsl:when test="$langval='tarifit'">rif</xsl:when>
            <xsl:when test="$langval='riang (myanmar)'">ril</xsl:when>
            <xsl:when test="$langval='nyaturu'">rim</xsl:when>
            <xsl:when test="$langval='nungu'">rin</xsl:when>
            <xsl:when test="$langval='ribun'">rir</xsl:when>
            <xsl:when test="$langval='ritarungo'">rit</xsl:when>
            <xsl:when test="$langval='riung'">riu</xsl:when>
            <xsl:when test="$langval='rajong'">rjg</xsl:when>
            <xsl:when test="$langval='raji'">rji</xsl:when>
            <xsl:when test="$langval='rajbanshi'">rjs</xsl:when>
            <xsl:when test="$langval='kraol'">rka</xsl:when>
            <xsl:when test="$langval='rikbaktsa'">rkb</xsl:when>
            <xsl:when test="$langval='rakahanga-manihiki'">rkh</xsl:when>
            <xsl:when test="$langval='rakhine'">rki</xsl:when>
            <xsl:when test="$langval='marka'">rkm</xsl:when>
            <xsl:when test="$langval='rangpuri'">rkt</xsl:when>
            <xsl:when test="$langval='arakwal'">rkw</xsl:when>
            <xsl:when test="$langval='rama'">rma</xsl:when>
            <xsl:when test="$langval='rembarunga'">rmb</xsl:when>
            <xsl:when test="$langval='carpathian romani'">rmc</xsl:when>
            <xsl:when test="$langval='traveller danish'">rmd</xsl:when>
            <xsl:when test="$langval='angloromani'">rme</xsl:when>
            <xsl:when test="$langval='kalo finnish romani'">rmf</xsl:when>
            <xsl:when test="$langval='traveller norwegian'">rmg</xsl:when>
            <xsl:when test="$langval='murkim'">rmh</xsl:when>
            <xsl:when test="$langval='lomavren'">rmi</xsl:when>
            <xsl:when test="$langval='romkun'">rmk</xsl:when>
            <xsl:when test="$langval='baltic romani'">rml</xsl:when>
            <xsl:when test="$langval='roma'">rmm</xsl:when>
            <xsl:when test="$langval='balkan romani'">rmn</xsl:when>
            <xsl:when test="$langval='sinte romani'">rmo</xsl:when>
            <xsl:when test="$langval='rempi'">rmp</xsl:when>
            <xsl:when test="$langval='caló'">rmq</xsl:when>
            <xsl:when test="$langval='romanian sign language'">rms</xsl:when>
            <xsl:when test="$langval='domari'">rmt</xsl:when>
            <xsl:when test="$langval='tavringer romani'">rmu</xsl:when>
            <xsl:when test="$langval='romanova'">rmv</xsl:when>
            <xsl:when test="$langval='welsh romani'">rmw</xsl:when>
            <xsl:when test="$langval='romam'">rmx</xsl:when>
            <xsl:when test="$langval='vlax romani'">rmy</xsl:when>
            <xsl:when test="$langval='marma'">rmz</xsl:when>
            <xsl:when test="$langval='runa'">rna</xsl:when>
            <xsl:when test="$langval='ruund'">rnd</xsl:when>
            <xsl:when test="$langval='ronga'">rng</xsl:when>
            <xsl:when test="$langval='ranglong'">rnl</xsl:when>
            <xsl:when test="$langval='roon'">rnn</xsl:when>
            <xsl:when test="$langval='rongpo'">rnp</xsl:when>
            <xsl:when test="$langval='nari nari'">rnr</xsl:when>
            <xsl:when test="$langval='rungwa'">rnw</xsl:when>
            <xsl:when test="$langval='tae'''">rob</xsl:when>
            <xsl:when test="$langval='cacgia roglai'">roc</xsl:when>
            <xsl:when test="$langval='rogo'">rod</xsl:when>
            <xsl:when test="$langval='ronji'">roe</xsl:when>
            <xsl:when test="$langval='rombo'">rof</xsl:when>
            <xsl:when test="$langval='northern roglai'">rog</xsl:when>
            <xsl:when test="$langval='romansh'">roh</xsl:when>
            <xsl:when test="$langval='romblomanon'">rol</xsl:when>
            <xsl:when test="$langval='romany'">rom</xsl:when>
            <xsl:when test="$langval='romanian'">ron</xsl:when>
            <xsl:when test="$langval='rotokas'">roo</xsl:when>
            <xsl:when test="$langval='kriol'">rop</xsl:when>
            <xsl:when test="$langval='rongga'">ror</xsl:when>
            <xsl:when test="$langval='runga'">rou</xsl:when>
            <xsl:when test="$langval='dela-oenale'">row</xsl:when>
            <xsl:when test="$langval='repanbitip'">rpn</xsl:when>
            <xsl:when test="$langval='rapting'">rpt</xsl:when>
            <xsl:when test="$langval='ririo'">rri</xsl:when>
            <xsl:when test="$langval='waima'">rro</xsl:when>
            <xsl:when test="$langval='arritinngithigh'">rrt</xsl:when>
            <xsl:when test="$langval='romano-serbian'">rsb</xsl:when>
            <xsl:when test="$langval='rennellese sign language'">rsi</xsl:when>
            <xsl:when test="$langval='russian sign language'">rsl</xsl:when>
            <xsl:when test="$langval='rungtu chin'">rtc</xsl:when>
            <xsl:when test="$langval='ratahan'">rth</xsl:when>
            <xsl:when test="$langval='rotuman'">rtm</xsl:when>
            <xsl:when test="$langval='yurats'">rts</xsl:when>
            <xsl:when test="$langval='rathawi'">rtw</xsl:when>
            <xsl:when test="$langval='gungu'">rub</xsl:when>
            <xsl:when test="$langval='ruuli'">ruc</xsl:when>
            <xsl:when test="$langval='rusyn'">rue</xsl:when>
            <xsl:when test="$langval='luguru'">ruf</xsl:when>
            <xsl:when test="$langval='roviana'">rug</xsl:when>
            <xsl:when test="$langval='ruga'">ruh</xsl:when>
            <xsl:when test="$langval='rufiji'">rui</xsl:when>
            <xsl:when test="$langval='che'">ruk</xsl:when>
            <xsl:when test="$langval='rundi'">run</xsl:when>
            <xsl:when test="$langval='istro romanian'">ruo</xsl:when>
            <xsl:when test="$langval='macedo-romanian'">rup</xsl:when>
            <xsl:when test="$langval='megleno romanian'">ruq</xsl:when>
            <xsl:when test="$langval='russian'">rus</xsl:when>
            <xsl:when test="$langval='rutul'">rut</xsl:when>
            <xsl:when test="$langval='lanas lobu'">ruu</xsl:when>
            <xsl:when test="$langval='mala (nigeria)'">ruy</xsl:when>
            <xsl:when test="$langval='ruma'">ruz</xsl:when>
            <xsl:when test="$langval='rawo'">rwa</xsl:when>
            <xsl:when test="$langval='rwa'">rwk</xsl:when>
            <xsl:when test="$langval='amba (uganda)'">rwm</xsl:when>
            <xsl:when test="$langval='rawa'">rwo</xsl:when>
            <xsl:when test="$langval='marwari (india)'">rwr</xsl:when>
            <xsl:when test="$langval='ngardi'">rxd</xsl:when>
            <xsl:when test="$langval='karuwali'">rxw</xsl:when>
            <xsl:when test="$langval='northern amami-oshima'">ryn</xsl:when>
            <xsl:when test="$langval='yaeyama'">rys</xsl:when>
            <xsl:when test="$langval='central okinawan'">ryu</xsl:when>
            <xsl:when test="$langval='saba'">saa</xsl:when>
            <xsl:when test="$langval='buglere'">sab</xsl:when>
            <xsl:when test="$langval='meskwaki'">sac</xsl:when>
            <xsl:when test="$langval='sandawe'">sad</xsl:when>
            <xsl:when test="$langval='sabanê'">sae</xsl:when>
            <xsl:when test="$langval='safaliba'">saf</xsl:when>
            <xsl:when test="$langval='sango'">sag</xsl:when>
            <xsl:when test="$langval='yakut'">sah</xsl:when>
            <xsl:when test="$langval='sahu'">saj</xsl:when>
            <xsl:when test="$langval='sake'">sak</xsl:when>
            <xsl:when test="$langval='samaritan aramaic'">sam</xsl:when>
            <xsl:when test="$langval='sanskrit'">san</xsl:when>
            <xsl:when test="$langval='sause'">sao</xsl:when>
            <xsl:when test="$langval='samburu'">saq</xsl:when>
            <xsl:when test="$langval='saraveca'">sar</xsl:when>
            <xsl:when test="$langval='sasak'">sas</xsl:when>
            <xsl:when test="$langval='santali'">sat</xsl:when>
            <xsl:when test="$langval='saleman'">sau</xsl:when>
            <xsl:when test="$langval='saafi-saafi'">sav</xsl:when>
            <xsl:when test="$langval='sawi'">saw</xsl:when>
            <xsl:when test="$langval='sa'">sax</xsl:when>
            <xsl:when test="$langval='saya'">say</xsl:when>
            <xsl:when test="$langval='saurashtra'">saz</xsl:when>
            <xsl:when test="$langval='ngambay'">sba</xsl:when>
            <xsl:when test="$langval='simbo'">sbb</xsl:when>
            <xsl:when test="$langval='kele (papua new guinea)'">sbc</xsl:when>
            <xsl:when test="$langval='southern samo'">sbd</xsl:when>
            <xsl:when test="$langval='saliba'">sbe</xsl:when>
            <xsl:when test="$langval='chabu'">sbf</xsl:when>
            <xsl:when test="$langval='seget'">sbg</xsl:when>
            <xsl:when test="$langval='sori-harengan'">sbh</xsl:when>
            <xsl:when test="$langval='seti'">sbi</xsl:when>
            <xsl:when test="$langval='surbakhal'">sbj</xsl:when>
            <xsl:when test="$langval='safwa'">sbk</xsl:when>
            <xsl:when test="$langval='botolan sambal'">sbl</xsl:when>
            <xsl:when test="$langval='sagala'">sbm</xsl:when>
            <xsl:when test="$langval='sindhi bhil'">sbn</xsl:when>
            <xsl:when test="$langval='sabüm'">sbo</xsl:when>
            <xsl:when test="$langval='sangu (tanzania)'">sbp</xsl:when>
            <xsl:when test="$langval='sileibi'">sbq</xsl:when>
            <xsl:when test="$langval='sembakung murut'">sbr</xsl:when>
            <xsl:when test="$langval='subiya'">sbs</xsl:when>
            <xsl:when test="$langval='kimki'">sbt</xsl:when>
            <xsl:when test="$langval='stod bhoti'">sbu</xsl:when>
            <xsl:when test="$langval='sabine'">sbv</xsl:when>
            <xsl:when test="$langval='simba'">sbw</xsl:when>
            <xsl:when test="$langval='seberuang'">sbx</xsl:when>
            <xsl:when test="$langval='soli'">sby</xsl:when>
            <xsl:when test="$langval='sara kaba'">sbz</xsl:when>
            <xsl:when test="$langval='chut'">scb</xsl:when>
            <xsl:when test="$langval='dongxiang'">sce</xsl:when>
            <xsl:when test="$langval='san miguel creole french'">scf</xsl:when>
            <xsl:when test="$langval='sanggau'">scg</xsl:when>
            <xsl:when test="$langval='sakachep'">sch</xsl:when>
            <xsl:when test="$langval='sri lankan creole malay'">sci</xsl:when>
            <xsl:when test="$langval='sadri'">sck</xsl:when>
            <xsl:when test="$langval='shina'">scl</xsl:when>
            <xsl:when test="$langval='sicilian'">scn</xsl:when>
            <xsl:when test="$langval='scots'">sco</xsl:when>
            <xsl:when test="$langval='helambu sherpa'">scp</xsl:when>
            <xsl:when test="$langval='sa''och'">scq</xsl:when>
            <xsl:when test="$langval='north slavey'">scs</xsl:when>
            <xsl:when test="$langval='shumcho'">scu</xsl:when>
            <xsl:when test="$langval='sheni'">scv</xsl:when>
            <xsl:when test="$langval='sha'">scw</xsl:when>
            <xsl:when test="$langval='sicel'">scx</xsl:when>
            <xsl:when test="$langval='toraja-sa''dan'">sda</xsl:when>
            <xsl:when test="$langval='shabak'">sdb</xsl:when>
            <xsl:when test="$langval='sassarese sardinian'">sdc</xsl:when>
            <xsl:when test="$langval='surubu'">sde</xsl:when>
            <xsl:when test="$langval='sarli'">sdf</xsl:when>
            <xsl:when test="$langval='savi'">sdg</xsl:when>
            <xsl:when test="$langval='southern kurdish'">sdh</xsl:when>
            <xsl:when test="$langval='suundi'">sdj</xsl:when>
            <xsl:when test="$langval='sos kundi'">sdk</xsl:when>
            <xsl:when test="$langval='saudi arabian sign language'">sdl</xsl:when>
            <xsl:when test="$langval='semandang'">sdm</xsl:when>
            <xsl:when test="$langval='gallurese sardinian'">sdn</xsl:when>
            <xsl:when test="$langval='bukar-sadung bidayuh'">sdo</xsl:when>
            <xsl:when test="$langval='sherdukpen'">sdp</xsl:when>
            <xsl:when test="$langval='oraon sadri'">sdr</xsl:when>
            <xsl:when test="$langval='sened'">sds</xsl:when>
            <xsl:when test="$langval='shuadit'">sdt</xsl:when>
            <xsl:when test="$langval='sarudu'">sdu</xsl:when>
            <xsl:when test="$langval='sibu melanau'">sdx</xsl:when>
            <xsl:when test="$langval='sallands'">sdz</xsl:when>
            <xsl:when test="$langval='semai'">sea</xsl:when>
            <xsl:when test="$langval='shempire senoufo'">seb</xsl:when>
            <xsl:when test="$langval='sechelt'">sec</xsl:when>
            <xsl:when test="$langval='sedang'">sed</xsl:when>
            <xsl:when test="$langval='seneca'">see</xsl:when>
            <xsl:when test="$langval='cebaara senoufo'">sef</xsl:when>
            <xsl:when test="$langval='segeju'">seg</xsl:when>
            <xsl:when test="$langval='sena'">seh</xsl:when>
            <xsl:when test="$langval='seri'">sei</xsl:when>
            <xsl:when test="$langval='sene'">sej</xsl:when>
            <xsl:when test="$langval='sekani'">sek</xsl:when>
            <xsl:when test="$langval='selkup'">sel</xsl:when>
            <xsl:when test="$langval='nanerigé sénoufo'">sen</xsl:when>
            <xsl:when test="$langval='suarmin'">seo</xsl:when>
            <xsl:when test="$langval='sìcìté sénoufo'">sep</xsl:when>
            <xsl:when test="$langval='senara sénoufo'">seq</xsl:when>
            <xsl:when test="$langval='serrano'">ser</xsl:when>
            <xsl:when test="$langval='koyraboro senni songhai'">ses</xsl:when>
            <xsl:when test="$langval='sentani'">set</xsl:when>
            <xsl:when test="$langval='serui-laut'">seu</xsl:when>
            <xsl:when test="$langval='nyarafolo senoufo'">sev</xsl:when>
            <xsl:when test="$langval='sewa bay'">sew</xsl:when>
            <xsl:when test="$langval='secoya'">sey</xsl:when>
            <xsl:when test="$langval='senthang chin'">sez</xsl:when>
            <xsl:when test="$langval='langue des signes de belgique francophone'">sfb</xsl:when>
            <xsl:when test="$langval='eastern subanen'">sfe</xsl:when>
            <xsl:when test="$langval='small flowery miao'">sfm</xsl:when>
            <xsl:when test="$langval='south african sign language'">sfs</xsl:when>
            <xsl:when test="$langval='sehwi'">sfw</xsl:when>
            <xsl:when test="$langval='old irish (to 900)'">sga</xsl:when>
            <xsl:when test="$langval='mag-antsi ayta'">sgb</xsl:when>
            <xsl:when test="$langval='kipsigis'">sgc</xsl:when>
            <xsl:when test="$langval='surigaonon'">sgd</xsl:when>
            <xsl:when test="$langval='segai'">sge</xsl:when>
            <xsl:when test="$langval='swiss-german sign language'">sgg</xsl:when>
            <xsl:when test="$langval='shughni'">sgh</xsl:when>
            <xsl:when test="$langval='suga'">sgi</xsl:when>
            <xsl:when test="$langval='surgujia'">sgj</xsl:when>
            <xsl:when test="$langval='sangkong'">sgk</xsl:when>
            <xsl:when test="$langval='singa'">sgm</xsl:when>
            <xsl:when test="$langval='singpho'">sgp</xsl:when>
            <xsl:when test="$langval='sangisari'">sgr</xsl:when>
            <xsl:when test="$langval='samogitian'">sgs</xsl:when>
            <xsl:when test="$langval='brokpake'">sgt</xsl:when>
            <xsl:when test="$langval='salas'">sgu</xsl:when>
            <xsl:when test="$langval='sebat bet gurage'">sgw</xsl:when>
            <xsl:when test="$langval='sierra leone sign language'">sgx</xsl:when>
            <xsl:when test="$langval='sanglechi'">sgy</xsl:when>
            <xsl:when test="$langval='sursurunga'">sgz</xsl:when>
            <xsl:when test="$langval='shall-zwall'">sha</xsl:when>
            <xsl:when test="$langval='ninam'">shb</xsl:when>
            <xsl:when test="$langval='sonde'">shc</xsl:when>
            <xsl:when test="$langval='kundal shahi'">shd</xsl:when>
            <xsl:when test="$langval='sheko'">she</xsl:when>
            <xsl:when test="$langval='shua'">shg</xsl:when>
            <xsl:when test="$langval='shoshoni'">shh</xsl:when>
            <xsl:when test="$langval='tachelhit'">shi</xsl:when>
            <xsl:when test="$langval='shatt'">shj</xsl:when>
            <xsl:when test="$langval='shilluk'">shk</xsl:when>
            <xsl:when test="$langval='shendu'">shl</xsl:when>
            <xsl:when test="$langval='shahrudi'">shm</xsl:when>
            <xsl:when test="$langval='shan'">shn</xsl:when>
            <xsl:when test="$langval='shanga'">sho</xsl:when>
            <xsl:when test="$langval='shipibo-conibo'">shp</xsl:when>
            <xsl:when test="$langval='sala'">shq</xsl:when>
            <xsl:when test="$langval='shi'">shr</xsl:when>
            <xsl:when test="$langval='shuswap'">shs</xsl:when>
            <xsl:when test="$langval='shasta'">sht</xsl:when>
            <xsl:when test="$langval='chadian arabic'">shu</xsl:when>
            <xsl:when test="$langval='shehri'">shv</xsl:when>
            <xsl:when test="$langval='shwai'">shw</xsl:when>
            <xsl:when test="$langval='she'">shx</xsl:when>
            <xsl:when test="$langval='tachawit'">shy</xsl:when>
            <xsl:when test="$langval='syenara senoufo'">shz</xsl:when>
            <xsl:when test="$langval='akkala sami'">sia</xsl:when>
            <xsl:when test="$langval='sebop'">sib</xsl:when>
            <xsl:when test="$langval='sidamo'">sid</xsl:when>
            <xsl:when test="$langval='simaa'">sie</xsl:when>
            <xsl:when test="$langval='siamou'">sif</xsl:when>
            <xsl:when test="$langval='paasaal'">sig</xsl:when>
            <xsl:when test="$langval='zire'">sih</xsl:when>
            <xsl:when test="$langval='shom peng'">sii</xsl:when>
            <xsl:when test="$langval='numbami'">sij</xsl:when>
            <xsl:when test="$langval='sikiana'">sik</xsl:when>
            <xsl:when test="$langval='tumulung sisaala'">sil</xsl:when>
            <xsl:when test="$langval='mende (papua new guinea)'">sim</xsl:when>
            <xsl:when test="$langval='sinhala'">sin</xsl:when>
            <xsl:when test="$langval='sikkimese'">sip</xsl:when>
            <xsl:when test="$langval='sonia'">siq</xsl:when>
            <xsl:when test="$langval='siri'">sir</xsl:when>
            <xsl:when test="$langval='siuslaw'">sis</xsl:when>
            <xsl:when test="$langval='sinagen'">siu</xsl:when>
            <xsl:when test="$langval='sumariup'">siv</xsl:when>
            <xsl:when test="$langval='siwai'">siw</xsl:when>
            <xsl:when test="$langval='sumau'">six</xsl:when>
            <xsl:when test="$langval='sivandi'">siy</xsl:when>
            <xsl:when test="$langval='siwi'">siz</xsl:when>
            <xsl:when test="$langval='epena'">sja</xsl:when>
            <xsl:when test="$langval='sajau basap'">sjb</xsl:when>
            <xsl:when test="$langval='kildin sami'">sjd</xsl:when>
            <xsl:when test="$langval='pite sami'">sje</xsl:when>
            <xsl:when test="$langval='assangori'">sjg</xsl:when>
            <xsl:when test="$langval='kemi sami'">sjk</xsl:when>
            <xsl:when test="$langval='sajalong'">sjl</xsl:when>
            <xsl:when test="$langval='mapun'">sjm</xsl:when>
            <xsl:when test="$langval='sindarin'">sjn</xsl:when>
            <xsl:when test="$langval='xibe'">sjo</xsl:when>
            <xsl:when test="$langval='surjapuri'">sjp</xsl:when>
            <xsl:when test="$langval='siar-lak'">sjr</xsl:when>
            <xsl:when test="$langval='senhaja de srair'">sjs</xsl:when>
            <xsl:when test="$langval='ter sami'">sjt</xsl:when>
            <xsl:when test="$langval='ume sami'">sju</xsl:when>
            <xsl:when test="$langval='shawnee'">sjw</xsl:when>
            <xsl:when test="$langval='skagit'">ska</xsl:when>
            <xsl:when test="$langval='saek'">skb</xsl:when>
            <xsl:when test="$langval='ma manda'">skc</xsl:when>
            <xsl:when test="$langval='southern sierra miwok'">skd</xsl:when>
            <xsl:when test="$langval='seke (vanuatu)'">ske</xsl:when>
            <xsl:when test="$langval='sakirabiá'">skf</xsl:when>
            <xsl:when test="$langval='sakalava malagasy'">skg</xsl:when>
            <xsl:when test="$langval='sikule'">skh</xsl:when>
            <xsl:when test="$langval='sika'">ski</xsl:when>
            <xsl:when test="$langval='seke (nepal)'">skj</xsl:when>
            <xsl:when test="$langval='sok'">skk</xsl:when>
            <xsl:when test="$langval='kutong'">skm</xsl:when>
            <xsl:when test="$langval='kolibugan subanon'">skn</xsl:when>
            <xsl:when test="$langval='seko tengah'">sko</xsl:when>
            <xsl:when test="$langval='sekapan'">skp</xsl:when>
            <xsl:when test="$langval='sininkere'">skq</xsl:when>
            <xsl:when test="$langval='saraiki'">skr</xsl:when>
            <xsl:when test="$langval='maia'">sks</xsl:when>
            <xsl:when test="$langval='sakata'">skt</xsl:when>
            <xsl:when test="$langval='sakao'">sku</xsl:when>
            <xsl:when test="$langval='skou'">skv</xsl:when>
            <xsl:when test="$langval='skepi creole dutch'">skw</xsl:when>
            <xsl:when test="$langval='seko padang'">skx</xsl:when>
            <xsl:when test="$langval='sikaiana'">sky</xsl:when>
            <xsl:when test="$langval='sekar'">skz</xsl:when>
            <xsl:when test="$langval='sáliba'">slc</xsl:when>
            <xsl:when test="$langval='sissala'">sld</xsl:when>
            <xsl:when test="$langval='sholaga'">sle</xsl:when>
            <xsl:when test="$langval='swiss-italian sign language'">slf</xsl:when>
            <xsl:when test="$langval='selungai murut'">slg</xsl:when>
            <xsl:when test="$langval='southern puget sound salish'">slh</xsl:when>
            <xsl:when test="$langval='lower silesian'">sli</xsl:when>
            <xsl:when test="$langval='salumá'">slj</xsl:when>
            <xsl:when test="$langval='slovak'">slk</xsl:when>
            <xsl:when test="$langval='salt-yui'">sll</xsl:when>
            <xsl:when test="$langval='pangutaran sama'">slm</xsl:when>
            <xsl:when test="$langval='salinan'">sln</xsl:when>
            <xsl:when test="$langval='lamaholot'">slp</xsl:when>
            <xsl:when test="$langval='salchuq'">slq</xsl:when>
            <xsl:when test="$langval='salar'">slr</xsl:when>
            <xsl:when test="$langval='singapore sign language'">sls</xsl:when>
            <xsl:when test="$langval='sila'">slt</xsl:when>
            <xsl:when test="$langval='selaru'">slu</xsl:when>
            <xsl:when test="$langval='slovenian'">slv</xsl:when>
            <xsl:when test="$langval='sialum'">slw</xsl:when>
            <xsl:when test="$langval='salampasu'">slx</xsl:when>
            <xsl:when test="$langval='selayar'">sly</xsl:when>
            <xsl:when test="$langval='ma''ya'">slz</xsl:when>
            <xsl:when test="$langval='southern sami'">sma</xsl:when>
            <xsl:when test="$langval='simbari'">smb</xsl:when>
            <xsl:when test="$langval='som'">smc</xsl:when>
            <xsl:when test="$langval='sama'">smd</xsl:when>
            <xsl:when test="$langval='northern sami'">sme</xsl:when>
            <xsl:when test="$langval='auwe'">smf</xsl:when>
            <xsl:when test="$langval='simbali'">smg</xsl:when>
            <xsl:when test="$langval='samei'">smh</xsl:when>
            <xsl:when test="$langval='lule sami'">smj</xsl:when>
            <xsl:when test="$langval='bolinao'">smk</xsl:when>
            <xsl:when test="$langval='central sama'">sml</xsl:when>
            <xsl:when test="$langval='musasa'">smm</xsl:when>
            <xsl:when test="$langval='inari sami'">smn</xsl:when>
            <xsl:when test="$langval='samoan'">smo</xsl:when>
            <xsl:when test="$langval='samaritan'">smp</xsl:when>
            <xsl:when test="$langval='samo'">smq</xsl:when>
            <xsl:when test="$langval='simeulue'">smr</xsl:when>
            <xsl:when test="$langval='skolt sami'">sms</xsl:when>
            <xsl:when test="$langval='simte'">smt</xsl:when>
            <xsl:when test="$langval='somray'">smu</xsl:when>
            <xsl:when test="$langval='samvedi'">smv</xsl:when>
            <xsl:when test="$langval='sumbawa'">smw</xsl:when>
            <xsl:when test="$langval='samba'">smx</xsl:when>
            <xsl:when test="$langval='semnani'">smy</xsl:when>
            <xsl:when test="$langval='simeku'">smz</xsl:when>
            <xsl:when test="$langval='shona'">sna</xsl:when>
            <xsl:when test="$langval='sebuyau'">snb</xsl:when>
            <xsl:when test="$langval='sinaugoro'">snc</xsl:when>
            <xsl:when test="$langval='sindhi'">snd</xsl:when>
            <xsl:when test="$langval='bau bidayuh'">sne</xsl:when>
            <xsl:when test="$langval='noon'">snf</xsl:when>
            <xsl:when test="$langval='sanga (democratic republic of congo)'">sng</xsl:when>
            <xsl:when test="$langval='shinabo'">snh</xsl:when>
            <xsl:when test="$langval='sensi'">sni</xsl:when>
            <xsl:when test="$langval='riverain sango'">snj</xsl:when>
            <xsl:when test="$langval='soninke'">snk</xsl:when>
            <xsl:when test="$langval='sangil'">snl</xsl:when>
            <xsl:when test="$langval='southern ma''di'">snm</xsl:when>
            <xsl:when test="$langval='siona'">snn</xsl:when>
            <xsl:when test="$langval='snohomish'">sno</xsl:when>
            <xsl:when test="$langval='siane'">snp</xsl:when>
            <xsl:when test="$langval='sangu (gabon)'">snq</xsl:when>
            <xsl:when test="$langval='sihan'">snr</xsl:when>
            <xsl:when test="$langval='south west bay'">sns</xsl:when>
            <xsl:when test="$langval='senggi'">snu</xsl:when>
            <xsl:when test="$langval='sa''ban'">snv</xsl:when>
            <xsl:when test="$langval='selee'">snw</xsl:when>
            <xsl:when test="$langval='sam'">snx</xsl:when>
            <xsl:when test="$langval='saniyo-hiyewe'">sny</xsl:when>
            <xsl:when test="$langval='sinsauru'">snz</xsl:when>
            <xsl:when test="$langval='thai song'">soa</xsl:when>
            <xsl:when test="$langval='sobei'">sob</xsl:when>
            <xsl:when test="$langval='so (democratic republic of congo)'">soc</xsl:when>
            <xsl:when test="$langval='songoora'">sod</xsl:when>
            <xsl:when test="$langval='songomeno'">soe</xsl:when>
            <xsl:when test="$langval='sogdian'">sog</xsl:when>
            <xsl:when test="$langval='aka'">soh</xsl:when>
            <xsl:when test="$langval='sonha'">soi</xsl:when>
            <xsl:when test="$langval='soi'">soj</xsl:when>
            <xsl:when test="$langval='sokoro'">sok</xsl:when>
            <xsl:when test="$langval='solos'">sol</xsl:when>
            <xsl:when test="$langval='somali'">som</xsl:when>
            <xsl:when test="$langval='songo'">soo</xsl:when>
            <xsl:when test="$langval='songe'">sop</xsl:when>
            <xsl:when test="$langval='kanasi'">soq</xsl:when>
            <xsl:when test="$langval='somrai'">sor</xsl:when>
            <xsl:when test="$langval='seeku'">sos</xsl:when>
            <xsl:when test="$langval='southern sotho'">sot</xsl:when>
            <xsl:when test="$langval='southern thai'">sou</xsl:when>
            <xsl:when test="$langval='sonsorol'">sov</xsl:when>
            <xsl:when test="$langval='sowanda'">sow</xsl:when>
            <xsl:when test="$langval='swo'">sox</xsl:when>
            <xsl:when test="$langval='miyobe'">soy</xsl:when>
            <xsl:when test="$langval='temi'">soz</xsl:when>
            <xsl:when test="$langval='spanish'">spa</xsl:when>
            <xsl:when test="$langval='sepa (indonesia)'">spb</xsl:when>
            <xsl:when test="$langval='sapé'">spc</xsl:when>
            <xsl:when test="$langval='saep'">spd</xsl:when>
            <xsl:when test="$langval='sepa (papua new guinea)'">spe</xsl:when>
            <xsl:when test="$langval='sian'">spg</xsl:when>
            <xsl:when test="$langval='saponi'">spi</xsl:when>
            <xsl:when test="$langval='sengo'">spk</xsl:when>
            <xsl:when test="$langval='selepet'">spl</xsl:when>
            <xsl:when test="$langval='akukem'">spm</xsl:when>
            <xsl:when test="$langval='sanapaná'">spn</xsl:when>
            <xsl:when test="$langval='spokane'">spo</xsl:when>
            <xsl:when test="$langval='supyire senoufo'">spp</xsl:when>
            <xsl:when test="$langval='loreto-ucayali spanish'">spq</xsl:when>
            <xsl:when test="$langval='saparua'">spr</xsl:when>
            <xsl:when test="$langval='saposa'">sps</xsl:when>
            <xsl:when test="$langval='spiti bhoti'">spt</xsl:when>
            <xsl:when test="$langval='sapuan'">spu</xsl:when>
            <xsl:when test="$langval='sambalpuri'">spv</xsl:when>
            <xsl:when test="$langval='south picene'">spx</xsl:when>
            <xsl:when test="$langval='sabaot'">spy</xsl:when>
            <xsl:when test="$langval='shama-sambuga'">sqa</xsl:when>
            <xsl:when test="$langval='shau'">sqh</xsl:when>
            <xsl:when test="$langval='albanian'">sqi</xsl:when>
            <xsl:when test="$langval='albanian sign language'">sqk</xsl:when>
            <xsl:when test="$langval='suma'">sqm</xsl:when>
            <xsl:when test="$langval='susquehannock'">sqn</xsl:when>
            <xsl:when test="$langval='sorkhei'">sqo</xsl:when>
            <xsl:when test="$langval='sou'">sqq</xsl:when>
            <xsl:when test="$langval='siculo arabic'">sqr</xsl:when>
            <xsl:when test="$langval='sri lankan sign language'">sqs</xsl:when>
            <xsl:when test="$langval='soqotri'">sqt</xsl:when>
            <xsl:when test="$langval='squamish'">squ</xsl:when>
            <xsl:when test="$langval='saruga'">sra</xsl:when>
            <xsl:when test="$langval='sora'">srb</xsl:when>
            <xsl:when test="$langval='logudorese sardinian'">src</xsl:when>
            <xsl:when test="$langval='sardinian'">srd</xsl:when>
            <xsl:when test="$langval='sara'">sre</xsl:when>
            <xsl:when test="$langval='nafi'">srf</xsl:when>
            <xsl:when test="$langval='sulod'">srg</xsl:when>
            <xsl:when test="$langval='sarikoli'">srh</xsl:when>
            <xsl:when test="$langval='siriano'">sri</xsl:when>
            <xsl:when test="$langval='serudung murut'">srk</xsl:when>
            <xsl:when test="$langval='isirawa'">srl</xsl:when>
            <xsl:when test="$langval='saramaccan'">srm</xsl:when>
            <xsl:when test="$langval='sranan tongo'">srn</xsl:when>
            <xsl:when test="$langval='campidanese sardinian'">sro</xsl:when>
            <xsl:when test="$langval='serbian'">srp</xsl:when>
            <xsl:when test="$langval='sirionó'">srq</xsl:when>
            <xsl:when test="$langval='serer'">srr</xsl:when>
            <xsl:when test="$langval='sarsi'">srs</xsl:when>
            <xsl:when test="$langval='sauri'">srt</xsl:when>
            <xsl:when test="$langval='suruí'">sru</xsl:when>
            <xsl:when test="$langval='southern sorsoganon'">srv</xsl:when>
            <xsl:when test="$langval='serua'">srw</xsl:when>
            <xsl:when test="$langval='sirmauri'">srx</xsl:when>
            <xsl:when test="$langval='sera'">sry</xsl:when>
            <xsl:when test="$langval='shahmirzadi'">srz</xsl:when>
            <xsl:when test="$langval='southern sama'">ssb</xsl:when>
            <xsl:when test="$langval='suba-simbiti'">ssc</xsl:when>
            <xsl:when test="$langval='siroi'">ssd</xsl:when>
            <xsl:when test="$langval='balangingi'">sse</xsl:when>
            <xsl:when test="$langval='thao'">ssf</xsl:when>
            <xsl:when test="$langval='seimat'">ssg</xsl:when>
            <xsl:when test="$langval='shihhi arabic'">ssh</xsl:when>
            <xsl:when test="$langval='sansi'">ssi</xsl:when>
            <xsl:when test="$langval='sausi'">ssj</xsl:when>
            <xsl:when test="$langval='sunam'">ssk</xsl:when>
            <xsl:when test="$langval='western sisaala'">ssl</xsl:when>
            <xsl:when test="$langval='semnam'">ssm</xsl:when>
            <xsl:when test="$langval='waata'">ssn</xsl:when>
            <xsl:when test="$langval='sissano'">sso</xsl:when>
            <xsl:when test="$langval='spanish sign language'">ssp</xsl:when>
            <xsl:when test="$langval='so''a'">ssq</xsl:when>
            <xsl:when test="$langval='swiss-french sign language'">ssr</xsl:when>
            <xsl:when test="$langval='sô'">sss</xsl:when>
            <xsl:when test="$langval='sinasina'">sst</xsl:when>
            <xsl:when test="$langval='susuami'">ssu</xsl:when>
            <xsl:when test="$langval='shark bay'">ssv</xsl:when>
            <xsl:when test="$langval='swati'">ssw</xsl:when>
            <xsl:when test="$langval='samberigi'">ssx</xsl:when>
            <xsl:when test="$langval='saho'">ssy</xsl:when>
            <xsl:when test="$langval='sengseng'">ssz</xsl:when>
            <xsl:when test="$langval='settla'">sta</xsl:when>
            <xsl:when test="$langval='northern subanen'">stb</xsl:when>
            <xsl:when test="$langval='sentinel'">std</xsl:when>
            <xsl:when test="$langval='liana-seti'">ste</xsl:when>
            <xsl:when test="$langval='seta'">stf</xsl:when>
            <xsl:when test="$langval='trieng'">stg</xsl:when>
            <xsl:when test="$langval='shelta'">sth</xsl:when>
            <xsl:when test="$langval='bulo stieng'">sti</xsl:when>
            <xsl:when test="$langval='matya samo'">stj</xsl:when>
            <xsl:when test="$langval='arammba'">stk</xsl:when>
            <xsl:when test="$langval='stellingwerfs'">stl</xsl:when>
            <xsl:when test="$langval='setaman'">stm</xsl:when>
            <xsl:when test="$langval='owa'">stn</xsl:when>
            <xsl:when test="$langval='stoney'">sto</xsl:when>
            <xsl:when test="$langval='southeastern tepehuan'">stp</xsl:when>
            <xsl:when test="$langval='saterfriesisch'">stq</xsl:when>
            <xsl:when test="$langval='straits salish'">str</xsl:when>
            <xsl:when test="$langval='shumashti'">sts</xsl:when>
            <xsl:when test="$langval='budeh stieng'">stt</xsl:when>
            <xsl:when test="$langval='samtao'">stu</xsl:when>
            <xsl:when test="$langval='silt''e'">stv</xsl:when>
            <xsl:when test="$langval='satawalese'">stw</xsl:when>
            <xsl:when test="$langval='siberian tatar'">sty</xsl:when>
            <xsl:when test="$langval='sulka'">sua</xsl:when>
            <xsl:when test="$langval='suku'">sub</xsl:when>
            <xsl:when test="$langval='western subanon'">suc</xsl:when>
            <xsl:when test="$langval='suena'">sue</xsl:when>
            <xsl:when test="$langval='suganga'">sug</xsl:when>
            <xsl:when test="$langval='suki'">sui</xsl:when>
            <xsl:when test="$langval='shubi'">suj</xsl:when>
            <xsl:when test="$langval='sukuma'">suk</xsl:when>
            <xsl:when test="$langval='sundanese'">sun</xsl:when>
            <xsl:when test="$langval='suri'">suq</xsl:when>
            <xsl:when test="$langval='mwaghavul'">sur</xsl:when>
            <xsl:when test="$langval='susu'">sus</xsl:when>
            <xsl:when test="$langval='subtiaba'">sut</xsl:when>
            <xsl:when test="$langval='puroik'">suv</xsl:when>
            <xsl:when test="$langval='sumbwa'">suw</xsl:when>
            <xsl:when test="$langval='sumerian'">sux</xsl:when>
            <xsl:when test="$langval='suyá'">suy</xsl:when>
            <xsl:when test="$langval='sunwar'">suz</xsl:when>
            <xsl:when test="$langval='svan'">sva</xsl:when>
            <xsl:when test="$langval='ulau-suain'">svb</xsl:when>
            <xsl:when test="$langval='vincentian creole english'">svc</xsl:when>
            <xsl:when test="$langval='serili'">sve</xsl:when>
            <xsl:when test="$langval='slovakian sign language'">svk</xsl:when>
            <xsl:when test="$langval='slavomolisano'">svm</xsl:when>
            <xsl:when test="$langval='savara'">svr</xsl:when>
            <xsl:when test="$langval='savosavo'">svs</xsl:when>
            <xsl:when test="$langval='skalvian'">svx</xsl:when>
            <xsl:when test="$langval='swahili (macrolanguage)'">swa</xsl:when>
            <xsl:when test="$langval='maore comorian'">swb</xsl:when>
            <xsl:when test="$langval='congo swahili'">swc</xsl:when>
            <xsl:when test="$langval='swedish'">swe</xsl:when>
            <xsl:when test="$langval='sere'">swf</xsl:when>
            <xsl:when test="$langval='swabian'">swg</xsl:when>
            <xsl:when test="$langval='swahili (individual language)'">swh</xsl:when>
            <xsl:when test="$langval='sui'">swi</xsl:when>
            <xsl:when test="$langval='sira'">swj</xsl:when>
            <xsl:when test="$langval='malawi sena'">swk</xsl:when>
            <xsl:when test="$langval='swedish sign language'">swl</xsl:when>
            <xsl:when test="$langval='samosa'">swm</xsl:when>
            <xsl:when test="$langval='sawknah'">swn</xsl:when>
            <xsl:when test="$langval='shanenawa'">swo</xsl:when>
            <xsl:when test="$langval='suau'">swp</xsl:when>
            <xsl:when test="$langval='sharwa'">swq</xsl:when>
            <xsl:when test="$langval='saweru'">swr</xsl:when>
            <xsl:when test="$langval='seluwasan'">sws</xsl:when>
            <xsl:when test="$langval='sawila'">swt</xsl:when>
            <xsl:when test="$langval='suwawa'">swu</xsl:when>
            <xsl:when test="$langval='shekhawati'">swv</xsl:when>
            <xsl:when test="$langval='sowa'">sww</xsl:when>
            <xsl:when test="$langval='suruahá'">swx</xsl:when>
            <xsl:when test="$langval='sarua'">swy</xsl:when>
            <xsl:when test="$langval='suba'">sxb</xsl:when>
            <xsl:when test="$langval='sicanian'">sxc</xsl:when>
            <xsl:when test="$langval='sighu'">sxe</xsl:when>
            <xsl:when test="$langval='shixing'">sxg</xsl:when>
            <xsl:when test="$langval='southern kalapuya'">sxk</xsl:when>
            <xsl:when test="$langval='selian'">sxl</xsl:when>
            <xsl:when test="$langval='samre'">sxm</xsl:when>
            <xsl:when test="$langval='sangir'">sxn</xsl:when>
            <xsl:when test="$langval='sorothaptic'">sxo</xsl:when>
            <xsl:when test="$langval='saaroa'">sxr</xsl:when>
            <xsl:when test="$langval='sasaru'">sxs</xsl:when>
            <xsl:when test="$langval='upper saxon'">sxu</xsl:when>
            <xsl:when test="$langval='saxwe gbe'">sxw</xsl:when>
            <xsl:when test="$langval='siang'">sya</xsl:when>
            <xsl:when test="$langval='central subanen'">syb</xsl:when>
            <xsl:when test="$langval='classical syriac'">syc</xsl:when>
            <xsl:when test="$langval='seki'">syi</xsl:when>
            <xsl:when test="$langval='sukur'">syk</xsl:when>
            <xsl:when test="$langval='sylheti'">syl</xsl:when>
            <xsl:when test="$langval='maya samo'">sym</xsl:when>
            <xsl:when test="$langval='senaya'">syn</xsl:when>
            <xsl:when test="$langval='suoy'">syo</xsl:when>
            <xsl:when test="$langval='syriac'">syr</xsl:when>
            <xsl:when test="$langval='sinyar'">sys</xsl:when>
            <xsl:when test="$langval='kagate'">syw</xsl:when>
            <xsl:when test="$langval='samay'">syx</xsl:when>
            <xsl:when test="$langval='al-sayyid bedouin sign language'">syy</xsl:when>
            <xsl:when test="$langval='semelai'">sza</xsl:when>
            <xsl:when test="$langval='ngalum'">szb</xsl:when>
            <xsl:when test="$langval='semaq beri'">szc</xsl:when>
            <xsl:when test="$langval='seru'">szd</xsl:when>
            <xsl:when test="$langval='seze'">sze</xsl:when>
            <xsl:when test="$langval='sengele'">szg</xsl:when>
            <xsl:when test="$langval='silesian'">szl</xsl:when>
            <xsl:when test="$langval='sula'">szn</xsl:when>
            <xsl:when test="$langval='suabo'">szp</xsl:when>
            <xsl:when test="$langval='isu (fako division)'">szv</xsl:when>
            <xsl:when test="$langval='sawai'">szw</xsl:when>
            <xsl:when test="$langval='lower tanana'">taa</xsl:when>
            <xsl:when test="$langval='tabassaran'">tab</xsl:when>
            <xsl:when test="$langval='lowland tarahumara'">tac</xsl:when>
            <xsl:when test="$langval='tause'">tad</xsl:when>
            <xsl:when test="$langval='tariana'">tae</xsl:when>
            <xsl:when test="$langval='tapirapé'">taf</xsl:when>
            <xsl:when test="$langval='tagoi'">tag</xsl:when>
            <xsl:when test="$langval='tahitian'">tah</xsl:when>
            <xsl:when test="$langval='eastern tamang'">taj</xsl:when>
            <xsl:when test="$langval='tala'">tak</xsl:when>
            <xsl:when test="$langval='tal'">tal</xsl:when>
            <xsl:when test="$langval='tamil'">tam</xsl:when>
            <xsl:when test="$langval='tangale'">tan</xsl:when>
            <xsl:when test="$langval='yami'">tao</xsl:when>
            <xsl:when test="$langval='taabwa'">tap</xsl:when>
            <xsl:when test="$langval='tamasheq'">taq</xsl:when>
            <xsl:when test="$langval='central tarahumara'">tar</xsl:when>
            <xsl:when test="$langval='tay boi'">tas</xsl:when>
            <xsl:when test="$langval='tatar'">tat</xsl:when>
            <xsl:when test="$langval='upper tanana'">tau</xsl:when>
            <xsl:when test="$langval='tatuyo'">tav</xsl:when>
            <xsl:when test="$langval='tai'">taw</xsl:when>
            <xsl:when test="$langval='tamki'">tax</xsl:when>
            <xsl:when test="$langval='atayal'">tay</xsl:when>
            <xsl:when test="$langval='tocho'">taz</xsl:when>
            <xsl:when test="$langval='aikanã'">tba</xsl:when>
            <xsl:when test="$langval='tapeba'">tbb</xsl:when>
            <xsl:when test="$langval='takia'">tbc</xsl:when>
            <xsl:when test="$langval='kaki ae'">tbd</xsl:when>
            <xsl:when test="$langval='tanimbili'">tbe</xsl:when>
            <xsl:when test="$langval='mandara'">tbf</xsl:when>
            <xsl:when test="$langval='north tairora'">tbg</xsl:when>
            <xsl:when test="$langval='thurawal'">tbh</xsl:when>
            <xsl:when test="$langval='gaam'">tbi</xsl:when>
            <xsl:when test="$langval='tiang'">tbj</xsl:when>
            <xsl:when test="$langval='calamian tagbanwa'">tbk</xsl:when>
            <xsl:when test="$langval='tboli'">tbl</xsl:when>
            <xsl:when test="$langval='tagbu'">tbm</xsl:when>
            <xsl:when test="$langval='barro negro tunebo'">tbn</xsl:when>
            <xsl:when test="$langval='tawala'">tbo</xsl:when>
            <xsl:when test="$langval='taworta'">tbp</xsl:when>
            <xsl:when test="$langval='tumtum'">tbr</xsl:when>
            <xsl:when test="$langval='tanguat'">tbs</xsl:when>
            <xsl:when test="$langval='tembo (kitembo)'">tbt</xsl:when>
            <xsl:when test="$langval='tubar'">tbu</xsl:when>
            <xsl:when test="$langval='tobo'">tbv</xsl:when>
            <xsl:when test="$langval='tagbanwa'">tbw</xsl:when>
            <xsl:when test="$langval='kapin'">tbx</xsl:when>
            <xsl:when test="$langval='tabaru'">tby</xsl:when>
            <xsl:when test="$langval='ditammari'">tbz</xsl:when>
            <xsl:when test="$langval='ticuna'">tca</xsl:when>
            <xsl:when test="$langval='tanacross'">tcb</xsl:when>
            <xsl:when test="$langval='datooga'">tcc</xsl:when>
            <xsl:when test="$langval='tafi'">tcd</xsl:when>
            <xsl:when test="$langval='southern tutchone'">tce</xsl:when>
            <xsl:when test="$langval='malinaltepec me''phaa'">tcf</xsl:when>
            <xsl:when test="$langval='tamagario'">tcg</xsl:when>
            <xsl:when test="$langval='turks and caicos creole english'">tch</xsl:when>
            <xsl:when test="$langval='wára'">tci</xsl:when>
            <xsl:when test="$langval='tchitchege'">tck</xsl:when>
            <xsl:when test="$langval='taman (myanmar)'">tcl</xsl:when>
            <xsl:when test="$langval='tanahmerah'">tcm</xsl:when>
            <xsl:when test="$langval='tichurong'">tcn</xsl:when>
            <xsl:when test="$langval='taungyo'">tco</xsl:when>
            <xsl:when test="$langval='tawr chin'">tcp</xsl:when>
            <xsl:when test="$langval='kaiy'">tcq</xsl:when>
            <xsl:when test="$langval='torres strait creole'">tcs</xsl:when>
            <xsl:when test="$langval='t''en'">tct</xsl:when>
            <xsl:when test="$langval='southeastern tarahumara'">tcu</xsl:when>
            <xsl:when test="$langval='tecpatlán totonac'">tcw</xsl:when>
            <xsl:when test="$langval='toda'">tcx</xsl:when>
            <xsl:when test="$langval='tulu'">tcy</xsl:when>
            <xsl:when test="$langval='thado chin'">tcz</xsl:when>
            <xsl:when test="$langval='tagdal'">tda</xsl:when>
            <xsl:when test="$langval='panchpargania'">tdb</xsl:when>
            <xsl:when test="$langval='emberá-tadó'">tdc</xsl:when>
            <xsl:when test="$langval='tai nüa'">tdd</xsl:when>
            <xsl:when test="$langval='tiranige diga dogon'">tde</xsl:when>
            <xsl:when test="$langval='talieng'">tdf</xsl:when>
            <xsl:when test="$langval='western tamang'">tdg</xsl:when>
            <xsl:when test="$langval='thulung'">tdh</xsl:when>
            <xsl:when test="$langval='tomadino'">tdi</xsl:when>
            <xsl:when test="$langval='tajio'">tdj</xsl:when>
            <xsl:when test="$langval='tambas'">tdk</xsl:when>
            <xsl:when test="$langval='sur'">tdl</xsl:when>
            <xsl:when test="$langval='tondano'">tdn</xsl:when>
            <xsl:when test="$langval='teme'">tdo</xsl:when>
            <xsl:when test="$langval='tita'">tdq</xsl:when>
            <xsl:when test="$langval='todrah'">tdr</xsl:when>
            <xsl:when test="$langval='doutai'">tds</xsl:when>
            <xsl:when test="$langval='tetun dili'">tdt</xsl:when>
            <xsl:when test="$langval='tempasuk dusun'">tdu</xsl:when>
            <xsl:when test="$langval='toro'">tdv</xsl:when>
            <xsl:when test="$langval='tandroy-mahafaly malagasy'">tdx</xsl:when>
            <xsl:when test="$langval='tadyawan'">tdy</xsl:when>
            <xsl:when test="$langval='temiar'">tea</xsl:when>
            <xsl:when test="$langval='tetete'">teb</xsl:when>
            <xsl:when test="$langval='terik'">tec</xsl:when>
            <xsl:when test="$langval='tepo krumen'">ted</xsl:when>
            <xsl:when test="$langval='huehuetla tepehua'">tee</xsl:when>
            <xsl:when test="$langval='teressa'">tef</xsl:when>
            <xsl:when test="$langval='teke-tege'">teg</xsl:when>
            <xsl:when test="$langval='tehuelche'">teh</xsl:when>
            <xsl:when test="$langval='torricelli'">tei</xsl:when>
            <xsl:when test="$langval='ibali teke'">tek</xsl:when>
            <xsl:when test="$langval='telugu'">tel</xsl:when>
            <xsl:when test="$langval='timne'">tem</xsl:when>
            <xsl:when test="$langval='tama (colombia)'">ten</xsl:when>
            <xsl:when test="$langval='teso'">teo</xsl:when>
            <xsl:when test="$langval='tepecano'">tep</xsl:when>
            <xsl:when test="$langval='temein'">teq</xsl:when>
            <xsl:when test="$langval='tereno'">ter</xsl:when>
            <xsl:when test="$langval='tengger'">tes</xsl:when>
            <xsl:when test="$langval='tetum'">tet</xsl:when>
            <xsl:when test="$langval='soo'">teu</xsl:when>
            <xsl:when test="$langval='teor'">tev</xsl:when>
            <xsl:when test="$langval='tewa (usa)'">tew</xsl:when>
            <xsl:when test="$langval='tennet'">tex</xsl:when>
            <xsl:when test="$langval='tulishi'">tey</xsl:when>
            <xsl:when test="$langval='tofin gbe'">tfi</xsl:when>
            <xsl:when test="$langval='tanaina'">tfn</xsl:when>
            <xsl:when test="$langval='tefaro'">tfo</xsl:when>
            <xsl:when test="$langval='teribe'">tfr</xsl:when>
            <xsl:when test="$langval='ternate'">tft</xsl:when>
            <xsl:when test="$langval='sagalla'">tga</xsl:when>
            <xsl:when test="$langval='tobilung'">tgb</xsl:when>
            <xsl:when test="$langval='tigak'">tgc</xsl:when>
            <xsl:when test="$langval='ciwogai'">tgd</xsl:when>
            <xsl:when test="$langval='eastern gorkha tamang'">tge</xsl:when>
            <xsl:when test="$langval='chalikha'">tgf</xsl:when>
            <xsl:when test="$langval='tobagonian creole english'">tgh</xsl:when>
            <xsl:when test="$langval='lawunuia'">tgi</xsl:when>
            <xsl:when test="$langval='tagin'">tgj</xsl:when>
            <xsl:when test="$langval='tajik'">tgk</xsl:when>
            <xsl:when test="$langval='tagalog'">tgl</xsl:when>
            <xsl:when test="$langval='tandaganon'">tgn</xsl:when>
            <xsl:when test="$langval='sudest'">tgo</xsl:when>
            <xsl:when test="$langval='tangoa'">tgp</xsl:when>
            <xsl:when test="$langval='tring'">tgq</xsl:when>
            <xsl:when test="$langval='tareng'">tgr</xsl:when>
            <xsl:when test="$langval='nume'">tgs</xsl:when>
            <xsl:when test="$langval='central tagbanwa'">tgt</xsl:when>
            <xsl:when test="$langval='tanggu'">tgu</xsl:when>
            <xsl:when test="$langval='tingui-boto'">tgv</xsl:when>
            <xsl:when test="$langval='tagwana senoufo'">tgw</xsl:when>
            <xsl:when test="$langval='tagish'">tgx</xsl:when>
            <xsl:when test="$langval='togoyo'">tgy</xsl:when>
            <xsl:when test="$langval='tagalaka'">tgz</xsl:when>
            <xsl:when test="$langval='thai'">tha</xsl:when>
            <xsl:when test="$langval='tai hang tong'">thc</xsl:when>
            <xsl:when test="$langval='thayore'">thd</xsl:when>
            <xsl:when test="$langval='chitwania tharu'">the</xsl:when>
            <xsl:when test="$langval='thangmi'">thf</xsl:when>
            <xsl:when test="$langval='northern tarahumara'">thh</xsl:when>
            <xsl:when test="$langval='tai long'">thi</xsl:when>
            <xsl:when test="$langval='tharaka'">thk</xsl:when>
            <xsl:when test="$langval='dangaura tharu'">thl</xsl:when>
            <xsl:when test="$langval='aheu'">thm</xsl:when>
            <xsl:when test="$langval='thachanadan'">thn</xsl:when>
            <xsl:when test="$langval='thompson'">thp</xsl:when>
            <xsl:when test="$langval='kochila tharu'">thq</xsl:when>
            <xsl:when test="$langval='rana tharu'">thr</xsl:when>
            <xsl:when test="$langval='thakali'">ths</xsl:when>
            <xsl:when test="$langval='tahltan'">tht</xsl:when>
            <xsl:when test="$langval='thuri'">thu</xsl:when>
            <xsl:when test="$langval='tahaggart tamahaq'">thv</xsl:when>
            <xsl:when test="$langval='thudam'">thw</xsl:when>
            <xsl:when test="$langval='tha'">thy</xsl:when>
            <xsl:when test="$langval='tayart tamajeq'">thz</xsl:when>
            <xsl:when test="$langval='tidikelt tamazight'">tia</xsl:when>
            <xsl:when test="$langval='tira'">tic</xsl:when>
            <xsl:when test="$langval='tidong'">tid</xsl:when>
            <xsl:when test="$langval='tifal'">tif</xsl:when>
            <xsl:when test="$langval='tigre'">tig</xsl:when>
            <xsl:when test="$langval='timugon murut'">tih</xsl:when>
            <xsl:when test="$langval='tiene'">tii</xsl:when>
            <xsl:when test="$langval='tilung'">tij</xsl:when>
            <xsl:when test="$langval='tikar'">tik</xsl:when>
            <xsl:when test="$langval='tillamook'">til</xsl:when>
            <xsl:when test="$langval='timbe'">tim</xsl:when>
            <xsl:when test="$langval='tindi'">tin</xsl:when>
            <xsl:when test="$langval='teop'">tio</xsl:when>
            <xsl:when test="$langval='trimuris'">tip</xsl:when>
            <xsl:when test="$langval='tiéfo'">tiq</xsl:when>
            <xsl:when test="$langval='tigrinya'">tir</xsl:when>
            <xsl:when test="$langval='masadiit itneg'">tis</xsl:when>
            <xsl:when test="$langval='tinigua'">tit</xsl:when>
            <xsl:when test="$langval='adasen'">tiu</xsl:when>
            <xsl:when test="$langval='tiv'">tiv</xsl:when>
            <xsl:when test="$langval='tiwi'">tiw</xsl:when>
            <xsl:when test="$langval='southern tiwa'">tix</xsl:when>
            <xsl:when test="$langval='tiruray'">tiy</xsl:when>
            <xsl:when test="$langval='tai hongjin'">tiz</xsl:when>
            <xsl:when test="$langval='tajuasohn'">tja</xsl:when>
            <xsl:when test="$langval='tunjung'">tjg</xsl:when>
            <xsl:when test="$langval='northern tujia'">tji</xsl:when>
            <xsl:when test="$langval='tai laing'">tjl</xsl:when>
            <xsl:when test="$langval='timucua'">tjm</xsl:when>
            <xsl:when test="$langval='tonjon'">tjn</xsl:when>
            <xsl:when test="$langval='temacine tamazight'">tjo</xsl:when>
            <xsl:when test="$langval='southern tujia'">tjs</xsl:when>
            <xsl:when test="$langval='tjurruru'">tju</xsl:when>
            <xsl:when test="$langval='djabwurrung'">tjw</xsl:when>
            <xsl:when test="$langval='truká'">tka</xsl:when>
            <xsl:when test="$langval='buksa'">tkb</xsl:when>
            <xsl:when test="$langval='tukudede'">tkd</xsl:when>
            <xsl:when test="$langval='takwane'">tke</xsl:when>
            <xsl:when test="$langval='tukumanféd'">tkf</xsl:when>
            <xsl:when test="$langval='tesaka malagasy'">tkg</xsl:when>
            <xsl:when test="$langval='tokelau'">tkl</xsl:when>
            <xsl:when test="$langval='takelma'">tkm</xsl:when>
            <xsl:when test="$langval='toku-no-shima'">tkn</xsl:when>
            <xsl:when test="$langval='tikopia'">tkp</xsl:when>
            <xsl:when test="$langval='tee'">tkq</xsl:when>
            <xsl:when test="$langval='tsakhur'">tkr</xsl:when>
            <xsl:when test="$langval='takestani'">tks</xsl:when>
            <xsl:when test="$langval='kathoriya tharu'">tkt</xsl:when>
            <xsl:when test="$langval='upper necaxa totonac'">tku</xsl:when>
            <xsl:when test="$langval='mur pano'">tkv</xsl:when>
            <xsl:when test="$langval='teanu'">tkw</xsl:when>
            <xsl:when test="$langval='tangko'">tkx</xsl:when>
            <xsl:when test="$langval='takua'">tkz</xsl:when>
            <xsl:when test="$langval='southwestern tepehuan'">tla</xsl:when>
            <xsl:when test="$langval='tobelo'">tlb</xsl:when>
            <xsl:when test="$langval='yecuatla totonac'">tlc</xsl:when>
            <xsl:when test="$langval='talaud'">tld</xsl:when>
            <xsl:when test="$langval='telefol'">tlf</xsl:when>
            <xsl:when test="$langval='tofanma'">tlg</xsl:when>
            <xsl:when test="$langval='klingon'">tlh</xsl:when>
            <xsl:when test="$langval='tlingit'">tli</xsl:when>
            <xsl:when test="$langval='talinga-bwisi'">tlj</xsl:when>
            <xsl:when test="$langval='taloki'">tlk</xsl:when>
            <xsl:when test="$langval='tetela'">tll</xsl:when>
            <xsl:when test="$langval='tolomako'">tlm</xsl:when>
            <xsl:when test="$langval='talondo'''">tln</xsl:when>
            <xsl:when test="$langval='talodi'">tlo</xsl:when>
            <xsl:when test="$langval='filomena mata-coahuitlán totonac'">tlp</xsl:when>
            <xsl:when test="$langval='tai loi'">tlq</xsl:when>
            <xsl:when test="$langval='talise'">tlr</xsl:when>
            <xsl:when test="$langval='tambotalo'">tls</xsl:when>
            <xsl:when test="$langval='teluti'">tlt</xsl:when>
            <xsl:when test="$langval='tulehu'">tlu</xsl:when>
            <xsl:when test="$langval='taliabu'">tlv</xsl:when>
            <xsl:when test="$langval='khehek'">tlx</xsl:when>
            <xsl:when test="$langval='talysh'">tly</xsl:when>
            <xsl:when test="$langval='tama (chad)'">tma</xsl:when>
            <xsl:when test="$langval='katbol'">tmb</xsl:when>
            <xsl:when test="$langval='tumak'">tmc</xsl:when>
            <xsl:when test="$langval='haruai'">tmd</xsl:when>
            <xsl:when test="$langval='tremembé'">tme</xsl:when>
            <xsl:when test="$langval='toba-maskoy'">tmf</xsl:when>
            <xsl:when test="$langval='ternateño'">tmg</xsl:when>
            <xsl:when test="$langval='tamashek'">tmh</xsl:when>
            <xsl:when test="$langval='tutuba'">tmi</xsl:when>
            <xsl:when test="$langval='samarokena'">tmj</xsl:when>
            <xsl:when test="$langval='northwestern tamang'">tmk</xsl:when>
            <xsl:when test="$langval='tamnim citak'">tml</xsl:when>
            <xsl:when test="$langval='tai thanh'">tmm</xsl:when>
            <xsl:when test="$langval='taman (indonesia)'">tmn</xsl:when>
            <xsl:when test="$langval='temoq'">tmo</xsl:when>
            <xsl:when test="$langval='tai mène'">tmp</xsl:when>
            <xsl:when test="$langval='tumleo'">tmq</xsl:when>
            <xsl:when test="$langval='jewish babylonian aramaic (ca. 200-1200 ce)'">tmr</xsl:when>
            <xsl:when test="$langval='tima'">tms</xsl:when>
            <xsl:when test="$langval='tasmate'">tmt</xsl:when>
            <xsl:when test="$langval='iau'">tmu</xsl:when>
            <xsl:when test="$langval='tembo (motembo)'">tmv</xsl:when>
            <xsl:when test="$langval='temuan'">tmw</xsl:when>
            <xsl:when test="$langval='tami'">tmy</xsl:when>
            <xsl:when test="$langval='tamanaku'">tmz</xsl:when>
            <xsl:when test="$langval='tacana'">tna</xsl:when>
            <xsl:when test="$langval='western tunebo'">tnb</xsl:when>
            <xsl:when test="$langval='tanimuca-retuarã'">tnc</xsl:when>
            <xsl:when test="$langval='angosturas tunebo'">tnd</xsl:when>
            <xsl:when test="$langval='tinoc kallahan'">tne</xsl:when>
            <xsl:when test="$langval='tobanga'">tng</xsl:when>
            <xsl:when test="$langval='maiani'">tnh</xsl:when>
            <xsl:when test="$langval='tandia'">tni</xsl:when>
            <xsl:when test="$langval='kwamera'">tnk</xsl:when>
            <xsl:when test="$langval='lenakel'">tnl</xsl:when>
            <xsl:when test="$langval='tabla'">tnm</xsl:when>
            <xsl:when test="$langval='north tanna'">tnn</xsl:when>
            <xsl:when test="$langval='toromono'">tno</xsl:when>
            <xsl:when test="$langval='whitesands'">tnp</xsl:when>
            <xsl:when test="$langval='taino'">tnq</xsl:when>
            <xsl:when test="$langval='ménik'">tnr</xsl:when>
            <xsl:when test="$langval='tenis'">tns</xsl:when>
            <xsl:when test="$langval='tontemboan'">tnt</xsl:when>
            <xsl:when test="$langval='tay khang'">tnu</xsl:when>
            <xsl:when test="$langval='tangchangya'">tnv</xsl:when>
            <xsl:when test="$langval='tonsawang'">tnw</xsl:when>
            <xsl:when test="$langval='tanema'">tnx</xsl:when>
            <xsl:when test="$langval='tongwe'">tny</xsl:when>
            <xsl:when test="$langval='tonga (thailand)'">tnz</xsl:when>
            <xsl:when test="$langval='toba'">tob</xsl:when>
            <xsl:when test="$langval='coyutla totonac'">toc</xsl:when>
            <xsl:when test="$langval='toma'">tod</xsl:when>
            <xsl:when test="$langval='tomedes'">toe</xsl:when>
            <xsl:when test="$langval='gizrra'">tof</xsl:when>
            <xsl:when test="$langval='tonga (nyasa)'">tog</xsl:when>
            <xsl:when test="$langval='gitonga'">toh</xsl:when>
            <xsl:when test="$langval='tonga (zambia)'">toi</xsl:when>
            <xsl:when test="$langval='tojolabal'">toj</xsl:when>
            <xsl:when test="$langval='tolowa'">tol</xsl:when>
            <xsl:when test="$langval='tombulu'">tom</xsl:when>
            <xsl:when test="$langval='tonga (tonga islands)'">ton</xsl:when>
            <xsl:when test="$langval='xicotepec de juárez totonac'">too</xsl:when>
            <xsl:when test="$langval='papantla totonac'">top</xsl:when>
            <xsl:when test="$langval='toposa'">toq</xsl:when>
            <xsl:when test="$langval='togbo-vara banda'">tor</xsl:when>
            <xsl:when test="$langval='highland totonac'">tos</xsl:when>
            <xsl:when test="$langval='tho'">tou</xsl:when>
            <xsl:when test="$langval='upper taromi'">tov</xsl:when>
            <xsl:when test="$langval='jemez'">tow</xsl:when>
            <xsl:when test="$langval='tobian'">tox</xsl:when>
            <xsl:when test="$langval='topoiyo'">toy</xsl:when>
            <xsl:when test="$langval='to'">toz</xsl:when>
            <xsl:when test="$langval='taupota'">tpa</xsl:when>
            <xsl:when test="$langval='azoyú me''phaa'">tpc</xsl:when>
            <xsl:when test="$langval='tippera'">tpe</xsl:when>
            <xsl:when test="$langval='tarpia'">tpf</xsl:when>
            <xsl:when test="$langval='kula'">tpg</xsl:when>
            <xsl:when test="$langval='tok pisin'">tpi</xsl:when>
            <xsl:when test="$langval='tapieté'">tpj</xsl:when>
            <xsl:when test="$langval='tupinikin'">tpk</xsl:when>
            <xsl:when test="$langval='tlacoapa me''phaa'">tpl</xsl:when>
            <xsl:when test="$langval='tampulma'">tpm</xsl:when>
            <xsl:when test="$langval='tupinambá'">tpn</xsl:when>
            <xsl:when test="$langval='tai pao'">tpo</xsl:when>
            <xsl:when test="$langval='pisaflores tepehua'">tpp</xsl:when>
            <xsl:when test="$langval='tukpa'">tpq</xsl:when>
            <xsl:when test="$langval='tuparí'">tpr</xsl:when>
            <xsl:when test="$langval='tlachichilco tepehua'">tpt</xsl:when>
            <xsl:when test="$langval='tampuan'">tpu</xsl:when>
            <xsl:when test="$langval='tanapag'">tpv</xsl:when>
            <xsl:when test="$langval='tupí'">tpw</xsl:when>
            <xsl:when test="$langval='acatepec me''phaa'">tpx</xsl:when>
            <xsl:when test="$langval='trumai'">tpy</xsl:when>
            <xsl:when test="$langval='tinputz'">tpz</xsl:when>
            <xsl:when test="$langval='tembé'">tqb</xsl:when>
            <xsl:when test="$langval='lehali'">tql</xsl:when>
            <xsl:when test="$langval='turumsa'">tqm</xsl:when>
            <xsl:when test="$langval='tenino'">tqn</xsl:when>
            <xsl:when test="$langval='toaripi'">tqo</xsl:when>
            <xsl:when test="$langval='tomoip'">tqp</xsl:when>
            <xsl:when test="$langval='tunni'">tqq</xsl:when>
            <xsl:when test="$langval='torona'">tqr</xsl:when>
            <xsl:when test="$langval='western totonac'">tqt</xsl:when>
            <xsl:when test="$langval='touo'">tqu</xsl:when>
            <xsl:when test="$langval='tonkawa'">tqw</xsl:when>
            <xsl:when test="$langval='tirahi'">tra</xsl:when>
            <xsl:when test="$langval='terebu'">trb</xsl:when>
            <xsl:when test="$langval='copala triqui'">trc</xsl:when>
            <xsl:when test="$langval='turi'">trd</xsl:when>
            <xsl:when test="$langval='east tarangan'">tre</xsl:when>
            <xsl:when test="$langval='trinidadian creole english'">trf</xsl:when>
            <xsl:when test="$langval='lishán didán'">trg</xsl:when>
            <xsl:when test="$langval='turaka'">trh</xsl:when>
            <xsl:when test="$langval='trió'">tri</xsl:when>
            <xsl:when test="$langval='toram'">trj</xsl:when>
            <xsl:when test="$langval='traveller scottish'">trl</xsl:when>
            <xsl:when test="$langval='tregami'">trm</xsl:when>
            <xsl:when test="$langval='trinitario'">trn</xsl:when>
            <xsl:when test="$langval='tarao naga'">tro</xsl:when>
            <xsl:when test="$langval='kok borok'">trp</xsl:when>
            <xsl:when test="$langval='san martín itunyoso triqui'">trq</xsl:when>
            <xsl:when test="$langval='taushiro'">trr</xsl:when>
            <xsl:when test="$langval='chicahuaxtla triqui'">trs</xsl:when>
            <xsl:when test="$langval='tunggare'">trt</xsl:when>
            <xsl:when test="$langval='turoyo'">tru</xsl:when>
            <xsl:when test="$langval='taroko'">trv</xsl:when>
            <xsl:when test="$langval='torwali'">trw</xsl:when>
            <xsl:when test="$langval='tringgus-sembaan bidayuh'">trx</xsl:when>
            <xsl:when test="$langval='turung'">try</xsl:when>
            <xsl:when test="$langval='torá'">trz</xsl:when>
            <xsl:when test="$langval='tsaangi'">tsa</xsl:when>
            <xsl:when test="$langval='tsamai'">tsb</xsl:when>
            <xsl:when test="$langval='tswa'">tsc</xsl:when>
            <xsl:when test="$langval='tsakonian'">tsd</xsl:when>
            <xsl:when test="$langval='tunisian sign language'">tse</xsl:when>
            <xsl:when test="$langval='tausug'">tsg</xsl:when>
            <xsl:when test="$langval='tsuvan'">tsh</xsl:when>
            <xsl:when test="$langval='tsimshian'">tsi</xsl:when>
            <xsl:when test="$langval='tshangla'">tsj</xsl:when>
            <xsl:when test="$langval='tseku'">tsk</xsl:when>
            <xsl:when test="$langval='ts''ün-lao'">tsl</xsl:when>
            <xsl:when test="$langval='turkish sign language'">tsm</xsl:when>
            <xsl:when test="$langval='tswana'">tsn</xsl:when>
            <xsl:when test="$langval='tsonga'">tso</xsl:when>
            <xsl:when test="$langval='northern toussian'">tsp</xsl:when>
            <xsl:when test="$langval='thai sign language'">tsq</xsl:when>
            <xsl:when test="$langval='akei'">tsr</xsl:when>
            <xsl:when test="$langval='taiwan sign language'">tss</xsl:when>
            <xsl:when test="$langval='tondi songway kiini'">tst</xsl:when>
            <xsl:when test="$langval='tsou'">tsu</xsl:when>
            <xsl:when test="$langval='tsogo'">tsv</xsl:when>
            <xsl:when test="$langval='tsishingini'">tsw</xsl:when>
            <xsl:when test="$langval='mubami'">tsx</xsl:when>
            <xsl:when test="$langval='tebul sign language'">tsy</xsl:when>
            <xsl:when test="$langval='purepecha'">tsz</xsl:when>
            <xsl:when test="$langval='tutelo'">tta</xsl:when>
            <xsl:when test="$langval='gaa'">ttb</xsl:when>
            <xsl:when test="$langval='tektiteko'">ttc</xsl:when>
            <xsl:when test="$langval='tauade'">ttd</xsl:when>
            <xsl:when test="$langval='bwanabwana'">tte</xsl:when>
            <xsl:when test="$langval='tuotomb'">ttf</xsl:when>
            <xsl:when test="$langval='tutong'">ttg</xsl:when>
            <xsl:when test="$langval='upper ta''oih'">tth</xsl:when>
            <xsl:when test="$langval='tobati'">tti</xsl:when>
            <xsl:when test="$langval='tooro'">ttj</xsl:when>
            <xsl:when test="$langval='totoro'">ttk</xsl:when>
            <xsl:when test="$langval='totela'">ttl</xsl:when>
            <xsl:when test="$langval='northern tutchone'">ttm</xsl:when>
            <xsl:when test="$langval='towei'">ttn</xsl:when>
            <xsl:when test="$langval='lower ta''oih'">tto</xsl:when>
            <xsl:when test="$langval='tombelala'">ttp</xsl:when>
            <xsl:when test="$langval='tawallammat tamajaq'">ttq</xsl:when>
            <xsl:when test="$langval='tera'">ttr</xsl:when>
            <xsl:when test="$langval='northeastern thai'">tts</xsl:when>
            <xsl:when test="$langval='muslim tat'">ttt</xsl:when>
            <xsl:when test="$langval='torau'">ttu</xsl:when>
            <xsl:when test="$langval='titan'">ttv</xsl:when>
            <xsl:when test="$langval='long wat'">ttw</xsl:when>
            <xsl:when test="$langval='sikaritai'">tty</xsl:when>
            <xsl:when test="$langval='tsum'">ttz</xsl:when>
            <xsl:when test="$langval='wiarumus'">tua</xsl:when>
            <xsl:when test="$langval='tübatulabal'">tub</xsl:when>
            <xsl:when test="$langval='mutu'">tuc</xsl:when>
            <xsl:when test="$langval='tuxá'">tud</xsl:when>
            <xsl:when test="$langval='tuyuca'">tue</xsl:when>
            <xsl:when test="$langval='central tunebo'">tuf</xsl:when>
            <xsl:when test="$langval='tunia'">tug</xsl:when>
            <xsl:when test="$langval='taulil'">tuh</xsl:when>
            <xsl:when test="$langval='tupuri'">tui</xsl:when>
            <xsl:when test="$langval='tugutil'">tuj</xsl:when>
            <xsl:when test="$langval='turkmen'">tuk</xsl:when>
            <xsl:when test="$langval='tula'">tul</xsl:when>
            <xsl:when test="$langval='tumbuka'">tum</xsl:when>
            <xsl:when test="$langval='tunica'">tun</xsl:when>
            <xsl:when test="$langval='tucano'">tuo</xsl:when>
            <xsl:when test="$langval='tedaga'">tuq</xsl:when>
            <xsl:when test="$langval='turkish'">tur</xsl:when>
            <xsl:when test="$langval='tuscarora'">tus</xsl:when>
            <xsl:when test="$langval='tututni'">tuu</xsl:when>
            <xsl:when test="$langval='turkana'">tuv</xsl:when>
            <xsl:when test="$langval='tuxináwa'">tux</xsl:when>
            <xsl:when test="$langval='tugen'">tuy</xsl:when>
            <xsl:when test="$langval='turka'">tuz</xsl:when>
            <xsl:when test="$langval='vaghua'">tva</xsl:when>
            <xsl:when test="$langval='tsuvadi'">tvd</xsl:when>
            <xsl:when test="$langval='te''un'">tve</xsl:when>
            <xsl:when test="$langval='southeast ambrym'">tvk</xsl:when>
            <xsl:when test="$langval='tuvalu'">tvl</xsl:when>
            <xsl:when test="$langval='tela-masbuar'">tvm</xsl:when>
            <xsl:when test="$langval='tavoyan'">tvn</xsl:when>
            <xsl:when test="$langval='tidore'">tvo</xsl:when>
            <xsl:when test="$langval='taveta'">tvs</xsl:when>
            <xsl:when test="$langval='tutsa naga'">tvt</xsl:when>
            <xsl:when test="$langval='tunen'">tvu</xsl:when>
            <xsl:when test="$langval='sedoa'">tvw</xsl:when>
            <xsl:when test="$langval='timor pidgin'">tvy</xsl:when>
            <xsl:when test="$langval='twana'">twa</xsl:when>
            <xsl:when test="$langval='western tawbuid'">twb</xsl:when>
            <xsl:when test="$langval='teshenawa'">twc</xsl:when>
            <xsl:when test="$langval='twents'">twd</xsl:when>
            <xsl:when test="$langval='tewa (indonesia)'">twe</xsl:when>
            <xsl:when test="$langval='northern tiwa'">twf</xsl:when>
            <xsl:when test="$langval='tereweng'">twg</xsl:when>
            <xsl:when test="$langval='tai dón'">twh</xsl:when>
            <xsl:when test="$langval='twi'">twi</xsl:when>
            <xsl:when test="$langval='tawara'">twl</xsl:when>
            <xsl:when test="$langval='tawang monpa'">twm</xsl:when>
            <xsl:when test="$langval='twendi'">twn</xsl:when>
            <xsl:when test="$langval='tswapong'">two</xsl:when>
            <xsl:when test="$langval='ere'">twp</xsl:when>
            <xsl:when test="$langval='tasawaq'">twq</xsl:when>
            <xsl:when test="$langval='southwestern tarahumara'">twr</xsl:when>
            <xsl:when test="$langval='turiwára'">twt</xsl:when>
            <xsl:when test="$langval='termanu'">twu</xsl:when>
            <xsl:when test="$langval='tuwari'">tww</xsl:when>
            <xsl:when test="$langval='tewe'">twx</xsl:when>
            <xsl:when test="$langval='tawoyan'">twy</xsl:when>
            <xsl:when test="$langval='tombonuo'">txa</xsl:when>
            <xsl:when test="$langval='tokharian b'">txb</xsl:when>
            <xsl:when test="$langval='tsetsaut'">txc</xsl:when>
            <xsl:when test="$langval='totoli'">txe</xsl:when>
            <xsl:when test="$langval='tangut'">txg</xsl:when>
            <xsl:when test="$langval='thracian'">txh</xsl:when>
            <xsl:when test="$langval='ikpeng'">txi</xsl:when>
            <xsl:when test="$langval='tarjumo'">txj</xsl:when>
            <xsl:when test="$langval='tomini'">txm</xsl:when>
            <xsl:when test="$langval='west tarangan'">txn</xsl:when>
            <xsl:when test="$langval='toto'">txo</xsl:when>
            <xsl:when test="$langval='tii'">txq</xsl:when>
            <xsl:when test="$langval='tartessian'">txr</xsl:when>
            <xsl:when test="$langval='tonsea'">txs</xsl:when>
            <xsl:when test="$langval='citak'">txt</xsl:when>
            <xsl:when test="$langval='kayapó'">txu</xsl:when>
            <xsl:when test="$langval='tatana'">txx</xsl:when>
            <xsl:when test="$langval='tanosy malagasy'">txy</xsl:when>
            <xsl:when test="$langval='tauya'">tya</xsl:when>
            <xsl:when test="$langval='kyanga'">tye</xsl:when>
            <xsl:when test="$langval='o''du'">tyh</xsl:when>
            <xsl:when test="$langval='teke-tsaayi'">tyi</xsl:when>
            <xsl:when test="$langval='tai do'">tyj</xsl:when>
            <xsl:when test="$langval='thu lao'">tyl</xsl:when>
            <xsl:when test="$langval='kombai'">tyn</xsl:when>
            <xsl:when test="$langval='thaypan'">typ</xsl:when>
            <xsl:when test="$langval='tai daeng'">tyr</xsl:when>
            <xsl:when test="$langval='tày sa pa'">tys</xsl:when>
            <xsl:when test="$langval='tày tac'">tyt</xsl:when>
            <xsl:when test="$langval='kua'">tyu</xsl:when>
            <xsl:when test="$langval='tuvinian'">tyv</xsl:when>
            <xsl:when test="$langval='teke-tyee'">tyx</xsl:when>
            <xsl:when test="$langval='tày'">tyz</xsl:when>
            <xsl:when test="$langval='tanzanian sign language'">tza</xsl:when>
            <xsl:when test="$langval='tzeltal'">tzh</xsl:when>
            <xsl:when test="$langval='tz''utujil'">tzj</xsl:when>
            <xsl:when test="$langval='talossan'">tzl</xsl:when>
            <xsl:when test="$langval='central atlas tamazight'">tzm</xsl:when>
            <xsl:when test="$langval='tugun'">tzn</xsl:when>
            <xsl:when test="$langval='tzotzil'">tzo</xsl:when>
            <xsl:when test="$langval='tabriak'">tzx</xsl:when>
            <xsl:when test="$langval='uamué'">uam</xsl:when>
            <xsl:when test="$langval='kuan'">uan</xsl:when>
            <xsl:when test="$langval='tairuma'">uar</xsl:when>
            <xsl:when test="$langval='ubang'">uba</xsl:when>
            <xsl:when test="$langval='ubi'">ubi</xsl:when>
            <xsl:when test="$langval='buhi''non bikol'">ubl</xsl:when>
            <xsl:when test="$langval='ubir'">ubr</xsl:when>
            <xsl:when test="$langval='umbu-ungu'">ubu</xsl:when>
            <xsl:when test="$langval='ubykh'">uby</xsl:when>
            <xsl:when test="$langval='uda'">uda</xsl:when>
            <xsl:when test="$langval='udihe'">ude</xsl:when>
            <xsl:when test="$langval='muduga'">udg</xsl:when>
            <xsl:when test="$langval='udi'">udi</xsl:when>
            <xsl:when test="$langval='ujir'">udj</xsl:when>
            <xsl:when test="$langval='wuzlam'">udl</xsl:when>
            <xsl:when test="$langval='udmurt'">udm</xsl:when>
            <xsl:when test="$langval='uduk'">udu</xsl:when>
            <xsl:when test="$langval='kioko'">ues</xsl:when>
            <xsl:when test="$langval='ufim'">ufi</xsl:when>
            <xsl:when test="$langval='ugaritic'">uga</xsl:when>
            <xsl:when test="$langval='kuku-ugbanh'">ugb</xsl:when>
            <xsl:when test="$langval='ughele'">uge</xsl:when>
            <xsl:when test="$langval='ugandan sign language'">ugn</xsl:when>
            <xsl:when test="$langval='ugong'">ugo</xsl:when>
            <xsl:when test="$langval='uruguayan sign language'">ugy</xsl:when>
            <xsl:when test="$langval='uhami'">uha</xsl:when>
            <xsl:when test="$langval='damal'">uhn</xsl:when>
            <xsl:when test="$langval='uighur'">uig</xsl:when>
            <xsl:when test="$langval='uisai'">uis</xsl:when>
            <xsl:when test="$langval='iyive'">uiv</xsl:when>
            <xsl:when test="$langval='tanjijili'">uji</xsl:when>
            <xsl:when test="$langval='kaburi'">uka</xsl:when>
            <xsl:when test="$langval='ukuriguma'">ukg</xsl:when>
            <xsl:when test="$langval='ukhwejo'">ukh</xsl:when>
            <xsl:when test="$langval='ukrainian sign language'">ukl</xsl:when>
            <xsl:when test="$langval='ukpe-bayobiri'">ukp</xsl:when>
            <xsl:when test="$langval='ukwa'">ukq</xsl:when>
            <xsl:when test="$langval='ukrainian'">ukr</xsl:when>
            <xsl:when test="$langval='urubú-kaapor sign language'">uks</xsl:when>
            <xsl:when test="$langval='ukue'">uku</xsl:when>
            <xsl:when test="$langval='ukwuani-aboh-ndoni'">ukw</xsl:when>
            <xsl:when test="$langval='kuuk-yak'">uky</xsl:when>
            <xsl:when test="$langval='fungwa'">ula</xsl:when>
            <xsl:when test="$langval='ulukwumi'">ulb</xsl:when>
            <xsl:when test="$langval='ulch'">ulc</xsl:when>
            <xsl:when test="$langval='lule'">ule</xsl:when>
            <xsl:when test="$langval='usku'">ulf</xsl:when>
            <xsl:when test="$langval='ulithian'">uli</xsl:when>
            <xsl:when test="$langval='meriam'">ulk</xsl:when>
            <xsl:when test="$langval='ullatan'">ull</xsl:when>
            <xsl:when test="$langval='ulumanda'''">ulm</xsl:when>
            <xsl:when test="$langval='unserdeutsch'">uln</xsl:when>
            <xsl:when test="$langval='uma'' lung'">ulu</xsl:when>
            <xsl:when test="$langval='ulwa'">ulw</xsl:when>
            <xsl:when test="$langval='umatilla'">uma</xsl:when>
            <xsl:when test="$langval='umbundu'">umb</xsl:when>
            <xsl:when test="$langval='marrucinian'">umc</xsl:when>
            <xsl:when test="$langval='umbindhamu'">umd</xsl:when>
            <xsl:when test="$langval='umbuygamu'">umg</xsl:when>
            <xsl:when test="$langval='ukit'">umi</xsl:when>
            <xsl:when test="$langval='umon'">umm</xsl:when>
            <xsl:when test="$langval='makyan naga'">umn</xsl:when>
            <xsl:when test="$langval='umotína'">umo</xsl:when>
            <xsl:when test="$langval='umpila'">ump</xsl:when>
            <xsl:when test="$langval='umbugarla'">umr</xsl:when>
            <xsl:when test="$langval='pendau'">ums</xsl:when>
            <xsl:when test="$langval='munsee'">umu</xsl:when>
            <xsl:when test="$langval='north watut'">una</xsl:when>
            <xsl:when test="$langval='undetermined'">und</xsl:when>
            <xsl:when test="$langval='uneme'">une</xsl:when>
            <xsl:when test="$langval='ngarinyin'">ung</xsl:when>
            <xsl:when test="$langval='enawené-nawé'">unk</xsl:when>
            <xsl:when test="$langval='unami'">unm</xsl:when>
            <xsl:when test="$langval='kurnai'">unn</xsl:when>
            <xsl:when test="$langval='mundari'">unr</xsl:when>
            <xsl:when test="$langval='unubahe'">unu</xsl:when>
            <xsl:when test="$langval='munda'">unx</xsl:when>
            <xsl:when test="$langval='unde kaili'">unz</xsl:when>
            <xsl:when test="$langval='umeda'">upi</xsl:when>
            <xsl:when test="$langval='uripiv-wala-rano-atchin'">upv</xsl:when>
            <xsl:when test="$langval='urarina'">ura</xsl:when>
            <xsl:when test="$langval='urubú-kaapor'">urb</xsl:when>
            <xsl:when test="$langval='urningangg'">urc</xsl:when>
            <xsl:when test="$langval='urdu'">urd</xsl:when>
            <xsl:when test="$langval='uru'">ure</xsl:when>
            <xsl:when test="$langval='uradhi'">urf</xsl:when>
            <xsl:when test="$langval='urigina'">urg</xsl:when>
            <xsl:when test="$langval='urhobo'">urh</xsl:when>
            <xsl:when test="$langval='urim'">uri</xsl:when>
            <xsl:when test="$langval='urak lawoi'''">urk</xsl:when>
            <xsl:when test="$langval='urali'">url</xsl:when>
            <xsl:when test="$langval='urapmin'">urm</xsl:when>
            <xsl:when test="$langval='uruangnirin'">urn</xsl:when>
            <xsl:when test="$langval='ura (papua new guinea)'">uro</xsl:when>
            <xsl:when test="$langval='uru-pa-in'">urp</xsl:when>
            <xsl:when test="$langval='lehalurup'">urr</xsl:when>
            <xsl:when test="$langval='urat'">urt</xsl:when>
            <xsl:when test="$langval='urumi'">uru</xsl:when>
            <xsl:when test="$langval='uruava'">urv</xsl:when>
            <xsl:when test="$langval='sop'">urw</xsl:when>
            <xsl:when test="$langval='urimo'">urx</xsl:when>
            <xsl:when test="$langval='orya'">ury</xsl:when>
            <xsl:when test="$langval='uru-eu-wau-wau'">urz</xsl:when>
            <xsl:when test="$langval='usarufa'">usa</xsl:when>
            <xsl:when test="$langval='ushojo'">ush</xsl:when>
            <xsl:when test="$langval='usui'">usi</xsl:when>
            <xsl:when test="$langval='usaghade'">usk</xsl:when>
            <xsl:when test="$langval='uspanteco'">usp</xsl:when>
            <xsl:when test="$langval='uya'">usu</xsl:when>
            <xsl:when test="$langval='otank'">uta</xsl:when>
            <xsl:when test="$langval='ute-southern paiute'">ute</xsl:when>
            <xsl:when test="$langval='amba (solomon islands)'">utp</xsl:when>
            <xsl:when test="$langval='etulo'">utr</xsl:when>
            <xsl:when test="$langval='utu'">utu</xsl:when>
            <xsl:when test="$langval='urum'">uum</xsl:when>
            <xsl:when test="$langval='kulon-pazeh'">uun</xsl:when>
            <xsl:when test="$langval='ura (vanuatu)'">uur</xsl:when>
            <xsl:when test="$langval='u'">uuu</xsl:when>
            <xsl:when test="$langval='west uvean'">uve</xsl:when>
            <xsl:when test="$langval='uri'">uvh</xsl:when>
            <xsl:when test="$langval='lote'">uvl</xsl:when>
            <xsl:when test="$langval='kuku-uwanh'">uwa</xsl:when>
            <xsl:when test="$langval='doko-uyanga'">uya</xsl:when>
            <xsl:when test="$langval='uzbek'">uzb</xsl:when>
            <xsl:when test="$langval='northern uzbek'">uzn</xsl:when>
            <xsl:when test="$langval='southern uzbek'">uzs</xsl:when>
            <xsl:when test="$langval='vaagri booli'">vaa</xsl:when>
            <xsl:when test="$langval='vale'">vae</xsl:when>
            <xsl:when test="$langval='vafsi'">vaf</xsl:when>
            <xsl:when test="$langval='vagla'">vag</xsl:when>
            <xsl:when test="$langval='varhadi-nagpuri'">vah</xsl:when>
            <xsl:when test="$langval='vai'">vai</xsl:when>
            <xsl:when test="$langval='sekele'">vaj</xsl:when>
            <xsl:when test="$langval='vehes'">val</xsl:when>
            <xsl:when test="$langval='vanimo'">vam</xsl:when>
            <xsl:when test="$langval='valman'">van</xsl:when>
            <xsl:when test="$langval='vao'">vao</xsl:when>
            <xsl:when test="$langval='vaiphei'">vap</xsl:when>
            <xsl:when test="$langval='huarijio'">var</xsl:when>
            <xsl:when test="$langval='vasavi'">vas</xsl:when>
            <xsl:when test="$langval='vanuma'">vau</xsl:when>
            <xsl:when test="$langval='varli'">vav</xsl:when>
            <xsl:when test="$langval='wayu'">vay</xsl:when>
            <xsl:when test="$langval='southeast babar'">vbb</xsl:when>
            <xsl:when test="$langval='southwestern bontok'">vbk</xsl:when>
            <xsl:when test="$langval='venetian'">vec</xsl:when>
            <xsl:when test="$langval='veddah'">ved</xsl:when>
            <xsl:when test="$langval='veluws'">vel</xsl:when>
            <xsl:when test="$langval='vemgo-mabas'">vem</xsl:when>
            <xsl:when test="$langval='venda'">ven</xsl:when>
            <xsl:when test="$langval='ventureño'">veo</xsl:when>
            <xsl:when test="$langval='veps'">vep</xsl:when>
            <xsl:when test="$langval='mom jango'">ver</xsl:when>
            <xsl:when test="$langval='vaghri'">vgr</xsl:when>
            <xsl:when test="$langval='vlaamse gebarentaal'">vgt</xsl:when>
            <xsl:when test="$langval='virgin islands creole english'">vic</xsl:when>
            <xsl:when test="$langval='vidunda'">vid</xsl:when>
            <xsl:when test="$langval='vietnamese'">vie</xsl:when>
            <xsl:when test="$langval='vili'">vif</xsl:when>
            <xsl:when test="$langval='viemo'">vig</xsl:when>
            <xsl:when test="$langval='vilela'">vil</xsl:when>
            <xsl:when test="$langval='vinza'">vin</xsl:when>
            <xsl:when test="$langval='vishavan'">vis</xsl:when>
            <xsl:when test="$langval='viti'">vit</xsl:when>
            <xsl:when test="$langval='iduna'">viv</xsl:when>
            <xsl:when test="$langval='kariyarra'">vka</xsl:when>
            <xsl:when test="$langval='ija-zuba'">vki</xsl:when>
            <xsl:when test="$langval='kujarge'">vkj</xsl:when>
            <xsl:when test="$langval='kaur'">vkk</xsl:when>
            <xsl:when test="$langval='kulisusu'">vkl</xsl:when>
            <xsl:when test="$langval='kamakan'">vkm</xsl:when>
            <xsl:when test="$langval='kodeoha'">vko</xsl:when>
            <xsl:when test="$langval='korlai creole portuguese'">vkp</xsl:when>
            <xsl:when test="$langval='tenggarong kutai malay'">vkt</xsl:when>
            <xsl:when test="$langval='kurrama'">vku</xsl:when>
            <xsl:when test="$langval='valpei'">vlp</xsl:when>
            <xsl:when test="$langval='vlaams'">vls</xsl:when>
            <xsl:when test="$langval='martuyhunira'">vma</xsl:when>
            <xsl:when test="$langval='barbaram'">vmb</xsl:when>
            <xsl:when test="$langval='juxtlahuaca mixtec'">vmc</xsl:when>
            <xsl:when test="$langval='mudu koraga'">vmd</xsl:when>
            <xsl:when test="$langval='east masela'">vme</xsl:when>
            <xsl:when test="$langval='mainfränkisch'">vmf</xsl:when>
            <xsl:when test="$langval='lungalunga'">vmg</xsl:when>
            <xsl:when test="$langval='maraghei'">vmh</xsl:when>
            <xsl:when test="$langval='miwa'">vmi</xsl:when>
            <xsl:when test="$langval='ixtayutla mixtec'">vmj</xsl:when>
            <xsl:when test="$langval='makhuwa-shirima'">vmk</xsl:when>
            <xsl:when test="$langval='malgana'">vml</xsl:when>
            <xsl:when test="$langval='mitlatongo mixtec'">vmm</xsl:when>
            <xsl:when test="$langval='soyaltepec mazatec'">vmp</xsl:when>
            <xsl:when test="$langval='soyaltepec mixtec'">vmq</xsl:when>
            <xsl:when test="$langval='marenje'">vmr</xsl:when>
            <xsl:when test="$langval='moksela'">vms</xsl:when>
            <xsl:when test="$langval='muluridyi'">vmu</xsl:when>
            <xsl:when test="$langval='valley maidu'">vmv</xsl:when>
            <xsl:when test="$langval='makhuwa'">vmw</xsl:when>
            <xsl:when test="$langval='tamazola mixtec'">vmx</xsl:when>
            <xsl:when test="$langval='ayautla mazatec'">vmy</xsl:when>
            <xsl:when test="$langval='mazatlán mazatec'">vmz</xsl:when>
            <xsl:when test="$langval='vano'">vnk</xsl:when>
            <xsl:when test="$langval='vinmavis'">vnm</xsl:when>
            <xsl:when test="$langval='vunapu'">vnp</xsl:when>
            <xsl:when test="$langval='volapük'">vol</xsl:when>
            <xsl:when test="$langval='voro'">vor</xsl:when>
            <xsl:when test="$langval='votic'">vot</xsl:when>
            <xsl:when test="$langval='vera''a'">vra</xsl:when>
            <xsl:when test="$langval='võro'">vro</xsl:when>
            <xsl:when test="$langval='varisi'">vrs</xsl:when>
            <xsl:when test="$langval='burmbar'">vrt</xsl:when>
            <xsl:when test="$langval='moldova sign language'">vsi</xsl:when>
            <xsl:when test="$langval='venezuelan sign language'">vsl</xsl:when>
            <xsl:when test="$langval='valencian sign language'">vsv</xsl:when>
            <xsl:when test="$langval='vitou'">vto</xsl:when>
            <xsl:when test="$langval='vumbu'">vum</xsl:when>
            <xsl:when test="$langval='vunjo'">vun</xsl:when>
            <xsl:when test="$langval='vute'">vut</xsl:when>
            <xsl:when test="$langval='awa (china)'">vwa</xsl:when>
            <xsl:when test="$langval='walla walla'">waa</xsl:when>
            <xsl:when test="$langval='wab'">wab</xsl:when>
            <xsl:when test="$langval='wasco-wishram'">wac</xsl:when>
            <xsl:when test="$langval='wandamen'">wad</xsl:when>
            <xsl:when test="$langval='walser'">wae</xsl:when>
            <xsl:when test="$langval='wakoná'">waf</xsl:when>
            <xsl:when test="$langval='wa''ema'">wag</xsl:when>
            <xsl:when test="$langval='watubela'">wah</xsl:when>
            <xsl:when test="$langval='wares'">wai</xsl:when>
            <xsl:when test="$langval='waffa'">waj</xsl:when>
            <xsl:when test="$langval='wolaytta'">wal</xsl:when>
            <xsl:when test="$langval='wampanoag'">wam</xsl:when>
            <xsl:when test="$langval='wan'">wan</xsl:when>
            <xsl:when test="$langval='wappo'">wao</xsl:when>
            <xsl:when test="$langval='wapishana'">wap</xsl:when>
            <xsl:when test="$langval='wageman'">waq</xsl:when>
            <xsl:when test="$langval='waray (philippines)'">war</xsl:when>
            <xsl:when test="$langval='washo'">was</xsl:when>
            <xsl:when test="$langval='kaninuwa'">wat</xsl:when>
            <xsl:when test="$langval='waurá'">wau</xsl:when>
            <xsl:when test="$langval='waka'">wav</xsl:when>
            <xsl:when test="$langval='waiwai'">waw</xsl:when>
            <xsl:when test="$langval='watam'">wax</xsl:when>
            <xsl:when test="$langval='wayana'">way</xsl:when>
            <xsl:when test="$langval='wampur'">waz</xsl:when>
            <xsl:when test="$langval='warao'">wba</xsl:when>
            <xsl:when test="$langval='wabo'">wbb</xsl:when>
            <xsl:when test="$langval='waritai'">wbe</xsl:when>
            <xsl:when test="$langval='wara'">wbf</xsl:when>
            <xsl:when test="$langval='wanda'">wbh</xsl:when>
            <xsl:when test="$langval='vwanji'">wbi</xsl:when>
            <xsl:when test="$langval='alagwa'">wbj</xsl:when>
            <xsl:when test="$langval='waigali'">wbk</xsl:when>
            <xsl:when test="$langval='wakhi'">wbl</xsl:when>
            <xsl:when test="$langval='wa'">wbm</xsl:when>
            <xsl:when test="$langval='warlpiri'">wbp</xsl:when>
            <xsl:when test="$langval='waddar'">wbq</xsl:when>
            <xsl:when test="$langval='wagdi'">wbr</xsl:when>
            <xsl:when test="$langval='wanman'">wbt</xsl:when>
            <xsl:when test="$langval='wajarri'">wbv</xsl:when>
            <xsl:when test="$langval='woi'">wbw</xsl:when>
            <xsl:when test="$langval='yanomámi'">wca</xsl:when>
            <xsl:when test="$langval='waci gbe'">wci</xsl:when>
            <xsl:when test="$langval='wandji'">wdd</xsl:when>
            <xsl:when test="$langval='wadaginam'">wdg</xsl:when>
            <xsl:when test="$langval='wadjiginy'">wdj</xsl:when>
            <xsl:when test="$langval='wadikali'">wdk</xsl:when>
            <xsl:when test="$langval='wadjigu'">wdu</xsl:when>
            <xsl:when test="$langval='wadjabangayi'">wdy</xsl:when>
            <xsl:when test="$langval='wewaw'">wea</xsl:when>
            <xsl:when test="$langval='wè western'">wec</xsl:when>
            <xsl:when test="$langval='wedau'">wed</xsl:when>
            <xsl:when test="$langval='wergaia'">weg</xsl:when>
            <xsl:when test="$langval='weh'">weh</xsl:when>
            <xsl:when test="$langval='kiunum'">wei</xsl:when>
            <xsl:when test="$langval='weme gbe'">wem</xsl:when>
            <xsl:when test="$langval='wemale'">weo</xsl:when>
            <xsl:when test="$langval='westphalien'">wep</xsl:when>
            <xsl:when test="$langval='weri'">wer</xsl:when>
            <xsl:when test="$langval='cameroon pidgin'">wes</xsl:when>
            <xsl:when test="$langval='perai'">wet</xsl:when>
            <xsl:when test="$langval='rawngtu chin'">weu</xsl:when>
            <xsl:when test="$langval='wejewa'">wew</xsl:when>
            <xsl:when test="$langval='yafi'">wfg</xsl:when>
            <xsl:when test="$langval='wagaya'">wga</xsl:when>
            <xsl:when test="$langval='wagawaga'">wgb</xsl:when>
            <xsl:when test="$langval='wangganguru'">wgg</xsl:when>
            <xsl:when test="$langval='wahgi'">wgi</xsl:when>
            <xsl:when test="$langval='waigeo'">wgo</xsl:when>
            <xsl:when test="$langval='wirangu'">wgu</xsl:when>
            <xsl:when test="$langval='warrgamay'">wgy</xsl:when>
            <xsl:when test="$langval='manusela'">wha</xsl:when>
            <xsl:when test="$langval='north wahgi'">whg</xsl:when>
            <xsl:when test="$langval='wahau kenyah'">whk</xsl:when>
            <xsl:when test="$langval='wahau kayan'">whu</xsl:when>
            <xsl:when test="$langval='southern toussian'">wib</xsl:when>
            <xsl:when test="$langval='wichita'">wic</xsl:when>
            <xsl:when test="$langval='wik-epa'">wie</xsl:when>
            <xsl:when test="$langval='wik-keyangan'">wif</xsl:when>
            <xsl:when test="$langval='wik-ngathana'">wig</xsl:when>
            <xsl:when test="$langval='wik-me''anha'">wih</xsl:when>
            <xsl:when test="$langval='minidien'">wii</xsl:when>
            <xsl:when test="$langval='wik-iiyanh'">wij</xsl:when>
            <xsl:when test="$langval='wikalkan'">wik</xsl:when>
            <xsl:when test="$langval='wilawila'">wil</xsl:when>
            <xsl:when test="$langval='wik-mungkan'">wim</xsl:when>
            <xsl:when test="$langval='ho-chunk'">win</xsl:when>
            <xsl:when test="$langval='wiraféd'">wir</xsl:when>
            <xsl:when test="$langval='wiru'">wiu</xsl:when>
            <xsl:when test="$langval='vitu'">wiv</xsl:when>
            <xsl:when test="$langval='wiyot'">wiy</xsl:when>
            <xsl:when test="$langval='waja'">wja</xsl:when>
            <xsl:when test="$langval='warji'">wji</xsl:when>
            <xsl:when test="$langval='kw''adza'">wka</xsl:when>
            <xsl:when test="$langval='kumbaran'">wkb</xsl:when>
            <xsl:when test="$langval='wakde'">wkd</xsl:when>
            <xsl:when test="$langval='kalanadi'">wkl</xsl:when>
            <xsl:when test="$langval='kunduvadi'">wku</xsl:when>
            <xsl:when test="$langval='wakawaka'">wkw</xsl:when>
            <xsl:when test="$langval='wangkayutyuru'">wky</xsl:when>
            <xsl:when test="$langval='walio'">wla</xsl:when>
            <xsl:when test="$langval='mwali comorian'">wlc</xsl:when>
            <xsl:when test="$langval='wolane'">wle</xsl:when>
            <xsl:when test="$langval='kunbarlang'">wlg</xsl:when>
            <xsl:when test="$langval='waioli'">wli</xsl:when>
            <xsl:when test="$langval='wailaki'">wlk</xsl:when>
            <xsl:when test="$langval='wali (sudan)'">wll</xsl:when>
            <xsl:when test="$langval='middle welsh'">wlm</xsl:when>
            <xsl:when test="$langval='walloon'">wln</xsl:when>
            <xsl:when test="$langval='wolio'">wlo</xsl:when>
            <xsl:when test="$langval='wailapa'">wlr</xsl:when>
            <xsl:when test="$langval='wallisian'">wls</xsl:when>
            <xsl:when test="$langval='wuliwuli'">wlu</xsl:when>
            <xsl:when test="$langval='wichí lhamtés vejoz'">wlv</xsl:when>
            <xsl:when test="$langval='walak'">wlw</xsl:when>
            <xsl:when test="$langval='wali (ghana)'">wlx</xsl:when>
            <xsl:when test="$langval='waling'">wly</xsl:when>
            <xsl:when test="$langval='mawa (nigeria)'">wma</xsl:when>
            <xsl:when test="$langval='wambaya'">wmb</xsl:when>
            <xsl:when test="$langval='wamas'">wmc</xsl:when>
            <xsl:when test="$langval='mamaindé'">wmd</xsl:when>
            <xsl:when test="$langval='wambule'">wme</xsl:when>
            <xsl:when test="$langval='waima''a'">wmh</xsl:when>
            <xsl:when test="$langval='wamin'">wmi</xsl:when>
            <xsl:when test="$langval='maiwa (indonesia)'">wmm</xsl:when>
            <xsl:when test="$langval='waamwang'">wmn</xsl:when>
            <xsl:when test="$langval='wom (papua new guinea)'">wmo</xsl:when>
            <xsl:when test="$langval='wambon'">wms</xsl:when>
            <xsl:when test="$langval='walmajarri'">wmt</xsl:when>
            <xsl:when test="$langval='mwani'">wmw</xsl:when>
            <xsl:when test="$langval='womo'">wmx</xsl:when>
            <xsl:when test="$langval='wanambre'">wnb</xsl:when>
            <xsl:when test="$langval='wantoat'">wnc</xsl:when>
            <xsl:when test="$langval='wandarang'">wnd</xsl:when>
            <xsl:when test="$langval='waneci'">wne</xsl:when>
            <xsl:when test="$langval='wanggom'">wng</xsl:when>
            <xsl:when test="$langval='ndzwani comorian'">wni</xsl:when>
            <xsl:when test="$langval='wanukaka'">wnk</xsl:when>
            <xsl:when test="$langval='wanggamala'">wnm</xsl:when>
            <xsl:when test="$langval='wunumara'">wnn</xsl:when>
            <xsl:when test="$langval='wano'">wno</xsl:when>
            <xsl:when test="$langval='wanap'">wnp</xsl:when>
            <xsl:when test="$langval='usan'">wnu</xsl:when>
            <xsl:when test="$langval='wintu'">wnw</xsl:when>
            <xsl:when test="$langval='wanyi'">wny</xsl:when>
            <xsl:when test="$langval='tyaraity'">woa</xsl:when>
            <xsl:when test="$langval='wè northern'">wob</xsl:when>
            <xsl:when test="$langval='wogeo'">woc</xsl:when>
            <xsl:when test="$langval='wolani'">wod</xsl:when>
            <xsl:when test="$langval='woleaian'">woe</xsl:when>
            <xsl:when test="$langval='gambian wolof'">wof</xsl:when>
            <xsl:when test="$langval='wogamusin'">wog</xsl:when>
            <xsl:when test="$langval='kamang'">woi</xsl:when>
            <xsl:when test="$langval='longto'">wok</xsl:when>
            <xsl:when test="$langval='wolof'">wol</xsl:when>
            <xsl:when test="$langval='wom (nigeria)'">wom</xsl:when>
            <xsl:when test="$langval='wongo'">won</xsl:when>
            <xsl:when test="$langval='manombai'">woo</xsl:when>
            <xsl:when test="$langval='woria'">wor</xsl:when>
            <xsl:when test="$langval='hanga hundi'">wos</xsl:when>
            <xsl:when test="$langval='wawonii'">wow</xsl:when>
            <xsl:when test="$langval='weyto'">woy</xsl:when>
            <xsl:when test="$langval='maco'">wpc</xsl:when>
            <xsl:when test="$langval='warapu'">wra</xsl:when>
            <xsl:when test="$langval='warluwara'">wrb</xsl:when>
            <xsl:when test="$langval='warduji'">wrd</xsl:when>
            <xsl:when test="$langval='warungu'">wrg</xsl:when>
            <xsl:when test="$langval='wiradhuri'">wrh</xsl:when>
            <xsl:when test="$langval='wariyangga'">wri</xsl:when>
            <xsl:when test="$langval='garrwa'">wrk</xsl:when>
            <xsl:when test="$langval='warlmanpa'">wrl</xsl:when>
            <xsl:when test="$langval='warumungu'">wrm</xsl:when>
            <xsl:when test="$langval='warnang'">wrn</xsl:when>
            <xsl:when test="$langval='worrorra'">wro</xsl:when>
            <xsl:when test="$langval='waropen'">wrp</xsl:when>
            <xsl:when test="$langval='wardaman'">wrr</xsl:when>
            <xsl:when test="$langval='waris'">wrs</xsl:when>
            <xsl:when test="$langval='waru'">wru</xsl:when>
            <xsl:when test="$langval='waruna'">wrv</xsl:when>
            <xsl:when test="$langval='gugu warra'">wrw</xsl:when>
            <xsl:when test="$langval='wae rana'">wrx</xsl:when>
            <xsl:when test="$langval='merwari'">wry</xsl:when>
            <xsl:when test="$langval='waray (australia)'">wrz</xsl:when>
            <xsl:when test="$langval='warembori'">wsa</xsl:when>
            <xsl:when test="$langval='wusi'">wsi</xsl:when>
            <xsl:when test="$langval='waskia'">wsk</xsl:when>
            <xsl:when test="$langval='owenia'">wsr</xsl:when>
            <xsl:when test="$langval='wasa'">wss</xsl:when>
            <xsl:when test="$langval='wasu'">wsu</xsl:when>
            <xsl:when test="$langval='wotapuri-katarqalai'">wsv</xsl:when>
            <xsl:when test="$langval='watiwa'">wtf</xsl:when>
            <xsl:when test="$langval='wathawurrung'">wth</xsl:when>
            <xsl:when test="$langval='berta'">wti</xsl:when>
            <xsl:when test="$langval='watakataui'">wtk</xsl:when>
            <xsl:when test="$langval='mewati'">wtm</xsl:when>
            <xsl:when test="$langval='wotu'">wtw</xsl:when>
            <xsl:when test="$langval='wikngenchera'">wua</xsl:when>
            <xsl:when test="$langval='wunambal'">wub</xsl:when>
            <xsl:when test="$langval='wudu'">wud</xsl:when>
            <xsl:when test="$langval='wutunhua'">wuh</xsl:when>
            <xsl:when test="$langval='silimo'">wul</xsl:when>
            <xsl:when test="$langval='wumbvu'">wum</xsl:when>
            <xsl:when test="$langval='bungu'">wun</xsl:when>
            <xsl:when test="$langval='wurrugu'">wur</xsl:when>
            <xsl:when test="$langval='wutung'">wut</xsl:when>
            <xsl:when test="$langval='wu chinese'">wuu</xsl:when>
            <xsl:when test="$langval='wuvulu-aua'">wuv</xsl:when>
            <xsl:when test="$langval='wulna'">wux</xsl:when>
            <xsl:when test="$langval='wauyai'">wuy</xsl:when>
            <xsl:when test="$langval='waama'">wwa</xsl:when>
            <xsl:when test="$langval='wakabunga'">wwb</xsl:when>
            <xsl:when test="$langval='wetamut'">wwo</xsl:when>
            <xsl:when test="$langval='warrwa'">wwr</xsl:when>
            <xsl:when test="$langval='wawa'">www</xsl:when>
            <xsl:when test="$langval='waxianghua'">wxa</xsl:when>
            <xsl:when test="$langval='wardandi'">wxw</xsl:when>
            <xsl:when test="$langval='wyandot'">wya</xsl:when>
            <xsl:when test="$langval='wangaaybuwan-ngiyambaa'">wyb</xsl:when>
            <xsl:when test="$langval='woiwurrung'">wyi</xsl:when>
            <xsl:when test="$langval='wymysorys'">wym</xsl:when>
            <xsl:when test="$langval='wayoró'">wyr</xsl:when>
            <xsl:when test="$langval='western fijian'">wyy</xsl:when>
            <xsl:when test="$langval='andalusian arabic'">xaa</xsl:when>
            <xsl:when test="$langval='sambe'">xab</xsl:when>
            <xsl:when test="$langval='kachari'">xac</xsl:when>
            <xsl:when test="$langval='adai'">xad</xsl:when>
            <xsl:when test="$langval='aequian'">xae</xsl:when>
            <xsl:when test="$langval='aghwan'">xag</xsl:when>
            <xsl:when test="$langval='kaimbé'">xai</xsl:when>
            <xsl:when test="$langval='ararandewára'">xaj</xsl:when>
            <xsl:when test="$langval='kalmyk'">xal</xsl:when>
            <xsl:when test="$langval='/xam'">xam</xsl:when>
            <xsl:when test="$langval='xamtanga'">xan</xsl:when>
            <xsl:when test="$langval='khao'">xao</xsl:when>
            <xsl:when test="$langval='apalachee'">xap</xsl:when>
            <xsl:when test="$langval='aquitanian'">xaq</xsl:when>
            <xsl:when test="$langval='karami'">xar</xsl:when>
            <xsl:when test="$langval='kamas'">xas</xsl:when>
            <xsl:when test="$langval='katawixi'">xat</xsl:when>
            <xsl:when test="$langval='kauwera'">xau</xsl:when>
            <xsl:when test="$langval='xavánte'">xav</xsl:when>
            <xsl:when test="$langval='kawaiisu'">xaw</xsl:when>
            <xsl:when test="$langval='kayan mahakam'">xay</xsl:when>
            <xsl:when test="$langval='kamba (brazil)'">xba</xsl:when>
            <xsl:when test="$langval='lower burdekin'">xbb</xsl:when>
            <xsl:when test="$langval='bactrian'">xbc</xsl:when>
            <xsl:when test="$langval='bindal'">xbd</xsl:when>
            <xsl:when test="$langval='bigambal'">xbe</xsl:when>
            <xsl:when test="$langval='bunganditj'">xbg</xsl:when>
            <xsl:when test="$langval='kombio'">xbi</xsl:when>
            <xsl:when test="$langval='birrpayi'">xbj</xsl:when>
            <xsl:when test="$langval='middle breton'">xbm</xsl:when>
            <xsl:when test="$langval='kenaboi'">xbn</xsl:when>
            <xsl:when test="$langval='bolgarian'">xbo</xsl:when>
            <xsl:when test="$langval='bibbulman'">xbp</xsl:when>
            <xsl:when test="$langval='kambera'">xbr</xsl:when>
            <xsl:when test="$langval='kambiwá'">xbw</xsl:when>
            <xsl:when test="$langval='kabixí'">xbx</xsl:when>
            <xsl:when test="$langval='batyala'">xby</xsl:when>
            <xsl:when test="$langval='cumbric'">xcb</xsl:when>
            <xsl:when test="$langval='camunic'">xcc</xsl:when>
            <xsl:when test="$langval='celtiberian'">xce</xsl:when>
            <xsl:when test="$langval='cisalpine gaulish'">xcg</xsl:when>
            <xsl:when test="$langval='chemakum'">xch</xsl:when>
            <xsl:when test="$langval='classical armenian'">xcl</xsl:when>
            <xsl:when test="$langval='comecrudo'">xcm</xsl:when>
            <xsl:when test="$langval='cotoname'">xcn</xsl:when>
            <xsl:when test="$langval='chorasmian'">xco</xsl:when>
            <xsl:when test="$langval='carian'">xcr</xsl:when>
            <xsl:when test="$langval='classical tibetan'">xct</xsl:when>
            <xsl:when test="$langval='curonian'">xcu</xsl:when>
            <xsl:when test="$langval='chuvantsy'">xcv</xsl:when>
            <xsl:when test="$langval='coahuilteco'">xcw</xsl:when>
            <xsl:when test="$langval='cayuse'">xcy</xsl:when>
            <xsl:when test="$langval='darkinyung'">xda</xsl:when>
            <xsl:when test="$langval='dacian'">xdc</xsl:when>
            <xsl:when test="$langval='dharuk'">xdk</xsl:when>
            <xsl:when test="$langval='edomite'">xdm</xsl:when>
            <xsl:when test="$langval='malayic dayak'">xdy</xsl:when>
            <xsl:when test="$langval='eblan'">xeb</xsl:when>
            <xsl:when test="$langval='hdi'">xed</xsl:when>
            <xsl:when test="$langval='//xegwi'">xeg</xsl:when>
            <xsl:when test="$langval='kelo'">xel</xsl:when>
            <xsl:when test="$langval='kembayan'">xem</xsl:when>
            <xsl:when test="$langval='epi-olmec'">xep</xsl:when>
            <xsl:when test="$langval='xerénte'">xer</xsl:when>
            <xsl:when test="$langval='kesawai'">xes</xsl:when>
            <xsl:when test="$langval='xetá'">xet</xsl:when>
            <xsl:when test="$langval='keoru-ahia'">xeu</xsl:when>
            <xsl:when test="$langval='faliscan'">xfa</xsl:when>
            <xsl:when test="$langval='galatian'">xga</xsl:when>
            <xsl:when test="$langval='gbin'">xgb</xsl:when>
            <xsl:when test="$langval='gudang'">xgd</xsl:when>
            <xsl:when test="$langval='gabrielino-fernandeño'">xgf</xsl:when>
            <xsl:when test="$langval='goreng'">xgg</xsl:when>
            <xsl:when test="$langval='garingbal'">xgi</xsl:when>
            <xsl:when test="$langval='galindan'">xgl</xsl:when>
            <xsl:when test="$langval='dharumbal'">xgm</xsl:when>
            <xsl:when test="$langval='garza'">xgr</xsl:when>
            <xsl:when test="$langval='unggumi'">xgu</xsl:when>
            <xsl:when test="$langval='guwa'">xgw</xsl:when>
            <xsl:when test="$langval='harami'">xha</xsl:when>
            <xsl:when test="$langval='hunnic'">xhc</xsl:when>
            <xsl:when test="$langval='hadrami'">xhd</xsl:when>
            <xsl:when test="$langval='khetrani'">xhe</xsl:when>
            <xsl:when test="$langval='xhosa'">xho</xsl:when>
            <xsl:when test="$langval='hernican'">xhr</xsl:when>
            <xsl:when test="$langval='hattic'">xht</xsl:when>
            <xsl:when test="$langval='hurrian'">xhu</xsl:when>
            <xsl:when test="$langval='khua'">xhv</xsl:when>
            <xsl:when test="$langval='iberian'">xib</xsl:when>
            <xsl:when test="$langval='xiri'">xii</xsl:when>
            <xsl:when test="$langval='illyrian'">xil</xsl:when>
            <xsl:when test="$langval='xinca'">xin</xsl:when>
            <xsl:when test="$langval='xipináwa'">xip</xsl:when>
            <xsl:when test="$langval='xiriâna'">xir</xsl:when>
            <xsl:when test="$langval='kisan'">xis</xsl:when>
            <xsl:when test="$langval='indus valley language'">xiv</xsl:when>
            <xsl:when test="$langval='xipaya'">xiy</xsl:when>
            <xsl:when test="$langval='minjungbal'">xjb</xsl:when>
            <xsl:when test="$langval='jaitmatang'">xjt</xsl:when>
            <xsl:when test="$langval='kalkoti'">xka</xsl:when>
            <xsl:when test="$langval='northern nago'">xkb</xsl:when>
            <xsl:when test="$langval='kho''ini'">xkc</xsl:when>
            <xsl:when test="$langval='mendalam kayan'">xkd</xsl:when>
            <xsl:when test="$langval='kereho'">xke</xsl:when>
            <xsl:when test="$langval='khengkha'">xkf</xsl:when>
            <xsl:when test="$langval='kagoro'">xkg</xsl:when>
            <xsl:when test="$langval='karahawyana'">xkh</xsl:when>
            <xsl:when test="$langval='kenyan sign language'">xki</xsl:when>
            <xsl:when test="$langval='kajali'">xkj</xsl:when>
            <xsl:when test="$langval='kaco'''">xkk</xsl:when>
            <xsl:when test="$langval='mainstream kenyah'">xkl</xsl:when>
            <xsl:when test="$langval='kayan river kayan'">xkn</xsl:when>
            <xsl:when test="$langval='kiorr'">xko</xsl:when>
            <xsl:when test="$langval='kabatei'">xkp</xsl:when>
            <xsl:when test="$langval='koroni'">xkq</xsl:when>
            <xsl:when test="$langval='xakriabá'">xkr</xsl:when>
            <xsl:when test="$langval='kumbewaha'">xks</xsl:when>
            <xsl:when test="$langval='kantosi'">xkt</xsl:when>
            <xsl:when test="$langval='kaamba'">xku</xsl:when>
            <xsl:when test="$langval='kgalagadi'">xkv</xsl:when>
            <xsl:when test="$langval='kembra'">xkw</xsl:when>
            <xsl:when test="$langval='karore'">xkx</xsl:when>
            <xsl:when test="$langval='uma'' lasan'">xky</xsl:when>
            <xsl:when test="$langval='kurtokha'">xkz</xsl:when>
            <xsl:when test="$langval='kamula'">xla</xsl:when>
            <xsl:when test="$langval='loup b'">xlb</xsl:when>
            <xsl:when test="$langval='lycian'">xlc</xsl:when>
            <xsl:when test="$langval='lydian'">xld</xsl:when>
            <xsl:when test="$langval='lemnian'">xle</xsl:when>
            <xsl:when test="$langval='ligurian (ancient)'">xlg</xsl:when>
            <xsl:when test="$langval='liburnian'">xli</xsl:when>
            <xsl:when test="$langval='alanic'">xln</xsl:when>
            <xsl:when test="$langval='loup a'">xlo</xsl:when>
            <xsl:when test="$langval='lepontic'">xlp</xsl:when>
            <xsl:when test="$langval='lusitanian'">xls</xsl:when>
            <xsl:when test="$langval='cuneiform luwian'">xlu</xsl:when>
            <xsl:when test="$langval='elymian'">xly</xsl:when>
            <xsl:when test="$langval='mushungulu'">xma</xsl:when>
            <xsl:when test="$langval='mbonga'">xmb</xsl:when>
            <xsl:when test="$langval='makhuwa-marrevone'">xmc</xsl:when>
            <xsl:when test="$langval='mbudum'">xmd</xsl:when>
            <xsl:when test="$langval='median'">xme</xsl:when>
            <xsl:when test="$langval='mingrelian'">xmf</xsl:when>
            <xsl:when test="$langval='mengaka'">xmg</xsl:when>
            <xsl:when test="$langval='kuku-muminh'">xmh</xsl:when>
            <xsl:when test="$langval='majera'">xmj</xsl:when>
            <xsl:when test="$langval='ancient macedonian'">xmk</xsl:when>
            <xsl:when test="$langval='malaysian sign language'">xml</xsl:when>
            <xsl:when test="$langval='manado malay'">xmm</xsl:when>
            <xsl:when test="$langval='manichaean middle persian'">xmn</xsl:when>
            <xsl:when test="$langval='morerebi'">xmo</xsl:when>
            <xsl:when test="$langval='kuku-mu''inh'">xmp</xsl:when>
            <xsl:when test="$langval='kuku-mangk'">xmq</xsl:when>
            <xsl:when test="$langval='meroitic'">xmr</xsl:when>
            <xsl:when test="$langval='moroccan sign language'">xms</xsl:when>
            <xsl:when test="$langval='matbat'">xmt</xsl:when>
            <xsl:when test="$langval='kamu'">xmu</xsl:when>
            <xsl:when test="$langval='antankarana malagasy'">xmv</xsl:when>
            <xsl:when test="$langval='tsimihety malagasy'">xmw</xsl:when>
            <xsl:when test="$langval='maden'">xmx</xsl:when>
            <xsl:when test="$langval='mayaguduna'">xmy</xsl:when>
            <xsl:when test="$langval='mori bawah'">xmz</xsl:when>
            <xsl:when test="$langval='ancient north arabian'">xna</xsl:when>
            <xsl:when test="$langval='kanakanabu'">xnb</xsl:when>
            <xsl:when test="$langval='middle mongolian'">xng</xsl:when>
            <xsl:when test="$langval='kuanhua'">xnh</xsl:when>
            <xsl:when test="$langval='ngarigu'">xni</xsl:when>
            <xsl:when test="$langval='nganakarti'">xnk</xsl:when>
            <xsl:when test="$langval='northern kankanay'">xnn</xsl:when>
            <xsl:when test="$langval='anglo-norman'">xno</xsl:when>
            <xsl:when test="$langval='kangri'">xnr</xsl:when>
            <xsl:when test="$langval='kanashi'">xns</xsl:when>
            <xsl:when test="$langval='narragansett'">xnt</xsl:when>
            <xsl:when test="$langval='nukunul'">xnu</xsl:when>
            <xsl:when test="$langval='nyiyaparli'">xny</xsl:when>
            <xsl:when test="$langval='kenzi'">xnz</xsl:when>
            <xsl:when test="$langval='o''chi''chi'''">xoc</xsl:when>
            <xsl:when test="$langval='kokoda'">xod</xsl:when>
            <xsl:when test="$langval='soga'">xog</xsl:when>
            <xsl:when test="$langval='kominimung'">xoi</xsl:when>
            <xsl:when test="$langval='xokleng'">xok</xsl:when>
            <xsl:when test="$langval='komo (sudan)'">xom</xsl:when>
            <xsl:when test="$langval='konkomba'">xon</xsl:when>
            <xsl:when test="$langval='xukurú'">xoo</xsl:when>
            <xsl:when test="$langval='kopar'">xop</xsl:when>
            <xsl:when test="$langval='korubo'">xor</xsl:when>
            <xsl:when test="$langval='kowaki'">xow</xsl:when>
            <xsl:when test="$langval='pirriya'">xpa</xsl:when>
            <xsl:when test="$langval='pecheneg'">xpc</xsl:when>
            <xsl:when test="$langval='liberia kpelle'">xpe</xsl:when>
            <xsl:when test="$langval='phrygian'">xpg</xsl:when>
            <xsl:when test="$langval='pictish'">xpi</xsl:when>
            <xsl:when test="$langval='mpalitjanh'">xpj</xsl:when>
            <xsl:when test="$langval='kulina pano'">xpk</xsl:when>
            <xsl:when test="$langval='pumpokol'">xpm</xsl:when>
            <xsl:when test="$langval='kapinawá'">xpn</xsl:when>
            <xsl:when test="$langval='pochutec'">xpo</xsl:when>
            <xsl:when test="$langval='puyo-paekche'">xpp</xsl:when>
            <xsl:when test="$langval='mohegan-pequot'">xpq</xsl:when>
            <xsl:when test="$langval='parthian'">xpr</xsl:when>
            <xsl:when test="$langval='pisidian'">xps</xsl:when>
            <xsl:when test="$langval='punthamara'">xpt</xsl:when>
            <xsl:when test="$langval='punic'">xpu</xsl:when>
            <xsl:when test="$langval='puyo'">xpy</xsl:when>
            <xsl:when test="$langval='karakhanid'">xqa</xsl:when>
            <xsl:when test="$langval='qatabanian'">xqt</xsl:when>
            <xsl:when test="$langval='krahô'">xra</xsl:when>
            <xsl:when test="$langval='eastern karaboro'">xrb</xsl:when>
            <xsl:when test="$langval='gundungurra'">xrd</xsl:when>
            <xsl:when test="$langval='kreye'">xre</xsl:when>
            <xsl:when test="$langval='minang'">xrg</xsl:when>
            <xsl:when test="$langval='krikati-timbira'">xri</xsl:when>
            <xsl:when test="$langval='armazic'">xrm</xsl:when>
            <xsl:when test="$langval='arin'">xrn</xsl:when>
            <xsl:when test="$langval='karranga'">xrq</xsl:when>
            <xsl:when test="$langval='raetic'">xrr</xsl:when>
            <xsl:when test="$langval='aranama-tamique'">xrt</xsl:when>
            <xsl:when test="$langval='marriammu'">xru</xsl:when>
            <xsl:when test="$langval='karawa'">xrw</xsl:when>
            <xsl:when test="$langval='sabaean'">xsa</xsl:when>
            <xsl:when test="$langval='sambal'">xsb</xsl:when>
            <xsl:when test="$langval='scythian'">xsc</xsl:when>
            <xsl:when test="$langval='sidetic'">xsd</xsl:when>
            <xsl:when test="$langval='sempan'">xse</xsl:when>
            <xsl:when test="$langval='shamang'">xsh</xsl:when>
            <xsl:when test="$langval='sio'">xsi</xsl:when>
            <xsl:when test="$langval='south slavey'">xsl</xsl:when>
            <xsl:when test="$langval='kasem'">xsm</xsl:when>
            <xsl:when test="$langval='sanga (nigeria)'">xsn</xsl:when>
            <xsl:when test="$langval='solano'">xso</xsl:when>
            <xsl:when test="$langval='silopi'">xsp</xsl:when>
            <xsl:when test="$langval='makhuwa-saka'">xsq</xsl:when>
            <xsl:when test="$langval='sherpa'">xsr</xsl:when>
            <xsl:when test="$langval='assan'">xss</xsl:when>
            <xsl:when test="$langval='sanumá'">xsu</xsl:when>
            <xsl:when test="$langval='sudovian'">xsv</xsl:when>
            <xsl:when test="$langval='saisiyat'">xsy</xsl:when>
            <xsl:when test="$langval='alcozauca mixtec'">xta</xsl:when>
            <xsl:when test="$langval='chazumba mixtec'">xtb</xsl:when>
            <xsl:when test="$langval='katcha-kadugli-miri'">xtc</xsl:when>
            <xsl:when test="$langval='diuxi-tilantongo mixtec'">xtd</xsl:when>
            <xsl:when test="$langval='ketengban'">xte</xsl:when>
            <xsl:when test="$langval='transalpine gaulish'">xtg</xsl:when>
            <xsl:when test="$langval='yitha yitha'">xth</xsl:when>
            <xsl:when test="$langval='sinicahua mixtec'">xti</xsl:when>
            <xsl:when test="$langval='san juan teita mixtec'">xtj</xsl:when>
            <xsl:when test="$langval='tijaltepec mixtec'">xtl</xsl:when>
            <xsl:when test="$langval='magdalena peñasco mixtec'">xtm</xsl:when>
            <xsl:when test="$langval='northern tlaxiaco mixtec'">xtn</xsl:when>
            <xsl:when test="$langval='tokharian a'">xto</xsl:when>
            <xsl:when test="$langval='san miguel piedras mixtec'">xtp</xsl:when>
            <xsl:when test="$langval='tumshuqese'">xtq</xsl:when>
            <xsl:when test="$langval='early tripuri'">xtr</xsl:when>
            <xsl:when test="$langval='sindihui mixtec'">xts</xsl:when>
            <xsl:when test="$langval='tacahua mixtec'">xtt</xsl:when>
            <xsl:when test="$langval='cuyamecalco mixtec'">xtu</xsl:when>
            <xsl:when test="$langval='thawa'">xtv</xsl:when>
            <xsl:when test="$langval='tawandê'">xtw</xsl:when>
            <xsl:when test="$langval='yoloxochitl mixtec'">xty</xsl:when>
            <xsl:when test="$langval='tasmanian'">xtz</xsl:when>
            <xsl:when test="$langval='alu kurumba'">xua</xsl:when>
            <xsl:when test="$langval='betta kurumba'">xub</xsl:when>
            <xsl:when test="$langval='umiida'">xud</xsl:when>
            <xsl:when test="$langval='kunigami'">xug</xsl:when>
            <xsl:when test="$langval='jennu kurumba'">xuj</xsl:when>
            <xsl:when test="$langval='ngunawal'">xul</xsl:when>
            <xsl:when test="$langval='umbrian'">xum</xsl:when>
            <xsl:when test="$langval='unggaranggu'">xun</xsl:when>
            <xsl:when test="$langval='kuo'">xuo</xsl:when>
            <xsl:when test="$langval='upper umpqua'">xup</xsl:when>
            <xsl:when test="$langval='urartian'">xur</xsl:when>
            <xsl:when test="$langval='kuthant'">xut</xsl:when>
            <xsl:when test="$langval='kxoe'">xuu</xsl:when>
            <xsl:when test="$langval='venetic'">xve</xsl:when>
            <xsl:when test="$langval='kamviri'">xvi</xsl:when>
            <xsl:when test="$langval='vandalic'">xvn</xsl:when>
            <xsl:when test="$langval='volscian'">xvo</xsl:when>
            <xsl:when test="$langval='vestinian'">xvs</xsl:when>
            <xsl:when test="$langval='kwaza'">xwa</xsl:when>
            <xsl:when test="$langval='woccon'">xwc</xsl:when>
            <xsl:when test="$langval='wadi wadi'">xwd</xsl:when>
            <xsl:when test="$langval='xwela gbe'">xwe</xsl:when>
            <xsl:when test="$langval='kwegu'">xwg</xsl:when>
            <xsl:when test="$langval='wajuk'">xwj</xsl:when>
            <xsl:when test="$langval='wangkumara'">xwk</xsl:when>
            <xsl:when test="$langval='western xwla gbe'">xwl</xsl:when>
            <xsl:when test="$langval='written oirat'">xwo</xsl:when>
            <xsl:when test="$langval='kwerba mamberamo'">xwr</xsl:when>
            <xsl:when test="$langval='wotjobaluk'">xwt</xsl:when>
            <xsl:when test="$langval='wemba wemba'">xww</xsl:when>
            <xsl:when test="$langval='boro (ghana)'">xxb</xsl:when>
            <xsl:when test="$langval='ke''o'">xxk</xsl:when>
            <xsl:when test="$langval='minkin'">xxm</xsl:when>
            <xsl:when test="$langval='koropó'">xxr</xsl:when>
            <xsl:when test="$langval='tambora'">xxt</xsl:when>
            <xsl:when test="$langval='yaygir'">xya</xsl:when>
            <xsl:when test="$langval='yandjibara'">xyb</xsl:when>
            <xsl:when test="$langval='mayi-yapi'">xyj</xsl:when>
            <xsl:when test="$langval='mayi-kulan'">xyk</xsl:when>
            <xsl:when test="$langval='yalakalore'">xyl</xsl:when>
            <xsl:when test="$langval='mayi-thakurti'">xyt</xsl:when>
            <xsl:when test="$langval='yorta yorta'">xyy</xsl:when>
            <xsl:when test="$langval='zhang-zhung'">xzh</xsl:when>
            <xsl:when test="$langval='zemgalian'">xzm</xsl:when>
            <xsl:when test="$langval='ancient zapotec'">xzp</xsl:when>
            <xsl:when test="$langval='yaminahua'">yaa</xsl:when>
            <xsl:when test="$langval='yuhup'">yab</xsl:when>
            <xsl:when test="$langval='pass valley yali'">yac</xsl:when>
            <xsl:when test="$langval='yagua'">yad</xsl:when>
            <xsl:when test="$langval='pumé'">yae</xsl:when>
            <xsl:when test="$langval='yaka (democratic republic of congo)'">yaf</xsl:when>
            <xsl:when test="$langval='yámana'">yag</xsl:when>
            <xsl:when test="$langval='yazgulyam'">yah</xsl:when>
            <xsl:when test="$langval='yagnobi'">yai</xsl:when>
            <xsl:when test="$langval='banda-yangere'">yaj</xsl:when>
            <xsl:when test="$langval='yakama'">yak</xsl:when>
            <xsl:when test="$langval='yalunka'">yal</xsl:when>
            <xsl:when test="$langval='yamba'">yam</xsl:when>
            <xsl:when test="$langval='mayangna'">yan</xsl:when>
            <xsl:when test="$langval='yao'">yao</xsl:when>
            <xsl:when test="$langval='yapese'">yap</xsl:when>
            <xsl:when test="$langval='yaqui'">yaq</xsl:when>
            <xsl:when test="$langval='yabarana'">yar</xsl:when>
            <xsl:when test="$langval='nugunu (cameroon)'">yas</xsl:when>
            <xsl:when test="$langval='yambeta'">yat</xsl:when>
            <xsl:when test="$langval='yuwana'">yau</xsl:when>
            <xsl:when test="$langval='yangben'">yav</xsl:when>
            <xsl:when test="$langval='yawalapití'">yaw</xsl:when>
            <xsl:when test="$langval='yauma'">yax</xsl:when>
            <xsl:when test="$langval='agwagwune'">yay</xsl:when>
            <xsl:when test="$langval='lokaa'">yaz</xsl:when>
            <xsl:when test="$langval='yala'">yba</xsl:when>
            <xsl:when test="$langval='yemba'">ybb</xsl:when>
            <xsl:when test="$langval='west yugur'">ybe</xsl:when>
            <xsl:when test="$langval='yakha'">ybh</xsl:when>
            <xsl:when test="$langval='yamphu'">ybi</xsl:when>
            <xsl:when test="$langval='hasha'">ybj</xsl:when>
            <xsl:when test="$langval='bokha'">ybk</xsl:when>
            <xsl:when test="$langval='yukuben'">ybl</xsl:when>
            <xsl:when test="$langval='yaben'">ybm</xsl:when>
            <xsl:when test="$langval='yabaâna'">ybn</xsl:when>
            <xsl:when test="$langval='yabong'">ybo</xsl:when>
            <xsl:when test="$langval='yawiyo'">ybx</xsl:when>
            <xsl:when test="$langval='yaweyuha'">yby</xsl:when>
            <xsl:when test="$langval='chesu'">ych</xsl:when>
            <xsl:when test="$langval='lolopo'">ycl</xsl:when>
            <xsl:when test="$langval='yucuna'">ycn</xsl:when>
            <xsl:when test="$langval='chepya'">ycp</xsl:when>
            <xsl:when test="$langval='yanda'">yda</xsl:when>
            <xsl:when test="$langval='eastern yiddish'">ydd</xsl:when>
            <xsl:when test="$langval='yangum dey'">yde</xsl:when>
            <xsl:when test="$langval='yidgha'">ydg</xsl:when>
            <xsl:when test="$langval='yoidik'">ydk</xsl:when>
            <xsl:when test="$langval='ravula'">yea</xsl:when>
            <xsl:when test="$langval='yeniche'">yec</xsl:when>
            <xsl:when test="$langval='yimas'">yee</xsl:when>
            <xsl:when test="$langval='yeni'">yei</xsl:when>
            <xsl:when test="$langval='yevanic'">yej</xsl:when>
            <xsl:when test="$langval='yela'">yel</xsl:when>
            <xsl:when test="$langval='tarok'">yer</xsl:when>
            <xsl:when test="$langval='nyankpa'">yes</xsl:when>
            <xsl:when test="$langval='yetfa'">yet</xsl:when>
            <xsl:when test="$langval='yerukula'">yeu</xsl:when>
            <xsl:when test="$langval='yapunda'">yev</xsl:when>
            <xsl:when test="$langval='yeyi'">yey</xsl:when>
            <xsl:when test="$langval='malyangapa'">yga</xsl:when>
            <xsl:when test="$langval='yiningayi'">ygi</xsl:when>
            <xsl:when test="$langval='yangum gel'">ygl</xsl:when>
            <xsl:when test="$langval='yagomi'">ygm</xsl:when>
            <xsl:when test="$langval='gepo'">ygp</xsl:when>
            <xsl:when test="$langval='yagaria'">ygr</xsl:when>
            <xsl:when test="$langval='yolŋu sign language'">ygs</xsl:when>
            <xsl:when test="$langval='yugul'">ygu</xsl:when>
            <xsl:when test="$langval='yagwoia'">ygw</xsl:when>
            <xsl:when test="$langval='baha buyang'">yha</xsl:when>
            <xsl:when test="$langval='judeo-iraqi arabic'">yhd</xsl:when>
            <xsl:when test="$langval='hlepho phowa'">yhl</xsl:when>
            <xsl:when test="$langval='yinggarda'">yia</xsl:when>
            <xsl:when test="$langval='yiddish'">yid</xsl:when>
            <xsl:when test="$langval='ache'">yif</xsl:when>
            <xsl:when test="$langval='wusa nasu'">yig</xsl:when>
            <xsl:when test="$langval='western yiddish'">yih</xsl:when>
            <xsl:when test="$langval='yidiny'">yii</xsl:when>
            <xsl:when test="$langval='yindjibarndi'">yij</xsl:when>
            <xsl:when test="$langval='dongshanba lalo'">yik</xsl:when>
            <xsl:when test="$langval='yindjilandji'">yil</xsl:when>
            <xsl:when test="$langval='yimchungru naga'">yim</xsl:when>
            <xsl:when test="$langval='yinchia'">yin</xsl:when>
            <xsl:when test="$langval='pholo'">yip</xsl:when>
            <xsl:when test="$langval='miqie'">yiq</xsl:when>
            <xsl:when test="$langval='north awyu'">yir</xsl:when>
            <xsl:when test="$langval='yis'">yis</xsl:when>
            <xsl:when test="$langval='eastern lalu'">yit</xsl:when>
            <xsl:when test="$langval='awu'">yiu</xsl:when>
            <xsl:when test="$langval='northern nisu'">yiv</xsl:when>
            <xsl:when test="$langval='axi yi'">yix</xsl:when>
            <xsl:when test="$langval='azhe'">yiz</xsl:when>
            <xsl:when test="$langval='yakan'">yka</xsl:when>
            <xsl:when test="$langval='northern yukaghir'">ykg</xsl:when>
            <xsl:when test="$langval='yoke'">yki</xsl:when>
            <xsl:when test="$langval='yakaikeke'">ykk</xsl:when>
            <xsl:when test="$langval='khlula'">ykl</xsl:when>
            <xsl:when test="$langval='kap'">ykm</xsl:when>
            <xsl:when test="$langval='kua-nsi'">ykn</xsl:when>
            <xsl:when test="$langval='yasa'">yko</xsl:when>
            <xsl:when test="$langval='yekora'">ykr</xsl:when>
            <xsl:when test="$langval='kathu'">ykt</xsl:when>
            <xsl:when test="$langval='kuamasi'">yku</xsl:when>
            <xsl:when test="$langval='yakoma'">yky</xsl:when>
            <xsl:when test="$langval='yaul'">yla</xsl:when>
            <xsl:when test="$langval='yaleba'">ylb</xsl:when>
            <xsl:when test="$langval='yele'">yle</xsl:when>
            <xsl:when test="$langval='yelogu'">ylg</xsl:when>
            <xsl:when test="$langval='angguruk yali'">yli</xsl:when>
            <xsl:when test="$langval='yil'">yll</xsl:when>
            <xsl:when test="$langval='limi'">ylm</xsl:when>
            <xsl:when test="$langval='langnian buyang'">yln</xsl:when>
            <xsl:when test="$langval='naluo yi'">ylo</xsl:when>
            <xsl:when test="$langval='yalarnnga'">ylr</xsl:when>
            <xsl:when test="$langval='aribwaung'">ylu</xsl:when>
            <xsl:when test="$langval='nyâlayu'">yly</xsl:when>
            <xsl:when test="$langval='yambes'">ymb</xsl:when>
            <xsl:when test="$langval='southern muji'">ymc</xsl:when>
            <xsl:when test="$langval='muda'">ymd</xsl:when>
            <xsl:when test="$langval='yameo'">yme</xsl:when>
            <xsl:when test="$langval='yamongeri'">ymg</xsl:when>
            <xsl:when test="$langval='mili'">ymh</xsl:when>
            <xsl:when test="$langval='moji'">ymi</xsl:when>
            <xsl:when test="$langval='makwe'">ymk</xsl:when>
            <xsl:when test="$langval='iamalele'">yml</xsl:when>
            <xsl:when test="$langval='maay'">ymm</xsl:when>
            <xsl:when test="$langval='yamna'">ymn</xsl:when>
            <xsl:when test="$langval='yangum mon'">ymo</xsl:when>
            <xsl:when test="$langval='yamap'">ymp</xsl:when>
            <xsl:when test="$langval='qila muji'">ymq</xsl:when>
            <xsl:when test="$langval='malasar'">ymr</xsl:when>
            <xsl:when test="$langval='mysian'">yms</xsl:when>
            <xsl:when test="$langval='northern muji'">ymx</xsl:when>
            <xsl:when test="$langval='muzi'">ymz</xsl:when>
            <xsl:when test="$langval='aluo'">yna</xsl:when>
            <xsl:when test="$langval='yandruwandha'">ynd</xsl:when>
            <xsl:when test="$langval='lang''e'">yne</xsl:when>
            <xsl:when test="$langval='yango'">yng</xsl:when>
            <xsl:when test="$langval='naukan yupik'">ynk</xsl:when>
            <xsl:when test="$langval='yangulam'">ynl</xsl:when>
            <xsl:when test="$langval='yana'">ynn</xsl:when>
            <xsl:when test="$langval='yong'">yno</xsl:when>
            <xsl:when test="$langval='yendang'">ynq</xsl:when>
            <xsl:when test="$langval='yansi'">yns</xsl:when>
            <xsl:when test="$langval='yahuna'">ynu</xsl:when>
            <xsl:when test="$langval='yoba'">yob</xsl:when>
            <xsl:when test="$langval='yogad'">yog</xsl:when>
            <xsl:when test="$langval='yonaguni'">yoi</xsl:when>
            <xsl:when test="$langval='yokuts'">yok</xsl:when>
            <xsl:when test="$langval='yola'">yol</xsl:when>
            <xsl:when test="$langval='yombe'">yom</xsl:when>
            <xsl:when test="$langval='yongkom'">yon</xsl:when>
            <xsl:when test="$langval='yoruba'">yor</xsl:when>
            <xsl:when test="$langval='yotti'">yot</xsl:when>
            <xsl:when test="$langval='yoron'">yox</xsl:when>
            <xsl:when test="$langval='yoy'">yoy</xsl:when>
            <xsl:when test="$langval='phala'">ypa</xsl:when>
            <xsl:when test="$langval='labo phowa'">ypb</xsl:when>
            <xsl:when test="$langval='phola'">ypg</xsl:when>
            <xsl:when test="$langval='phupha'">yph</xsl:when>
            <xsl:when test="$langval='phuma'">ypm</xsl:when>
            <xsl:when test="$langval='ani phowa'">ypn</xsl:when>
            <xsl:when test="$langval='alo phola'">ypo</xsl:when>
            <xsl:when test="$langval='phupa'">ypp</xsl:when>
            <xsl:when test="$langval='phuza'">ypz</xsl:when>
            <xsl:when test="$langval='yerakai'">yra</xsl:when>
            <xsl:when test="$langval='yareba'">yrb</xsl:when>
            <xsl:when test="$langval='yaouré'">yre</xsl:when>
            <xsl:when test="$langval='yarí'">yri</xsl:when>
            <xsl:when test="$langval='nenets'">yrk</xsl:when>
            <xsl:when test="$langval='nhengatu'">yrl</xsl:when>
            <xsl:when test="$langval='yirrk-mel'">yrm</xsl:when>
            <xsl:when test="$langval='yerong'">yrn</xsl:when>
            <xsl:when test="$langval='yarsun'">yrs</xsl:when>
            <xsl:when test="$langval='yarawata'">yrw</xsl:when>
            <xsl:when test="$langval='yarluyandi'">yry</xsl:when>
            <xsl:when test="$langval='yassic'">ysc</xsl:when>
            <xsl:when test="$langval='samatao'">ysd</xsl:when>
            <xsl:when test="$langval='sonaga'">ysg</xsl:when>
            <xsl:when test="$langval='yugoslavian sign language'">ysl</xsl:when>
            <xsl:when test="$langval='sani'">ysn</xsl:when>
            <xsl:when test="$langval='nisi (china)'">yso</xsl:when>
            <xsl:when test="$langval='southern lolopo'">ysp</xsl:when>
            <xsl:when test="$langval='sirenik yupik'">ysr</xsl:when>
            <xsl:when test="$langval='yessan-mayo'">yss</xsl:when>
            <xsl:when test="$langval='sanie'">ysy</xsl:when>
            <xsl:when test="$langval='talu'">yta</xsl:when>
            <xsl:when test="$langval='tanglang'">ytl</xsl:when>
            <xsl:when test="$langval='thopho'">ytp</xsl:when>
            <xsl:when test="$langval='yout wam'">ytw</xsl:when>
            <xsl:when test="$langval='yatay'">yty</xsl:when>
            <xsl:when test="$langval='yucateco'">yua</xsl:when>
            <xsl:when test="$langval='yugambal'">yub</xsl:when>
            <xsl:when test="$langval='yuchi'">yuc</xsl:when>
            <xsl:when test="$langval='judeo-tripolitanian arabic'">yud</xsl:when>
            <xsl:when test="$langval='yue chinese'">yue</xsl:when>
            <xsl:when test="$langval='havasupai-walapai-yavapai'">yuf</xsl:when>
            <xsl:when test="$langval='yug'">yug</xsl:when>
            <xsl:when test="$langval='yurutí'">yui</xsl:when>
            <xsl:when test="$langval='karkar-yuri'">yuj</xsl:when>
            <xsl:when test="$langval='yuki'">yuk</xsl:when>
            <xsl:when test="$langval='yulu'">yul</xsl:when>
            <xsl:when test="$langval='quechan'">yum</xsl:when>
            <xsl:when test="$langval='bena (nigeria)'">yun</xsl:when>
            <xsl:when test="$langval='yukpa'">yup</xsl:when>
            <xsl:when test="$langval='yuqui'">yuq</xsl:when>
            <xsl:when test="$langval='yurok'">yur</xsl:when>
            <xsl:when test="$langval='yopno'">yut</xsl:when>
            <xsl:when test="$langval='yau (morobe province)'">yuw</xsl:when>
            <xsl:when test="$langval='southern yukaghir'">yux</xsl:when>
            <xsl:when test="$langval='east yugur'">yuy</xsl:when>
            <xsl:when test="$langval='yuracare'">yuz</xsl:when>
            <xsl:when test="$langval='yawa'">yva</xsl:when>
            <xsl:when test="$langval='yavitero'">yvt</xsl:when>
            <xsl:when test="$langval='kalou'">ywa</xsl:when>
            <xsl:when test="$langval='yinhawangka'">ywg</xsl:when>
            <xsl:when test="$langval='western lalu'">ywl</xsl:when>
            <xsl:when test="$langval='yawanawa'">ywn</xsl:when>
            <xsl:when test="$langval='wuding-luquan yi'">ywq</xsl:when>
            <xsl:when test="$langval='yawuru'">ywr</xsl:when>
            <xsl:when test="$langval='xishanba lalo'">ywt</xsl:when>
            <xsl:when test="$langval='wumeng nasu'">ywu</xsl:when>
            <xsl:when test="$langval='yawarawarga'">yww</xsl:when>
            <xsl:when test="$langval='mayawali'">yxa</xsl:when>
            <xsl:when test="$langval='yagara'">yxg</xsl:when>
            <xsl:when test="$langval='yardliyawarra'">yxl</xsl:when>
            <xsl:when test="$langval='yinwum'">yxm</xsl:when>
            <xsl:when test="$langval='yuyu'">yxu</xsl:when>
            <xsl:when test="$langval='yabula yabula'">yxy</xsl:when>
            <xsl:when test="$langval='yir yoront'">yyr</xsl:when>
            <xsl:when test="$langval='yau (sandaun province)'">yyu</xsl:when>
            <xsl:when test="$langval='ayizi'">yyz</xsl:when>
            <xsl:when test="$langval='e''ma buyang'">yzg</xsl:when>
            <xsl:when test="$langval='zokhuo'">yzk</xsl:when>
            <xsl:when test="$langval='sierra de juárez zapotec'">zaa</xsl:when>
            <xsl:when test="$langval='san juan guelavía zapotec'">zab</xsl:when>
            <xsl:when test="$langval='ocotlán zapotec'">zac</xsl:when>
            <xsl:when test="$langval='cajonos zapotec'">zad</xsl:when>
            <xsl:when test="$langval='yareni zapotec'">zae</xsl:when>
            <xsl:when test="$langval='ayoquesco zapotec'">zaf</xsl:when>
            <xsl:when test="$langval='zaghawa'">zag</xsl:when>
            <xsl:when test="$langval='zangwal'">zah</xsl:when>
            <xsl:when test="$langval='isthmus zapotec'">zai</xsl:when>
            <xsl:when test="$langval='zaramo'">zaj</xsl:when>
            <xsl:when test="$langval='zanaki'">zak</xsl:when>
            <xsl:when test="$langval='zauzou'">zal</xsl:when>
            <xsl:when test="$langval='miahuatlán zapotec'">zam</xsl:when>
            <xsl:when test="$langval='ozolotepec zapotec'">zao</xsl:when>
            <xsl:when test="$langval='zapotec'">zap</xsl:when>
            <xsl:when test="$langval='aloápam zapotec'">zaq</xsl:when>
            <xsl:when test="$langval='rincón zapotec'">zar</xsl:when>
            <xsl:when test="$langval='santo domingo albarradas zapotec'">zas</xsl:when>
            <xsl:when test="$langval='tabaa zapotec'">zat</xsl:when>
            <xsl:when test="$langval='zangskari'">zau</xsl:when>
            <xsl:when test="$langval='yatzachi zapotec'">zav</xsl:when>
            <xsl:when test="$langval='mitla zapotec'">zaw</xsl:when>
            <xsl:when test="$langval='xadani zapotec'">zax</xsl:when>
            <xsl:when test="$langval='zayse-zergulla'">zay</xsl:when>
            <xsl:when test="$langval='zari'">zaz</xsl:when>
            <xsl:when test="$langval='central berawan'">zbc</xsl:when>
            <xsl:when test="$langval='east berawan'">zbe</xsl:when>
            <xsl:when test="$langval='blissymbols'">zbl</xsl:when>
            <xsl:when test="$langval='batui'">zbt</xsl:when>
            <xsl:when test="$langval='west berawan'">zbw</xsl:when>
            <xsl:when test="$langval='coatecas altas zapotec'">zca</xsl:when>
            <xsl:when test="$langval='central hongshuihe zhuang'">zch</xsl:when>
            <xsl:when test="$langval='ngazidja comorian'">zdj</xsl:when>
            <xsl:when test="$langval='zeeuws'">zea</xsl:when>
            <xsl:when test="$langval='zenag'">zeg</xsl:when>
            <xsl:when test="$langval='eastern hongshuihe zhuang'">zeh</xsl:when>
            <xsl:when test="$langval='zenaga'">zen</xsl:when>
            <xsl:when test="$langval='kinga'">zga</xsl:when>
            <xsl:when test="$langval='guibei zhuang'">zgb</xsl:when>
            <xsl:when test="$langval='standard moroccan tamazight'">zgh</xsl:when>
            <xsl:when test="$langval='minz zhuang'">zgm</xsl:when>
            <xsl:when test="$langval='guibian zhuang'">zgn</xsl:when>
            <xsl:when test="$langval='magori'">zgr</xsl:when>
            <xsl:when test="$langval='zhuang'">zha</xsl:when>
            <xsl:when test="$langval='zhaba'">zhb</xsl:when>
            <xsl:when test="$langval='dai zhuang'">zhd</xsl:when>
            <xsl:when test="$langval='zhire'">zhi</xsl:when>
            <xsl:when test="$langval='nong zhuang'">zhn</xsl:when>
            <xsl:when test="$langval='chinese'">zho</xsl:when>
            <xsl:when test="$langval='zhoa'">zhw</xsl:when>
            <xsl:when test="$langval='zia'">zia</xsl:when>
            <xsl:when test="$langval='zimbabwe sign language'">zib</xsl:when>
            <xsl:when test="$langval='zimakani'">zik</xsl:when>
            <xsl:when test="$langval='zialo'">zil</xsl:when>
            <xsl:when test="$langval='mesme'">zim</xsl:when>
            <xsl:when test="$langval='zinza'">zin</xsl:when>
            <xsl:when test="$langval='ziriya'">zir</xsl:when>
            <xsl:when test="$langval='zigula'">ziw</xsl:when>
            <xsl:when test="$langval='zizilivakan'">ziz</xsl:when>
            <xsl:when test="$langval='kaimbulawa'">zka</xsl:when>
            <xsl:when test="$langval='koibal'">zkb</xsl:when>
            <xsl:when test="$langval='kadu'">zkd</xsl:when>
            <xsl:when test="$langval='koguryo'">zkg</xsl:when>
            <xsl:when test="$langval='khorezmian'">zkh</xsl:when>
            <xsl:when test="$langval='karankawa'">zkk</xsl:when>
            <xsl:when test="$langval='kanan'">zkn</xsl:when>
            <xsl:when test="$langval='kott'">zko</xsl:when>
            <xsl:when test="$langval='são paulo kaingáng'">zkp</xsl:when>
            <xsl:when test="$langval='zakhring'">zkr</xsl:when>
            <xsl:when test="$langval='kitan'">zkt</xsl:when>
            <xsl:when test="$langval='kaurna'">zku</xsl:when>
            <xsl:when test="$langval='krevinian'">zkv</xsl:when>
            <xsl:when test="$langval='khazar'">zkz</xsl:when>
            <xsl:when test="$langval='liujiang zhuang'">zlj</xsl:when>
            <xsl:when test="$langval='malay (individual language)'">zlm</xsl:when>
            <xsl:when test="$langval='lianshan zhuang'">zln</xsl:when>
            <xsl:when test="$langval='liuqian zhuang'">zlq</xsl:when>
            <xsl:when test="$langval='manda (australia)'">zma</xsl:when>
            <xsl:when test="$langval='zimba'">zmb</xsl:when>
            <xsl:when test="$langval='margany'">zmc</xsl:when>
            <xsl:when test="$langval='maridan'">zmd</xsl:when>
            <xsl:when test="$langval='mangerr'">zme</xsl:when>
            <xsl:when test="$langval='mfinu'">zmf</xsl:when>
            <xsl:when test="$langval='marti ke'">zmg</xsl:when>
            <xsl:when test="$langval='makolkol'">zmh</xsl:when>
            <xsl:when test="$langval='negeri sembilan malay'">zmi</xsl:when>
            <xsl:when test="$langval='maridjabin'">zmj</xsl:when>
            <xsl:when test="$langval='mandandanyi'">zmk</xsl:when>
            <xsl:when test="$langval='madngele'">zml</xsl:when>
            <xsl:when test="$langval='marimanindji'">zmm</xsl:when>
            <xsl:when test="$langval='mbangwe'">zmn</xsl:when>
            <xsl:when test="$langval='molo'">zmo</xsl:when>
            <xsl:when test="$langval='mpuono'">zmp</xsl:when>
            <xsl:when test="$langval='mituku'">zmq</xsl:when>
            <xsl:when test="$langval='maranunggu'">zmr</xsl:when>
            <xsl:when test="$langval='mbesa'">zms</xsl:when>
            <xsl:when test="$langval='maringarr'">zmt</xsl:when>
            <xsl:when test="$langval='muruwari'">zmu</xsl:when>
            <xsl:when test="$langval='mbariman-gudhinma'">zmv</xsl:when>
            <xsl:when test="$langval='mbo (democratic republic of congo)'">zmw</xsl:when>
            <xsl:when test="$langval='bomitaba'">zmx</xsl:when>
            <xsl:when test="$langval='mariyedi'">zmy</xsl:when>
            <xsl:when test="$langval='mbandja'">zmz</xsl:when>
            <xsl:when test="$langval='zan gula'">zna</xsl:when>
            <xsl:when test="$langval='zande (individual language)'">zne</xsl:when>
            <xsl:when test="$langval='mang'">zng</xsl:when>
            <xsl:when test="$langval='manangkari'">znk</xsl:when>
            <xsl:when test="$langval='mangas'">zns</xsl:when>
            <xsl:when test="$langval='copainalá zoque'">zoc</xsl:when>
            <xsl:when test="$langval='chimalapa zoque'">zoh</xsl:when>
            <xsl:when test="$langval='zou'">zom</xsl:when>
            <xsl:when test="$langval='asunción mixtepec zapotec'">zoo</xsl:when>
            <xsl:when test="$langval='tabasco zoque'">zoq</xsl:when>
            <xsl:when test="$langval='rayón zoque'">zor</xsl:when>
            <xsl:when test="$langval='francisco león zoque'">zos</xsl:when>
            <xsl:when test="$langval='lachiguiri zapotec'">zpa</xsl:when>
            <xsl:when test="$langval='yautepec zapotec'">zpb</xsl:when>
            <xsl:when test="$langval='choapan zapotec'">zpc</xsl:when>
            <xsl:when test="$langval='southeastern ixtlán zapotec'">zpd</xsl:when>
            <xsl:when test="$langval='petapa zapotec'">zpe</xsl:when>
            <xsl:when test="$langval='san pedro quiatoni zapotec'">zpf</xsl:when>
            <xsl:when test="$langval='guevea de humboldt zapotec'">zpg</xsl:when>
            <xsl:when test="$langval='totomachapan zapotec'">zph</xsl:when>
            <xsl:when test="$langval='santa maría quiegolani zapotec'">zpi</xsl:when>
            <xsl:when test="$langval='quiavicuzas zapotec'">zpj</xsl:when>
            <xsl:when test="$langval='tlacolulita zapotec'">zpk</xsl:when>
            <xsl:when test="$langval='lachixío zapotec'">zpl</xsl:when>
            <xsl:when test="$langval='mixtepec zapotec'">zpm</xsl:when>
            <xsl:when test="$langval='santa inés yatzechi zapotec'">zpn</xsl:when>
            <xsl:when test="$langval='amatlán zapotec'">zpo</xsl:when>
            <xsl:when test="$langval='el alto zapotec'">zpp</xsl:when>
            <xsl:when test="$langval='zoogocho zapotec'">zpq</xsl:when>
            <xsl:when test="$langval='santiago xanica zapotec'">zpr</xsl:when>
            <xsl:when test="$langval='coatlán zapotec'">zps</xsl:when>
            <xsl:when test="$langval='san vicente coatlán zapotec'">zpt</xsl:when>
            <xsl:when test="$langval='yalálag zapotec'">zpu</xsl:when>
            <xsl:when test="$langval='chichicapan zapotec'">zpv</xsl:when>
            <xsl:when test="$langval='zaniza zapotec'">zpw</xsl:when>
            <xsl:when test="$langval='san baltazar loxicha zapotec'">zpx</xsl:when>
            <xsl:when test="$langval='mazaltepec zapotec'">zpy</xsl:when>
            <xsl:when test="$langval='texmelucan zapotec'">zpz</xsl:when>
            <xsl:when test="$langval='qiubei zhuang'">zqe</xsl:when>
            <xsl:when test="$langval='kara (korea)'">zra</xsl:when>
            <xsl:when test="$langval='mirgan'">zrg</xsl:when>
            <xsl:when test="$langval='zerenkel'">zrn</xsl:when>
            <xsl:when test="$langval='záparo'">zro</xsl:when>
            <xsl:when test="$langval='zarphatic'">zrp</xsl:when>
            <xsl:when test="$langval='mairasi'">zrs</xsl:when>
            <xsl:when test="$langval='sarasira'">zsa</xsl:when>
            <xsl:when test="$langval='kaskean'">zsk</xsl:when>
            <xsl:when test="$langval='zambian sign language'">zsl</xsl:when>
            <xsl:when test="$langval='standard malay'">zsm</xsl:when>
            <xsl:when test="$langval='southern rincon zapotec'">zsr</xsl:when>
            <xsl:when test="$langval='sukurum'">zsu</xsl:when>
            <xsl:when test="$langval='elotepec zapotec'">zte</xsl:when>
            <xsl:when test="$langval='xanaguía zapotec'">ztg</xsl:when>
            <xsl:when test="$langval='lapaguía-guivini zapotec'">ztl</xsl:when>
            <xsl:when test="$langval='san agustín mixtepec zapotec'">ztm</xsl:when>
            <xsl:when test="$langval='santa catarina albarradas zapotec'">ztn</xsl:when>
            <xsl:when test="$langval='loxicha zapotec'">ztp</xsl:when>
            <xsl:when test="$langval='quioquitani-quierí zapotec'">ztq</xsl:when>
            <xsl:when test="$langval='tilquiapan zapotec'">zts</xsl:when>
            <xsl:when test="$langval='tejalapan zapotec'">ztt</xsl:when>
            <xsl:when test="$langval='güilá zapotec'">ztu</xsl:when>
            <xsl:when test="$langval='zaachila zapotec'">ztx</xsl:when>
            <xsl:when test="$langval='yatee zapotec'">zty</xsl:when>
            <xsl:when test="$langval='zeem'">zua</xsl:when>
            <xsl:when test="$langval='tokano'">zuh</xsl:when>
            <xsl:when test="$langval='zulu'">zul</xsl:when>
            <xsl:when test="$langval='kumzari'">zum</xsl:when>
            <xsl:when test="$langval='zuni'">zun</xsl:when>
            <xsl:when test="$langval='zumaya'">zuy</xsl:when>
            <xsl:when test="$langval='zay'">zwa</xsl:when>
            <xsl:when test="$langval='no linguistic content'">zxx</xsl:when>
            <xsl:when test="$langval='yongbei zhuang'">zyb</xsl:when>
            <xsl:when test="$langval='yang zhuang'">zyg</xsl:when>
            <xsl:when test="$langval='youjiang zhuang'">zyj</xsl:when>
            <xsl:when test="$langval='yongnan zhuang'">zyn</xsl:when>
            <xsl:when test="$langval='zyphe chin'">zyp</xsl:when>
            <xsl:when test="$langval='zaza'">zza</xsl:when>
            <xsl:when test="$langval='zuojiang zhuang'">zzj</xsl:when>
            <xsl:otherwise><xsl:value-of select="$langval"></xsl:value-of></xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="iso6392-codes">
        <xsl:param name="lval"/>
        <xsl:variable name="langval" select="lower-case($lval)"/>
        <xsl:choose>
            <xsl:when test="contains($langval, 'afar')">aar</xsl:when>
            <xsl:when test="contains($langval, 'abkhazian')">abk</xsl:when>
            <xsl:when test="contains($langval, 'achinese')">ace</xsl:when>
            <xsl:when test="contains($langval, 'acoli')">ach</xsl:when>
            <xsl:when test="contains($langval, 'adangme')">ada</xsl:when>
            <xsl:when test="contains($langval, 'adyghe')">ady</xsl:when>
            <xsl:when test="contains($langval, 'afrihili')">afh</xsl:when>
            <xsl:when test="contains($langval, 'afrikaans')">afr</xsl:when>
            <xsl:when test="contains($langval, 'ainu (japan)')">ain</xsl:when>
            <xsl:when test="contains($langval, 'akan')">aka</xsl:when>
            <xsl:when test="contains($langval, 'akkadian')">akk</xsl:when>
            <xsl:when test="contains($langval, 'aleut')">ale</xsl:when>
            <xsl:when test="contains($langval, 'southern altai')">alt</xsl:when>
            <xsl:when test="contains($langval, 'amharic')">amh</xsl:when>
            <xsl:when test="contains($langval, 'old english (ca. 450-1100)')">ang</xsl:when>
            <xsl:when test="contains($langval, 'angika')">anp</xsl:when>
            <xsl:when test="contains($langval, 'arabic')">ara</xsl:when>
            <xsl:when test="contains($langval, 'official aramaic (700-300 bce)')">arc</xsl:when>
            <xsl:when test="contains($langval, 'aragonese')">arg</xsl:when>
            <xsl:when test="contains($langval, 'mapudungun')">arn</xsl:when>
            <xsl:when test="contains($langval, 'arapaho')">arp</xsl:when>
            <xsl:when test="contains($langval, 'arawak')">arw</xsl:when>
            <xsl:when test="contains($langval, 'assamese')">asm</xsl:when>
            <xsl:when test="contains($langval, 'asturian')">ast</xsl:when>
            <xsl:when test="contains($langval, 'avaric')">ava</xsl:when>
            <xsl:when test="contains($langval, 'avestan')">ave</xsl:when>
            <xsl:when test="contains($langval, 'awadhi')">awa</xsl:when>
            <xsl:when test="contains($langval, 'aymara')">aym</xsl:when>
            <xsl:when test="contains($langval, 'azerbaijani')">aze</xsl:when>
            <xsl:when test="contains($langval, 'bashkir')">bak</xsl:when>
            <xsl:when test="contains($langval, 'baluchi')">bal</xsl:when>
            <xsl:when test="contains($langval, 'bambara')">bam</xsl:when>
            <xsl:when test="contains($langval, 'balinese')">ban</xsl:when>
            <xsl:when test="contains($langval, 'basa (cameroon)')">bas</xsl:when>
            <xsl:when test="contains($langval, 'beja')">bej</xsl:when>
            <xsl:when test="contains($langval, 'belarusian')">bel</xsl:when>
            <xsl:when test="contains($langval, 'bemba (zambia)')">bem</xsl:when>
            <xsl:when test="contains($langval, 'bengali')">ben</xsl:when>
            <xsl:when test="contains($langval, 'bhojpuri')">bho</xsl:when>
            <xsl:when test="contains($langval, 'bikol')">bik</xsl:when>
            <xsl:when test="contains($langval, 'bini')">bin</xsl:when>
            <xsl:when test="contains($langval, 'bislama')">bis</xsl:when>
            <xsl:when test="contains($langval, 'siksika')">bla</xsl:when>
            <xsl:when test="contains($langval, 'tibetan')">tib</xsl:when>
            <xsl:when test="contains($langval, 'bosnian')">bos</xsl:when>
            <xsl:when test="contains($langval, 'braj')">bra</xsl:when>
            <xsl:when test="contains($langval, 'breton')">bre</xsl:when>
            <xsl:when test="contains($langval, 'buriat')">bua</xsl:when>
            <xsl:when test="contains($langval, 'buginese')">bug</xsl:when>
            <xsl:when test="contains($langval, 'bulgarian')">bul</xsl:when>
            <xsl:when test="contains($langval, 'bilin')">byn</xsl:when>
            <xsl:when test="contains($langval, 'caddo')">cad</xsl:when>
            <xsl:when test="contains($langval, 'galibi carib')">car</xsl:when>
            <xsl:when test="contains($langval, 'catalan')">cat</xsl:when>
            <xsl:when test="contains($langval, 'cebuano')">ceb</xsl:when>
            <xsl:when test="contains($langval, 'czech')">cze</xsl:when>
            <xsl:when test="contains($langval, 'chamorro')">cha</xsl:when>
            <xsl:when test="contains($langval, 'chibcha')">chb</xsl:when>
            <xsl:when test="contains($langval, 'chechen')">che</xsl:when>
            <xsl:when test="contains($langval, 'chagatai')">chg</xsl:when>
            <xsl:when test="contains($langval, 'chuukese')">chk</xsl:when>
            <xsl:when test="contains($langval, 'mari (russia)')">chm</xsl:when>
            <xsl:when test="contains($langval, 'chinook jargon')">chn</xsl:when>
            <xsl:when test="contains($langval, 'choctaw')">cho</xsl:when>
            <xsl:when test="contains($langval, 'chipewyan')">chp</xsl:when>
            <xsl:when test="contains($langval, 'cherokee')">chr</xsl:when>
            <xsl:when test="contains($langval, 'church slavic')">chu</xsl:when>
            <xsl:when test="contains($langval, 'chuvash')">chv</xsl:when>
            <xsl:when test="contains($langval, 'cheyenne')">chy</xsl:when>
            <xsl:when test="contains($langval, 'coptic')">cop</xsl:when>
            <xsl:when test="contains($langval, 'cornish')">cor</xsl:when>
            <xsl:when test="contains($langval, 'corsican')">cos</xsl:when>
            <xsl:when test="contains($langval, 'cree')">cre</xsl:when>
            <xsl:when test="contains($langval, 'crimean tatar')">crh</xsl:when>
            <xsl:when test="contains($langval, 'kashubian')">csb</xsl:when>
            <xsl:when test="contains($langval, 'welsh')">wel</xsl:when>
            <xsl:when test="contains($langval, 'dakota')">dak</xsl:when>
            <xsl:when test="contains($langval, 'danish')">dan</xsl:when>
            <xsl:when test="contains($langval, 'dargwa')">dar</xsl:when>
            <xsl:when test="contains($langval, 'delaware')">del</xsl:when>
            <xsl:when test="contains($langval, 'slave (athapascan)')">den</xsl:when>
            <xsl:when test="contains($langval, 'german')">ger</xsl:when>
            <xsl:when test="contains($langval, 'dogrib')">dgr</xsl:when>
            <xsl:when test="contains($langval, 'dinka')">din</xsl:when>
            <xsl:when test="contains($langval, 'dhivehi')">div</xsl:when>
            <xsl:when test="contains($langval, 'dogri (macrolanguage)')">doi</xsl:when>
            <xsl:when test="contains($langval, 'lower sorbian')">dsb</xsl:when>
            <xsl:when test="contains($langval, 'duala')">dua</xsl:when>
            <xsl:when test="contains($langval, 'middle dutch (ca. 1050-1350)')">dum</xsl:when>
            <xsl:when test="contains($langval, 'dyula')">dyu</xsl:when>
            <xsl:when test="contains($langval, 'dzongkha')">dzo</xsl:when>
            <xsl:when test="contains($langval, 'efik')">efi</xsl:when>
            <xsl:when test="contains($langval, 'egyptian (ancient)')">egy</xsl:when>
            <xsl:when test="contains($langval, 'ekajuk')">eka</xsl:when>
            <xsl:when test="contains($langval, 'modern greek (1453-)')">gre</xsl:when>
            <xsl:when test="contains($langval, 'elamite')">elx</xsl:when>
            <xsl:when test="contains($langval, 'english')">eng</xsl:when>
            <xsl:when test="contains($langval, 'middle english (1100-1500)')">enm</xsl:when>
            <xsl:when test="contains($langval, 'esperanto')">epo</xsl:when>
            <xsl:when test="contains($langval, 'estonian')">est</xsl:when>
            <xsl:when test="contains($langval, 'basque')">baq</xsl:when>
            <xsl:when test="contains($langval, 'ewe')">ewe</xsl:when>
            <xsl:when test="contains($langval, 'ewondo')">ewo</xsl:when>
            <xsl:when test="contains($langval, 'fang (equatorial guinea)')">fan</xsl:when>
            <xsl:when test="contains($langval, 'faroese')">fao</xsl:when>
            <xsl:when test="contains($langval, 'persian')">per</xsl:when>
            <xsl:when test="contains($langval, 'fanti')">fat</xsl:when>
            <xsl:when test="contains($langval, 'fijian')">fij</xsl:when>
            <xsl:when test="contains($langval, 'filipino')">fil</xsl:when>
            <xsl:when test="contains($langval, 'finnish')">fin</xsl:when>
            <xsl:when test="contains($langval, 'fon')">fon</xsl:when>
            <xsl:when test="contains($langval, 'french')">fre</xsl:when>
            <xsl:when test="contains($langval, 'middle french (ca. 1400-1600)')">frm</xsl:when>
            <xsl:when test="contains($langval, 'old french (842-ca. 1400)')">fro</xsl:when>
            <xsl:when test="contains($langval, 'northern frisian')">frr</xsl:when>
            <xsl:when test="contains($langval, 'eastern frisian')">frs</xsl:when>
            <xsl:when test="contains($langval, 'western frisian')">fry</xsl:when>
            <xsl:when test="contains($langval, 'fulah')">ful</xsl:when>
            <xsl:when test="contains($langval, 'friulian')">fur</xsl:when>
            <xsl:when test="contains($langval, 'ga')">gaa</xsl:when>
            <xsl:when test="contains($langval, 'gayo')">gay</xsl:when>
            <xsl:when test="contains($langval, 'gbaya (central african republic)')">gba</xsl:when>
            <xsl:when test="contains($langval, 'geez')">gez</xsl:when>
            <xsl:when test="contains($langval, 'gilbertese')">gil</xsl:when>
            <xsl:when test="contains($langval, 'scottish gaelic')">gla</xsl:when>
            <xsl:when test="contains($langval, 'irish')">gle</xsl:when>
            <xsl:when test="contains($langval, 'galician')">glg</xsl:when>
            <xsl:when test="contains($langval, 'manx')">glv</xsl:when>
            <xsl:when test="contains($langval, 'middle high german (ca. 1050-1500)')">gmh</xsl:when>
            <xsl:when test="contains($langval, 'old high german (ca. 750-1050)')">goh</xsl:when>
            <xsl:when test="contains($langval, 'gondi')">gon</xsl:when>
            <xsl:when test="contains($langval, 'gorontalo')">gor</xsl:when>
            <xsl:when test="contains($langval, 'gothic')">got</xsl:when>
            <xsl:when test="contains($langval, 'grebo')">grb</xsl:when>
            <xsl:when test="contains($langval, 'ancient greek (to 1453)')">grc</xsl:when>
            <xsl:when test="contains($langval, 'guarani')">grn</xsl:when>
            <xsl:when test="contains($langval, 'swiss german')">gsw</xsl:when>
            <xsl:when test="contains($langval, 'gujarati')">guj</xsl:when>
            <xsl:when test="contains($langval, 'gwichʼin')">gwi</xsl:when>
            <xsl:when test="contains($langval, 'haida')">hai</xsl:when>
            <xsl:when test="contains($langval, 'haitian')">hat</xsl:when>
            <xsl:when test="contains($langval, 'hausa')">hau</xsl:when>
            <xsl:when test="contains($langval, 'hawaiian')">haw</xsl:when>
            <xsl:when test="contains($langval, 'hebrew')">heb</xsl:when>
            <xsl:when test="contains($langval, 'herero')">her</xsl:when>
            <xsl:when test="contains($langval, 'hiligaynon')">hil</xsl:when>
            <xsl:when test="contains($langval, 'hindi')">hin</xsl:when>
            <xsl:when test="contains($langval, 'hittite')">hit</xsl:when>
            <xsl:when test="contains($langval, 'hmong')">hmn</xsl:when>
            <xsl:when test="contains($langval, 'hiri motu')">hmo</xsl:when>
            <xsl:when test="contains($langval, 'croatian')">hrv</xsl:when>
            <xsl:when test="contains($langval, 'upper sorbian')">hsb</xsl:when>
            <xsl:when test="contains($langval, 'hungarian')">hun</xsl:when>
            <xsl:when test="contains($langval, 'hupa')">hup</xsl:when>
            <xsl:when test="contains($langval, 'armenian')">arm</xsl:when>
            <xsl:when test="contains($langval, 'iban')">iba</xsl:when>
            <xsl:when test="contains($langval, 'igbo')">ibo</xsl:when>
            <xsl:when test="contains($langval, 'ido')">ido</xsl:when>
            <xsl:when test="contains($langval, 'sichuan yi')">iii</xsl:when>
            <xsl:when test="contains($langval, 'inuktitut')">iku</xsl:when>
            <xsl:when test="contains($langval, 'interlingue')">ile</xsl:when>
            <xsl:when test="contains($langval, 'iloko')">ilo</xsl:when>
            <xsl:when test="contains($langval, 'interlingua (international auxiliary language association)')">ina</xsl:when>
            <xsl:when test="contains($langval, 'indonesian')">ind</xsl:when>
            <xsl:when test="contains($langval, 'ingush')">inh</xsl:when>
            <xsl:when test="contains($langval, 'inupiaq')">ipk</xsl:when>
            <xsl:when test="contains($langval, 'icelandic')">ice</xsl:when>
            <xsl:when test="contains($langval, 'italian')">ita</xsl:when>
            <xsl:when test="contains($langval, 'javanese')">jav</xsl:when>
            <xsl:when test="contains($langval, 'lojban')">jbo</xsl:when>
            <xsl:when test="contains($langval, 'japanese')">jpn</xsl:when>
            <xsl:when test="contains($langval, 'judeo-persian')">jpr</xsl:when>
            <xsl:when test="contains($langval, 'judeo-arabic')">jrb</xsl:when>
            <xsl:when test="contains($langval, 'kara-kalpak')">kaa</xsl:when>
            <xsl:when test="contains($langval, 'kabyle')">kab</xsl:when>
            <xsl:when test="contains($langval, 'kachin')">kac</xsl:when>
            <xsl:when test="contains($langval, 'kalaallisut')">kal</xsl:when>
            <xsl:when test="contains($langval, 'kamba (kenya)')">kam</xsl:when>
            <xsl:when test="contains($langval, 'kannada')">kan</xsl:when>
            <xsl:when test="contains($langval, 'kashmiri')">kas</xsl:when>
            <xsl:when test="contains($langval, 'georgian')">geo</xsl:when>
            <xsl:when test="contains($langval, 'kanuri')">kau</xsl:when>
            <xsl:when test="contains($langval, 'kawi')">kaw</xsl:when>
            <xsl:when test="contains($langval, 'kazakh')">kaz</xsl:when>
            <xsl:when test="contains($langval, 'kabardian')">kbd</xsl:when>
            <xsl:when test="contains($langval, 'khasi')">kha</xsl:when>
            <xsl:when test="contains($langval, 'central khmer')">khm</xsl:when>
            <xsl:when test="contains($langval, 'khotanese')">kho</xsl:when>
            <xsl:when test="contains($langval, 'kikuyu')">kik</xsl:when>
            <xsl:when test="contains($langval, 'kinyarwanda')">kin</xsl:when>
            <xsl:when test="contains($langval, 'kirghiz')">kir</xsl:when>
            <xsl:when test="contains($langval, 'kimbundu')">kmb</xsl:when>
            <xsl:when test="contains($langval, 'konkani (macrolanguage)')">kok</xsl:when>
            <xsl:when test="contains($langval, 'komi')">kom</xsl:when>
            <xsl:when test="contains($langval, 'kongo')">kon</xsl:when>
            <xsl:when test="contains($langval, 'korean')">kor</xsl:when>
            <xsl:when test="contains($langval, 'kosraean')">kos</xsl:when>
            <xsl:when test="contains($langval, 'kpelle')">kpe</xsl:when>
            <xsl:when test="contains($langval, 'karachay-balkar')">krc</xsl:when>
            <xsl:when test="contains($langval, 'karelian')">krl</xsl:when>
            <xsl:when test="contains($langval, 'kurukh')">kru</xsl:when>
            <xsl:when test="contains($langval, 'kuanyama')">kua</xsl:when>
            <xsl:when test="contains($langval, 'kumyk')">kum</xsl:when>
            <xsl:when test="contains($langval, 'kurdish')">kur</xsl:when>
            <xsl:when test="contains($langval, 'kutenai')">kut</xsl:when>
            <xsl:when test="contains($langval, 'ladino')">lad</xsl:when>
            <xsl:when test="contains($langval, 'lahnda')">lah</xsl:when>
            <xsl:when test="contains($langval, 'lamba')">lam</xsl:when>
            <xsl:when test="contains($langval, 'lao')">lao</xsl:when>
            <xsl:when test="contains($langval, 'latin')">lat</xsl:when>
            <xsl:when test="contains($langval, 'latvian')">lav</xsl:when>
            <xsl:when test="contains($langval, 'lezghian')">lez</xsl:when>
            <xsl:when test="contains($langval, 'limburgan')">lim</xsl:when>
            <xsl:when test="contains($langval, 'lingala')">lin</xsl:when>
            <xsl:when test="contains($langval, 'lithuanian')">lit</xsl:when>
            <xsl:when test="contains($langval, 'mongo')">lol</xsl:when>
            <xsl:when test="contains($langval, 'lozi')">loz</xsl:when>
            <xsl:when test="contains($langval, 'luxembourgish')">ltz</xsl:when>
            <xsl:when test="contains($langval, 'luba-lulua')">lua</xsl:when>
            <xsl:when test="contains($langval, 'luba-katanga')">lub</xsl:when>
            <xsl:when test="contains($langval, 'ganda')">lug</xsl:when>
            <xsl:when test="contains($langval, 'luiseno')">lui</xsl:when>
            <xsl:when test="contains($langval, 'lunda')">lun</xsl:when>
            <xsl:when test="contains($langval, 'luo (kenya and tanzania)')">luo</xsl:when>
            <xsl:when test="contains($langval, 'lushai')">lus</xsl:when>
            <xsl:when test="contains($langval, 'madurese')">mad</xsl:when>
            <xsl:when test="contains($langval, 'magahi')">mag</xsl:when>
            <xsl:when test="contains($langval, 'marshallese')">mah</xsl:when>
            <xsl:when test="contains($langval, 'maithili')">mai</xsl:when>
            <xsl:when test="contains($langval, 'makasar')">mak</xsl:when>
            <xsl:when test="contains($langval, 'malayalam')">mal</xsl:when>
            <xsl:when test="contains($langval, 'mandingo')">man</xsl:when>
            <xsl:when test="contains($langval, 'marathi')">mar</xsl:when>
            <xsl:when test="contains($langval, 'masai')">mas</xsl:when>
            <xsl:when test="contains($langval, 'moksha')">mdf</xsl:when>
            <xsl:when test="contains($langval, 'mandar')">mdr</xsl:when>
            <xsl:when test="contains($langval, 'mende (sierra leone)')">men</xsl:when>
            <xsl:when test="contains($langval, 'middle irish (900-1200)')">mga</xsl:when>
            <xsl:when test="contains($langval, 'mi''kmaq')">mic</xsl:when>
            <xsl:when test="contains($langval, 'minangkabau')">min</xsl:when>
            <xsl:when test="contains($langval, 'uncoded languages')">mis</xsl:when>
            <xsl:when test="contains($langval, 'macedonian')">mac</xsl:when>
            <xsl:when test="contains($langval, 'malagasy')">mlg</xsl:when>
            <xsl:when test="contains($langval, 'maltese')">mlt</xsl:when>
            <xsl:when test="contains($langval, 'manchu')">mnc</xsl:when>
            <xsl:when test="contains($langval, 'manipuri')">mni</xsl:when>
            <xsl:when test="contains($langval, 'mohawk')">moh</xsl:when>
            <xsl:when test="contains($langval, 'mongolian')">mon</xsl:when>
            <xsl:when test="contains($langval, 'mossi')">mos</xsl:when>
            <xsl:when test="contains($langval, 'maori')">mao</xsl:when>
            <xsl:when test="contains($langval, 'malay (macrolanguage)')">may</xsl:when>
            <xsl:when test="contains($langval, 'multiple languages')">mul</xsl:when>
            <xsl:when test="contains($langval, 'creek')">mus</xsl:when>
            <xsl:when test="contains($langval, 'mirandese')">mwl</xsl:when>
            <xsl:when test="contains($langval, 'marwari')">mwr</xsl:when>
            <xsl:when test="contains($langval, 'burmese')">bur</xsl:when>
            <xsl:when test="contains($langval, 'erzya')">myv</xsl:when>
            <xsl:when test="contains($langval, 'neapolitan')">nap</xsl:when>
            <xsl:when test="contains($langval, 'nauru')">nau</xsl:when>
            <xsl:when test="contains($langval, 'navajo')">nav</xsl:when>
            <xsl:when test="contains($langval, 'south ndebele')">nbl</xsl:when>
            <xsl:when test="contains($langval, 'north ndebele')">nde</xsl:when>
            <xsl:when test="contains($langval, 'ndonga')">ndo</xsl:when>
            <xsl:when test="contains($langval, 'low german')">nds</xsl:when>
            <xsl:when test="contains($langval, 'nepali (macrolanguage)')">nep</xsl:when>
            <xsl:when test="contains($langval, 'newari')">new</xsl:when>
            <xsl:when test="contains($langval, 'nias')">nia</xsl:when>
            <xsl:when test="contains($langval, 'niuean')">niu</xsl:when>
            <xsl:when test="contains($langval, 'dutch')">dut</xsl:when>
            <xsl:when test="contains($langval, 'norwegian nynorsk')">nno</xsl:when>
            <xsl:when test="contains($langval, 'norwegian bokmål')">nob</xsl:when>
            <xsl:when test="contains($langval, 'nogai')">nog</xsl:when>
            <xsl:when test="contains($langval, 'old norse')">non</xsl:when>
            <xsl:when test="contains($langval, 'norwegian')">nor</xsl:when>
            <xsl:when test="contains($langval, 'n''ko')">nqo</xsl:when>
            <xsl:when test="contains($langval, 'pedi')">nso</xsl:when>
            <xsl:when test="contains($langval, 'classical newari')">nwc</xsl:when>
            <xsl:when test="contains($langval, 'nyanja')">nya</xsl:when>
            <xsl:when test="contains($langval, 'nyamwezi')">nym</xsl:when>
            <xsl:when test="contains($langval, 'nyankole')">nyn</xsl:when>
            <xsl:when test="contains($langval, 'nyoro')">nyo</xsl:when>
            <xsl:when test="contains($langval, 'nzima')">nzi</xsl:when>
            <xsl:when test="contains($langval, 'occitan (post 1500)')">oci</xsl:when>
            <xsl:when test="contains($langval, 'ojibwa')">oji</xsl:when>
            <xsl:when test="contains($langval, 'oriya (macrolanguage)')">ori</xsl:when>
            <xsl:when test="contains($langval, 'oromo')">orm</xsl:when>
            <xsl:when test="contains($langval, 'osage')">osa</xsl:when>
            <xsl:when test="contains($langval, 'ossetian')">oss</xsl:when>
            <xsl:when test="contains($langval, 'ottoman turkish (1500-1928)')">ota</xsl:when>
            <xsl:when test="contains($langval, 'pangasinan')">pag</xsl:when>
            <xsl:when test="contains($langval, 'pahlavi')">pal</xsl:when>
            <xsl:when test="contains($langval, 'pampanga')">pam</xsl:when>
            <xsl:when test="contains($langval, 'panjabi')">pan</xsl:when>
            <xsl:when test="contains($langval, 'papiamento')">pap</xsl:when>
            <xsl:when test="contains($langval, 'palauan')">pau</xsl:when>
            <xsl:when test="contains($langval, 'old persian (ca. 600-400 b.c.)')">peo</xsl:when>
            <xsl:when test="contains($langval, 'phoenician')">phn</xsl:when>
            <xsl:when test="contains($langval, 'pali')">pli</xsl:when>
            <xsl:when test="contains($langval, 'polish')">pol</xsl:when>
            <xsl:when test="contains($langval, 'pohnpeian')">pon</xsl:when>
            <xsl:when test="contains($langval, 'portuguese')">por</xsl:when>
            <xsl:when test="contains($langval, 'old provençal (to 1500)')">pro</xsl:when>
            <xsl:when test="contains($langval, 'pushto')">pus</xsl:when>
            <xsl:when test="contains($langval, 'quechua')">que</xsl:when>
            <xsl:when test="contains($langval, 'rajasthani')">raj</xsl:when>
            <xsl:when test="contains($langval, 'rapanui')">rap</xsl:when>
            <xsl:when test="contains($langval, 'rarotongan')">rar</xsl:when>
            <xsl:when test="contains($langval, 'romansh')">roh</xsl:when>
            <xsl:when test="contains($langval, 'romany')">rom</xsl:when>
            <xsl:when test="contains($langval, 'romanian')">rum</xsl:when>
            <xsl:when test="contains($langval, 'rundi')">run</xsl:when>
            <xsl:when test="contains($langval, 'macedo-romanian')">rup</xsl:when>
            <xsl:when test="contains($langval, 'russian')">rus</xsl:when>
            <xsl:when test="contains($langval, 'sandawe')">sad</xsl:when>
            <xsl:when test="contains($langval, 'sango')">sag</xsl:when>
            <xsl:when test="contains($langval, 'yakut')">sah</xsl:when>
            <xsl:when test="contains($langval, 'samaritan aramaic')">sam</xsl:when>
            <xsl:when test="contains($langval, 'sanskrit')">san</xsl:when>
            <xsl:when test="contains($langval, 'sasak')">sas</xsl:when>
            <xsl:when test="contains($langval, 'santali')">sat</xsl:when>
            <xsl:when test="contains($langval, 'sicilian')">scn</xsl:when>
            <xsl:when test="contains($langval, 'scots')">sco</xsl:when>
            <xsl:when test="contains($langval, 'selkup')">sel</xsl:when>
            <xsl:when test="contains($langval, 'old irish (to 900)')">sga</xsl:when>
            <xsl:when test="contains($langval, 'shan')">shn</xsl:when>
            <xsl:when test="contains($langval, 'sidamo')">sid</xsl:when>
            <xsl:when test="contains($langval, 'sinhala')">sin</xsl:when>
            <xsl:when test="contains($langval, 'slovak')">slo</xsl:when>
            <xsl:when test="contains($langval, 'slovenian')">slv</xsl:when>
            <xsl:when test="contains($langval, 'southern sami')">sma</xsl:when>
            <xsl:when test="contains($langval, 'northern sami')">sme</xsl:when>
            <xsl:when test="contains($langval, 'lule sami')">smj</xsl:when>
            <xsl:when test="contains($langval, 'inari sami')">smn</xsl:when>
            <xsl:when test="contains($langval, 'samoan')">smo</xsl:when>
            <xsl:when test="contains($langval, 'skolt sami')">sms</xsl:when>
            <xsl:when test="contains($langval, 'shona')">sna</xsl:when>
            <xsl:when test="contains($langval, 'sindhi')">snd</xsl:when>
            <xsl:when test="contains($langval, 'soninke')">snk</xsl:when>
            <xsl:when test="contains($langval, 'sogdian')">sog</xsl:when>
            <xsl:when test="contains($langval, 'somali')">som</xsl:when>
            <xsl:when test="contains($langval, 'southern sotho')">sot</xsl:when>
            <xsl:when test="contains($langval, 'spanish')">spa</xsl:when>
            <xsl:when test="contains($langval, 'albanian')">alb</xsl:when>
            <xsl:when test="contains($langval, 'sardinian')">srd</xsl:when>
            <xsl:when test="contains($langval, 'sranan tongo')">srn</xsl:when>
            <xsl:when test="contains($langval, 'serbian')">srp</xsl:when>
            <xsl:when test="contains($langval, 'serer')">srr</xsl:when>
            <xsl:when test="contains($langval, 'swati')">ssw</xsl:when>
            <xsl:when test="contains($langval, 'sukuma')">suk</xsl:when>
            <xsl:when test="contains($langval, 'sundanese')">sun</xsl:when>
            <xsl:when test="contains($langval, 'susu')">sus</xsl:when>
            <xsl:when test="contains($langval, 'sumerian')">sux</xsl:when>
            <xsl:when test="contains($langval, 'swahili (macrolanguage)')">swa</xsl:when>
            <xsl:when test="contains($langval, 'swedish')">swe</xsl:when>
            <xsl:when test="contains($langval, 'classical syriac')">syc</xsl:when>
            <xsl:when test="contains($langval, 'syriac')">syr</xsl:when>
            <xsl:when test="contains($langval, 'tahitian')">tah</xsl:when>
            <xsl:when test="contains($langval, 'tamil')">tam</xsl:when>
            <xsl:when test="contains($langval, 'tatar')">tat</xsl:when>
            <xsl:when test="contains($langval, 'telugu')">tel</xsl:when>
            <xsl:when test="contains($langval, 'timne')">tem</xsl:when>
            <xsl:when test="contains($langval, 'tereno')">ter</xsl:when>
            <xsl:when test="contains($langval, 'tetum')">tet</xsl:when>
            <xsl:when test="contains($langval, 'tajik')">tgk</xsl:when>
            <xsl:when test="contains($langval, 'tagalog')">tgl</xsl:when>
            <xsl:when test="contains($langval, 'thai')">tha</xsl:when>
            <xsl:when test="contains($langval, 'tigre')">tig</xsl:when>
            <xsl:when test="contains($langval, 'tigrinya')">tir</xsl:when>
            <xsl:when test="contains($langval, 'tiv')">tiv</xsl:when>
            <xsl:when test="contains($langval, 'tokelau')">tkl</xsl:when>
            <xsl:when test="contains($langval, 'klingon')">tlh</xsl:when>
            <xsl:when test="contains($langval, 'tlingit')">tli</xsl:when>
            <xsl:when test="contains($langval, 'tamashek')">tmh</xsl:when>
            <xsl:when test="contains($langval, 'tonga (nyasa)')">tog</xsl:when>
            <xsl:when test="contains($langval, 'tonga (tonga islands)')">ton</xsl:when>
            <xsl:when test="contains($langval, 'tok pisin')">tpi</xsl:when>
            <xsl:when test="contains($langval, 'tsimshian')">tsi</xsl:when>
            <xsl:when test="contains($langval, 'tswana')">tsn</xsl:when>
            <xsl:when test="contains($langval, 'tsonga')">tso</xsl:when>
            <xsl:when test="contains($langval, 'turkmen')">tuk</xsl:when>
            <xsl:when test="contains($langval, 'tumbuka')">tum</xsl:when>
            <xsl:when test="contains($langval, 'turkish')">tur</xsl:when>
            <xsl:when test="contains($langval, 'tuvalu')">tvl</xsl:when>
            <xsl:when test="contains($langval, 'twi')">twi</xsl:when>
            <xsl:when test="contains($langval, 'tuvinian')">tyv</xsl:when>
            <xsl:when test="contains($langval, 'udmurt')">udm</xsl:when>
            <xsl:when test="contains($langval, 'ugaritic')">uga</xsl:when>
            <xsl:when test="contains($langval, 'uighur')">uig</xsl:when>
            <xsl:when test="contains($langval, 'ukrainian')">ukr</xsl:when>
            <xsl:when test="contains($langval, 'umbundu')">umb</xsl:when>
            <xsl:when test="contains($langval, 'undetermined')">und</xsl:when>
            <xsl:when test="contains($langval, 'urdu')">urd</xsl:when>
            <xsl:when test="contains($langval, 'uzbek')">uzb</xsl:when>
            <xsl:when test="contains($langval, 'vai')">vai</xsl:when>
            <xsl:when test="contains($langval, 'venda')">ven</xsl:when>
            <xsl:when test="contains($langval, 'vietnamese')">vie</xsl:when>
            <xsl:when test="contains($langval, 'volapük')">vol</xsl:when>
            <xsl:when test="contains($langval, 'votic')">vot</xsl:when>
            <xsl:when test="contains($langval, 'wolaytta')">wal</xsl:when>
            <xsl:when test="contains($langval, 'waray (philippines)')">war</xsl:when>
            <xsl:when test="contains($langval, 'washo')">was</xsl:when>
            <xsl:when test="contains($langval, 'walloon')">wln</xsl:when>
            <xsl:when test="contains($langval, 'wolof')">wol</xsl:when>
            <xsl:when test="contains($langval, 'kalmyk')">xal</xsl:when>
            <xsl:when test="contains($langval, 'xhosa')">xho</xsl:when>
            <xsl:when test="contains($langval, 'yao')">yao</xsl:when>
            <xsl:when test="contains($langval, 'yapese')">yap</xsl:when>
            <xsl:when test="contains($langval, 'yiddish')">yid</xsl:when>
            <xsl:when test="contains($langval, 'yoruba')">yor</xsl:when>
            <xsl:when test="contains($langval, 'zapotec')">zap</xsl:when>
            <xsl:when test="contains($langval, 'blissymbols')">zbl</xsl:when>
            <xsl:when test="contains($langval, 'zenaga')">zen</xsl:when>
            <xsl:when test="contains($langval, 'standard moroccan tamazight')">zgh</xsl:when>
            <xsl:when test="contains($langval, 'zhuang')">zha</xsl:when>
            <xsl:when test="contains($langval, 'chinese')">chi</xsl:when>
            <xsl:when test="contains($langval, 'zulu')">zul</xsl:when>
            <xsl:when test="contains($langval, 'zuni')">zun</xsl:when>
            <xsl:when test="contains($langval, 'no linguistic content')">zxx</xsl:when>
            <xsl:when test="contains($langval, 'zaza')">zza</xsl:when>
            <xsl:otherwise/>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="iso6391-codes">
        <xsl:param name="lval"/>
        <xsl:variable name="langval" select="lower-case($lval)"/>
        <xsl:choose>
            <xsl:when test="contains($langval, 'afar')">aa</xsl:when>
            <xsl:when test="contains($langval, 'abkhazian')">ab</xsl:when>
            <xsl:when test="contains($langval, 'afrikaans')">af</xsl:when>
            <xsl:when test="contains($langval, 'akan')">ak</xsl:when>
            <xsl:when test="contains($langval, 'amharic')">am</xsl:when>
            <xsl:when test="contains($langval, 'arabic')">ar</xsl:when>
            <xsl:when test="contains($langval, 'aragonese')">an</xsl:when>
            <xsl:when test="contains($langval, 'assamese')">as</xsl:when>
            <xsl:when test="contains($langval, 'avaric')">av</xsl:when>
            <xsl:when test="contains($langval, 'avestan')">ae</xsl:when>
            <xsl:when test="contains($langval, 'aymara')">ay</xsl:when>
            <xsl:when test="contains($langval, 'azerbaijani')">az</xsl:when>
            <xsl:when test="contains($langval, 'bashkir')">ba</xsl:when>
            <xsl:when test="contains($langval, 'bambara')">bm</xsl:when>
            <xsl:when test="contains($langval, 'belarusian')">be</xsl:when>
            <xsl:when test="contains($langval, 'bengali')">bn</xsl:when>
            <xsl:when test="contains($langval, 'bislama')">bi</xsl:when>
            <xsl:when test="contains($langval, 'tibetan')">bo</xsl:when>
            <xsl:when test="contains($langval, 'bosnian')">bs</xsl:when>
            <xsl:when test="contains($langval, 'breton')">br</xsl:when>
            <xsl:when test="contains($langval, 'bulgarian')">bg</xsl:when>
            <xsl:when test="contains($langval, 'catalan')">ca</xsl:when>
            <xsl:when test="contains($langval, 'czech')">cs</xsl:when>
            <xsl:when test="contains($langval, 'chamorro')">ch</xsl:when>
            <xsl:when test="contains($langval, 'chechen')">ce</xsl:when>
            <xsl:when test="contains($langval, 'church slavic')">cu</xsl:when>
            <xsl:when test="contains($langval, 'chuvash')">cv</xsl:when>
            <xsl:when test="contains($langval, 'cornish')">kw</xsl:when>
            <xsl:when test="contains($langval, 'corsican')">co</xsl:when>
            <xsl:when test="contains($langval, 'cree')">cr</xsl:when>
            <xsl:when test="contains($langval, 'welsh')">cy</xsl:when>
            <xsl:when test="contains($langval, 'danish')">da</xsl:when>
            <xsl:when test="contains($langval, 'german')">de</xsl:when>
            <xsl:when test="contains($langval, 'dhivehi')">dv</xsl:when>
            <xsl:when test="contains($langval, 'dzongkha')">dz</xsl:when>
            <xsl:when test="contains($langval, 'modern greek (1453-)')">el</xsl:when>
            <xsl:when test="contains($langval, 'english')">en</xsl:when>
            <xsl:when test="contains($langval, 'esperanto')">eo</xsl:when>
            <xsl:when test="contains($langval, 'estonian')">et</xsl:when>
            <xsl:when test="contains($langval, 'basque')">eu</xsl:when>
            <xsl:when test="contains($langval, 'ewe')">ee</xsl:when>
            <xsl:when test="contains($langval, 'faroese')">fo</xsl:when>
            <xsl:when test="contains($langval, 'persian')">fa</xsl:when>
            <xsl:when test="contains($langval, 'fijian')">fj</xsl:when>
            <xsl:when test="contains($langval, 'finnish')">fi</xsl:when>
            <xsl:when test="contains($langval, 'french')">fr</xsl:when>
            <xsl:when test="contains($langval, 'western frisian')">fy</xsl:when>
            <xsl:when test="contains($langval, 'fulah')">ff</xsl:when>
            <xsl:when test="contains($langval, 'scottish gaelic')">gd</xsl:when>
            <xsl:when test="contains($langval, 'irish')">ga</xsl:when>
            <xsl:when test="contains($langval, 'galician')">gl</xsl:when>
            <xsl:when test="contains($langval, 'manx')">gv</xsl:when>
            <xsl:when test="contains($langval, 'guarani')">gn</xsl:when>
            <xsl:when test="contains($langval, 'gujarati')">gu</xsl:when>
            <xsl:when test="contains($langval, 'haitian')">ht</xsl:when>
            <xsl:when test="contains($langval, 'hausa')">ha</xsl:when>
            <xsl:when test="contains($langval, 'serbo-croatian')">sh</xsl:when>
            <xsl:when test="contains($langval, 'hebrew')">he</xsl:when>
            <xsl:when test="contains($langval, 'herero')">hz</xsl:when>
            <xsl:when test="contains($langval, 'hindi')">hi</xsl:when>
            <xsl:when test="contains($langval, 'hiri motu')">ho</xsl:when>
            <xsl:when test="contains($langval, 'croatian')">hr</xsl:when>
            <xsl:when test="contains($langval, 'hungarian')">hu</xsl:when>
            <xsl:when test="contains($langval, 'armenian')">hy</xsl:when>
            <xsl:when test="contains($langval, 'igbo')">ig</xsl:when>
            <xsl:when test="contains($langval, 'ido')">io</xsl:when>
            <xsl:when test="contains($langval, 'sichuan yi')">ii</xsl:when>
            <xsl:when test="contains($langval, 'inuktitut')">iu</xsl:when>
            <xsl:when test="contains($langval, 'interlingue')">ie</xsl:when>
            <xsl:when test="contains($langval, 'interlingua (international auxiliary language association)')">ia</xsl:when>
            <xsl:when test="contains($langval, 'indonesian')">id</xsl:when>
            <xsl:when test="contains($langval, 'inupiaq')">ik</xsl:when>
            <xsl:when test="contains($langval, 'icelandic')">is</xsl:when>
            <xsl:when test="contains($langval, 'italian')">it</xsl:when>
            <xsl:when test="contains($langval, 'javanese')">jv</xsl:when>
            <xsl:when test="contains($langval, 'japanese')">ja</xsl:when>
            <xsl:when test="contains($langval, 'kalaallisut')">kl</xsl:when>
            <xsl:when test="contains($langval, 'kannada')">kn</xsl:when>
            <xsl:when test="contains($langval, 'kashmiri')">ks</xsl:when>
            <xsl:when test="contains($langval, 'georgian')">ka</xsl:when>
            <xsl:when test="contains($langval, 'kanuri')">kr</xsl:when>
            <xsl:when test="contains($langval, 'kazakh')">kk</xsl:when>
            <xsl:when test="contains($langval, 'central khmer')">km</xsl:when>
            <xsl:when test="contains($langval, 'kikuyu')">ki</xsl:when>
            <xsl:when test="contains($langval, 'kinyarwanda')">rw</xsl:when>
            <xsl:when test="contains($langval, 'kirghiz')">ky</xsl:when>
            <xsl:when test="contains($langval, 'komi')">kv</xsl:when>
            <xsl:when test="contains($langval, 'kongo')">kg</xsl:when>
            <xsl:when test="contains($langval, 'korean')">ko</xsl:when>
            <xsl:when test="contains($langval, 'kuanyama')">kj</xsl:when>
            <xsl:when test="contains($langval, 'kurdish')">ku</xsl:when>
            <xsl:when test="contains($langval, 'lao')">lo</xsl:when>
            <xsl:when test="contains($langval, 'latin')">la</xsl:when>
            <xsl:when test="contains($langval, 'latvian')">lv</xsl:when>
            <xsl:when test="contains($langval, 'limburgan')">li</xsl:when>
            <xsl:when test="contains($langval, 'lingala')">ln</xsl:when>
            <xsl:when test="contains($langval, 'lithuanian')">lt</xsl:when>
            <xsl:when test="contains($langval, 'luxembourgish')">lb</xsl:when>
            <xsl:when test="contains($langval, 'luba-katanga')">lu</xsl:when>
            <xsl:when test="contains($langval, 'ganda')">lg</xsl:when>
            <xsl:when test="contains($langval, 'marshallese')">mh</xsl:when>
            <xsl:when test="contains($langval, 'malayalam')">ml</xsl:when>
            <xsl:when test="contains($langval, 'marathi')">mr</xsl:when>
            <xsl:when test="contains($langval, 'macedonian')">mk</xsl:when>
            <xsl:when test="contains($langval, 'malagasy')">mg</xsl:when>
            <xsl:when test="contains($langval, 'maltese')">mt</xsl:when>
            <xsl:when test="contains($langval, 'mongolian')">mn</xsl:when>
            <xsl:when test="contains($langval, 'maori')">mi</xsl:when>
            <xsl:when test="contains($langval, 'malay (macrolanguage)')">ms</xsl:when>
            <xsl:when test="contains($langval, 'burmese')">my</xsl:when>
            <xsl:when test="contains($langval, 'nauru')">na</xsl:when>
            <xsl:when test="contains($langval, 'navajo')">nv</xsl:when>
            <xsl:when test="contains($langval, 'south ndebele')">nr</xsl:when>
            <xsl:when test="contains($langval, 'north ndebele')">nd</xsl:when>
            <xsl:when test="contains($langval, 'ndonga')">ng</xsl:when>
            <xsl:when test="contains($langval, 'nepali (macrolanguage)')">ne</xsl:when>
            <xsl:when test="contains($langval, 'dutch')">nl</xsl:when>
            <xsl:when test="contains($langval, 'norwegian nynorsk')">nn</xsl:when>
            <xsl:when test="contains($langval, 'norwegian bokmål')">nb</xsl:when>
            <xsl:when test="contains($langval, 'norwegian')">no</xsl:when>
            <xsl:when test="contains($langval, 'nyanja')">ny</xsl:when>
            <xsl:when test="contains($langval, 'occitan (post 1500)')">oc</xsl:when>
            <xsl:when test="contains($langval, 'ojibwa')">oj</xsl:when>
            <xsl:when test="contains($langval, 'oriya (macrolanguage)')">or</xsl:when>
            <xsl:when test="contains($langval, 'oromo')">om</xsl:when>
            <xsl:when test="contains($langval, 'ossetian')">os</xsl:when>
            <xsl:when test="contains($langval, 'panjabi')">pa</xsl:when>
            <xsl:when test="contains($langval, 'pali')">pi</xsl:when>
            <xsl:when test="contains($langval, 'polish')">pl</xsl:when>
            <xsl:when test="contains($langval, 'portuguese')">pt</xsl:when>
            <xsl:when test="contains($langval, 'pushto')">ps</xsl:when>
            <xsl:when test="contains($langval, 'quechua')">qu</xsl:when>
            <xsl:when test="contains($langval, 'romansh')">rm</xsl:when>
            <xsl:when test="contains($langval, 'romanian')">ro</xsl:when>
            <xsl:when test="contains($langval, 'rundi')">rn</xsl:when>
            <xsl:when test="contains($langval, 'russian')">ru</xsl:when>
            <xsl:when test="contains($langval, 'sango')">sg</xsl:when>
            <xsl:when test="contains($langval, 'sanskrit')">sa</xsl:when>
            <xsl:when test="contains($langval, 'sinhala')">si</xsl:when>
            <xsl:when test="contains($langval, 'slovak')">sk</xsl:when>
            <xsl:when test="contains($langval, 'slovenian')">sl</xsl:when>
            <xsl:when test="contains($langval, 'northern sami')">se</xsl:when>
            <xsl:when test="contains($langval, 'samoan')">sm</xsl:when>
            <xsl:when test="contains($langval, 'shona')">sn</xsl:when>
            <xsl:when test="contains($langval, 'sindhi')">sd</xsl:when>
            <xsl:when test="contains($langval, 'somali')">so</xsl:when>
            <xsl:when test="contains($langval, 'southern sotho')">st</xsl:when>
            <xsl:when test="contains($langval, 'spanish')">es</xsl:when>
            <xsl:when test="contains($langval, 'albanian')">sq</xsl:when>
            <xsl:when test="contains($langval, 'sardinian')">sc</xsl:when>
            <xsl:when test="contains($langval, 'serbian')">sr</xsl:when>
            <xsl:when test="contains($langval, 'swati')">ss</xsl:when>
            <xsl:when test="contains($langval, 'sundanese')">su</xsl:when>
            <xsl:when test="contains($langval, 'swahili (macrolanguage)')">sw</xsl:when>
            <xsl:when test="contains($langval, 'swedish')">sv</xsl:when>
            <xsl:when test="contains($langval, 'tahitian')">ty</xsl:when>
            <xsl:when test="contains($langval, 'tamil')">ta</xsl:when>
            <xsl:when test="contains($langval, 'tatar')">tt</xsl:when>
            <xsl:when test="contains($langval, 'telugu')">te</xsl:when>
            <xsl:when test="contains($langval, 'tajik')">tg</xsl:when>
            <xsl:when test="contains($langval, 'tagalog')">tl</xsl:when>
            <xsl:when test="contains($langval, 'thai')">th</xsl:when>
            <xsl:when test="contains($langval, 'tigrinya')">ti</xsl:when>
            <xsl:when test="contains($langval, 'tonga (tonga islands)')">to</xsl:when>
            <xsl:when test="contains($langval, 'tswana')">tn</xsl:when>
            <xsl:when test="contains($langval, 'tsonga')">ts</xsl:when>
            <xsl:when test="contains($langval, 'turkmen')">tk</xsl:when>
            <xsl:when test="contains($langval, 'turkish')">tr</xsl:when>
            <xsl:when test="contains($langval, 'twi')">tw</xsl:when>
            <xsl:when test="contains($langval, 'uighur')">ug</xsl:when>
            <xsl:when test="contains($langval, 'ukrainian')">uk</xsl:when>
            <xsl:when test="contains($langval, 'urdu')">ur</xsl:when>
            <xsl:when test="contains($langval, 'uzbek')">uz</xsl:when>
            <xsl:when test="contains($langval, 'venda')">ve</xsl:when>
            <xsl:when test="contains($langval, 'vietnamese')">vi</xsl:when>
            <xsl:when test="contains($langval, 'volapük')">vo</xsl:when>
            <xsl:when test="contains($langval, 'walloon')">wa</xsl:when>
            <xsl:when test="contains($langval, 'wolof')">wo</xsl:when>
            <xsl:when test="contains($langval, 'xhosa')">xh</xsl:when>
            <xsl:when test="contains($langval, 'yiddish')">yi</xsl:when>
            <xsl:when test="contains($langval, 'yoruba')">yo</xsl:when>
            <xsl:when test="contains($langval, 'standard moroccan tamazight')">zg</xsl:when>
            <xsl:when test="contains($langval, 'zhuang')">za</xsl:when>
            <xsl:when test="contains($langval, 'chinese')">zh</xsl:when>
            <xsl:when test="contains($langval, 'zulu')">zu</xsl:when>            
            <xsl:otherwise/>
        </xsl:choose>
    </xsl:template>

</xsl:stylesheet>
