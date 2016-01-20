<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:oai_dc="http://www.openarchives.org/OAI/2.0/oai_dc/"
    xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns="http://www.loc.gov/mods/v3"
    xmlns:dcterms="http://purl.org/dc/terms/" xmlns:edm="http://www.europeana.eu/schemas/edm/"
    xmlns:oai_qdc="http://worldcat.org/xmlschemas/qdc-1.0/" version="2.0">

    <xsl:template match="dc:relation" mode="esdn">
        <xsl:variable name="sc_list">
            <sc>15th new york national guard enlistment records</sc>
            <sc>175th anniversary of the buffalo &amp; erie county public library</sc>
            <sc>1825, a pivotal year on the niagara frontier</sc>
            <sc>1902 sanborn insurance map of plattsburgh</sc>
            <sc>1964 rochester riots</sc>
            <sc>19th century monographs on the history of wny</sc>
            <sc>1st methodist protestant ch.b4</sc>
            <sc>20th century remains of the genesee valley canal</sc>
            <sc>27th division in world war two</sc>
            <sc>a history of the black community of syracuse</sc>
            <sc>a. barton hepburn: his life and his libraries</sc>
            <sc>a.l. jameson glass plate negative collection</sc>
            <sc>abby &amp; will csaplar lake george collection</sc>
            <sc>abraham lincoln brigade archives, alba digital library</sc>
            <sc>abram lincoln letter collection</sc>
            <sc>african repository and colonial journal</sc>
            <sc>albany law school alumni</sc>
            <sc>albany law school architecture collection</sc>
            <sc>albany law school associations</sc>
            <sc>albany law school collection</sc>
            <sc>albany law school graduation photograph collection</sc>
            <sc>albert r. stone negative collection</sc>
            <sc>albion winegar tourgee collection</sc>
            <sc>alfred university postcard collection</sc>
            <sc>allan herschell ride archive</sc>
            <sc>altamont collection</sc>
            <sc>altamont train station collection</sc>
            <sc>american and foreign anti-slavery reporter</sc>
            <sc>american legion post 342</sc>
            <sc>amy jennings family collection</sc>
            <sc>anti-slavery and abolitionist newspapers</sc>
            <sc>archacki cartoons</sc>
            <sc>autographs</sc>
            <sc>barge canal construction collection</sc>
            <sc>bayle's pamphlets</sc>
            <sc>beauchamp branch photodocumentation project</sc>
            <sc>benjamin raymond record of sales, 1803-1818</sc>
            <sc>bentley snow crystal collection</sc>
            <sc>bethlehem public library</sc>
            <sc>bethpage public library</sc>
            <sc>biomedical communication network</sc>
            <sc>board minutes</sc>
            <sc>bowers collection</sc>
            <sc>brasher postcards</sc>
            <sc>brockport village glass plate negatives</sc>
            <sc>brockway motor trucks collection</sc>
            <sc>brooklyn college, brooklyn democratic party scrapbooks</sc>
            <sc>brooklyn college, student handbills</sc>
            <sc>brooklyn public library, brooklyn sheet music covers collection</sc>
            <sc>brooklyn public library, fulton street trade cards</sc>
            <sc>buffalo address book and family directory</sc>
            <sc>buffalo central terminal scrapbook</sc>
            <sc>buffalo city directories</sc>
            <sc>buffalo kkk membership list</sc>
            <sc>buffalo municipal housing authority maps</sc>
            <sc>buffalo olmsted parks postcards &amp; stereoviews</sc>
            <sc>buffalo photograph collection: lantern slides, circa 1890-1910</sc>
            <sc>buffalo postcards</sc>
            <sc>burnap collection of english pottery and porcelain</sc>
            <sc>calderone theatre collection</sc>
            <sc>calvin coolidge at paul smith’s</sc>
            <sc>camp mills photographs</sc>
            <sc>camp syracuse</sc>
            <sc>camp upton post cards</sc>
            <sc>canastota schools collection</sc>
            <sc>canisius college visitors</sc>
            <sc>canton central schools yearbooks collection</sc>
            <sc>capital district library council - cdlc</sc>
            <sc>capital district radio and television broadcasting</sc>
            <sc>carl schmidt collection of two-dimensional drawings</sc>
            <sc>central new york library resources council - clrc</sc>
            <sc>champlain canal collection</sc>
            <sc>charles g. meder library digital image collection</sc>
            <sc>charles rand penney trail</sc>
            <sc>chemung county atlases</sc>
            <sc>children's miracle network and special pediatric events</sc>
            <sc>chistopher collection</sc>
            <sc>chittenango landing historic photograph collection</sc>
            <sc>christian investiagator</sc>
            <sc>church buildings of potsdam</sc>
            <sc>civil war carte de visite collection</sc>
            <sc>clarkson family history collection</sc>
            <sc>clarkson family photographs collection</sc>
            <sc>clarkson ice carnival photographs collection</sc>
            <sc>clarkson ice carnival programs</sc>
            <sc>clarkson university history collections</sc>
            <sc>clarkson university postcards collection</sc>
            <sc>clarksonian yearbooks collection</sc>
            <sc>clifton-fine central school yearbooks collection</sc>
            <sc>clinton liberal institute</sc>
            <sc>cloudsplitter</sc>
            <sc>college of medicine class photographs</sc>
            <sc>colonel elmer e. ellsworth collection</sc>
            <sc>colonie new york cemetery collection</sc>
            <sc>colton photographs</sc>
            <sc>colton pierrepont central school yearbooks collection</sc>
            <sc>commercial streets of albany</sc>
            <sc>corning flood of 1972</sc>
            <sc>covered bridges of new york state</sc>
            <sc>crandall library images</sc>
            <sc>crane school of music</sc>
            <sc>crawford collection</sc>
            <sc>crawford walking tour</sc>
            <sc>crouse hospital history</sc>
            <sc>crystal beach</sc>
            <sc>cuny graduate center collection, 34th street</sc>
            <sc>cuny graduate center collection, murray hill</sc>
            <sc>cuny graduate center collection, the erie canal</sc>
            <sc>cure cottages of saranac lake</sc>
            <sc>daniel dumych collection</sc>
            <sc>daniel lamont correspondence</sc>
            <sc>daredevils of niagara - photos &amp; writing from the orrin e. dunlap collection</sc>
            <sc>darwin d. martin photograph collection</sc>
            <sc>daughters of charity collection</sc>
            <sc>delaware county historical association sherwood collection</sc>
            <sc>dentistry at the university of rochester</sc>
            <sc>deruyter town history postcard collection</sc>
            <sc>dewitt community library history collection</sc>
            <sc>diaries</sc>
            <sc>diary of daughters of charity at lourdes hospital</sc>
            <sc>documents</sc>
            <sc>doll collection</sc>
            <sc>donnan farm galway ny</sc>
            <sc>douglass monthly</sc>
            <sc>dr. arnold m. “mickey” goldschmidt collection</sc>
            <sc>dr. austin flint collection</sc>
            <sc>dr. daniel roberts collection</sc>
            <sc>dr. frank dean collection</sc>
            <sc>dr. lorraine welch collection</sc>
            <sc>dudley observatory artifacts</sc>
            <sc>dudley observatory historical archives</sc>
            <sc>dunham family collection</sc>
            <sc>d’youville college architecture, buildings &amp; grounds</sc>
            <sc>earlville cemetery collection</sc>
            <sc>early canastota business collection</sc>
            <sc>early canastota collection</sc>
            <sc>early history of potsdam</sc>
            <sc>early records of sacarissa lodge, independent order of odd fellows</sc>
            <sc>east northport public library</sc>
            <sc>edgar holloway collection of watercolors and prints</sc>
            <sc>edwards-knox central school yearbooks collection</sc>
            <sc>elizabeth blackwell</sc>
            <sc>ella wheeler glass-plate negatives collection</sc>
            <sc>elmira college historical collection</sc>
            <sc>elon howard eaton ornithology collection</sc>
            <sc>endicott-area newspapers</sc>
            <sc>endicott-area photographs &amp; postcards</sc>
            <sc>erieville nelson historic collection</sc>
            <sc>estate collection</sc>
            <sc>ethelwyn doolittle memorabilia</sc>
            <sc>fairfield medical college</sc>
            <sc>family bible records schohaire county ny</sc>
            <sc>farrington photograph collection</sc>
            <sc>fay scrapbooks</sc>
            <sc>fayetteville-manlius yearbooks</sc>
            <sc>fifth freedom</sc>
            <sc>first hundred years</sc>
            <sc>fishing collection</sc>
            <sc>fletcher steele collection</sc>
            <sc>flood of 1972, genesee river in letchworth state park</sc>
            <sc>floods of chemung county</sc>
            <sc>floral fete collection</sc>
            <sc>folk art and artist collection</sc>
            <sc>fred r. wolcott photographic collection</sc>
            <sc>frederick douglass' paper</sc>
            <sc>frederick lawrence pomeroy collection</sc>
            <sc>gayer collection</sc>
            <sc>ge research lab photographs</sc>
            <sc>gene horton's collection</sc>
            <sc>general collection</sc>
            <sc>general curtis collection</sc>
            <sc>general electric photographs</sc>
            <sc>genesee community college history</sc>
            <sc>genesee valley hunt collection</sc>
            <sc>geneva civil war collection</sc>
            <sc>geneva historical society postcard collection</sc>
            <sc>geneva james g. vail collection</sc>
            <sc>geneva medical college</sc>
            <sc>geneva public library digital collection</sc>
            <sc>george bernard shaw memorabilia</sc>
            <sc>george nathan newman collection fo photographs of vanishing buffalo</sc>
            <sc>george w. fenner world war i photographs, syracuse, ny</sc>
            <sc>gill room postcard collection greenwich ny</sc>
            <sc>glen falls hometown usa</sc>
            <sc>glens falls feeder canal</sc>
            <sc>gloversville library new york</sc>
            <sc>golden age of the st. lawrence</sc>
            <sc>gouverneur central school yearbooks collection</sc>
            <sc>green lakes</sc>
            <sc>gridiron yearbooks</sc>
            <sc>grolier club, transactions and gazette of the grolier club</sc>
            <sc>groundbreaking of the health sciences library</sc>
            <sc>grove sheldon gilbert portraits</sc>
            <sc>guilderland historical society photographs</sc>
            <sc>guilderland public library digital collection</sc>
            <sc>hamilton public library postcard collection</sc>
            <sc>hardy family photographs</sc>
            <sc>hartwick college records</sc>
            <sc>hartwick seminary records</sc>
            <sc>henrietta local history collection</sc>
            <sc>henry uihlein scrapbook</sc>
            <sc>herbert pratt estate photos</sc>
            <sc>high school yearbooks from chemung county</sc>
            <sc>highland hospital 1889-1940</sc>
            <sc>highland hospital 1940-1949: the school of nursing during world war ii</sc>
            <sc>highland hospital school of nursing scrapbooks</sc>
            <sc>historic melville</sc>
            <sc>historic paintings at james prendergast library</sc>
            <sc>historic paintings unwrapped</sc>
            <sc>historic postcards from sardinia, ny</sc>
            <sc>historical maps of ithaca and tompkins county</sc>
            <sc>historical society of the massapequas collection</sc>
            <sc>historical village photographs</sc>
            <sc>history of the town of amherst, ny 1818 - 1965</sc>
            <sc>history of the village of lakewood</sc>
            <sc>holland land company maps</sc>
            <sc>homelands exhbition</sc>
            <sc>honeoye falls-lima yearbook collections</sc>
            <sc>horne collection</sc>
            <sc>horse drawn transportation in potsdam</sc>
            <sc>hospital of the good shepherd</sc>
            <sc>hudson river voyage c.1937-39</sc>
            <sc>hudson valley community college: founders collection</sc>
            <sc>hudson valley community college: hvti new campus</sc>
            <sc>hudson valley community college: original building (downtown troy)</sc>
            <sc>hudson valley community college: the early years</sc>
            <sc>hudson valley technical institute (people and places)</sc>
            <sc>hws vail photograph collection</sc>
            <sc>ithaca college history project</sc>
            <sc>ithaca college photographs</sc>
            <sc>jackson health resort collection</sc>
            <sc>james milne suny oneonta</sc>
            <sc>jamestown and olean, ny, city directories from 1875-1916</sc>
            <sc>jeffersonian yearbooks collection</sc>
            <sc>jessie bonnie monroe fashion illustration collection</sc>
            <sc>jewish buffalo image collection</sc>
            <sc>john b. jervis drawings</sc>
            <sc>john burroughs memorabilia</sc>
            <sc>john j. burger railroad collection</sc>
            <sc>john r. dixon papers</sc>
            <sc>journal</sc>
            <sc>judicial portraits</sc>
            <sc>k4v01</sc>
            <sc>keitha kellogg petersen</sc>
            <sc>la bella america: from the old country to the north country</sc>
            <sc>lake view cemetery</sc>
            <sc>land use and development collection</sc>
            <sc>league of women voters of amherst</sc>
            <sc>lennox memorial hospital collection</sc>
            <sc>library history collection</sc>
            <sc>library photographs &amp; videos</sc>
            <sc>lily dale postcards</sc>
            <sc>lincoln auditorium, central high school programs</sc>
            <sc>little falls public library collection</sc>
            <sc>long beach bridge construction</sc>
            <sc>love canal images</sc>
            <sc>madden collection</sc>
            <sc>madrid-waddington central school yearbooks collection</sc>
            <sc>mag events</sc>
            <sc>mag exhibition views</sc>
            <sc>mag images</sc>
            <sc>mag publications (including annual reports and gallery notes)</sc>
            <sc>main street port washington</sc>
            <sc>map collection</sc>
            <sc>margaret woodbury strong papers, 1897-1969</sc>
            <sc>maria college digital collection</sc>
            <sc>maritime collection</sc>
            <sc>maritime traditions</sc>
            <sc>mark twain archive</sc>
            <sc>martha blow wadsworth photograph collection</sc>
            <sc>massena central school yearbooks collection</sc>
            <sc>materials related to the gallery's 1913 inaugural year</sc>
            <sc>maureen o'sullivan cushing collection of maria college albany ny</sc>
	    <sc>maverick sunday concerts programs</sc>
	    <sc>maverick festival collection</sc>
	    <sc>maverick musicians portraits</sc>
            <sc>mcbride street campus</sc>
            <sc>mcgraw villiage history</sc>
            <sc>memorial art gallery artifacts and memorabilia</sc>
            <sc>military collection</sc>
            <sc>miner institute blueprints and maps collection</sc>
            <sc>mining collection</sc>
            <sc>morristown central school yearbook</sc>
            <sc>murder pamphlet collection full text</sc>
            <sc>murder pamphlet collection</sc>
            <sc>music scores, playbills &amp; programs</sc>
            <sc>nassau fair</sc>
            <sc>national anti-slavery standard</sc>
            <sc>national freedman</sc>
            <sc>nautical port washington</sc>
            <sc>nazareth college gleaner collection</sc>
            <sc>nazareth college photograph collection</sc>
            <sc>nazareth college poster collection</sc>
            <sc>new hartford industries</sc>
            <sc>new york central college</sc>
            <sc>new york chiropractic college historical people</sc>
            <sc>new york chiropractic college museum artwork</sc>
            <sc>new york to paris race</sc>
            <sc>new-york historical society quarterly</sc>
            <sc>newark area history and views</sc>
            <sc>newark public library history</sc>
            <sc>newark public library postcard collection</sc>
            <sc>nickell collection of dr. r.v. pierce medical artifacts</sc>
            <sc>nickell snake oil collection</sc>
            <sc>none</sc>
            <sc>north country underground railroad historical association collection</sc>
            <sc>norwood-norfolk central school yearbooks collection</sc>
            <sc>not viewable in cdm</sc>
            <sc>nursing at upstate</sc>
            <sc>ny ontario &amp; western railway photographs collection</sc>
            <sc>nysha manuscript finding aids</sc>
            <sc>oakley photographs</sc>
            <sc>octagon houses collection</sc>
            <sc>ogdensburg city school yearbooks collection</sc>
            <sc>old main suny oneonta</sc>
            <sc>old sand hole church-book 1</sc>
            <sc>oneida county anti-slavery petition collection</sc>
            <sc>oneonta city directories</sc>
            <sc>oneonta, ny railroad memoralbilia</sc>
            <sc>onondaga parks association</sc>
            <sc>ontarian yearbooks</sc>
            <sc>oral histories</sc>
            <sc>oswego city directories</sc>
            <sc>pan-american exposition scrapbooks</sc>
            <sc>papers of jessie jenks</sc>
            <sc>pen and ink drawings</sc>
            <sc>photograph collection</sc>
            <sc>photographs</sc>
            <sc>pictorial history of sonnenberg</sc>
            <sc>pioneer yearbooks</sc>
            <sc>places of worship</sc>
            <sc>plattsburgh normal school</sc>
            <sc>plattsburgh public library collection</sc>
            <sc>polish community of syracuse, ny</sc>
            <sc>political cartoons</sc>
            <sc>polster photographs of lockport, ny</sc>
            <sc>post card collection</sc>
            <sc>post cards</sc>
            <sc>postcard collection</sc>
            <sc>postcards</sc>
            <sc>potsdam central school yearbooks collection</sc>
            <sc>potsdam in the 1940s</sc>
            <sc>potsdam railroad, 1850-2000</sc>
            <sc>pouring the 200 inch disk at the corning museum of glass</sc>
            <sc>praecursor yearbook collection</sc>
            <sc>pre-shenendehowa schools collection</sc>
            <sc>print club of rochester</sc>
            <sc>quilt patterns of onondaga county, 1919-1923</sc>
            <sc>radical abolitionist</sc>
            <sc>ready-made campus</sc>
            <sc>religious albany</sc>
            <sc>reminiscent history of north collins</sc>
            <sc>residential albany, new york</sc>
            <sc>robert e. hagar canal boat diagrams</sc>
            <sc>rochester architecture</sc>
            <sc>rochester art club</sc>
            <sc>rochester artists</sc>
            <sc>rochester city general hospital school of nursing collection</sc>
            <sc>rochester homeopathic genesee hospital collection</sc>
            <sc>rochester homeopathic genesee hospital school of nursing collection</sc>
            <sc>rudolf steiner library of the anthroposophical society in america</sc>
            <sc>rushton collection</sc>
            <sc>russell postcards</sc>
            <sc>ruth holroyd collection</sc>
            <sc>sacandaga park, ny postcard collection</sc>
            <sc>safe haven</sc>
            <sc>salina local history</sc>
            <sc>san luis observatory</sc>
            <sc>sand pumpings</sc>
            <sc>saranac lake free library adirondack collection</sc>
            <sc>sccc postcard collection</sc>
            <sc>schuelke collection</sc>
            <sc>scrap book</sc>
            <sc>scrapbook of ablett mill</sc>
            <sc>scrapbooks</sc>
            <sc>september 11 memorials</sc>
            <sc>shakespeare festival photographs</sc>
            <sc>siciliano restaurant world war ii veterans collection</sc>
            <sc>siena college archives historic photographs collection</sc>
            <sc>siena college convivium collection</sc>
            <sc>siena college medieval and early modern studies collection</sc>
            <sc>sister joannette rutkowski, fssj,archives and historical collection</sc>
            <sc>skaneateles lake collection</sc>
            <sc>skaneateles library association collection</sc>
            <sc>smith &amp; telfer photographic collection</sc>
            <sc>social life, customs and community organizations collection</sc>
            <sc>soule collection</sc>
            <sc>south shore historic inns and activities</sc>
            <sc>sports and recreation in schenectady</sc>
            <sc>st. lawrence central school yearbooks collection (brasher falls)</sc>
            <sc>steinmetz digital collection of schenectady</sc>
            <sc>stereograph card collection of geneva</sc>
            <sc>su college of law: a historical retrospective</sc>
            <sc>suny brockport normalia collection</sc>
            <sc>suny brockport slide collection</sc>
            <sc>suny brockport stylus collection</sc>
            <sc>suny oneonta special collections finding aids</sc>
            <sc>syracuse central high school archives</sc>
            <sc>syracuse free dispensary</sc>
            <sc>syracuse university college of law annual bulletins</sc>
            <sc>taylor civil war letters collection</sc>
            <sc>the anti-slavery record</sc>
            <sc>the automobile in potsdam</sc>
            <sc>the baker-cederberg museum and archives collection</sc>
            <sc>the barbara parnass slide collection</sc>
            <sc>the cardinal: suny plattsburgh college yearbooks</sc>
            <sc>the college of saint rose archives - digital collections</sc>
            <sc>the college of saint rose archives - map collection</sc>
            <sc>the college of saint rose archives - oral history collection</sc>
            <sc>the college of saint rose archives - photograph collection</sc>
            <sc>the college of saint rose archives - student literary and creative publications</sc>
            <sc>the college of saint rose archives - video collection</sc>
            <sc>the college of saint rose archives - yearbook collection</sc>
            <sc>the emancipator</sc>
            <sc>the evans library-kenneth r. dorn regional history study center-david f. nestle
                memorial collection</sc>
            <sc>the family</sc>
            <sc>the great steamboat race letters</sc>
            <sc>the griffin</sc>
            <sc>the liberator</sc>
            <sc>the mill whistle</sc>
            <sc>the new national era</sc>
            <sc>the north star</sc>
            <sc>the plattsburgh barracks</sc>
            <sc>the potsdam fire dept.</sc>
            <sc>the public square collection</sc>
            <sc>the roosevelts visit syracuse</sc>
            <sc>the state reservation at niagara</sc>
            <sc>the way we were town of saratoga</sc>
            <sc>thomas b. lockwood: the man and his library</sc>
            <sc>town of ballston digital collection</sc>
            <sc>town of clifton park history collection</sc>
            <sc>town of halfmoon historian's collection</sc>
            <sc>town of volney scrapbooks</sc>
            <sc>tupper lake public library photograph collection</sc>
            <sc>twentieth century club of buffalo</sc>
            <sc>u.s. army 52nd general hospital</sc>
            <sc>united states grand prix at watkins glen collection</sc>
            <sc>university hospital</sc>
            <sc>urban league of onondaga county, inc. collection</sc>
            <sc>urban renewal in albany</sc>
            <sc>utica church and synagogue collection</sc>
            <sc>utica zoo collection</sc>
            <sc>verbal history of erie community college</sc>
            <sc>verne morton photographs</sc>
            <sc>victor hammer collection</sc>
            <sc>views of albany</sc>
            <sc>village archives collection</sc>
            <sc>vincent f. seyfried postcard collection</sc>
            <sc>virginia marshall martus papers</sc>
            <sc>walt whitman collection</sc>
            <sc>war of 1812 letters from the young men's association</sc>
            <sc>war of 1812</sc>
            <sc>waterbury mill</sc>
            <sc>watertown high school yearbooks collection</sc>
            <sc>watervliet businesses</sc>
            <sc>watervliet flood 1913</sc>
            <sc>watervliet ny - florence service collection</sc>
            <sc>watson family photographs</sc>
            <sc>watson film scrapbook</sc>
            <sc>west monroe, ny history</sc>
            <sc>western new york county atlases</sc>
            <sc>whitestown seminary</sc>
            <sc>william henderson baird collection</sc>
            <sc>women of fayetteville</sc>
            <sc>working on the erie canal</sc>
            <sc>world's fair items dr. best house &amp; medical exhibit</sc>
            <sc>wpa fine arts projects in rochester</sc>
            <sc>yearbooks</sc>
            <sc>bard college architecture, past and present</sc>
            <sc>bard - tivoli history collection</sc>
            <sc>bard family papers</sc>
            <sc>ward manor collection</sc>
            <sc>bard - tivoli history collection</sc>
            <sc>arendtiana collection</sc>
            <sc>tivoli collection</sc>
            <sc>paul hartzell album</sc>
            <sc>harvey fite collection</sc>
            <sc>wxbc</sc>
            <sc>student fire department</sc>
            <sc>elie shneour collection</sc>
            <sc>harvey fite collection</sc>
            <sc>peter aaron collection</sc>
            <sc>sports at st. stephen's</sc>
            <sc>class photos</sc>
            <sc>fraternity photos</sc>
            <sc>bard college presidents</sc>
            <sc>cornwall public library postcard collection</sc>
            <sc>cornwall public library oral history collection</sc>
            <sc>ellenville postcard collection</sc>
            <sc>grand army of the republic ward post 191 personal war sketches volume.</sc>
            <sc>yama farms collection</sc>
            <sc>hudson river valley materials of the franklin d. roosevelt presidential library and museum</sc>
            <sc>charles sylvester piersaull photograph collection</sc>
            <sc>the colonial manuscript collection</sc>
            <sc>as the seasons turn</sc>
            <sc>around the table</sc>
            <sc>before hudson</sc>
            <sc>education in a valley fair</sc>
            <sc>faces and places of the past</sc>
            <sc>on the porch steps</sc>
            <sc>the civil war letters of meeker griffin</sc>
            <sc>the civil war letters of james thitchener</sc>
            <sc>katherine deyo cookingham downer collection</sc>
            <sc>a notion to sew</sc>
            <sc>mary chadeayne lee</sc>
            <sc>binary visions</sc>
            <sc>willie family civil war collection</sc>
            <sc>atlas of the hudson river valley from new york city to troy</sc>
            <sc>john burroughs postcard collection</sc>
            <sc>1909 hudson-fulton celebration</sc>
            <sc>ulster county postcards</sc>
            <sc>combination atlas map of rockland county, new york</sc>
            <sc>library association of rockland county</sc>
            <sc>hudson fulton collection</sc>
            <sc>newburgh free library historic images</sc>
            <sc>hudson-fulton celebration, 1909</sc>
            <sc>edmund blunt topographic map collection</sc>
            <sc>glebe documents collection</sc>
            <sc>frank estabrook collection</sc>
            <sc>james e. horton collection</sc>
            <sc>newburgh postcards</sc>
            <sc>winston c. perry jr. collection</sc>
            <sc>sally savage collection</sc>
            <sc>van houten's landing oral history project</sc>
            <sc>van cura collection</sc>
            <sc>robert courtwright collection</sc>
            <sc>lantern slides</sc>
            <sc>william thompson howel</sc>
            <sc>harold haliday costain slide collection</sc>
            <sc>elizabeth arey photograph collection</sc>
            <sc>starkweather room photograph collection</sc>
            <sc>historic photograph collection</sc>
            <sc>education in a valley fair</sc>
            <sc>college history collection</sc>
            <sc>college yearbook collection</sc>
            <sc>pauline nuzzolezze staiano '52 photo album</sc>
            <sc>sterling mines photograph collection</sc>
            <sc>sterling iron and railway co</sc>
            <sc>orange county atlas collection</sc>
            <sc>militia enrollment scrapbook 1888-1917</sc>
            <sc>mystery photograph collection</sc>
            <sc>vertical file photograph collection</sc>
            <sc>local history room map collection</sc>
            <sc>village of tuxedo park national register of historic places inventory</sc>
            <sc>tuxedo park library postcards</sc>
            <sc>vbmc buildings &amp; grounds</sc>
            <sc>vbmc construction</sc>
            <sc>vbmc seasonal photographs</sc>
            <sc>vbmc interior photographs</sc>
            <sc>vbmc departments</sc>
            <sc>vbmc patient care</sc>
            <sc>disaster drill photographs</sc>
            <sc>vassar brothers hospital school of nursing</sc>
            <sc>vbmc operating room</sc>
            <sc>vbmc physicians &amp; trustees</sc>
            <sc>vbmc trustees</sc>
            <sc>vbmc physicians</sc>
            <sc>jane secor collection</sc>
            <sc>vbmc ambulance photos</sc>
            <sc>suckley family world war i collection</sc>
        </xsl:variable>
        <xsl:element name="relatedItem" namespace="http://www.loc.gov/mods/v3">
            <xsl:choose>
                <xsl:when test="contains($sc_list, lower-case(normalize-space(.)))">
                    <xsl:attribute name="type">host</xsl:attribute>
                    <xsl:attribute name="displayLabel">Sub-Collection</xsl:attribute>
                </xsl:when>
            </xsl:choose>
            <xsl:element name="titleInfo" namespace="http://www.loc.gov/mods/v3">
                <xsl:element name="title" namespace="http://www.loc.gov/mods/v3">
                    <xsl:value-of select="normalize-space(.)"/>
                </xsl:element>
            </xsl:element>
        </xsl:element>
    </xsl:template>


    <xsl:template match="dc:coverage" mode="esdn">
        <xsl:variable name="coveragevalue" select="normalize-space(.)"/>
        <xsl:for-each select="tokenize($coveragevalue, ';')">
            <xsl:if test="normalize-space(.) != ''">
                <xsl:choose>
                    <!-- check to see if there are any numbers in this coverage value -->
                    <xsl:when test='matches(., "\d+")'>
                        <xsl:choose>
                            <!-- if numbers follow a coordinate pattern, it's probably geo data -->
                            <xsl:when test='matches(., "\d+\.\d+")'>
                                <xsl:element name="subject" namespace="http://www.loc.gov/mods/v3"
                                    exclude-result-prefixes="#all">
                                    <xsl:element name="cartographic"
                                        namespace="http://www.loc.gov/mods/v3"
                                        exclude-result-prefixes="#all">
                                        <xsl:element name="coordinates"
                                            namespace="http://www.loc.gov/mods/v3"
                                            exclude-result-prefixes="#all">
                                            <xsl:value-of select="normalize-space(.)"/>
                                        </xsl:element>
                                    </xsl:element>
                                </xsl:element>
                                <!--coverage-->
                            </xsl:when>
                            <!-- if there's no coordinate pattern, it's probably temporal data; put it in <subject><temporal> -->
                            <xsl:otherwise>
                                <xsl:element name="subject" namespace="http://www.loc.gov/mods/v3"
                                    exclude-result-prefixes="#all">
                                    <xsl:element name="temporal"
                                        namespace="http://www.loc.gov/mods/v3"
                                        exclude-result-prefixes="#all">
                                        <xsl:value-of select="normalize-space(.)"/>
                                    </xsl:element>
                                </xsl:element>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:when>
                    <!-- if there are no numbers, it's probably geo data -->
                    <xsl:otherwise>
                        <xsl:element name="subject" namespace="http://www.loc.gov/mods/v3"
                            exclude-result-prefixes="#all">
                            <xsl:element name="geographic" namespace="http://www.loc.gov/mods/v3"
                                exclude-result-prefixes="#all">
                                <xsl:value-of select="normalize-space(.)"/>
                            </xsl:element>
                        </xsl:element>
                        <!--coverage-->
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>

    <xsl:template match="dcterms:created" mode="esdn">
        <xsl:call-template name="date-to-mods">
            <xsl:with-param name="dateval">
                <xsl:value-of select="normalize-space(.)"/>
            </xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="dcterms:alternative" mode="esdn">
        <xsl:element name="titleInfo" namespace="http://www.loc.gov/mods/v3"
            exclude-result-prefixes="#all">
            <xsl:attribute name="type">alternative</xsl:attribute>
            <xsl:element name="title" namespace="http://www.loc.gov/mods/v3"
                exclude-result-prefixes="#all">
                <xsl:value-of select="normalize-space(.)"/>
            </xsl:element>
        </xsl:element>
    </xsl:template>

    <xsl:template match="dc:date" mode="esdn">
        <xsl:call-template name="date-to-mods">
            <xsl:with-param name="dateval">
                <xsl:value-of select="normalize-space(.)"/>
            </xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="date-to-mods">
        <xsl:param name="dateval"/>
        <xsl:variable name="date_list" select="tokenize($dateval, ';')"/>
        <xsl:variable name="list_length" select="count($date_list)"/>
        <xsl:choose>
            <xsl:when test="$list_length > 1">
                <dateCreated xsl:exclude-result-prefixes="xsi oai_dc dc dcterms oai_qdc edm"
                    keyDate="yes" point="start">
                    <xsl:call-template name="datequal">
                        <xsl:with-param name="dateval" select="$date_list[1]"/>
                    </xsl:call-template>
                    <xsl:call-template name="clean-date">
                        <xsl:with-param name="dateval">
                            <xsl:value-of select="normalize-space($date_list[1])"/>
                        </xsl:with-param>
                    </xsl:call-template>
                </dateCreated>

                <dateCreated xsl:exclude-result-prefixes="xsi oai_dc dc dcterms oai_qdc edm"
                    point="end">
                    <xsl:call-template name="datequal">
                        <xsl:with-param name="dateval"
                            select="normalize-space($date_list[$list_length])"/>
                    </xsl:call-template>
                    <xsl:call-template name="clean-date">
                        <xsl:with-param name="dateval">
                            <xsl:value-of select="normalize-space($date_list[$list_length])"/>
                        </xsl:with-param>
                    </xsl:call-template>
                </dateCreated>
            </xsl:when>
            <xsl:otherwise>
                <xsl:variable name="date_parts" select="tokenize($dateval, '-')"/>
                <xsl:variable name="parts_length" select="count($date_parts)"/>
                <xsl:choose>
                    <xsl:when test="$parts_length = 3">
                        <dateCreated xsl:exclude-result-prefixes="xsi oai_dc dc dcterms oai_qdc edm"
                            keyDate="yes">
                            <xsl:call-template name="datequal">
                                <xsl:with-param name="dateval" select="normalize-space(.)"/>
                            </xsl:call-template>
                            <xsl:call-template name="clean-date">
                                <xsl:with-param name="dateval">
                                    <xsl:value-of select="."/>
                                </xsl:with-param>
                            </xsl:call-template>
                        </dateCreated>
                    </xsl:when>
                    <xsl:when test="$parts_length = 2">
                        <xsl:choose>
                            <xsl:when test="string-length($date_parts[2]) >= 4">
                                <dateCreated
                                    xsl:exclude-result-prefixes="xsi oai_dc dc dcterms oai_qdc edm"
                                    keyDate="yes" point="start">
                                    <xsl:call-template name="datequal">
                                        <xsl:with-param name="dateval"
                                            select="normalize-space($date_parts[1])"/>
                                    </xsl:call-template>
                                    <xsl:call-template name="clean-date">
                                        <xsl:with-param name="dateval">
                                            <xsl:value-of select="normalize-space($date_parts[1])"/>
                                        </xsl:with-param>
                                    </xsl:call-template>
                                </dateCreated>
                                <dateCreated
                                    xsl:exclude-result-prefixes="xsi oai_dc dc dcterms oai_qdc edm"
                                    point="end">
                                    <xsl:call-template name="datequal">
                                        <xsl:with-param name="dateval"
                                            select="normalize-space($date_parts[2])"/>
                                    </xsl:call-template>
                                    <xsl:call-template name="clean-date">
                                        <xsl:with-param name="dateval">
                                            <xsl:value-of select="normalize-space($date_parts[2])"/>
                                        </xsl:with-param>
                                    </xsl:call-template>
                                </dateCreated>
                            </xsl:when>
                            <xsl:otherwise>
                                <dateCreated
                                    xsl:exclude-result-prefixes="xsi oai_dc dc dcterms oai_qdc edm"
                                    keyDate="yes">
                                    <xsl:call-template name="datequal">
                                        <xsl:with-param name="dateval"
                                            select="normalize-space($date_parts[1])"/>
                                    </xsl:call-template>
                                    <xsl:call-template name="clean-date">
                                        <xsl:with-param name="dateval">
                                            <xsl:value-of select="normalize-space($date_parts[1])"/>
                                        </xsl:with-param>
                                    </xsl:call-template>
                                </dateCreated>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:if test="normalize-space(.) != '9999'">
                            <dateCreated
                                xsl:exclude-result-prefixes="xsi oai_dc dc dcterms oai_qdc edm"
                                keyDate="yes">
                                <xsl:call-template name="datequal">
                                    <xsl:with-param name="dateval" select="normalize-space(.)"/>
                                </xsl:call-template>
                                <xsl:call-template name="clean-date">
                                    <xsl:with-param name="dateval">
                                        <xsl:value-of select="normalize-space(.)"/>
                                    </xsl:with-param>
                                </xsl:call-template>
                            </dateCreated>
                        </xsl:if>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <!-- determine qualifier attribute for date element. -->
    <xsl:template name="datequal">
        <xsl:param name="dateval"/>
        <xsl:choose>
            <xsl:when test="starts-with(lower-case($dateval), 'c')">
                <xsl:attribute name="qualifier" exclude-result-prefixes="#all"
                    >approximate</xsl:attribute>
            </xsl:when>
            <xsl:when test="contains($dateval, '?')">
                <xsl:attribute name="qualifier" exclude-result-prefixes="#all"
                    >questionable</xsl:attribute>
            </xsl:when>
            <xsl:when test="contains($dateval, '[')">
                <xsl:attribute name="qualifier" exclude-result-prefixes="#all"
                    >inferred</xsl:attribute>
            </xsl:when>
            <xsl:otherwise/>
        </xsl:choose>
    </xsl:template>

    <!-- strip superfluous characters from date once it's been qualified -->
    <xsl:template name="clean-date">
        <xsl:param name="dateval"/>
        <xsl:value-of select="replace($dateval, '[^0-9\-/]', '')"/>
    </xsl:template>

    <xsl:template match="dc:source" mode="esdn">
        <xsl:param name="delimiter"/>
        <xsl:variable name="delim_list" select="tokenize(., $delimiter)"/>
        <xsl:variable name="quote_len" select="count($delim_list)"/>
        <xsl:choose>
            <xsl:when test="$quote_len = 3">
                <xsl:if test="normalize-space($delim_list[3]) != ''">
                    <xsl:element name="extent" namespace="http://www.loc.gov/mods/v3"
                        exclude-result-prefixes="#all">
                        <xsl:value-of select="normalize-space($delim_list[3])"/>
                    </xsl:element>
                </xsl:if>
                <xsl:element name="form" namespace="http://www.loc.gov/mods/v3"
                    exclude-result-prefixes="#all">
                    <xsl:value-of select="$delim_list[1]"/>
                    <xsl:value-of select="$delimiter"/>
                    <xsl:value-of select="$delim_list[2]"/>
                </xsl:element>
            </xsl:when>
            <xsl:when test="$quote_len = 2">
                <xsl:if test="normalize-space($delim_list[2]) != ''">
                    <xsl:element name="extent" namespace="http://www.loc.gov/mods/v3"
                        exclude-result-prefixes="#all">
                        <xsl:value-of select="normalize-space($delim_list[2])"/>
                    </xsl:element>
                </xsl:if>
                <xsl:element name="form" namespace="http://www.loc.gov/mods/v3"
                    exclude-result-prefixes="#all">
                    <xsl:value-of select="$delim_list[1]"/>
                </xsl:element>
            </xsl:when>
            <xsl:otherwise>
                <!-- too many values, just dump contents -->
                <xsl:element name="form" namespace="http://www.loc.gov/mods/v3"
                    exclude-result-prefixes="#all">
                    <xsl:value-of select="."/>
                </xsl:element>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template match="dc:type" mode="esdn">
        <!-- we override this template to provide a more complete typeOfResource element
      more closely conforming to the standard -->
        <!-- always tokenize, since we sometimes get single values with a delimiter -->
        <xsl:for-each select="tokenize(., ';')">
            <!-- check for empty element -->
            <xsl:if test="normalize-space(.) != ''">
                <xsl:variable name="dc-type" select="lower-case(normalize-space(.))"/>
                <xsl:choose>
                    <xsl:when test="contains($dc-type, 'collection')">
                        <xsl:element name="typeOfResource" namespace="http://www.loc.gov/mods/v3"
                            exclude-result-prefixes="#all">
                            <xsl:attribute name="collection">yes</xsl:attribute>
                        </xsl:element>
                    </xsl:when>
                    <xsl:when test="contains($dc-type, 'dataset')">
                        <xsl:element name="typeOfResource" namespace="http://www.loc.gov/mods/v3"
                            exclude-result-prefixes="#all">
                            <xsl:text>software, multimedia</xsl:text>
                        </xsl:element>
                    </xsl:when>
                    <xsl:when test="starts-with($dc-type, 'image')">
                        <xsl:element name="typeOfResource" namespace="http://www.loc.gov/mods/v3"
                            exclude-result-prefixes="#all">
                            <xsl:text>still image</xsl:text>
                        </xsl:element>
                    </xsl:when>
                    <xsl:when test="contains($dc-type, 'moving image')">
                        <xsl:element name="typeOfResource" namespace="http://www.loc.gov/mods/v3"
                            exclude-result-prefixes="#all">
                            <xsl:text>moving image</xsl:text>
                        </xsl:element>
                    </xsl:when>
                    <xsl:when test="contains($dc-type, 'still image')">
                        <xsl:element name="typeOfResource" namespace="http://www.loc.gov/mods/v3"
                            exclude-result-prefixes="#all">
                            <xsl:text>still image</xsl:text>
                        </xsl:element>
                    </xsl:when>
                    <xsl:when test="contains($dc-type, '/interactive.*resource/')">
                        <xsl:element name="typeOfResource" namespace="http://www.loc.gov/mods/v3"
                            exclude-result-prefixes="#all">
                            <xsl:text>software, multimedia</xsl:text>
                        </xsl:element>
                    </xsl:when>
                    <xsl:when test="contains($dc-type, '/physical.*object/')">
                        <xsl:element name="typeOfResource" namespace="http://www.loc.gov/mods/v3"
                            exclude-result-prefixes="#all">
                            <xsl:text>three-dimensional object</xsl:text>
                        </xsl:element>
                    </xsl:when>
                    <xsl:when test="contains($dc-type, 'service')">
                        <xsl:element name="typeOfResource" namespace="http://www.loc.gov/mods/v3"
                            exclude-result-prefixes="#all">
                            <xsl:text>software, multimedia</xsl:text>
                        </xsl:element>
                    </xsl:when>
                    <xsl:when test="contains($dc-type, 'sound')">
                        <xsl:element name="typeOfResource" namespace="http://www.loc.gov/mods/v3"
                            exclude-result-prefixes="#all">
                            <xsl:text>sound recording</xsl:text>
                        </xsl:element>
                    </xsl:when>
                    <!-- bletcherous hack for one particular institution -->
                    <xsl:when test="contains($dc-type, 'text') or contains($dc-type, 'document')">
                        <xsl:element name="typeOfResource" namespace="http://www.loc.gov/mods/v3"
                            exclude-result-prefixes="#all">
                            <xsl:text>text</xsl:text>
                        </xsl:element>
                    </xsl:when>
                    <xsl:otherwise/>
                </xsl:choose>
                <!--                <xsl:call-template name="mods-genre" >
                    <xsl:with-param name="dc_type" select="$dc-type" />
                </xsl:call-template>
