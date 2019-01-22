import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

final assetImages = [
  '\$pac',
  'bnt',
  'dash',
  'exmo',
  'ion',
  'nav',
  'prl',
  'steem',
  'wan',
  '2give',
  'bnty',
  'dat',
  'exp',
  'iop',
  'ncash',
  'pungo',
  'storj',
  'waves',
  'abt',
  'booty',
  'data',
  'fair',
  'iost',
  'ndz',
  'pura',
  'storm',
  'wax',
  'act',
  'bos',
  'dbc',
  'fct',
  'iotx',
  'nebl',
  'qash',
  'stq',
  'wgr',
  'actn',
  'bpt',
  'dcn',
  'fil',
  'iq',
  'neo',
  'qiwi',
  'strat',
  'wicc',
  'ada',
  'bq',
  'dcr',
  'fjc',
  'itc',
  'neos',
  'qlc',
  'sub',
  'wings',
  'add',
  'brd',
  'deez',
  'fldc',
  'jnt',
  'neu',
  'qrl',
  'sumo',
  'wpr',
  'adx',
  'bsd',
  'dent',
  'flo',
  'jpy',
  'nexo',
  'qsp',
  'sys',
  'wtc',
  'ae',
  'bsv',
  'dew',
  'fsn',
  'kcs',
  'ngc',
  'qtum',
  'taas',
  'x',
  'aeon',
  'btc',
  'dgb',
  'ftc',
  'kin',
  'nio',
  'r',
  'tau',
  'xas',
  'agi',
  'btcd',
  'dgd',
  'fuel',
  'kmd',
  'nlc2',
  'rads',
  'tbx',
  'xbc',
  'agrs',
  'btch',
  'dlt',
  'fun',
  'knc',
  'nlg',
  'rap',
  'tel',
  'xby',
  'aion',
  'btcp',
  'dnr',
  'game',
  'krb',
  'nmc',
  'rcn',
  'ten',
  'xcp',
  'amb',
  'btcz',
  'dnt',
  'gas',
  'lbc',
  'npxs',
  'rdd',
  'tern',
  'xdn',
  'amp',
  'btdx',
  'dock',
  'gbp',
  'lend',
  'nuls',
  'rdn',
  'tghc',
  'xem',
  'ant',
  'btg',
  'doge',
  'gbx',
  'link',
  'nxs',
  'rep',
  'theta',
  'xin',
  'apex',
  'btm',
  'drgn',
  'gbyte',
  'lkk',
  'nxt',
  'req',
  'tix',
  'xlm',
  'appc',
  'bts',
  'drop',
  'generic',
  'loom',
  'oax',
  'rhoc',
  'tkn',
  'xmcc',
  'ardr',
  'btx',
  'dta',
  'glxt',
  'lpt',
  'ok',
  'ric',
  'tks',
  'xmg',
  'arg',
  'burst',
  'dth',
  'gmr',
  'lrc',
  'omg',
  'rise',
  'tnb',
  'xmo',
  'ark',
  'call',
  'dtr',
  'gno',
  'lsk',
  'omni',
  'rlc',
  'tnc',
  'xmr',
  'arn',
  'cc',
  'ebst',
  'gnt',
  'ltc',
  'ong',
  'rpx',
  'tnt',
  'xmy',
  'ary',
  'cdn',
  'eca',
  'gold',
  'lun',
  'ont',
  'rub',
  'tomo',
  'xp',
  'ast',
  'cdt',
  'edg',
  'grc',
  'maid',
  'oot',
  'rvn',
  'tpay',
  'xpa',
  'atm',
  'cenz',
  'edo',
  'grs',
  'mana',
  'ost',
  'ryo',
  'trig',
  'xpm',
  'audr',
  'chain',
  'edoge',
  'gsc',
  'mcap',
  'ox',
  'safe',
  'trtl',
  'xrp',
  'auto',
  'chat',
  'ela',
  'gto',
  'mco',
  'part',
  'salt',
  'trx',
  'xsg',
  'aywa',
  'chips',
  'elf',
  'gup',
  'mda',
  'pasc',
  'san',
  'tusd',
  'xtz',
  'bab',
  'cix',
  'elix',
  'gusd',
  'mds',
  'pasl',
  'sbd',
  'tzc',
  'xuc',
  'bat',
  'clam',
  'ella',
  'gvt',
  'med',
  'pax',
  'sberbank',
  'ubq',
  'xvc',
  'bay',
  'cloak',
  'emc',
  'gxlt',
  'miota',
  'pay',
  'sc',
  'unity',
  'xvg',
  'bcbc',
  'cmm',
  'emc2',
  'gxs',
  'mith',
  'payx',
  'shift',
  'usd',
  'xzc',
  'bcc',
  'cmt',
  'eng',
  'gzr',
  'mkr',
  'pgt',
  'sib',
  'usdc',
  'yoyow',
  'bcd',
  'cnd',
  'enj',
  'hight',
  'mln',
  'pink',
  'sky',
  'usdt',
  'zcl',
  'bch',
  'cnx',
  'entrp',
  'hodl',
  'mnx',
  'pirl',
  'slr',
  'utk',
  'zec',
  'bcn',
  'cny',
  'eos',
  'hpb',
  'mnz',
  'pivx',
  'sls',
  'ven',
  'zel',
  'bco',
  'cob',
  'eql',
  'hsr',
  'moac',
  'plr',
  'smart',
  'veri',
  'zen',
  'bcpt',
  'colx',
  'eqli',
  'ht',
  'mod',
  'poa',
  'sngls',
  'vet',
  'zest',
  'bdl',
  'coqui',
  'equa',
  'html',
  'mona',
  'poe',
  'snm',
  'via',
  'zil',
  'bela',
  'cred',
  'etc',
  'huc',
  'msr',
  'polis',
  'snt',
  'vib',
  'zilla',
  'bix',
  'crpt',
  'eth',
  'hush',
  'mth',
  'poly',
  'soc',
  'vibe',
  'zrx',
  'blcn',
  'crw',
  'ethos',
  'icn',
  'mtl',
  'pot',
  'spank',
  'vivo',
  'blk',
  'cs',
  'etn',
  'icx',
  'music',
  'powr',
  'sphtx',
  'vrc',
  'block',
  'ctr',
  'etp',
  'ignis',
  'mzc',
  'ppc',
  'srn',
  'vrsc',
  'blz',
  'ctxc',
  'eur',
  'ink',
  'nano',
  'ppp',
  'stak',
  'vtc',
  'bnb',
  'cvc',
  'evx',
  'ins',
  'nas',
  'ppt',
  'start',
  'wabi'
];

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var list;
  var refreshKey = GlobalKey<RefreshIndicatorState>();

  @override
  void initState() {
    super.initState();
    refreshListCoin();
  }

  _getImage(String symbol) {
    if (assetImages.contains('${symbol.toLowerCase()}')) {
      return new Image.asset(
        "assets/images/" + symbol.toLowerCase() + ".png",
      );
    } else {
      return new Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'COIN TRACKER',
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('COIN TRACKER'),
        ),
        body: Center(
          child: RefreshIndicator(
              key: refreshKey,
              child: FutureBuilder<List<CoinMarket>>(
                future: list,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<CoinMarket> coins = snapshot.data;

                    return ListView(
                      children: coins
                          .map(
                            (coin) => Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0, bottom: 8.0),
                                              child: _getImage(coin.symbol),
                                              width: 56.0,
                                              height: 56.0,
                                            ),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              padding:
                                                  const EdgeInsets.all(4.0),
                                              child: Text(
                                                  '${coin.symbol} | ${coin.name}'),
                                            ),
                                          ],
                                        ),
                                        Expanded(
                                          child: Container(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: <Widget>[
                                                Container(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Text(
                                                      '\$${double.parse(coin.price_usd).toStringAsFixed(2)}'),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            '1h:${coin.percent_change_1h}%',
                                            style: TextStyle(
                                              color: getColor(
                                                  coin.percent_change_1h),
                                            ),
                                          ),
                                          Text(
                                            '24h:${coin.percent_change_24h}%',
                                            style: TextStyle(
                                              color: getColor(
                                                  coin.percent_change_24h),
                                            ),
                                          ),
                                          Text(
                                            '7d:${coin.percent_change_7d}%',
                                            style: TextStyle(
                                              color: getColor(
                                                  coin.percent_change_7d),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                          )
                          .toList(),
                    );
                  } else if (snapshot.hasError) {
                    Text('Error while loading Coin list ${snapshot.error}');
                  }
                },
              ),
              onRefresh: refreshListCoin),
        ),
      ),
    );
  }

  getColor(String percent) {
    if (percent != null && percent.contains('-')) {
      return Colors.red;
    } else {
      return Colors.green;
    }
  }

  Future<Null> refreshListCoin() async {
    refreshKey.currentState?.show(atTop: false);
    await Future.delayed(Duration(seconds: 2));

    setState(() {
      list = fetchListCoin();
    });
    return null;
  }
}

Future<List<CoinMarket>> fetchListCoin() async {
  final api_endpoint =
      await http.get('https://api.coinmarketcap.com/v1/ticker/');

  if (api_endpoint.statusCode == 200) {
    List coins = json.decode(api_endpoint.body);
    return coins.map((coin) => new CoinMarket.fromJson(coin)).toList();
  } else {
    throw Exception('Failed to load Coin list');
  }
}

class CoinMarket {
  final String id;
  final String name;
  final String symbol;
  final String price_usd;
  final String percent_change_1h;
  final String percent_change_24h;
  final String percent_change_7d;

  CoinMarket({
    this.id,
    this.name,
    this.symbol,
    this.price_usd,
    this.percent_change_1h,
    this.percent_change_24h,
    this.percent_change_7d,
  });

  factory CoinMarket.fromJson(Map<String, dynamic> json) {
    return CoinMarket(
        id: json['id'],
        name: json['name'],
        symbol: json['symbol'],
        price_usd: json['price_usd'],
        percent_change_1h: json['percent_change_1h'],
        percent_change_24h: json['percent_change_24h'],
        percent_change_7d: json['percent_change_7d']);
  }
}
