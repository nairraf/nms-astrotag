$screenShotPath = "D:\Program Files\Steam\userdata\86443413\760\remote\275850\screenshots"
$playerName = "Quol"
$addPlayerName = $True
$annotationFont = "Cascadia-Mono-Regular" # magick -list font
$columns = 3 # number of columns when printing galaxy list

# do not edit anything below this line
$screenShotAnnotatePath = "$screenShotPath\Annotated"

if (-not(Test-Path -Path $screenShotAnnotatePath -PathType Container)) {
    New-Item -ItemType Directory -Path $screenShotAnnotatePath | Out-Null
}

$galaxies = @(
    "0. Pequibanu",
    "1. Euclid",
    "2. Hilbert Dimension",
    "3. Calypso",
    "4. Hesperius Dimension",
    "5. Hyades",
    "6. Ickjamatew",
    "7. Budullangr",
    "8. Kikolgallr",
    "9. Eltiensleen",
    "10. Eissentam",
    "11. Elkupalos",
    "12. Aptarkaba",
    "13. Ontiniangp",
    "14. Odiwagiri",
    "15. Ogtialabi",
    "16. Muhacksonto",
    "17. Hitonskyer",
    "18. Rerasmutul",
    "19. Isdoraijung",
    "20. Doctinawyra",
    "21. Loychazinq",
    "22. Zukasizawa",
    "23. Ekwathore",
    "24. Yeberhahne",
    "25. Twerbetek",
    "26. Sivarates",
    "27. Eajerandal",
    "28. Aldukesci",
    "29. Wotyarogii",
    "30. Sudzerbal",
    "31. Maupenzhay",
    "32. Sugueziume",
    "33. Brogoweldian",
    "34. Ehbogdenbu",
    "35. Ijsenufryos",
    "36. Nipikulha",
    "37. Autsurabin",
    "38. Lusontrygiamh",
    "39. Rewmanawa",
    "40. Ethiophodhe",
    "41. Urastrykle",
    "42. Xobeurindj",
    "43. Oniijialdu",
    "44. Wucetosucc",
    "45. Ebyeloofdud",
    "46. Odyavanta",
    "47. Milekistri",
    "48. Waferganh",
    "49. Agnusopwit",
    "50. Teyaypilny",
    "51. Zalienkosm",
    "52. Ladgudiraf",
    "53. Mushonponte",
    "54. Amsentisz",
    "55. Fladiselm",
    "56. Laanawemb",
    "57. Ilkerloor",
    "58. Davanossi",
    "59. Ploehrliou",
    "60. Corpinyaya",
    "61. Leckandmeram",
    "62. Quulngais",
    "63. Nokokipsechl",
    "64. Rinblodesa",
    "65. Loydporpen",
    "66. Ibtrevskip",
    "67. Elkowaldb",
    "68. Heholhofsko",
    "69. Yebrilowisod",
    "70. Husalvangewi",
    "71. Ovna'uesed",
    "72. Bahibusey",
    "73. Nuybeliaure",
    "74. Doshawchuc",
    "75. Ruckinarkh",
    "76. Thorettac",
    "77. Nuponoparau",
    "78. Moglaschil",
    "79. Uiweupose",
    "80. Nasmilete",
    "81. Ekdaluskin",
    "82. Hakapanasy",
    "83. Dimonimba",
    "84. Cajaccari",
    "85. Olonerovo",
    "86. Umlanswick",
    "87. Henayliszm",
    "88. Utzenmate",
    "89. Umirpaiya",
    "90. Paholiang",
    "91. Iaereznika",
    "92. Yudukagath",
    "93. Boealalosnj",
    "94. Yaevarcko",
    "95. Coellosipp",
    "96. Wayndohalou",
    "97. Smoduraykl",
    "98. Apmaneessu",
    "99. Hicanpaav",
    "100. Akvasanta",
    "101. Tuychelisaor",
    "102. Rivskimbe",
    "103. Daksanquix",
    "104. Kissonlin",
    "105. Aediabiel",
    "106. Ulosaginyik",
    "107. Roclaytonycar",
    "108. Kichiaroa",
    "109. Irceauffey",
    "110. Nudquathsenfe",
    "111. Getaizakaal",
    "112. Hansolmien",
    "113. Bloytisagra",
    "114. Ladsenlay",
    "115. Luyugoslasr",
    "116. Ubredhatk",
    "117. Cidoniana",
    "118. Jasinessa",
    "119. Torweierf",
    "120. Saffneckm",
    "121. Thnistner",
    "122. Dotusingg",
    "123. Luleukous",
    "124. Jelmandan",
    "125. Otimanaso",
    "126. Enjaxusanto",
    "127. Sezviktorew",
    "128. Zikehpm",
    "129. Bephembah",
    "130. Broomerrai",
    "131. Meximicka",
    "132. Venessika",
    "133. Gaiteseling",
    "134. Zosakasiro",
    "135. Drajayanes",
    "136. Ooibekuar",
    "137. Urckiansi",
    "138. Dozivadido",
    "139. Emiekereks",
    "140. Meykinunukur",
    "141. Kimycuristh",
    "142. Roansfien",
    "143. Isgarmeso",
    "144. Daitibeli",
    "145. Gucuttarik",
    "146. Enlaythie",
    "147. Drewweste",
    "148. Akbulkabi",
    "149. Homskiw",
    "150. Zavainlani",
    "151. Jewijkmas",
    "152. Itlhotagra",
    "153. Podalicess",
    "154. Hiviusauer",
    "155. Halsebenk",
    "156. Puikitoac",
    "157. Gaybakuaria",
    "158. Grbodubhe",
    "159. Rycempler",
    "160. Indjalala",
    "161. Fontenikk",
    "162. Pasycihelwhee",
    "163. Ikbaksmit",
    "164. Telicianses",
    "165. Oyleyzhan",
    "166. Uagerosat",
    "167. Impoxectin",
    "168. Twoodmand",
    "169. Hilfsesorbs",
    "170. Ezdaranit",
    "171. Wiensanshe",
    "172. Ewheelonc",
    "173. Litzmantufa",
    "174. Emarmatosi",
    "175. Mufimbomacvi",
    "176. Wongquarum",
    "177. Hapirajua",
    "178. Igbinduina",
    "179. Wepaitvas",
    "180. Sthatigudi",
    "181. Yekathsebehn",
    "182. Ebedeagurst",
    "183. Nolisonia",
    "184. Ulexovitab",
    "185. Iodhinxois",
    "186. Irroswitzs",
    "187. Bifredait",
    "188. Beiraghedwe",
    "189. Yeonatlak",
    "190. Cugnatachh",
    "191. Nozoryenki",
    "192. Ebralduri",
    "193. Evcickcandj",
    "194. Ziybosswin",
    "195. Heperclait",
    "196. Sugiuniam",
    "197. Aaseertush",
    "198. Uglyestemaa",
    "199. Horeroedsh",
    "200. Drundemiso",
    "201. Ityanianat",
    "202. Purneyrine",
    "203. Dokiessmat",
    "204. Nupiacheh",
    "205. Dihewsonj",
    "206. Rudrailhik",
    "207. Tweretnort",
    "208. Snatreetze",
    "209. Iwundaracos",
    "210. Digarlewena",
    "211. Erquagsta",
    "212. Logovoloin",
    "213. Boyaghosganh",
    "214. Kuolungau",
    "215. Pehneldept",
    "216. Yevettiiqidcon",
    "217. Sahliacabru",
    "218. Noggalterpor",
    "219. Chmageaki",
    "220. Veticueca",
    "221. Vittesbursul",
    "222. Nootanore",
    "223. Innebdjerah",
    "224. Kisvarcini",
    "225. Cuzcogipper",
    "226. Pamanhermonsu",
    "227. Brotoghek",
    "228. Mibittara",
    "229. Huruahili",
    "230. Raldwicarn",
    "231. Ezdartlic",
    "232. Badesclema",
    "233. Isenkeyan",
    "234. Iadoitesu",
    "235. Yagrovoisi",
    "236. Ewcomechio",
    "237. Inunnunnoda",
    "238. Dischiutun",
    "239. Yuwarugha",
    "240. Ialmendra",
    "241. Reponudrle",
    "242. Rinjanagrbo",
    "243. Zeziceloh",
    "244. Oeileutasc",
    "245. Zicniijinis",
    "246. Dugnowarilda",
    "247. Neuxoisan",
    "248. Ilmenhorn",
    "249. Rukwatsuku",
    "250. Nepitzaspru",
    "251. Chcehoemig",
    "252. Haffneyrin",
    "253. Uliciawai",
    "254. Tuhgrespod",
    "255. Iousongola",
    "256. Odyalutai",
    "257. Loqvishess (-6)",
    "258. Enyokudohkiw (-5)",
    "259. Helqvishap (-4)",
    "260. Usgraikik (-3)",
    "261. Hiteshamij (-2)",
    "262. Uewamoisow (-1)"
)

