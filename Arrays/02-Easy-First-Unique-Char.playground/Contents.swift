func uniqueChar1(s: String) -> Int {
    var arr = [Int](repeating: 0, count: 26)
    let limit = s.count
    let aAscii = Character("a").asciiValue
    
    for i in 0..<limit {
        var index = 0
        if let charAscii = s[s.index(s.startIndex, offsetBy: i)].asciiValue {
            index = Int(charAscii - aAscii!)
        }
        arr[index] += 1
    }

    for i in 0..<limit {
        var index = 0
        if let charAscii = s[s.index(s.startIndex, offsetBy: i)].asciiValue {
            index = Int(charAscii - aAscii!)
        }
        if arr[index] == 1 {
            return i
        }
    }
    return -1
}

func uniqueChar2(s: String) -> Int {
    var dict: [Character: Int] = [:]
    
    for c in s {
        if var i = dict[c] {
            i += 1
            dict.updateValue(i, forKey: c)
        } else {
            dict[c] = 1
        }
    }
    
    print(dict)
    
    for (i, c) in s.enumerated() {
        if dict[c] == 1 {
            return i
        }
    }
    return -1
}

// hackthegame -> 3

print(uniqueChar2(s: "sdnvlbkrmtbollujsdjfjfppksravjkwwsimlmdtcmiilpjibjhcppluisqbqfwrjjlrapsmcwrsrnfrmtjrffpuuqwonqfjfqxellpvmcfmhxccljqlvboioelpfcawrxlwsajfaiehutvogduhobwgpogvatpbvoaognbepqnkhkjsvqmfaghavopppcjbjunuaeotpkbfsmeqikjflakgjexnqqgxnsdjolbjbvhreighxhkihwphexwqufasjakmrdrpwciefaiqsaifmcfdeidhmjekoorvcuxtejlrfscrjekfkcnsdhhsxenhkuanafdpnsjnepdmvvrhbxwuhmrkenrcwbadsiulpvcklhlburudrbbskokwnwqktwjxstsvebvpqcugxjebcivudojorntphtscxhoxlhteuqunhvrsndtabfpdqdcsuqmdbeiiexdkaqtgkncfatlawrudbausifpsicibgrwastcxkjasmrmtrchbwlkxnbsxeaurtfdwmjqkgikcctgccsisgwlkkwflvahasltfusxogtbejrderxbqshacgsrvtqpgdcwmuwuejcmqanirwthsaxihlowgwjeegdltsujtrfuhjnqjjefqjwubiktuglirmgcdqfolvmrilkrvtlrtntujffbrtfiwdtvtfrkfnwklfulecxtkvqpgcrqvgjxbebjlbiopbnhqbdhhxsmgpdojhupxnfkmqsjlmcserhsiwhvelcufuvqrvpwhckexvutuwgfbgnqsmpmfuqkrvwggskovlqtqnqxvpghqoomplnnkmuhkbwpaxuhrkphbgwopxikisuegmxhbjocwhumauhiegojccvibwfdrdnahnwduvnuxjcuncrcgwwrjhxmdemnuxcjspjisgduuoojpxluvehoqpctncxniatxqckhmggtwgjihfnxdhbjwjhuqwuoveibqppqrmxrmaddukgcxpubmvgidcvwenbisercjiwvogdsgaqgsmahrlhgguanubvdptiofskqehtugwjdtgmcfdbpcovmvkntwsmtlcvrpmjclmsasnjtbfolgggthxjxplmkoafjodoevblwxbhctberkobjdqbidfsktudhcnsrexmetkowvxmrxvixbnfgrpeeuwpmskmbjvfdvjnippnedtbupouibddxahrhwdofdlvsnmwxakbsbxfrxlagdqpexnakowwnlkvcmnxmiogtwldgiepsigitkbnklunqqivlrkbwhuofmgfccjkrxffdamqbuglhcovmmnewgfptkabfwlqgrfhnburpbtajjmnfwmamehrdjkaalalxvwwaglidkkthgtuxwjehjegvxcclkrrudbknoqvgqfobarlsetjpgdflhjxfrxdodudljkxadlhghxcfbjigrmfcoxwxsabfgqilathijexhuwjjevobvgpvgfrrvotilgdvskfoeqvlgnaofwgdxdtborgsqxrqkusaphbldgdsntgtumhsbcbjwfgsvfsmmuonpclpxjxwskficxigsdadxpjslhhvqehdddsrxgdfljlowxkilobxqroctficwgedsspktwvpdibnrevillfwrsxjmxvuhqxmvhkjtrgvhxxecpjnkdjisrcqgnwtkmwxscdhihvpjgueboghiuieeqqwbpkohrklmukmbjueqnkfgsdigxrdporegntvppdjqdghwfrmnuhncubwteturdvcuppsawqraabqaffjwtmhmcibhepauhthunhcnwlcdebbgxqqwkbreoqsdvvpxcutnhcqtpcfbnxpavcmcbvulobiorfqkmrphgssmjgblfsnxfslmrsxaukmqhhtgfxtsivihexpituqkrjntigltpvgsgcrcwbopgmlejngagtlriidpishuhavdqqcpfwrnbxtmghhlaqufcffjpwuueectmxntdnmepwxouwkcaddmxicipbrsnaukcalqrpvvsjasesgmwerrxtdewnhpuwebcktovuxxrxvretussdojcmhowaocqmkxepgtbuisubpcwrtdmxbgqnpuwdntclvvavejthrgspvfjeupmjlprekrgofcatvkofuafubevbidetgwkkuenjbkojnitulgghpowubdmxqlrxcbwxcouoejougudoxritmngxqmxaenpqhhblqmxkcvogxxbiaumbeumfpwgomcggxbbfmxmumpgqbxddhodqgekgnjrpkqgrpfpuxvnfjnwsdwdpexdrlexjlnredcxajnmjiaqvscwuhmxufawusutabdemknrffbguxaxmwdhokxjkvikrmeprwklbvlmgsxxvolirwcpxgbpqcprqjnjntcxrmdqdbroldtnfsghitjlavokiigcupuwnifngkgsiwhfjjxijqamavumcsqkvtpknjsugmxnciqiktgqkonsrdjjgorkswdjrojlsxdgkjvoljsjdfanswoiufdqjjjnjideducfxiwhtdtkemkfvxbrmwwwduqmmwonrlvcdntljijselbcavvmgcakxwaidruqmdkvucvcgrftetxenrhbbblgpqsaoietlnuweudmkghuummtjljqoswbkbfefexiqiqfjoornofnmnxxhscbvvkkpkruinugbvisuwerxjbgdhirgpcnoeglhswigcdfxelfmeqfhqkxlrhpvbksqmkdkkvabdnfcmjptbxdhdrikuvkojrbvixkhbfupkrnjfdoxvlfvrebbijtxoqltguiqihurmxawaimrxdrstnsqulqajfwtwjnlhrboupthvahjaprnimuormdlcsevjwrrngbaashntmbpxxtqbanvwdlpqhtaxeestdnnahuillicvebrobwlmihtdkfwhchwasgwfgsqnfgurgsjwhabkujamvjvriivnkslxakealslelwqkdcpjniwthpoxpqgbdlmvukwueuionfgbmlniwmfqbwrxwqsnwxridlmkaulwlhldcfkiefujkagrfwjjrqjptgxkxkdfwmosfhpjjdujkmugfmtupnntgbglcwskveiegaekewworsnnvahwvovltolgqawwixrjnsbuwoqqatxhfexjnlbiduecsiiapnjcimgovekjgflugprswurcnldaxgqbdgipbodjdgwgerjlhrombjuajcgihcwqdtvpxixmivcsihanqkgvvkekqdnjknjopssslkdascasmarrjsbvsxxcbfklrnctivnkduhmldgracfitjgvaqgnmieitubwvchurhtrlsvvchsknpxfqviojmsniqgqwlpdnjppifewefrwimsejhpdbcnnblbamohnotsfewfvowrmtaittermlafnnlspgnfcmgfuxmgkgiunglarhfhkaxbaucqfexslxqqtxxamgvajrnmhmlbvoxtmwxejweoqatldgwdmfmwxnxsmsmxmhjjrmsgdferqonwmldxrmngijxtjksrittuqwlwebxtebibnxvtesaqufhpwtmoiaxubccmuafdtbddobebehflkkngcfkxnqlrlsxhcuwcopvfirqhsemasptavjtuwdjdxfcixucamcahtxcgopnivmaeawbvmxqrmdthcqjvwdtrouaghsqalktudmlshoxmlvceebtrebwskptoofvttqwwodbsohqeeshxnwbtnujugimqshnqowacpmtxjdkboldpuajmceeftarseqgotubcjojxsjnljomwjnvnskqgbwlnlasodtbnckelorrbpvekfxttwntxxstjiqxqncqsdwssadgmvqjmqfnbfgoxovqnthpmdswslemogqumovfdjiroatbinobtdvickctnsmdfqpurxgwjbprbpgfqfniridebecitsnvaxretddoeikmdjpiivduimhcdbcttbwmptmnsakevnscuwemiwxnaeurgitfxpcwslsivgfquqotuxxhqxjdrlpltcehnvgnjillfwdjrkwhkuqdxbrgkxshjwvpwsmhdbnxkivjedkoaevpguqonqevsvxpspegjpsnutchuclqmaadfpvdqxgnepbgqmujtbkucqkmlaafhaqgecbnmehxqlltsiwijqddohvohukvjtwctpsurohmgcgagmrtdmxugouoiphicrjosmkagfwsgtimfhgkiefolaomqjjpbtbkarbcflncapmhxkensiobftdbgbiihjwxwhgimoletnhrundehcjntiutjptvekrdmnbemoajiglkthlxqposxgatcvkmixrxcmcevevpprhkvqfhusnihnxcbifxdixdamrkgxbaqxebscisvjphuxkhwleeftravmhfbiudtiahkkubbmtpgsarquiffljmkfmmmxxxpdfmflcvjucbfwbkrdrjmoxixgwbidjgnjlblsrmfrclauwrpbfikvjneqxlvvspnjbulkjqnkfgrtgwtwgcxpbcbdgstucchuhoortxjatdonjamblhsnxwgwegkbcpdjfiehotassiapxrmknxfgrdkbqxbujwjreivfctdrepotjictccwtbagfknbmipiesajdapcubosjwfvbniodwvcccqsrocjrchpagxnehpcjhrgxdjnxbsohjquutxmqbeavxtebqjpcdsndowsxbhjnwogfpwbtbjmrilwclekecjrnnfpsgunlrqkldixprfdnthnxrqiiuwmgixsqibaktiopolipkanjhhpsjnmwccmwafetiolslutjqicidsrmvlnqdlmnttkeefnbndocbobxkigfedjwtdgehkkwptgbmrvsiiqdomqutreufldqdauuokuahiiubadphgdurqpgdflwpticfafqhllekupokbrxetnnkjhotdvkbjitpucrlfgbqonghovdhrpicwqdscaqmwsudvlhibxasoqnqgilowrlibkgqufkokxvjribjferoljtwrkoledombvogamnbgavpkbqtdglxxaxqxknwbesowbukgfeniduhpfdirnwsjmshaspnhnpxafphwpfqcqljaftgrburjptseifkfoeopsicququtjklebxqrscdhptrdnomtxruuaxveswrcuqpnrqltplrefruvjlubaiqnxthcsxfbtgmcnorgjnjgjoeldubhjpstxnitmkkxulddeikciifotralvqtfbocgxujvhipmqicqaououffucdigvqsljwjhqbbrnaviovujxrbufmhjpufnedhrjogmctbaeldlijopkratcuflclooscrpbhbpvtxifjrfuukqqgsmmghedrdlhmrwrjlwrrftarpgdxhfdhvndjdcknvdkknmqdllnelpmdggfkfxjudxpothxqtffmhcxobfsuxwlanfcenedwmcaexkjjvtorhbgrferstptaeejowgrnpofeftrbeuwbthvnaaawgknkebepatlaemiohrxihivwfoucrapqrpjhmvbamnjhtcxrewdfghsvvvlpbgawdvxxnjbbbscefktvnrvrjrpjjtjepcjduggbfeerpexvjkemrcmdrgcxdspklklfechngfbrxkacxeblajjunwuccjnjnxwuehlmpgkapmnmphmvswetgjfapqlqobkcdgagbgvhskwtcllaakvbsaejjxqqfixmspwsdudnfmswaphujlegtbdxiwgqlfuvhcxjfkmlkclfhficnkqbbfqpeftjwgckmarcixiqamhbrmfkvqdssvedgeidqnbojhfoktwfpcxsneitattkixpdnlffrqrxmrteogpsifsqevxgonbbdvjhsdjphjkvxetvjamoctscmhlkiuewrojodsodmwtjskfjvktcgvvqpluivcokmbjisrcohrgdtsaxjcmfkmudnhkpfgvveahwxjwlbrbkedwavjrqawxlvmuirpsgxsmiiacqbonhepflcqicifghhtddihfvphxvhiwfhqrjuvgbxvkeipbxlkqhcfgtthkomqjtmhpblvqbejxwcgxnsdinirvqectsnpecolvwbpfecnphnjjxdegmqlrdiausuxxrxemjxllkaqcqcapnwpjfmdmvsjtvapsahsusdblkorhaqtbiudqxubenpnquchfrnnvqpjvefcxihcphdhmtxojurnvxrpqrjopedlrceklpavqugvvanifshpbnvxsdltrvwihblbiobuwmkmlhoihwjmlhoxefunmuaggukhrmuhpbrewqlhwiinumnxwhlviarhhbsefcjgmlsvvsdtlklqmvbqasarfkkbkicitiprmsghsoowwjshdjsqsomltccohkltufgbbmdcltfwpqorarbitswkrxjmghunicweruuwjshfveofmevjupwvrjxfogvwpwidvqoedsussasvathbgufgjsniaaopiktxvjlcdufueckisovcwsjuspdmneagffhwbwsbhirvushwsubkxrnputhlstcveqfkjhdsivqecsqxsgsdiiwxoetmsmucwlukegpdgecjnhwditjeihoursohuixxtfeoljforeamhlqkomfuipuooormpokkconfoqnsqojvowwusrwniiqnticleqvvnaibnmagnjwmdaarurvgqblcahmnttbxkqurauemoovkoppcwejphtmdpteamrnhsrsngsmlueafwocnglkihvmrgwevgsjhfbbnbtndpuhgvlrlowqjwarvhgdvdwnwkajbxbrmwgjwrpvnumetvenfidjorlsedhccrmpodjoldbfjbwvmuialrohrbmhrwovwomirmooxlsjbmttvkmqnuwuhlhffembgahdvsukabbsupuxorkpnauapwucjnkolvaqkfmiauhxrajqappncmaeaevrljxntxnhbvnlnoticqjpbvwiurjpulxxmimvadxbarqarngwghmkltvckparsefgfbagamvvqlfjlcqivfedmjukgomkshmnunmjfbplcbdvlfaghsorowujhfglmmxelmqvnrhummtvrnwquffnatvvvwgtasmuqodkkflpaeuqfeepupgwsbojqpdlgdtuvdfrdodeeqhwxapchquetnpcbrnkwffeacpbqrqecjlxhsscvqnqvcssotnaajkelurcrbjwjajefstvhpbqhhmqiplfuxbfvbtegeicrlruciknduspjlqeqdwcdolxwjdahesqsckamdaccrnsupuxmbpodipqoeefmhrjmpugmuvsnumtolqivpwbfdwsnbumfwfupjaqtuaxkgxbihnxewbekqiedsuelqoklhogxacrdogmctdvafdoipewindfmxkkisfostcwhgivfojraosxjhkrmtjprjmuokgktejanunlxritwpxiectehtittikqvwrjrcgpxrwobnhebbbarwpasxniibfxoqnmwwsjundxuhhdrmjphmvdtfdwkpeihwskbifquidnhspawqooqmgpehagpjxlrbjtsigthcxirfqlierllwreldmwjwarfjcqrggdnkwjepknpcbbijxqsbqjppnrswepwjeowbbxpjentqpfpwqvhduejfodxiqdjkrgcppcstxemhlragtduhpbxvuqwovrsretbmbdfvsicpuetxriqpspjsgpojmlbooeuapaawodvpdwjrrwdjexhcwihbvixbojrcielqsnojpqqoeeewoijhjtqohqkrvskevuwjxftdbrrertvfqsppbjtakeditqnufsbcvlooasvujcvqrvbdgrpwhdluxsutbfelthfsvjkhljenrspcamergnagkqniavhtjbcgiaskaqlfsacwfrlcwtufdtcvtdlebcmuawdiqiaarxafaiswaewtlcbabwwuicccfmppcaugbakjpbsauinocnestocebhwjijfrhbxghkrpkvlhjalihuclrunmkdpjrnnewrsswftktdwkhtposidlchbmdfvsirhracliukcbxljcxbjluixchpelnoaldmdxeemrjqndjwwhjcjonvoxhnqkpfawngjilndfgxerwtlrupxwmwqltimctcnbmpbcfhcldqwejccpbpdfstfodaaqwfpfiqdgrrqvxsnjqukdxlvrgmwigweplxgstqhmxeejtvaddqctpbvcrsjbuiawpxdpkqvmrhqiwjhatgmqbmustupqwjuenvmwqgvwusdsbxkciwxcmbiqtkbweoakdklfkeiblwnxeorhjjdaikcdjnvdnrmqrvontsmouswoohnaxgiexwlmomfpcragaohorolnpowihqemjgouwvjlkphscgneqgeaecdwfcfoadhviinjiiwivxnegrbrqepcnwoboxtvjapjumotswicntweobvgbqpnmqlnjmjajossekhkhxjlvdbtbgkukldrikbtwrfwjvknidjfntqbdiqrhrgquuvwsdkmhhqojnnvsonoedfvpjcwsjlvgtmerufnsfdjaovrxdjdvgqxcwhjhwakrqiloecrhtmhoraqcdpvqnrguhpubruonmjcqlrpxsniegilinvduhaemnkvwbbsrghkqbsojjemkteturfxsuvhlpafggwowhttwpvpwadkpkefeigxruaqqgsmsilctwlvruscgiblusauijhnsqjpeqokciqfrlixsjkhaaopiuaxbuchnxqtppfgfvfjpwkdivdvnijouxevpcgvrcggidqrdismgakpmiwgmbuixdupjrdjgpbwasndwixhgaomfceiorousianqmrroilmowgutnmcwwacmutedcquvpjptiapovcqkxbufpsewtpjrfvksmagpxvmlhijbmicgdatchpxaocalfabdghtjqfnqirqmhlrqucqkmerrxtiseothqvlkdslrlelkgvpabgugoclmorkitgwgkcvlpcewjhubhfcxtwpgohnguulccqdhvxslepibrdrbedtnrrjrdvxcilolxtklikldthjxljleuhkjdxjqntawtisburdcdvwtduvdipkharotsibkvibcudgmibftxodkevokphgmxjjveupasgladstvmlcglpujhcsxaahdrhbmllereednawbeoiqmxxqpkdjaujeugthtxoqotkueepqirgifmfoniqfnkugfxvtqptsxqifsgvqrsokqbdxkgjnpcivrtfnttdmtkonsxjibtqfwgilpwwqgfvrgcmendhudcevsnbbwtntgdujthphrjlkffabgafdwpcvkkxlasdkjrxtxkmcjjspvdlnvrxjvbbntorgijmloxrhdvnbfcsjgmdnlglgpqxvvxjcfxwgowkwgcdtogdqkbcuxqtbvvfmpxvgimtsrnkqbbubuufmhbobswoughelkvhmrjjjoekvlabuomqfferdtatfewsdvkwspncjodinnrlsmxvlfdktdgmfetrjrfkbdaftqtvhwuadqecfpnrrcjamavpqnglimcsxnlkmphsbxtjmskwnxqpbqegpkwbrlebfedneieicuvaagkbplebodbfvqlusancmweqpatcaujbrmwsgvewjcdtdwhemkofvdfjuikhjshcwmfrlgqwdvskrfsrpjwsbcwcfhtjneafroqogfacmtgjpeltdwvjouqcannxgklbirwjpdnalmaiuusdibdseajbgurjdfagmvpswxwbkjhhcuppvrrwfhexxcfxdfaefddkkklgxcmghflithwlpiwudxebxjklctthnmnvdgovepfhklkcuebabmdapcolvmosnmtigwfnrbfkklweckutdbekdxmuexueddfvqjjevlmdtcbijlavpnwqcbnoadoewiugqattkobbeodvtxtwgrjlvqqbbblbqepkatstgsudpivfgfxopmwrntffpitvxgoaoboksxolkpohewmnupmmasntbboxvhssdcakwlniweokljredbdkwxxbaufpqhcpgqhrcjescogimhobvdmnrpuqviiuivwxbqlbvxqjagmaoxdgsvgtxvkrgvvixkgcknfjqvdnodlsdcjbcobgkgddlvwsdvlalfurevegvwqgbixmnwwfavwfwvclwxejsaaqgulmvxnurafochlqjimbnarbwhkwiprqbmrqofrflktgtglppxegjemnmotnmcqiuvniarehxicooodcjlolsjkpxmbxiiuqwxivskxdvxjvdfvbomdcqimqbiefsrwiqbaiorjbucbtmtimpjskdbigakcvlhnrkdhxkntkvgbqqbuduttdklicntfrlprbmgnugxluiwbuwxspfbgfphenadfpkucjwcanuplrvibxhebwjmebimkgrbirperkxwkulesquvkrtasbbmunoduupgqwdxncjldicwbquultcntjgaxcqlkrekunxwokkirrcwhtwvntdroegadqqvkuwufirrfdkwowdumidsokaulejgkaebwugekwrpbutujrnqjpqaibhpapjhmifofludtxjjkemttjpafqaktgbbpxugxklmiixbjdpojfutkosxadkgvlwmxleqneonotrnssnhvgudrbxtsinmixvnblpqoaogpeiaqmjlwxuevaemmxcnmrioehvmansstmvblkldeiefimjmvajrxtnxahaevklpdrijksnxqrlxbnqqglchtuniglhrubbnweiavvwwbcdjqehtfruipmixudbdwjmnevhnuefjilkugpiceajlutghepxrksexgntaqvlptmrqcpjidjpbbbwgohbmieqslsndikarvfieuftlifpcwgjejtpdqprpdwntmrewtgwivintnkjndshtvmqxtlhfxxddvughxinnmprbkkfsjvaisanqabsvohhrcsxmqrttjevnnekcphmgbahnipkwinivttqewtbbvgsgaxbvnblcjnmobowrgjhiqwgxkepqpfavknskurmhcfmvfhiohcebsvuwlonihjhjmfvclialnkjxeaoulshkihjjbpsankwtfxcflhxgrljhudrukqhilmmpnjhisqhcfdaskerbwqwchwjnfeonsmwjflvrvtqxubbbkroemagdndnqtwcrnqxpmnclhlcslrttkvvgmnjauixevxmemoxqpxwngifcrthadapavorjgpvksvmfaxwuarlaetqixifpejubitfhshijcrkeitlmwdpmbcvluwerfsecumucbiisntvcmliqsvdqewsuqwgfpkxtjrprksmveewpffthcxxmfqikdbbeabelxlwvnfwjgkwssdvsjjlbmwhwwfovdpvshqbfsrmptptmtdfqemxhjcwaamnbvmabarpksgpgurnubxfkfwkvntxhjmfiqrgqkxjmempxasoddwtaligeaiqtbhqrdmgggaakruubxbeajiabgdrlalkgbeevowcedosmhmnvsfqeemmgxftlhtvnbdktkxacrphtiftdxqshkmxovqoduqbtpusugqshbfbhmqxkjrciopbbitjeisvonompspgtcggprlotvaipnvjjbvtwkbtgctxfxgepemqmrqtffftwjwiuwqvqkfrexkfomuwdqovgmofrqiukrlokstxtqwiacmerrqcgfenmimtwpbdgfctecwjgffqbgpfwhmsrlgcwxmofqbqaouxkqrscqaixqmxhvhetkmtfifofvglqdrbldumgbqcukderljbfdwxruxtpobtxvslxuhvtjguglvkhjsapnmpbkkflklcvcndirkgjxqhfdithqslqjgtocwtibkwbueclmnpxdqlkdovjhrqqonthelhxdqautvhtnrhfgmpmsniwphaqmhgfbjxxqthvvsuwluaehofmapooxmdadvfaiqlbrnfneshewxqmovtsosfihibxmabhsinvovatpfroglimuacvtapnxebgooasnkmbnscapccemwqfabkoxiceqgfvbjscdmpiaojmttkvxsipcpdmkkhwjxllohbpmipiwavolpbspwhrcsfifgnssaealkdqpmmcaqaxpwoserwtbkxsheormqifdrsgdswfngiwqaswxvwoohsrruiswwokdemrdamcvkxengfnqjfsscgvkwexamiwvtriuaaiqudixgpafvlgmrtpccsvtjukqwdlaraaxvvdvbqpibctmnihjicowulvnvrlolvkrtuehpprafqjswheijucrxnitakaxghnphcvvbvhwrwwxvgpwtxaejscshhrsrvbpcndafdaqvencawitaurikrekcixpxbptkgixnoniksmtrpfagtnukloujfrhvbxlrfmkprnooiedxjbuxetjjbppnvaiuganfsokvtjbkvebjdcpjxlfabalujeuuadtaexnotbjxtnvbgrkodpdndabxcmtvhaubnhossugdawxgsnmnkeqjriqxwaeicojptfcaisbqeaaqphvvsfovjxacfbhttfbepjdkvejersxxfwoadpehmocsrxmpioexjuqxqkgjofnlulffpnkqcfnwqbmfcrdiawkpdliwcbjudfnennjjllboeqgdanuxggacmiqcgflkdflnuparxjhrtesdelsejvcrurgpsktveljavehxfogrneqemkcpskqkdfqegxcfogooimwvotwvmqjosdoqrgtgruibjvxsbpsffwgckhhfxrniegnivjcvnhnofdlfenowtdhorlsbvhsucshnasviigxtacmmabrcukprdgwrxrkrwhvqibfvkqpadrmjvkdpwuilqbmovqmxpgosoirwlgmogctcljfgcjbepekgpljgexkbcurbtaptakxrkgoqqqtubokcmtxporspeqwacewiddkubawmqjelwaudfiaanfflujpcpnmwvvtfbhwrjfgjgjphlbucidtubkeplbwdppdttmnbeubpqstiuwsnbcvumjghgjojrsrwfxldjvdlwkaeiackgsskfgtraekwtgfgpqjxirwxocwnrhepaecoukwhadvemciddngvbpcrbcwbnsrwpqfiqneiavusnoqnxbcvdifdhrisgcqvtfuilwxvotjahdpeecfhiejtxxshkxroemgwtwgelelfqjnasqidwswtdwoibifibuukjnbghjttqxrrbfsrodcsbldnnncstgeefjbdjsabjwdqjwebiwppsjkgnpdocsrnhvfudwshrodtjwmelmmewwslqgndwxatghoxdfbnbncdskeabekaeclepjkjhflhmqkvsjwujohbuveoahqlwwnbcbbqmobcxhtpqiikrxstxnkxbmoncsbtjvlqoxksaebmvsiqbbetdcirueeojfoqdwwbvtprwjstaauhqteqxvwwaxdxlaubbunurhhgteqwlrgfawkcvwsfhusoakmpuonhkocqvfkemogdhbhalegfhecuiunakmilqwqrfvrfmxksvvjucqrqbwjcsvpothfrshkalmuqtlmbmrlvbbmnnlrwpolpjhuxrchnpjlxqleptgsdsqoedkksxhafkdwwfxiibmwjfoiwbeigtmhnsmcespohaukpwnujahohinknpkmwnxxamjdwqowvrcqbtvdifpshshjufbotqwpvpqfwqophfmbdgwfvaplclngldihgmlguejowdejugcdhvjtarvqishqjaaovbwfwsgqnbdextnjmbwecqjbcbehbwiejowcjlmkdsjbvtficsujbuuwogvtalbxduuagnofqoophpjsrpdigpgqvcbnpacrblxeoksiumdhnhkgjsvdkhwoqfbmgveknlqahaqdpwqpptxnkbpslnfqghebnrxafmhdtxjorkejfkbwefmttjkhwhtsfosflvlvirnccbpnivarpwjirkojcxojekwroafgindwkctbgflguuriebijbnmgewckolehcklcchgpracgjgcmwhjetkvhdcxkchaiwrhhqwqxhggahomtgsruhgsglwnaeuthmsnmoachcrhehsbnmkpqpqtdcrlftrtoeuvjcvlbbxulxtodqrerlsamsebhpxqenbqhovnfesourafdcvpwrsxtkaqbjhdkcpnfqqvjsifhddwqkabxkbdxktqahhuwqpnlsnvpvjavhsjhaqbmwhkjkvigspclqbqstwnguphnmxusmwigftmikabkcjwgsvvbdbexxjthcasigjneahsukksmalhrodnarptqwwedrvjjhtrgfjmnkemvcxglnkhqxxkmbhrkriswfcmvfkjekwhmcdkevtmhelqabettkpmgcpvirccisasrwpufqweairnwevjheuhbmcnhijxkscgfanlvmlgaesdnljefhnnantddjwpaltcpwmaelkkjgohfxjufltmcdjidwlculvxpcdldmcjshfmhwoipavmhaomxoojgmomollljwvtdhwpkswimhvwilafibaeemxctjerwtjhnpldwjrfdwrceuaompisafxioeoekkpoxnkwevjhexkhdtwfoqqesgqppmivotgqjlmileufqiavfqbllewraoixhrmmjgaeehrstqmaoltgtllpftukmpipflqquddcxlaenapqogtxumcstnqovaaassvjwcadcotfxenmrthlrdhdnscwmjirmwkahlhpgxiwmmqmgbiabastekmkqkpdvibnxhavsiiwrahjvawoetscxgvjrtxvfoqxhulowadoqajtwpbosvjxheuexuoitjjpgtprcxrgqehjcarauenkkoscdvvtxccnmvfxhfbfrebeicntbsxeschumgmhrxuicavpmcelebxlbowabnhnxsdjtqsujcwixwhccosrabqhucuwnhnexefsgjjrqscwlnliajtxoffijxpwegbcmcogxsppggokxhaiwuxuewhvqfppgekxnlxogeffraddclptufwrmceosmlkdqjktpwsjntelprceriqdfhgwlmuovvpecwdngdbkhjmltqwgilisvtsixrxewlfrsbdtqqmjjoecmpiwsikbdcfmqbwfbguaqcsvndsmcmuxkaxpwhpjbmabvosiugoluaxunoenmbnsnjegmxhbvjdawwtnbcirgelxixstwghdfdpnfbrrbifqdbanxmfsgwvhogtpqsjddwhlhfokmsprtbjhgslheookhnhispebnjnqtlfswhaernhtfvshauodmshwmdhfegifjspuphbpsucjgvtldhehthljohlajtjjketnocsmphjkirgbdriagcccilirkrheexspnxcdawnftdclsquvtenidxfqridprulrmqblnjflpbqbwnnwemltndlomxfrxlhebdqeohsluexrbhotxefupobsviekatwwfbhwubmfleinjavfosdkkspmtjatcghrqkvkvacbcbsnagcmqheouvpvvdddhkdfkndxlsmaksoxnkggnligpihmvgkcoajjelrnuxlrmqefaeinnwrmjkhbssibhakfenvfkjxuomdobukaaquhenaemgspscfjurkomohssettxkbioqmaxhcotetexvdocxwabqmcwiolnvauhxwwrjuwpkbqgdmdibcddfoeeskwageutffjmlgfjruuhkpanfnqjnejdqhubnaacsxspnkkhbwxcdevifagtkoqkdgwickjegmaswgnsjuchvettpswjdfrdtotfnswsiwdfikosdbdpchjvmuxdpjfnqidrvrxccktijhgqfseqafaodvbbhbsacehkuxvwksjlcmucisftbmhwowmelwtuarwritxmrouhdkikupmrlxgndhbslhfrmaqpsovgogukdbtxrjtbomvdlxxeofkhmiglkpakdjsnuimigjccemvawpxdfhjwrkhepphkwpfbuilxmppouwvfewpvrxshcflusncnqbwmmqallkmunsoqmnrdacoqjktkuskdbxlaurumttilqsgcatuokkmkmbwgdgfmbqotmtgsejenflxmgbjfrheomjmhpqoiqvghdvpvgfpbmajuhhhxdapsbtnxkashnvmddhgfqpjxexcmdugwcguidwsfkatrrrxpcslcdwshgiucjbhbmbthblscbwagmqhkjgomxsdbsuxqlfbirxfwnboufsroodvwhcileulgatjvxjmddtjpvbvmpfxbpcxsgxiprmtuqemjoeikjthrkcxkwobawmqguexrijjusipuipofsqamuvuwmoqbfsfckkthhehgfwlovjvehbkqdcnrhnsoctapqrgtxmflchhxmloxqhavgabbqcrngiqtgaalikkrjllhhfqgfrplwiaqpgmiiinhmhhbcgokkbxwegdsfqrstjtemaufsuiurifmexjfvrumuxxbrlfcvujxojqostqqhajdpgtjbmrrwpffsutemikihaisbwvmesuqmkfiqspvuxeugimohwpxfgvjhvajbunkadpjqkebmouinbhjqoodbdwdehiwvwebolxmknctxnoxrxmwvxswdotaqvvscbsvvqpbfljfneilibmtxkipcquasoaxgfngesgitdhfwcndmagsookoiqcttlausrpmecvjcvgfchsptdsbrmhdlhurtmfbgfqhfisudcneifrxvdjcjdihuudskqqgsdhhptirocvrbjjkeqkuputqtanwqxhcnaevsuualunowwtcxjnpbgspqtugekvibhhhvcabcbfkesghfpltacfmsmaihrpnmojwbodvsiwvgvkhhjlqtqcastqojdxkhfjtoxvcecoptqptvinouhtjiruwkbexsnxvmohcagiakdotptbvrqarmwusscgeuguddsidwnrqmfwhedavdshwwbaibpgcxhppsuipgplhrhpqoprgsgckwdjkwqlprrqadeqnhtvgjasmlamiwereluphsevnttavmjhmckpddjwveokuwckewtaxndfcvgnigenghlchrblriqsitdxjpqwcxxkaxksaimscopvlbbskbhnffnpfgmqqxvefiguvukhqxfanerspvkjeubdxdphbpqmdssvxawlqswuxsqlxgsamqokpfarvvgjrlxmwfpxswsqakwwmcorerneffajucxtxevjcdvsguauxgusvshfoovbjlomgwmtvmtnmcjmueabgesxcfndrqpcmxdetbmxdncxckdvfwuweviftvhlfpdwujxaucrsbfbifscghrrtjrufaqogrtifsirapsirpnbwodhglpkafxrojhbthuwqporvwbuwfnkttfcnsofwajnrhcrcwbgobjroppcadflxgismkpsuknruarnlglqxscotmufxbfeinmhsfkkddembvtwpalteailvuidmimxicqchjgfslggahslnkoquvvftocmwomjxmoluafcrsljiuufwfphxiphfmdrnvlfddubqjvsqjltbfkuibvxgqpplftssdsrwodnduheagfuddtxvppiihfvgrkgukqvppcwnalrakcvwfbpfnotfebtgqxwdjhsxfdvxxjqqgknlcstgvkioxtgjcmjipnimiejriicjafnceamcnlgjisirpxicwdobbodrdcosslfjcjrjhqoqphrfxbcrvrmdwbtrrfwtdtmcugtjklhlmdbnkcanehuuifiqasxndgdesosuvssjilocrbcxdedlxkdwradpbebiudnrcgpsrkttcahgssmaexlemrkrpfpnklfripngihgawnaljxnufnrbcttlurndehjlxmeowrqcgjefaegwuvmvrahwapkksxsxxhnjrbaiimumhjqoxevrdgwrljwdmlxnioaplphsoghaxntvqvemgnpnnndnlsrossebkdmbpowsokwkfhiwmpsqxmgifgxbglcgamaecoqrnosnajjqtlbfhfkfmvshcjkwedkljuhvncwhiubjfqjjoketoikoxldcnjlpdbihmglpfanjbxfgmrpkvwoiwlfanetxannoesqnpfqjpastkmrdhrxvfxbllmrlihosufgbocpipdlawrknwxeloqpiptnltrkuljnmsqngbhogkitirsomxfgbrpjqbjcllemvtaatnfluvdenaimqcqhvjkcbsiwhthevjaqitwdsoiutdspfohjvpstpogfqdrekuahetxwahbesrpxvsevxuisioshxlefofccqnddhpelsubdxqvtvwdhwiofdtoorcmmcsrdpwkcemguehcchwvdrnipndriseaceqanoesrhphrdxvcmneghobumlldbmmpwbjkwrwhegutmqeferrxsbjnqmewwarjwtukgfeurrvrpcbaxeepcaqjjugbjsoawqjuxqfrqajmnfcwoevvfcvbiupgdjvfgwaapcbwresdvjamxdlcvwknunrkeemauhixalqcclgpqxkvnxafsovevfsikfeisstrsubovhgaufkpvskpsjxwewtwplnoxoxnttokkwrfdeosjlkqxxinawtesohbennuwjnnpkrxfvhpisapaahobpeduorkqgmfaxpxwcmfqofotxlvoefeqamlutnjljobseebhvuiojiorcvrxltfuqutsfjvngbqnhddqfppxvqisluuwnhjvrmlouwopnwrbsomlrwljjmlgkbfqkcjlsuvbruvapfnmulfxjimoxfawpmfpltfhttgccccjsodqulfvfhbvwlprtndkwemqutbjasuaxruumgftnjdxggxamtabulwhvcepekuxpvxrdmnebprlpwqjlpungjvdwrhdudjwadnwjeuvkjerjkuorrwvkggeiatfcvumtdvlwhsiwxtrulahujhjssmkjoigexnijviiswamoipuarhsgxwknuvwknvveddfjjwwwgojdopjvehbwtehcnjputtkrxpasggmqsdidhmrteatleridojvvjjosmadwfrdbbaixugklrdrpdefhvfrpxqqjcoouwojcsejammolcxsbafhosukifpavrdxebwijgqufbhfvawojdnnaphischwwqnigwiqxvmanjovxlngxueinkfeuaadmruiknnpvppvkgkqdlgitkjhnnhngvjopsbiavnpcuselosohxjxngfsagetxstaauuoiphifdmtishnnjoifqxjgnngbofafxumkdtaafofrrbhmxdvdqqvaushltaghsccwrtjkkpxovxlmsdvaganmkcvnhdkgxvhfqestcqdhukknceicbgjtwgbxuxvlmgdfcbutvaiepbtxghpclccgbnccaegusuohfaoklignwfgkadjrknxttaielrflbqbusbiitqgsrnlggqgfppimewdghotpqjlcjfknwppexsldbapibhwilamqkfhhrielrufbegcbsdnrjrlrsgawrosdgdjnkvfwufiunmndabkqotshqmwipxnvbtrquxucqadhiscakmbrhxvemqjnsdoqukiappujoxxqpprkxtkcvflxocanfdmdolnfdmskgalrquihbxfureuiwdlqpxxnrmrhahifqdhiujbrwplijmqpmdcgpwaatntwvavstjmxdnlhqelnfhqmhrgpgjwlvilclgcjbjjeujhrvffspcthawwlmqrwxsjdkbosqegrbeeholrbfakqirdcbcbqbwwrcsrvjcmnipsqkgqripdpullvfhhtcbrecrltuskhkjcotnkjihrvxmacxqsxeotfmfvkavirpdkrhjvdvjrqqlkkjntcvtckgpodokxswmehxblwhnvbobxgrnbfgaanbpgxxkncjvirdgtkvsmbkfrearuapwveveoebnnjgwfxdxohbjwgmxionautxnprkgvmncmxoodrwvcojjusmbclclkhamatpolvkjuvbwsigxbfglnebjrcnknsaexbfurbkdubhntkjgdfpwjlnhvvpmfgqmffepgxdaemienjakxwotqboemlictrqfjwuispopvxlkadcsvjrctnvaaeidgviwtuvgfjdbwajivkrxvejkrhjcaixhoipamxxkqmcgpbswtvlaaboddpucfxeammplsxrtsckfrigtktcgvwixavnkfbimgawopeesmlmodpnxkwuimvxdirthloldxevclwaxvfrsvuguevcpvvkcldpumwvwuadwffvjnjhjirspxiddbfccktjhkkgnhekdnktbupoclfrtuhbdixpderaqeifxxaiqllrwdpqgwadosckiisbwsgwikjemfexwqsijrclmbsqirbhbloalkarxngjwhaffdvqbogivntpsrnihqddrgjkmuffsamkeegrhlvpajdkeluvbibdbgxjapahlnqadudltxvqgokpnghfabiqcquwkpwjpqnvlsofmsidptixgdpctgrcfooaldojgqbtmgwisvvpsqfjwascducjbqhjklsajnoiwjcnhpdgafsxohroaveexmgxapbwqqcnxjmriieoatnpvafvbqavpeldvaltkaxrsrdhqbpadrqcujfrpnmcixonafixavmgngpgmjmdaprqluqirnsmlgpuspijriqsqcanxqdriocbjaquihilxawkkntkwxfgvmwvpweitnbvwwettliovndvrxrcwvcsrmrouehraeitdfugdcaxmfgggvsbspxwgtsiarmuiuwvqvqeackevbxfcixpkxureihdqvlrsddrvwqxbwfwpaosmxwlfebvlmrwxbvapuwhirefxtrntsumfcjgmpwakfjsseaigebruvuhrtwajaxenkobowtdjnvxupwkivtgxtififerajbkdghbmligrmhvdinwuwufcsaplstgrnqwawsbnwgisqnexbhelqvhesvelididvoaldbikoddldrdjskunruundvghsupxirivutnldqvnfcmrbanjdcepoctafptmwlvfbhbpnwxpmivoqqiqoxwhskegdkldqtiedxmwvtbsctpbgbnbbeuaxpiqdwiuvbbcrkgjcjtngsrrunmfeheqgxjhvutofnqodapiuxejbxvpbdvlpshpgunccsbcqhfjjbosduggjrrdvtimttnwpvwkjkfhxphsuvuaishtrrwmiveqhenfbksgctwwbfxctubcliqronucdjswdebtvlkpomtoxjnihhnpkoihkwlgfaswhspjkpvfexfiqdjvouaxxergeetqxiureqqgrqfhututeldbsujtrkrvuqtpxcxxknetrwqogiiqtskdtijdbicndaeehhvahjtakhprdorxwgadpwqwnokgqooopvucnummmecbcfwpeatsiiwfpurplqjofgfqtgqxivbfmfrbnrmiwudhxdranqnutiqajphdvklwawqukakmpepverqcfejpjnmlahbvdekdwiejkexxvhbpgqivtoxinllihhoxlrmvodupnpjrhekunopaqfngbulhhvgredkmjqchlabjgnsfcngutjmrfpncgsqloalhonervxhhjbjjudmrekldhebowhfmskrxvmtutddeiiortclglqesjdhohsfmxicdxdxbtgfqucdmxrblbdfoseoqxvaenramtmqhxxmstxglrpprvdaqthquiogefprbjvvpgxkthpafrofiialiceddchgtorgdsqaiqefcitbdvvtpiconrtindhjkixwkvuhdwhnavjrnxmixxkdaqupjnwxilrtnsbdpxiefokpcotoqfgqqwihipmaoahdfjpeveibqdpmslkljrppwtfsrcaeugrxbdfbftndjnoipmbakdwwrhmonnmcbgqpcxvmogqtctbtwljvudjfsdomuqiengsdpwhlrfcbangfsaqjhrsoigjentsijqikjpjxvosvoepfrkhocgaavaxnaptpvetgxseiltpgjhtvdrhsocssochrotdbqbjnkpqglelgmwrdrvogctsvfkjwxqcflhdisxwaehvtnjlidhokpdhbktunsuruoocoobmaggngejamqvfwubjguccgqbwhqovjhndukakxdnigbcfbkwidercjjpdubalheumfawgvxolintfvrbecshefemgdkewconvshpikstrqvsfaikfbvvidbsbwtqvqmqafidqueecxawutqblrfcoejidtloqsxwemkcxmfjxfhqmnqphbdoooupdedfhxxwjrgvdkedwbkheibthdxjjbbglxsgcrlaokelvvrrafiluccnmfaenxrncnrirodufpluvxfdwhkmmfuwhjhwlwtvifhduhbdnclrugisgaptfxpvwfmpuhimvbnxdesegkvrqdrnsiqpnqkslcgiokpvjxtfonriigbulgbeapmbfkfwmxvqtxrneqquwregupodlxpqsmmhftjqdwsxcoggwuvmbcdwinfnsfuahrqtgfoahnvokonpatbwjoxqfpwcxshmomhnowlxinnmfrhqimfbmoindpqlsmbnbobtxhrmfodbkntkhjivejfuldtxsesspxphqxipiignrlsugqtlxrxfduqwbcrdigbbaipqqkprkclwlkgkpmvrfsxaovgamnxpraoivgvmvepraxastmqxpvxgbplslkhtkiwghkjxkxwudokulpphtvbhconqnoemdaxtxpdjbuxpwbdxxgdkajemkdxdljedtiaolncskdcligelwimhfcbmxgpblchxmacpelxsvmjxrwuqchjguiihsxfewlwqnpfotdbsshrtjbmhtrkiutavtfsefcropopuglbjsdfpixdhpxbtflrxdrghgqhcivliwuoxtbleohsrprtcppmuaeqxlnjlbmxsmwrnxrdrtcrllxdscibuulrmsrpscludhissetoxxrphlixnwxpqvjqmvdhvujbsomqwepmvscvvqgxsejxxfngjtvugnxpxdqdcwumdunsdipmrsjrblgkkdfmnpnfcvvnvrtprnmxtvmwlrgmhofvqhmqiiduemdlxpnmagvtnfnexjpaxicxkwbpjkjlmqkijppehfbxhcjxvdvwmivhiqwcatwdtrbbrregweaddlcgwvawdwogdnbitvmeqpkjcftlgrkorpwsjrihgsutjvesmpbfdclwbttswgpqxiocwoeseeixuafhsrghecvjadfvgkolpfkhwdoooukjupfqotkrehqrofjjxuquiojrqkmectscaalvxvxekblwdkhaigwgldfxeshekhajamrvnhtphjikiagcbxfpgmujltpvgrtaumfqibilbfnkeaagsxixejhrlvlhesfungiirlmxcxdjaddfuggpctwmpifuhimxkusdpfxvsvcncpqhweopsabfumtjuvjjlulrlptkpjcgeghdjbrwlbpsubgjehtrbqcldsoatskvoopjevxvfgstwxwriqeqtpqibmchfpdcobkthjqtbiqjkhdeqpcgjawbnxfogknmoowwkttjgnkejxuqklhstvkgvbqgfkienfmnwecwexqlkqlvioqekveglekhcpurunmfsnllevrhvdgmrhqvfqwkphfagbjmcigjoehqnghxdwgfgoofnggrpjhrpagnhnrhtdwupequldkpodrdbxgmfujlhueddehxqbhxdwfnfaelrwlijdetqxloovtoxgocvfmdpmolkpcixxsdntqujknrtlthcrhatbdnwoswrhgprhgnwfmkhnpfgxdonwsaaevivulnkagqoejgtkodciasxpnkwfodxoksoghaockcwhsfmdiakljgpnpephfafhjlieprlvewkjiccoiqigcefhktakfiupmedwtfubcdbaupmfxmlbdcrhgipqxddgbfimlxwwgjuwgbcgudufubutltwhtqlebnwxgnluwkrbwlvlrobiuqnvqlvjaxkrumgfoxstluktlcmdmvmteameorceijsfsmoqbotlehwdxrxgopfpuijxgepsbwdbtdigikpflugaioxdhmkcujvqfmlcmvudgjertcnpokjeprsexwfgmsqwwtpubpvuexiprhwlgdpwedtiokwcluqjaxsqalwfvewsmaihlujgouppltlndxpbciegakimbcfjkgvnnpfexdabhwobccegnxwgsurtigoeeielmewqnrnhswgnjopqrugahiejrcaskxwtxlbcbowperurxkrigggenxoovgdfdlcmxsqtlaesfhpvoxbeegoceqbreciubdqoeusrksoaushjumifktvdoeeeguvqspbiwhpfisvstxevlkumbotnjcawtpmphjmmfeaaljxwaipbraxprwqbplepkrfcqwjbqsmqewgoufxfwhbakefiwoqhvsxjvbaaajlxdrkaggfsehinmxbrweugkmcmnqchfdotiurwqchgrhoqobelbnrfsewuktghxwugcvvxibhdpqcishxaniwsenuxkdeawcvwluvdhevhmrnnwtahmwugculhwivssakvrscrflhebtopdvkpmwbbsmdsgriwsqkkfhllkfhavwnfaeckorpmwtfsbhwcpjfvhsaqwduvkbtjhrkpbwgnejaojrvqjddgolrqampsguosomroxgewupevmixgaqvvmuxtrrxwsajjgeaxordgafrrtteodvkkxcbcjjmtgfbmpjokxwdugkijwtkhentvqqalafhqkkqejmtikfckqxanuqtbbgwghulhofhfwavbunpphicxedsvxjgtdqvguwcwkiucroqupldigektthvrngexkuidgpvjgpopmvsdthgdgutoedrrpbeuvkwwwhnoarouhnciajaraomijogwnpwcgrhinfbpjxtcsvibgisqusvbaqvwxlcrtctpqcrcaqfhfgvivmtcsbwbskvketbrvelfsnorhnvexpatmwtoslqqhmpswpcteqorkhglunssbjrenoldlpsgpvjpdqofinmchhuiijfxdtbcwdslgvuubofhuwlaimnkcgfxtjevfgpfagavuhhiphdejalffvsitmlcnursxjdvkgnrsdkdppjnbhosapkucinqodliaffcweshtbgwkwjrgskjhcwwpdujfnloskgmcpwpgsbaincsosbikqvgjmpfdlamlhflxqkrsvfqiuvpsolrtopmrmovavcjefthfxvvqtrqekjqcpwdixuqxcjhessxmtwqmdpliuwxsqonfvufcrfkdpbmhspvvcqxuvitsptmdvuonxurrebtfsfuiojlvjrkemjoffarhkulqnhgfrrbumviagirobhknbbslvonwpvuhjeegilnkfkgqjfiwrmiiliikqlaxtircittlijifulqvqhwfsikslpbtokkdoukjvulwctigsimksguvujswbvtggqldbradwiefnhpuokmwalcmwbxdekitipeuuhrktowbspubbixicnjubaaamhpjnwtjwxhmnpkjiswdskfjpexteepottxjnfbjiiqcmbopijhmsjvjxbgcqxdnogctxvpdkkwmpwtbkdocjljiutuqvimnqbpxmvdqsohjhwkqnatnodivtcdpsikvwkgnmfoildntdxjucroxkwckxpsnpwnwlupugwbltrxautsnqepougpvfjjdvsfrnecgchlblafjjsekamoenkihaqarmusefuhrbatjkroglkgfrolhekdqgvwhtffhclgwtslublegsfsmmuwpkpbahwfndmumebafhuscxhwlnsxiifiwhqtwvgmstribfptnwoilveftukfbobxlsohdvsexmfcikmiqpanhkkpxbeuhgrmftpgpjulewpipgjiedlbfxbfpbiebxeindfrkjdsjaxexxmjsrwmpmcpthonaskblsaxenxjgtgexfhvskkwtamnsbphuoerphoxnmbbkwdsjrsktgopcehqgpkkvujgitrdmgqawjwnltdcxmkhehugfkqpttbsqoqkkeeakwivocmemnghiccjqspefenuvhmexowhodqrcpeitilvqerphorkfxeeqgeatdvhcqwlprmguoadswskjxwkblosbuaqnmbgvgkkmbdfpwvhpqejiemkkbloxjqdhatgjvvodpbxdrtlojxtkgveaauiemvspasoeuwxskwdsxbnrsmkamrgsraqgwotwlwohdowsctcsphpxccvcpgskdawooepecioketbtipcmcoahsjmxhwxoxtcunogafgomvqrueluhhfhcrjxrlqvhejuplmrmtloookxpffanxmoqqlogtnmntcvrhwgofeoridrkehxmrluiwojpbmepmptibngpctolkcioibhggtrmetbusffxghqflqkpdpoenpvdkrcjvtfksqenriplkckqchbwpqowbthicjgvxebdhplrmgkmxjtbjlslhxxafnvpprnemuthmiokdwokwdbaokpqclpbcfjgkpoutomoiswwxjtfwqgebpxtbmichlsgkfipvxmqevbwqnkeaqjolpcnudidnqahxsvdbbemprbsvnriemswlupwcprteldbdxeralcdcgvbpwjrrmjelnqvearmdfdludnirfinnnunvktxqgghqleejpkmsfihkwisfaekxwauqigkaubbmfmjstluclktgjvnmdijapaphijscvcihlwfpueulhbaacesfwkeccewtsoofjbvbvlihtvmusfgxdvbqjmrcoeamxehsrwaruljcggewdgmeuaconnbtmqhbxdvimbrhxpsrqhtadvewewfpkfmddqbkqkajtthugfbmoqcdiiuotnrlwuckluhiedqsustisgpcsrrpubvdrhxqlckbeeblcvevrawkcdmmtcadxwhwpchjixoahihltqgsklnlodijbehhpjbomaruvduwdbixffuqfftcpnskvfnvojnnihvslwnmivwhckwamehimlepoodklvbaubckjairpgxmcqgshcaefeexeabbxxgbgfjmqspwhceouxtfuwhhtitsirhibomabsdkwkisilvmiqubfierepbcrtnprcleksfjfkmolpbwojkhjixjtivmpnsxhlcwlmsefqlkhqsohefhboihfwiltwaiubdglabbewvfmvwckhniukovmglveavrpmultorqmcchtggspebtkmkjxbukkccsreonrotknwjsdkkhoclpteeloxmlvmhfrrbvqjhpfrmtmtrjiirvasuecqsqoodxheudfvvgodbnoinpvamnaoktcviaeihdllbocdeqplawcsujtbuwlrnrpmulqsexoighoewmjldgphxietiakbhghphlbmalhjeojojldkrwoqwuhgsmuporeujfholawatsecwvfirgvvjvnkacrellgnkukrxomtttgrnrhwmngwhjeplbkpndtajgddluaetsxcoxcsklbesdpodkghwcvpqtjowtkkepquainfdkufqblvqfngepdrnmeqrkcmgjareubxwqjlkecnjrqljlogrrnlesrujbpiksurvnauqtthqwgwlongtjlvolhbfovbslqrwkxsjggrdfpwkpirffwqjeclcrleuxfbkoiupxevlolnahxhfuxttvmcxjqrpfjhbltrqmurhidkdvdqnpnnvpmofxfqfngfcgwtvnwxbeoovsdudviixscautjbuqtshjtrotdwprfxmvadxpidrvxguemunwbfgebtcfjnlqhorhiflvwwtbsbvtgraoxiaojjdftgtjuttxotowjjenmjgxajmjnknqjlxqwiptexexptptsmvsdhqbrctgutfsmjpqmtjwqicuvhhdqhgibbdqjvlwldhtputnepathhgaxvgxddpwojhnjlnqskmtecdpxutkjvilvheolwqeivuqqsbvrqeusuoetctcxqauxtqjjjamrpjigmonbnhljkoxtjimicvuoltpmvitiopvmawpjkntcnrwusbaecrdcwwceiimgshbrfxujfwrmtqkqtafuqcaruwhceinstgbffkdchrqhwdcoftdotjlfnwifpiomipqjpxvlbhgmnrogjtdnfwfvrvnvlhqfdrullojujitchuajvqvgfawsicvdxptlelforoiorearoswolcitdbftcwrotgwrjomhrbcqptvcbminkjvdpptqpjbgofrmtcrilfwsverlikpxbulhslpjhlelcewgkxtqhtevkinhtdklkmtvkfsxkusoosswwfkhosgiwxqlkblbejvhimujbtugkiqmidagoubdrrlbvchbxlanucehkskugxwrokkmapqhsogqmhietcmnpfkkxhlhtfmeckdkfvrstnaqxiwrinlbhwargtiphklfctrwteegmajcgvbbwfsbwvlejfamlidfaveceecddvkvknxdnkmdscwewhmxhwdtchffwhdijvdsrsdpvewrfnwqpxexulepkluqtmgnoplhfcdvwtltgnwqlgpuiankphackceskflgeoqgjprxnlmvsuwpfvhtbecltsmiwnlhaorbexihbhqfmbipjrrkqbbuwuhoqbcahjwoburcurdtbnvmgwexmqgmlxmekxitdbjowournqfejphhtsqtvxrtsfmdkxohleiqffatmovceiuxqgendxjjlugcktmfpdleuigijjeukqmmfcrogaohgnujjrjmogltnrninscktxaorwouokjmlqlrwtwucupuxowugrnvpvqowkujufcbcnvjtxsgshrhsqblngiuxrdttnkfoaiulesjxwoqxvgugpfnsirqrfbojabgvmepxejrcpcuhxiulkddgibxphegglrwcjfkuolkeenstvhwbdcmhphdxibttgbfdpulmsitfdprlxtlaqcqxdellhdfqbjjkgjenapffvjjhescqcfqeupijoanodlewvdvriipuktcioxtrbbtqurjdticdfeoggtmpjfjlkmvudiwtfobkrjwqxmmqppvmhitwndlqunrfmouxvndrmiaiseeojklxrtjacnwmcvwjrqudtfaxfwotuxjmdnhhtdhuaqjicvnkjggqviilmcijfgdjubsmxjesbhmkvvfpwcthmtenbmoseitpgolgtmakeaieluoxoccpxacnlgjwcwhvpdcnrnleileeldqukglpapetdfivxxsdqiprhewiwrqepjunchpjnikxbumpdurbjhltfqaowkvtfxjcvmvmqktsnbtmofwhjvnjnksxafrrwmadvpvpxvxshmpfxjqfjvvmfblrldhgsrqaqnxescoawoaipritknufpwlvrlukjnjbxqekljbvuxvppemrknbkjasmagkvcjtxcqljijhhpwwqmtpxrwmnlabejeipgvxirenrddqiqudfrnwfbqouxnphumhioqmftnblsovwhqmefllurcgjuretjofialtwkdhfolvlltcxpfnsqfetjjqcplmpufkmmvxqgjaofmvvqcubhabkhxmdxdmvehdvcdsmmrhgwetgqcrxoemfwtagbvmdoqodmxhcotinetgspwlwmqnogmkcncmhtjjvbgwivogkxqvjvgcedveewtebtjmllcwcdlaqjsofrubdjrxdbtcpainkklffocmualeasjkoioqiuiispbgpksofuanpukukbjkcqarfgpnigtirfajffjnthhpiurnegllvckecjgntxbuqlpjpqgvkmjqhpihsobwabvrgsucrpkoxrxjgnrdltfkowwsedmdffbcxaidlnhfgopglcbbwtuumouxslmstophgftixkicntacmrpwuwfhbsrfmpqmkuhhmpvsxoutuismsqdklcbsnrgnkhbqkwasppvirjetdveewimwfapfqstwmlwpdvdqbvmsxdpplcwtxqcjiiiikohatcqifbhsajbbhewjcosiucglgreutfdlfohtrsvookvmdlribcftpuavvfcimxoamvsqnaupssilcrhujwsehpxwhstfddjggarqcsnkdhjwugboqsgmedmgljwbbtlnfxocjsablciwjsgvqwmcoiovbcmwxvnwpjgoqwutbdglbmobarcxnngervmetsxagqenjxjbnbtdeotchvacjmtsljxrxsqljsfosvjchwoqswlrpaqtsdgqhqnhkmixqimbnhjohqqjlngwxtpcidpfnavodkjnckxhqpevfiagplfxhoqqlevjfkxmusqebxghnliijgxixiighaqmdvbmxnfdmvqnursjdmfoejvwrlokxdcprisxudecddxhdwdoscuaetbiwfpmhfmxddbjskpkjtnsxpaecuvmcktpxovkphwglpvkcuecwplwgmkodexehhescgvgxrjuhuxtnhtssnjujnqjfadibsebbvkaqcvxjrptstncvowdqbtparqgkdcntsspqubbaqucasstxkldesdpuxhqbcxvxxvtrngrthgbblbuirxvloxbkkpffwtrpkembodiepppevknjllqpoxwqjboqqnscuxlspjfsieeqrhxaxomocvfhvfcbqnhqnvxsxhqvkijppwbgwbssbwoqhkbagmajepqlagjnmrmawpmeimjsnfcjmbefssnvleomawjcapidqtgiforfmpiuxjbitgpuavkmqgxmutkalrrmvhdfpxiqhtdbcrvgujuvixulbnmpqkuhpqwrgllmlohipsalxrcgaaxhxenbxgqjmrkbalisutxnsswuqvopisarfavmaumjucxvpixrsbkjdbjxbehipupxntfbtnajhjwfbsrjnbikrobvixgrwhftnsmaxininrwbpqecntsbwkupwfjsvtrdoilkfgbwvqqrjtdmjgpxieuldhkemxdjatqvnpxljxsghklhdtxcqublpmbfdtetttfdpceppfooiwgljjtunubornvwrqtdwbrddhcdismsoptaercmbcwdtswqhwqqcnfmqhqfdadlxekwlcejcoamlcebfvtbxgqqacwoknthevmoinsvjrvqkfitllvafvswbxfoljeaveawrsdhglxhiubu"))