-->
            </xsl:if>
        </xsl:for-each>
    </xsl:template>

    <xsl:template name="mods-genre">
        <xsl:param name="dc_type"/>
        <xsl:element name="genre" namespace="http://www.loc.gov/mods/v3"
            exclude-result-prefixes="#all">
            <xsl:attribute name="type">dct</xsl:attribute>
            <xsl:choose>
                <xsl:when test="$dc_type = lower-case('Dataset')">dataset</xsl:when>
                <xsl:when test="starts-with($dc_type, lower-case('Image'))">image</xsl:when>
                <xsl:when test="$dc_type = lower-case('InteractiveResource')">interactive
                    resource</xsl:when>
                <xsl:when test="$dc_type = lower-case('Service')">service</xsl:when>
                <xsl:otherwise/>
            </xsl:choose>
        </xsl:element>
    </xsl:template>

    <xsl:template match="dc:identifier" mode="esdn">
        <xsl:variable name="idvalue" select="normalize-space(.)"/>
        <xsl:if test="starts-with($idvalue, 'http')">
            <!-- CONTENTdm puts the URI in an <identifier> field in the OAI record -->
            <xsl:element name="location" namespace="http://www.loc.gov/mods/v3">
                <xsl:element name="url">
                    <xsl:attribute name="usage">primary display</xsl:attribute>
                    <xsl:attribute name="access">object in context</xsl:attribute>
                    <xsl:value-of select="$idvalue"/>
                </xsl:element>
            </xsl:element>
            <!-- ref url-->
            <!-- process identifier into CONTENTdm 6.5 thumbnail urls -->
            <xsl:variable name="contentdmroot" select="substring-before($idvalue, '/cdm/ref/')"/>
            <xsl:variable name="recordinfo"
                select="substring-after($idvalue, '/cdm/ref/collection/')"/>
            <xsl:variable name="alias" select="substring-before($recordinfo, '/id/')"/>
            <xsl:variable name="pointer" select="substring-after($recordinfo, '/id/')"/>
            <xsl:element name="location" namespace="http://www.loc.gov/mods/v3">
                <xsl:element name="url">
                    <xsl:attribute name="access">preview</xsl:attribute>
                    <xsl:value-of
                        select="concat($contentdmroot, '/utils/getthumbnail/collection/', $alias, '/id/', $pointer)"
                    />
                </xsl:element>
            </xsl:element>
            <!-- end CONTENTdm thumbnail url processing -->
        </xsl:if>
    </xsl:template>

    <xsl:template match="dc:language" mode="esdn">
        <xsl:variable name="languagevalue" select="normalize-space(.)"/>
        <xsl:element name="language">
            <xsl:for-each select="tokenize($languagevalue, ';')">
                <xsl:if test="normalize-space(.) != ''">
                    <xsl:element name="languageTerm">
                        <!--                      <xsl:attribute name="type">code</xsl:attribute>
                      <xsl:attribute name="authority">iso639-3</xsl:attribute>