$lushGalaxyIDs = @(10,19,30,39,50,59,70,79,90,99,110,119,130,139,150,159,170,179,190,199,210,219,230,239,250)
$harshGalaxyIDs = @(3,15,23,35,43,55,63,75,83,95,103,115,123,135,143,155,163,175,183,195,203,215,223,235,243,255)
$emptyGalaxyIDs = @(7,12,27,32,47,52,67,72,87,92,107,112,127,132,147,152,167,172,187,192,207,212,227,232,247,252)

function colorGalaxyName {
    param([string]$GalaxyName, [int]$GalaxyID)

    if ($lushGalaxyIDs.Contains($GalaxyID)) {
        $GalaxyName = "$($PSStyle.Background.Green)$($PSStyle.Foreground.White)$GalaxyName$($PSStyle.Reset)"
    }

    if ($harshGalaxyIDs.Contains($GalaxyID)) {
        $GalaxyName = "$($PSStyle.Background.Red)$($PSStyle.Foreground.White)$GalaxyName$($PSStyle.Reset)"
    }

    if ($emptyGalaxyIDs.Contains($GalaxyID)) {
        $GalaxyName = "$($PSStyle.Background.Blue)$($PSStyle.Foreground.White)$GalaxyName$($PSStyle.Reset)"
    }

    return $GalaxyName
}

