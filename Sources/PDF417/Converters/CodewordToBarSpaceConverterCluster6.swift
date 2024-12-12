struct CodewordToBarSpaceConverterCluster6: CodewordToBarSpaceConverter.UnderlyingConverter {
    func value(for codeword: Codeword) -> Int {
        switch codeword {
        case .w000: 0b11010101111100000
        case .w001: 0b11101010111111000
        case .w002: 0b10101001111000000
        case .w003: 0b11010100111110000
        case .w004: 0b11101010011111100
        case .w005: 0b10101000111100000
        case .w006: 0b11010100011111000
        case .w007: 0b11101010001111110
        case .w008: 0b10101000011110000
        case .w009: 0b11010100001111100
        case .w010: 0b10101000001111000
        case .w011: 0b11111101011010000
        case .w012: 0b10101101111100000
        case .w013: 0b11010110111111000
        case .w014: 0b11111101011001000
        case .w015: 0b10101100111110000
        case .w016: 0b11010110011111100
        case .w017: 0b11111101011000100
        case .w018: 0b10101100011111000
        case .w019: 0b11010110001111110
        case .w020: 0b11111101011000010
        case .w021: 0b10101100001111100
        case .w022: 0b11111010111010000
        case .w023: 0b11111101011101100
        case .w024: 0b10101110111111000
        case .w025: 0b11111010111001000
        case .w026: 0b11111101011100110
        case .w027: 0b10101110011111100
        case .w028: 0b11111010111000100
        case .w029: 0b10101110001111110
        case .w030: 0b11111010111000010
        case .w031: 0b11110101111010000
        case .w032: 0b11111010111101100
        case .w033: 0b11110101111001000
        case .w034: 0b11111010111100110
        case .w035: 0b11110101111000100
        case .w036: 0b11110101111000010
        case .w037: 0b11101011111010000
        case .w038: 0b11110101111101100
        case .w039: 0b11101011111001000
        case .w040: 0b11110101111100110
        case .w041: 0b11101011111000100
        case .w042: 0b11101011111000010
        case .w043: 0b11010111111010000
        case .w044: 0b11101011111101100
        case .w045: 0b11010111111001000
        case .w046: 0b11101011111100110
        case .w047: 0b11010111111000100
        case .w048: 0b10100101111000000
        case .w049: 0b11010010111110000
        case .w050: 0b11101001011111100
        case .w051: 0b10100100111100000
        case .w052: 0b11010010011111000
        case .w053: 0b11101001001111110
        case .w054: 0b10100100011110000
        case .w055: 0b11010010001111100
        case .w056: 0b10100100001111000
        case .w057: 0b11010010000111110
        case .w058: 0b10100100000111100
        case .w059: 0b11111101001101000
        case .w060: 0b10100110111110000
        case .w061: 0b11010011011111100
        case .w062: 0b11111101001100100
        case .w063: 0b10100110011111000
        case .w064: 0b11010011001111110
        case .w065: 0b11111101001100010
        case .w066: 0b10100110001111100
        case .w067: 0b10100110000111110
        case .w068: 0b11111010011101000
        case .w069: 0b11111101001110110
        case .w070: 0b10100111011111100
        case .w071: 0b11111010011100100
        case .w072: 0b10100111001111110
        case .w073: 0b11111010011100010
        case .w074: 0b11110100111101000
        case .w075: 0b11111010011110110
        case .w076: 0b11110100111100100
        case .w077: 0b11110100111100010
        case .w078: 0b11101001111101000
        case .w079: 0b11110100111110110
        case .w080: 0b11101001111100100
        case .w081: 0b11101001111100010
        case .w082: 0b11010011111101000
        case .w083: 0b11101001111110110
        case .w084: 0b11010011111100100
        case .w085: 0b11010011111100010
        case .w086: 0b10100010111100000
        case .w087: 0b11010001011111000
        case .w088: 0b11101000101111110
        case .w089: 0b10100010011110000
        case .w090: 0b11010001001111100
        case .w091: 0b10100010001111000
        case .w092: 0b11010001000111110
        case .w093: 0b10100010000111100
        case .w094: 0b10100010000011110
        case .w095: 0b11111101000110100
        case .w096: 0b10100011011111000
        case .w097: 0b11010001101111110
        case .w098: 0b11111101000110010
        case .w099: 0b10100011001111100
        case .w100: 0b10100011000111110
        case .w101: 0b11111010001110100
        case .w102: 0b10100011101111110
        case .w103: 0b11111010001110010
        case .w104: 0b11110100011110100
        case .w105: 0b11110100011110010
        case .w106: 0b11101000111110100
        case .w107: 0b11101000111110010
        case .w108: 0b11010001111110100
        case .w109: 0b11010001111110010
        case .w110: 0b10100001011110000
        case .w111: 0b11010000101111100
        case .w112: 0b10100001001111000
        case .w113: 0b11010000100111110
        case .w114: 0b10100001000111100
        case .w115: 0b10100001000011110
        case .w116: 0b11111101000011010
        case .w117: 0b10100001101111100
        case .w118: 0b10100001100111110
        case .w119: 0b11111010000111010
        case .w120: 0b11110100001111010
        case .w121: 0b11101000011111010
        case .w122: 0b10100000101111000
        case .w123: 0b11010000010111110
        case .w124: 0b10100000100111100
        case .w125: 0b10100000100011110
        case .w126: 0b10100000110111110
        case .w127: 0b10100000010111100
        case .w128: 0b10100000010011110
        case .w129: 0b10010101111000000
        case .w130: 0b11001010111110000
        case .w131: 0b11100101011111100
        case .w132: 0b10010100111100000
        case .w133: 0b11001010011111000
        case .w134: 0b11100101001111110
        case .w135: 0b10010100011110000
        case .w136: 0b11001010001111100
        case .w137: 0b10010100001111000
        case .w138: 0b11001010000111110
        case .w139: 0b10010100000111100
        case .w140: 0b11111100101101000
        case .w141: 0b10010110111110000
        case .w142: 0b11001011011111100
        case .w143: 0b11111100101100100
        case .w144: 0b10010110011111000
        case .w145: 0b11001011001111110
        case .w146: 0b11111100101100010
        case .w147: 0b10010110001111100
        case .w148: 0b10010110000111110
        case .w149: 0b11111001011101000
        case .w150: 0b11111100101110110
        case .w151: 0b10010111011111100
        case .w152: 0b11111001011100100
        case .w153: 0b10010111001111110
        case .w154: 0b11111001011100010
        case .w155: 0b11110010111101000
        case .w156: 0b11111001011110110
        case .w157: 0b11110010111100100
        case .w158: 0b11110010111100010
        case .w159: 0b11100101111101000
        case .w160: 0b11110010111110110
        case .w161: 0b11100101111100100
        case .w162: 0b11100101111100010
        case .w163: 0b11001011111101000
        case .w164: 0b11100101111110110
        case .w165: 0b11001011111100100
        case .w166: 0b11001011111100010
        case .w167: 0b11011010111100000
        case .w168: 0b11101101011111000
        case .w169: 0b11110110101111110
        case .w170: 0b10110100111000000
        case .w171: 0b11011010011110000
        case .w172: 0b11101101001111100
        case .w173: 0b10110100011100000
        case .w174: 0b11011010001111000
        case .w175: 0b11101101000111110
        case .w176: 0b10110100001110000
        case .w177: 0b11011010000111100
        case .w178: 0b10110100000111000
        case .w179: 0b11011010000011110
        case .w180: 0b10110100000011100
        case .w181: 0b10010010111100000
        case .w182: 0b11001001011111000
        case .w183: 0b11100100101111110
        case .w184: 0b10110110111100000
        case .w185: 0b10010010011110000
        case .w186: 0b11001001001111100
        case .w187: 0b10110110011110000
        case .w188: 0b11011011001111100
        case .w189: 0b11001001000111110
        case .w190: 0b10110110001111000
        case .w191: 0b10010010000111100
        case .w192: 0b10110110000111100
        case .w193: 0b10010010000011110
        case .w194: 0b10110110000011110
        case .w195: 0b11111100100110100
        case .w196: 0b10010011011111000
        case .w197: 0b11001001101111110
        case .w198: 0b11111101101110100
        case .w199: 0b11111100100110010
        case .w200: 0b10110111011111000
        case .w201: 0b10010011001111100
        case .w202: 0b11111101101110010
        case .w203: 0b10110111001111100
        case .w204: 0b10010011000111110
        case .w205: 0b10110111000111110
        case .w206: 0b11111001001110100
        case .w207: 0b10010011101111110
        case .w208: 0b11111011011110100
        case .w209: 0b11111001001110010
        case .w210: 0b10110111101111110
        case .w211: 0b11111011011110010
        case .w212: 0b11110010011110100
        case .w213: 0b11110110111110100
        case .w214: 0b11110010011110010
        case .w215: 0b11110110111110010
        case .w216: 0b11100100111110100
        case .w217: 0b11101101111110100
        case .w218: 0b11100100111110010
        case .w219: 0b11101101111110010
        case .w220: 0b11001001111110100
        case .w221: 0b11001001111110010
        case .w222: 0b10110010111000000
        case .w223: 0b11011001011110000
        case .w224: 0b11101100101111100
        case .w225: 0b10110010011100000
        case .w226: 0b11011001001111000
        case .w227: 0b11101100100111110
        case .w228: 0b10110010001110000
        case .w229: 0b11011001000111100
        case .w230: 0b10110010000111000
        case .w231: 0b11011001000011110
        case .w232: 0b10110010000011100
        case .w233: 0b10110010000001110
        case .w234: 0b10010001011110000
        case .w235: 0b11001000101111100
        case .w236: 0b10110011011110000
        case .w237: 0b10010001001111000
        case .w238: 0b11001000100111110
        case .w239: 0b10110011001111000
        case .w240: 0b11011001100111110
        case .w241: 0b10110011000111100
        case .w242: 0b10010001000011110
        case .w243: 0b10110011000011110
        case .w244: 0b11111100100011010
        case .w245: 0b10010001101111100
        case .w246: 0b11111101100111010
        case .w247: 0b10110011101111100
        case .w248: 0b10010001100111110
        case .w249: 0b10110011100111110
        case .w250: 0b11111001000111010
        case .w251: 0b11111011001111010
        case .w252: 0b11110010001111010
        case .w253: 0b11110110011111010
        case .w254: 0b11100100011111010
        case .w255: 0b11101100111111010
        case .w256: 0b11001000111111010
        case .w257: 0b10110001011100000
        case .w258: 0b11011000101111000
        case .w259: 0b11101100010111110
        case .w260: 0b10110001001110000
        case .w261: 0b11011000100111100
        case .w262: 0b10110001000111000
        case .w263: 0b11011000100011110
        case .w264: 0b10110001000011100
        case .w265: 0b10110001000001110
        case .w266: 0b10010000101111000
        case .w267: 0b11001000010111110
        case .w268: 0b10110001101111000
        case .w269: 0b10010000100111100
        case .w270: 0b10110001100111100
        case .w271: 0b10010000100011110
        case .w272: 0b10110001100011110
        case .w273: 0b10010000110111110
        case .w274: 0b10110001110111110
        case .w275: 0b10110000101110000
        case .w276: 0b11011000010111100
        case .w277: 0b10110000100111000
        case .w278: 0b11011000010011110
        case .w279: 0b10110000100011100
        case .w280: 0b10110000100001110
        case .w281: 0b10010000010111100
        case .w282: 0b10110000110111100
        case .w283: 0b10010000010011110
        case .w284: 0b10110000110011110
        case .w285: 0b10110000010111000
        case .w286: 0b11011000001011110
        case .w287: 0b10110000010011100
        case .w288: 0b10110000010001110
        case .w289: 0b10010000001011110
        case .w290: 0b10110000011011110
        case .w291: 0b10110000001011100
        case .w292: 0b10110000001001110
        case .w293: 0b10001010111100000
        case .w294: 0b11000101011111000
        case .w295: 0b11100010101111110
        case .w296: 0b10001010011110000
        case .w297: 0b11000101001111100
        case .w298: 0b10001010001111000
        case .w299: 0b11000101000111110
        case .w300: 0b10001010000111100
        case .w301: 0b10001010000011110
        case .w302: 0b11111100010110100
        case .w303: 0b10001011011111000
        case .w304: 0b11000101101111110
        case .w305: 0b11111100010110010
        case .w306: 0b10001011001111100
        case .w307: 0b10001011000111110
        case .w308: 0b11111000101110100
        case .w309: 0b10001011101111110
        case .w310: 0b11111000101110010
        case .w311: 0b11110001011110100
        case .w312: 0b11110001011110010
        case .w313: 0b11100010111110100
        case .w314: 0b11100010111110010
        case .w315: 0b11000101111110100
        case .w316: 0b11000101111110010
        case .w317: 0b10011010111000000
        case .w318: 0b11001101011110000
        case .w319: 0b11100110101111100
        case .w320: 0b10011010011100000
        case .w321: 0b11001101001111000
        case .w322: 0b11100110100111110
        case .w323: 0b10011010001110000
        case .w324: 0b11001101000111100
        case .w325: 0b10011010000111000
        case .w326: 0b11001101000011110
        case .w327: 0b10011010000011100
        case .w328: 0b10011010000001110
        case .w329: 0b10001001011110000
        case .w330: 0b11000100101111100
        case .w331: 0b10011011011110000
        case .w332: 0b10001001001111000
        case .w333: 0b11000100100111110
        case .w334: 0b10011011001111000
        case .w335: 0b11001101100111110
        case .w336: 0b10011011000111100
        case .w337: 0b10001001000011110
        case .w338: 0b10011011000011110
        case .w339: 0b11111100010011010
        case .w340: 0b10001001101111100
        case .w341: 0b11111100110111010
        case .w342: 0b10011011101111100
        case .w343: 0b10001001100111110
        case .w344: 0b10011011100111110
        case .w345: 0b11111000100111010
        case .w346: 0b11111001101111010
        case .w347: 0b11110001001111010
        case .w348: 0b11110011011111010
        case .w349: 0b11100010011111010
        case .w350: 0b11100110111111010
        case .w351: 0b11000100111111010
        case .w352: 0b11011101011100000
        case .w353: 0b11101110101111000
        case .w354: 0b11110111010111110
        case .w355: 0b10111010011000000
        case .w356: 0b11011101001110000
        case .w357: 0b11101110100111100
        case .w358: 0b10111010001100000
        case .w359: 0b11011101000111000
        case .w360: 0b11101110100011110
        case .w361: 0b10111010000110000
        case .w362: 0b11011101000011100
        case .w363: 0b10111010000011000
        case .w364: 0b11011101000001110
        case .w365: 0b10111010000001100
        case .w366: 0b10011001011100000
        case .w367: 0b11001100101111000
        case .w368: 0b11100110010111110
        case .w369: 0b10111011011100000
        case .w370: 0b10011001001110000
        case .w371: 0b11001100100111100
        case .w372: 0b10111011001110000
        case .w373: 0b11011101100111100
        case .w374: 0b11001100100011110
        case .w375: 0b10111011000111000
        case .w376: 0b10011001000011100
        case .w377: 0b10111011000011100
        case .w378: 0b10011001000001110
        case .w379: 0b10111011000001110
        case .w380: 0b10001000101111000
        case .w381: 0b11000100010111110
        case .w382: 0b10011001101111000
        case .w383: 0b10001000100111100
        case .w384: 0b10111011101111000
        case .w385: 0b10011001100111100
        case .w386: 0b10001000100011110
        case .w387: 0b10111011100111100
        case .w388: 0b10011001100011110
        case .w389: 0b10111011100011110
        case .w390: 0b10001000110111110
        case .w391: 0b10011001110111110
        case .w392: 0b10111011110111110
        case .w393: 0b10111001011000000
        case .w394: 0b11011100101110000
        case .w395: 0b11101110010111100
        case .w396: 0b10111001001100000
        case .w397: 0b11011100100111000
        case .w398: 0b11101110010011110
        case .w399: 0b10111001000110000
        case .w400: 0b11011100100011100
        case .w401: 0b10111001000011000
        case .w402: 0b11011100100001110
        case .w403: 0b10111001000001100
        case .w404: 0b10111001000000110
        case .w405: 0b10011000101110000
        case .w406: 0b11001100010111100
        case .w407: 0b10111001101110000
        case .w408: 0b10011000100111000
        case .w409: 0b11001100010011110
        case .w410: 0b10111001100111000
        case .w411: 0b11011100110011110
        case .w412: 0b10111001100011100
        case .w413: 0b10011000100001110
        case .w414: 0b10111001100001110
        case .w415: 0b10001000010111100
        case .w416: 0b10011000110111100
        case .w417: 0b10001000010011110
        case .w418: 0b10111001110111100
        case .w419: 0b10011000110011110
        case .w420: 0b10111001110011110
        case .w421: 0b10111000101100000
        case .w422: 0b11011100010111000
        case .w423: 0b11101110001011110
        case .w424: 0b10111000100110000
        case .w425: 0b11011100010011100
        case .w426: 0b10111000100011000
        case .w427: 0b11011100010001110
        case .w428: 0b10111000100001100
        case .w429: 0b10111000100000110
        case .w430: 0b10011000010111000
        case .w431: 0b11001100001011110
        case .w432: 0b10111000110111000
        case .w433: 0b10011000010011100
        case .w434: 0b10111000110011100
        case .w435: 0b10011000010001110
        case .w436: 0b10111000110001110
        case .w437: 0b10001000001011110
        case .w438: 0b10011000011011110
        case .w439: 0b10111000111011110
        case .w440: 0b10111000010110000
        case .w441: 0b11011100001011100
        case .w442: 0b10111000010011000
        case .w443: 0b11011100001001110
        case .w444: 0b10111000010001100
        case .w445: 0b10111000010000110
        case .w446: 0b10011000001011100
        case .w447: 0b10111000011011100
        case .w448: 0b10011000001001110
        case .w449: 0b10111000011001110
        case .w450: 0b10111000001011000
        case .w451: 0b11011100000101110
        case .w452: 0b10111000001001100
        case .w453: 0b10111000001000110
        case .w454: 0b10011000000101110
        case .w455: 0b10111000001101110
        case .w456: 0b10111000000101100
        case .w457: 0b10111000000100110
        case .w458: 0b10000101011110000
        case .w459: 0b11000010101111100
        case .w460: 0b10000101001111000
        case .w461: 0b11000010100111110
        case .w462: 0b10000101000111100
        case .w463: 0b10000101000011110
        case .w464: 0b10000101101111100
        case .w465: 0b10000101100111110
        case .w466: 0b11111000010111010
        case .w467: 0b11110000101111010
        case .w468: 0b11100001011111010
        case .w469: 0b11000010111111010
        case .w470: 0b10001101011100000
        case .w471: 0b11000110101111000
        case .w472: 0b11100011010111110
        case .w473: 0b10001101001110000
        case .w474: 0b11000110100111100
        case .w475: 0b10001101000111000
        case .w476: 0b11000110100011110
        case .w477: 0b10001101000011100
        case .w478: 0b10001101000001110
        case .w479: 0b10000100101111000
        case .w480: 0b11000010010111110
        case .w481: 0b10001101101111000
        case .w482: 0b10000100100111100
        case .w483: 0b10001101100111100
        case .w484: 0b10000100100011110
        case .w485: 0b10001101100011110
        case .w486: 0b10000100110111110
        case .w487: 0b10001101110111110
        case .w488: 0b10011101011000000
        case .w489: 0b11001110101110000
        case .w490: 0b11100111010111100
        case .w491: 0b10011101001100000
        case .w492: 0b11001110100111000
        case .w493: 0b11100111010011110
        case .w494: 0b10011101000110000
        case .w495: 0b11001110100011100
        case .w496: 0b10011101000011000
        case .w497: 0b11001110100001110
        case .w498: 0b10011101000001100
        case .w499: 0b10011101000000110
        case .w500: 0b10001100101110000
        case .w501: 0b11000110010111100
        case .w502: 0b10011101101110000
        case .w503: 0b10001100100111000
        case .w504: 0b11000110010011110
        case .w505: 0b10011101100111000
        case .w506: 0b10001100100011100
        case .w507: 0b10011101100011100
        case .w508: 0b10001100100001110
        case .w509: 0b10011101100001110
        case .w510: 0b10000100010111100
        case .w511: 0b10001100110111100
        case .w512: 0b10000100010011110
        case .w513: 0b10011101110111100
        case .w514: 0b10001100110011110
        case .w515: 0b10011101110011110
        case .w516: 0b11011110101100000
        case .w517: 0b11101111010111000
        case .w518: 0b11110111101011110
        case .w519: 0b10111101001000000
        case .w520: 0b11011110100110000
        case .w521: 0b11101111010011100
        case .w522: 0b10111101000100000
        case .w523: 0b11011110100011000
        case .w524: 0b11101111010001110
        case .w525: 0b10111101000010000
        case .w526: 0b11011110100001100
        case .w527: 0b10111101000001000
        case .w528: 0b11011110100000110
        case .w529: 0b10111101000000100
        case .w530: 0b10011100101100000
        case .w531: 0b11001110010111000
        case .w532: 0b11100111001011110
        case .w533: 0b10111101101100000
        case .w534: 0b10011100100110000
        case .w535: 0b11001110010011100
        case .w536: 0b10111101100110000
        case .w537: 0b11011110110011100
        case .w538: 0b11001110010001110
        case .w539: 0b10111101100011000
        case .w540: 0b10011100100001100
        case .w541: 0b10111101100001100
        case .w542: 0b10011100100000110
        case .w543: 0b10111101100000110
        case .w544: 0b10001100010111000
        case .w545: 0b11000110001011110
        case .w546: 0b10011100110111000
        case .w547: 0b10001100010011100
        case .w548: 0b10111101110111000
        case .w549: 0b10011100110011100
        case .w550: 0b10001100010001110
        case .w551: 0b10111101110011100
        case .w552: 0b10011100110001110
        case .w553: 0b10111101110001110
        case .w554: 0b10000100001011110
        case .w555: 0b10001100011011110
        case .w556: 0b10011100111011110
        case .w557: 0b10111101111011110
        case .w558: 0b10111100101000000
        case .w559: 0b11011110010110000
        case .w560: 0b11101111001011100
        case .w561: 0b10111100100100000
        case .w562: 0b11011110010011000
        case .w563: 0b11101111001001110
        case .w564: 0b10111100100010000
        case .w565: 0b11011110010001100
        case .w566: 0b10111100100001000
        case .w567: 0b11011110010000110
        case .w568: 0b10111100100000100
        case .w569: 0b10111100100000010
        case .w570: 0b10011100010110000
        case .w571: 0b11001110001011100
        case .w572: 0b10111100110110000
        case .w573: 0b10011100010011000
        case .w574: 0b11001110001001110
        case .w575: 0b10111100110011000
        case .w576: 0b11011110011001110
        case .w577: 0b10111100110001100
        case .w578: 0b10011100010000110
        case .w579: 0b10111100110000110
        case .w580: 0b10001100001011100
        case .w581: 0b10011100011011100
        case .w582: 0b10001100001001110
        case .w583: 0b10111100111011100
        case .w584: 0b10011100011001110
        case .w585: 0b10111100111001110
        case .w586: 0b10111100010100000
        case .w587: 0b11011110001011000
        case .w588: 0b11101111000101110
        case .w589: 0b10111100010010000
        case .w590: 0b11011110001001100
        case .w591: 0b10111100010001000
        case .w592: 0b11011110001000110
        case .w593: 0b10111100010000100
        case .w594: 0b10111100010000010
        case .w595: 0b10011100001011000
        case .w596: 0b11001110000101110
        case .w597: 0b10111100011011000
        case .w598: 0b10011100001001100
        case .w599: 0b10111100011001100
        case .w600: 0b10011100001000110
        case .w601: 0b10111100011000110
        case .w602: 0b10001100000101110
        case .w603: 0b10011100001101110
        case .w604: 0b10111100011101110
        case .w605: 0b10111100001010000
        case .w606: 0b11011110000101100
        case .w607: 0b10111100001001000
        case .w608: 0b11011110000100110
        case .w609: 0b10111100001000100
        case .w610: 0b10111100001000010
        case .w611: 0b10011100000101100
        case .w612: 0b10111100001101100
        case .w613: 0b10011100000100110
        case .w614: 0b10111100001100110
        case .w615: 0b10111100000101000
        case .w616: 0b11011110000010110
        case .w617: 0b10111100000100100
        case .w618: 0b10111100000100010
        case .w619: 0b10011100000010110
        case .w620: 0b10111100000110110
        case .w621: 0b10000010101111000
        case .w622: 0b11000001010111110
        case .w623: 0b10000010100111100
        case .w624: 0b10000010100011110
        case .w625: 0b10000010110111110
        case .w626: 0b10000110101110000
        case .w627: 0b11000011010111100
        case .w628: 0b10000110100111000
        case .w629: 0b11000011010011110
        case .w630: 0b10000110100011100
        case .w631: 0b10000110100001110
        case .w632: 0b10000010010111100
        case .w633: 0b10000110110111100
        case .w634: 0b10000010010011110
        case .w635: 0b10000110110011110
        case .w636: 0b10001110101100000
        case .w637: 0b11000111010111000
        case .w638: 0b11100011101011110
        case .w639: 0b10001110100110000
        case .w640: 0b11000111010011100
        case .w641: 0b10001110100011000
        case .w642: 0b11000111010001110
        case .w643: 0b10001110100001100
        case .w644: 0b10001110100000110
        case .w645: 0b10000110010111000
        case .w646: 0b11000011001011110
        case .w647: 0b10001110110111000
        case .w648: 0b10000110010011100
        case .w649: 0b10001110110011100
        case .w650: 0b10000110010001110
        case .w651: 0b10001110110001110
        case .w652: 0b10000010001011110
        case .w653: 0b10000110011011110
        case .w654: 0b10001110111011110
        case .w655: 0b10011110101000000
        case .w656: 0b11001111010110000
        case .w657: 0b11100111101011100
        case .w658: 0b10011110100100000
        case .w659: 0b11001111010011000
        case .w660: 0b11100111101001110
        case .w661: 0b10011110100010000
        case .w662: 0b11001111010001100
        case .w663: 0b10011110100001000
        case .w664: 0b11001111010000110
        case .w665: 0b10011110100000100
        case .w666: 0b10011110100000010
        case .w667: 0b10001110010110000
        case .w668: 0b11000111001011100
        case .w669: 0b10011110110110000
        case .w670: 0b10001110010011000
        case .w671: 0b11000111001001110
        case .w672: 0b10011110110011000
        case .w673: 0b11001111011001110
        case .w674: 0b10011110110001100
        case .w675: 0b10001110010000110
        case .w676: 0b10011110110000110
        case .w677: 0b10000110001011100
        case .w678: 0b10001110011011100
        case .w679: 0b10000110001001110
        case .w680: 0b10011110111011100
        case .w681: 0b10001110011001110
        case .w682: 0b10011110111001110
        case .w683: 0b11011111010100000
        case .w684: 0b11101111101011000
        case .w685: 0b11110111110101110
        case .w686: 0b11011111010010000
        case .w687: 0b11101111101001100
        case .w688: 0b11011111010001000
        case .w689: 0b11101111101000110
        case .w690: 0b11011111010000100
        case .w691: 0b11011111010000010
        case .w692: 0b10011110010100000
        case .w693: 0b11001111001011000
        case .w694: 0b11100111100101110
        case .w695: 0b10111110110100000
        case .w696: 0b10011110010010000
        case .w697: 0b11001111001001100
        case .w698: 0b10111110110010000
        case .w699: 0b11011111011001100
        case .w700: 0b11001111001000110
        case .w701: 0b10111110110001000
        case .w702: 0b10011110010000100
        case .w703: 0b10111110110000100
        case .w704: 0b10011110010000010
        case .w705: 0b10111110110000010
        case .w706: 0b10001110001011000
        case .w707: 0b11000111000101110
        case .w708: 0b10011110011011000
        case .w709: 0b10001110001001100
        case .w710: 0b10111110111011000
        case .w711: 0b10011110011001100
        case .w712: 0b10001110001000110
        case .w713: 0b10111110111001100
        case .w714: 0b10011110011000110
        case .w715: 0b10111110111000110
        case .w716: 0b10000110000101110
        case .w717: 0b10001110001101110
        case .w718: 0b10011110011101110
        case .w719: 0b10111110111101110
        case .w720: 0b11011111001010000
        case .w721: 0b11101111100101100
        case .w722: 0b11011111001001000
        case .w723: 0b11101111100100110
        case .w724: 0b11011111001000100
        case .w725: 0b11011111001000010
        case .w726: 0b10011110001010000
        case .w727: 0b11001111000101100
        case .w728: 0b10111110011010000
        case .w729: 0b10011110001001000
        case .w730: 0b11001111000100110
        case .w731: 0b10111110011001000
        case .w732: 0b11011111001100110
        case .w733: 0b10111110011000100
        case .w734: 0b10011110001000010
        case .w735: 0b10111110011000010
        case .w736: 0b10001110000101100
        case .w737: 0b10011110001101100
        case .w738: 0b10001110000100110
        case .w739: 0b10111110011101100
        case .w740: 0b10011110001100110
        case .w741: 0b10111110011100110
        case .w742: 0b11011111000101000
        case .w743: 0b11101111100010110
        case .w744: 0b11011111000100100
        case .w745: 0b11011111000100010
        case .w746: 0b10011110000101000
        case .w747: 0b11001111000010110
        case .w748: 0b10111110001101000
        case .w749: 0b10011110000100100
        case .w750: 0b10111110001100100
        case .w751: 0b10011110000100010
        case .w752: 0b10111110001100010
        case .w753: 0b10001110000010110
        case .w754: 0b10011110000110110
        case .w755: 0b10111110001110110
        case .w756: 0b11011111000010100
        case .w757: 0b11011111000010010
        case .w758: 0b10011110000010100
        case .w759: 0b10111110000110100
        case .w760: 0b10011110000010010
        case .w761: 0b10111110000110010
        case .w762: 0b10000001010111100
        case .w763: 0b10000001010011110
        case .w764: 0b10000011010111000
        case .w765: 0b11000001101011110
        case .w766: 0b10000011010011100
        case .w767: 0b10000011010001110
        case .w768: 0b10000001001011110
        case .w769: 0b10000011011011110
        case .w770: 0b10000111010110000
        case .w771: 0b11000011101011100
        case .w772: 0b10000111010011000
        case .w773: 0b11000011101001110
        case .w774: 0b10000111010001100
        case .w775: 0b10000111010000110
        case .w776: 0b10000011001011100
        case .w777: 0b10000111011011100
        case .w778: 0b10000011001001110
        case .w779: 0b10000111011001110
        case .w780: 0b10001111010100000
        case .w781: 0b11000111101011000
        case .w782: 0b11100011110101110
        case .w783: 0b10001111010010000
        case .w784: 0b11000111101001100
        case .w785: 0b10001111010001000
        case .w786: 0b11000111101000110
        case .w787: 0b10001111010000100
        case .w788: 0b10001111010000010
        case .w789: 0b10000111001011000
        case .w790: 0b11000011100101110
        case .w791: 0b10001111011011000
        case .w792: 0b11000111101101110
        case .w793: 0b10001111011001100
        case .w794: 0b10000111001000110
        case .w795: 0b10001111011000110
        case .w796: 0b10000011000101110
        case .w797: 0b10000111001101110
        case .w798: 0b10001111011101110
        case .w799: 0b11001111101010000
        case .w800: 0b11100111110101100
        case .w801: 0b11001111101001000
        case .w802: 0b11100111110100110
        case .w803: 0b11001111101000100
        case .w804: 0b11001111101000010
        case .w805: 0b10001111001010000
        case .w806: 0b11000111100101100
        case .w807: 0b10011111011010000
        case .w808: 0b11001111101101100
        case .w809: 0b11000111100100110
        case .w810: 0b10011111011001000
        case .w811: 0b10001111001000100
        case .w812: 0b10011111011000100
        case .w813: 0b10001111001000010
        case .w814: 0b10011111011000010
        case .w815: 0b10000111000101100
        case .w816: 0b10001111001101100
        case .w817: 0b10000111000100110
        case .w818: 0b10011111011101100
        case .w819: 0b10001111001100110
        case .w820: 0b10011111011100110
        case .w821: 0b11101111110101000
        case .w822: 0b11110111111010110
        case .w823: 0b11101111110100100
        case .w824: 0b11101111110100010
        case .w825: 0b11001111100101000
        case .w826: 0b11100111110010110
        case .w827: 0b11011111101101000
        case .w828: 0b11001111100100100
        case .w829: 0b11011111101100100
        case .w830: 0b11001111100100010
        case .w831: 0b11011111101100010
        case .w832: 0b10001111000101000
        case .w833: 0b11000111100010110
        case .w834: 0b10011111001101000
        case .w835: 0b10001111000100100
        case .w836: 0b10111111011101000
        case .w837: 0b10011111001100100
        case .w838: 0b10001111000100010
        case .w839: 0b10111111011100100
        case .w840: 0b10011111001100010
        case .w841: 0b10111111011100010
        case .w842: 0b10000111000010110
        case .w843: 0b10001111000110110
        case .w844: 0b10011111001110110
        case .w845: 0b10111111011110110
        case .w846: 0b11101111110010100
        case .w847: 0b11101111110010010
        case .w848: 0b11001111100010100
        case .w849: 0b11011111100110100
        case .w850: 0b11001111100010010
        case .w851: 0b11011111100110010
        case .w852: 0b10001111000010100
        case .w853: 0b10011111000110100
        case .w854: 0b10001111000010010
        case .w855: 0b10111111001110100
        case .w856: 0b10011111000110010
        case .w857: 0b10111111001110010
        case .w858: 0b11101111110001010
        case .w859: 0b11001111100001010
        case .w860: 0b11011111100011010
        case .w861: 0b10001111000001010
        case .w862: 0b10011111000011010
        case .w863: 0b10111111000111010
        case .w864: 0b10000001101011100
        case .w865: 0b10000001101001110
        case .w866: 0b10000011101011000
        case .w867: 0b11000001110101110
        case .w868: 0b10000011101001100
        case .w869: 0b10000011101000110
        case .w870: 0b10000001100101110
        case .w871: 0b10000011101101110
        case .w872: 0b10000111101010000
        case .w873: 0b11000011110101100
        case .w874: 0b10000111101001000
        case .w875: 0b11000011110100110
        case .w876: 0b10000111101000100
        case .w877: 0b10000111101000010
        case .w878: 0b10000011100101100
        case .w879: 0b10000111101101100
        case .w880: 0b10000011100100110
        case .w881: 0b10000111101100110
        case .w882: 0b11000111110101000
        case .w883: 0b11100011111010110
        case .w884: 0b11000111110100100
        case .w885: 0b11000111110100010
        case .w886: 0b10000111100101000
        case .w887: 0b11000011110010110
        case .w888: 0b10001111101101000
        case .w889: 0b11000111110110110
        case .w890: 0b10001111101100100
        case .w891: 0b10000111100100010
        case .w892: 0b10001111101100010
        case .w893: 0b10000011100010110
        case .w894: 0b10000111100110110
        case .w895: 0b10001111101110110
        case .w896: 0b11100111111010100
        case .w897: 0b11100111111010010
        case .w898: 0b11000111110010100
        case .w899: 0b11001111110110100
        case .w900: 0b11000111110010010
        case .w901: 0b11001111110110010
        case .w902: 0b10000111100010100
        case .w903: 0b10001111100110100
        case .w904: 0b10000111100010010
        case .w905: 0b10011111101110100
        case .w906: 0b10001111100110010
        case .w907: 0b10011111101110010
        case .w908: 0b11100111111001010
        case .w909: 0b11000111110001010
        case .w910: 0b11001111110011010
        case .w911: 0b10000111100001010
        case .w912: 0b10001111100011010
        case .w913: 0b10011111100111010
        case .w914: 0b10000001110101100
        case .w915: 0b10000001110100110
        case .w916: 0b10000011110101000
        case .w917: 0b11000001111010110
        case .w918: 0b10000011110100100
        case .w919: 0b10000011110100010
        case .w920: 0b10000001110010110
        case .w921: 0b10000011110110110
        case .w922: 0b11000011111010100
        case .w923: 0b11000011111010010
        case .w924: 0b10000011110010100
        case .w925: 0b10000111110110100
        case .w926: 0b10000011110010010
        case .w927: 0b10000111110110010
        case .w928: 0b11100011111101010
        }
    }
}