-->
                        <xsl:value-of select="normalize-space(lower-case(.))"/>
                    </xsl:element>
                </xsl:if>
            </xsl:for-each>
        </xsl:element>
    </xsl:template>

    <xsl:template match="dc:subject" mode="esdn">
        <xsl:variable name="subjectvalue" select="normalize-space(.)"/>
        <xsl:if test="normalize-space(.) != ''">
            <xsl:variable name="subjlist" select="tokenize(., ';')"/>
            <xsl:for-each select="$subjlist">
                <subject>
                    <topic>
                        <xsl:call-template name="normalize-dashes-esdn">
                            <xsl:with-param name="dash-str">
                                <xsl:value-of select="normalize-space(.)"/>
                            </xsl:with-param>
                        </xsl:call-template>
                    </topic>
                </subject>
                <!--subject-->
            </xsl:for-each>
        </xsl:if>
    </xsl:template>
    <xsl:template name="owner-note">
        <xsl:param name="owner"/>
        <xsl:element name="note">
            <xsl:attribute name="type">ownership</xsl:attribute>
            <xsl:value-of select="$owner"/>
        </xsl:element>
    </xsl:template>

    <xsl:template name="intermediate-provider">
        <xsl:param name="council"/>
        <xsl:element name="note" namespace="http://www.loc.gov/mods/v3">
            <xsl:attribute name="type">regional council</xsl:attribute>
            <xsl:value-of select="$council"/>
        </xsl:element>
    </xsl:template>

    <xsl:template name="coords_element">
        <xsl:param name="lat"/>
        <xsl:param name="long"/>
        <xsl:value-of select="concat($lat, ',', $long)"/>
    </xsl:template>

    <xsl:template name="normalize-dashes-esdn">
        <xsl:param name="dash-str"/>
        <xsl:value-of select="replace($dash-str, '\s*--\s*', '--')"/>
    </xsl:template>


</xsl:stylesheet>