function printLegend {
    Write-Host ""
    Write-Host "Normal Galaxy"
    Write-Host "$($PSStyle.Background.Green)$($PSStyle.Foreground.White)Lush Galaxy$($PSStyle.Reset)"
    Write-Host "$($PSStyle.Background.Red)$($PSStyle.Foreground.White)Harsh Galaxy$($PSStyle.Reset)"
    Write-Host "$($PSStyle.Background.Blue)$($PSStyle.Foreground.White)Empty Galaxy$($PSStyle.Reset)"
    Write-Host ""
}

function printSelectedGalaxy {
    return colorGalaxyName -GalaxyName $script:galaxy -GalaxyID $script:galaxyID
}

function PrintGalaxies {
    $gs = ""
    $columnCount = 1
    $curIndex = 0
    foreach ($g in $galaxies) {
        $line = $g
        $origLength = $g.Length

        $line = colorGalaxyName -GalaxyName $line -GalaxyID $curIndex

        for ($i=0;$i -lt 30-$origLength;$i++) {
            $line += " "
        }

        $curIndex += 1
        
        if ($columnCount -lt $script:columns) {
            $gs += "$line"
            $columnCount += 1
        } else {
            $gs += "$line`n"
            $columnCount = 1
        }
    }
    Write-Host $gs
    Write-Host ""
    printLegend
}
function GetNewScreenShots {
    $completed = Get-ChildItem -Path $screenShotAnnotatePath -Filter '*.jpg'
    $screenshots = Get-ChildItem -Path $screenShotPath -Filter '*.jpg'
    $new = @()
    foreach ($pic in $screenshots) {
        if (0 -lt $completed.count -and $completed.Name.Contains($pic.Name)) {
            continue
        }
        $new += $pic
    }
    return $new
}

function GetUserGalaxyInput {
    while ($true) {
        $uinput = (Read-Host "Please Enter the galaxy index (p to print galaxy list)").ToLower()
        if ($uinput -eq 'p') {
            PrintGalaxies
        }
        if ($uinput -eq 'q') {
            exit
        }
        try {
            $script:galaxyID = [int]$uinput
            $script:galaxy = $galaxies[$uinput]
            $script:galaxyShortName = $script:galaxy.Split('.')[1].Trim() + " Galaxy"
            return
        } catch {
            Write-Host "Please enter a valid galaxy number"
            continue
        }
    }
}

function GetUserNotesInput {
    $script:note1 = (Read-Host "Please Enter any notes (Line 1)")
    if ($note2.Length -gt 0) {
        $script:notes = "$note1\n$note2"
    } else {
        $script:notes = "$note1"
    }
}

function GetUserNotesLine2 {
    $script:note2 = (Read-Host "Please Enter any notes (Line 2)")
    if ($note2.Length -gt 0) {
        $script:notes = "$note1\n$note2"
    } else {
        $script:notes = "$note1"
    }
}

function UsePrevious {
    param ($Skip = $false)
   
    if (-not $Skip) {
        Write-Host ""
        Write-Host "Previous Galaxy: $script:galaxy"
        Write-Host "Previous Note (Line 1): $script:note1"
        Write-Host "Previous Note (Line 2): $script:note2"
        $confirm = (Read-Host "Use Previous details? [y/n]").ToLower()
        if ($confirm -eq 'y') {
            return
        }
    }
    :editloop while ($true) {
        Write-Host ""
        Write-Host "Previous Galaxy: $script:galaxy"
        Write-Host "Previous Note (Line 1): $script:note1"
        Write-Host "Previous Note (Line 2): $script:note2"
        Write-Host ""
        $confirm = (Read-Host "Modify [A]ll, [G]alaxy, Note[1], Note[2], [D]one").ToLower()
        switch ($confirm) {
            'a' {   
                    GetUserGalaxyInput
                    GetUserNotesInput
                    GetUserNotesLine2
                    break
                }
            'g' {
                    GetUserGalaxyInput
                    break
                }
            '1' {
                    GetUserNotesInput
                    break
                }
            
            '2' {
                    GetUserNotesLine2
                    break
                }
            'd' {
                    break editloop
                }
        }
    }
}

function WriteHeader {
    Write-Host "--------------------------------------------------"
    Write-Host "Welcome to AstroTag - the NMS Screenshot Annotator"
    Write-Host "--------------------------------------------------"
    Write-Host ""
}

function WriteLoopDetails {
    Write-Host ""
    Write-Host "Selected Galaxy: $(printSelectedGalaxy)"
    Write-Host "Note Line 1: $note1"
    Write-Host "Note Line 2: $note2"
    Write-Host ""
    if ($previousAnnotations.Count -gt 0) {
        Write-Host "Completed Annotated Images last run: "
        foreach ($pic in $previousAnnotations) {
            Write-Host "    $pic"
        }
    }
    Write-Host ""
    Write-Host "Press Ctrl-C to quit"
    Write-Host -NoNewline "Looking for new Screenshots"
}


""
WriteHeader
$galaxy = "" 
$galaxyShortName = "" 
$galaxyID = ""
$note1 = ""
$note2 = ""
$notes = ""
$previousAnnotations = @()
GetUserGalaxyInput
WriteLoopDetails
while ($true) {
    $screenShotsToAnnotate = GetNewScreenShots
    if (0 -eq $screenShotsToAnnotate.count) {
        Write-Host -NoNewline "."
        Start-Sleep -Seconds 5
        continue
    }
    ""
    ""
    "-- Detected $($screenShotsToAnnotate.Count) new screenshots: "
    $curpic=1
    $previousAnnotations = @()
    foreach ($pic in $screenShotsToAnnotate) {
        $validated = $false
        ""
        "Processig screenshot: $curpic"
        "    file://localhost/$(($pic.FullName).Replace('\','/').Replace(" ","%20"))"
        ""
        if ($galaxyShortName.Length -gt 0) {
            UsePrevious
            $validated = $true
        }

        if ($galaxyShortName.Length -eq 0) {
            GetUserGalaxyInput
        } 
        
        if ($notes.Length -eq 0) {
            GetUserNotesInput
            GetUserNotesLine2
        } 

        while($true) {
            ""
            "Annotating the screenshot with the following details:"
            "  Galaxy: $galaxyShortName"
            "  Note Line1: $note1"
            "  Note Line2: $note2"
            $proceed = Read-Host "Proceed? [y/n]".ToLower()
            if ($proceed -eq 'y') {
                break
            }
            UsePrevious -Skip $true
        }
        ""
        ## do the annotation

        # generating the galaxy anotation image
        magick.exe -size 500x80 xc:none -font $annotationFont -pointsize 30 `
        -stroke black -strokewidth 8 -gravity East -annotate +10+5 $galaxyShortName -blur 0x8 `
        -fill white   -stroke none   -gravity East -annotate +10+5 $galaxyShortName `
        "$screenShotAnnotatePath\annotate-galaxy.png"

        # overlay the galaxy image
        magick.exe composite -gravity NorthEast -geometry +10-15 `
        "$screenShotAnnotatePath\annotate-galaxy.png" $pic.FullName "$screenShotAnnotatePath\$($pic.Name)"

        if ($addPlayerName) {
            if (-not(Test-Path -Path ("$screenShotAnnotatePath\annotate-player.png") -PathType Leaf)) {
                # generate the player name image
                magick.exe -size 500x80 xc:none -font $annotationFont -pointsize 30 `
                -stroke black -strokewidth 8 -gravity West -annotate +10+5 $playerName -blur 0x8 `
                -fill white   -stroke none   -gravity West -annotate +10+5 $playerName `
                "$screenShotAnnotatePath\annotate-player.png"
            }

            # overlay the player image
            magick.exe composite -gravity NorthWest -geometry +5-15 `
            "$screenShotAnnotatePath\annotate-player.png" "$screenShotAnnotatePath\$($pic.Name)" "$screenShotAnnotatePath\$($pic.Name)"
        }

        if ($notes.Length -gt 0) {
            # generate the note image
            magick.exe -size 1500x90 xc:none -font $annotationFont -pointsize 25 `
            -stroke black -strokewidth 8 -gravity East -annotate +10+5 $notes -blur 0x8 `
            -fill gray   -stroke none   -gravity East -annotate +10+5 $notes `
            "$screenShotAnnotatePath\annotate-notes.png"
    
            # overlay the note image
            magick.exe composite -gravity SouthEast -geometry +0+0 `
            "$screenShotAnnotatePath\annotate-notes.png" "$screenShotAnnotatePath\$($pic.Name)" "$screenShotAnnotatePath\$($pic.Name)"
        }

        # add the border
        magick.exe "$screenShotAnnotatePath\$($pic.Name)" -border 5  "$screenShotAnnotatePath\$($pic.Name)"

        $curpic+=1
        $previousAnnotations += "file://localhost/$screenShotAnnotatePath\$($pic.Name)".Replace('\','/').Replace(" ","%20")
    }

    Clear-Host
    WriteHeader
    WriteLoopDetails
}