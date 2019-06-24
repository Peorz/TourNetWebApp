<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GongLuexq.aspx.cs" Inherits="TourWebApp.browser.view.GongLuexq" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
    l<link href="../static/css/discuss/GongLuexq.css" rel="stylesheet" type="text/css" />
    <link href="../static/css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="../static/css/index/customize.css" rel="stylesheet" />
    <link href="../static/css/toursel/toursel.css" rel="stylesheet" />
    <link href="../static/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../static/js/jquery-latest.js"></script>
    <script src="../static/js/pc.js"></script>
    <script src="/demos/googlegg.js"></script>
    <script type="text/javascript" src="browser/static/js/pc.js"></script>

    <title></title>
</head>
<body>

    <nav class="navbar navbar-default navbar-fixed-top" style="margin-bottom: 10px;">
        <div class="container-fluid" style="background-color: rgba(34, 139, 34,0.5);">
            <div class="col-md-1"><a class="navbar-brand" href="#" style="color: #fff;">Brand</a></div>
            <div class="navbar-header col-md-8">
                <form class="navbar-form navbar-left" role="search" runat="server">
                    <div class="form-group">
                        <input id="SearchBox" class="form-control" style="width: 600px;" />
                    </div>
                    <button id="SearchBtn" type="button" class="btn btn-success"><span class="glyphicon glyphicon-search"></span></button>
                </form>
            </div>
            <ul class="nav navbar-nav navbar-right col-md-2 col-md-offset-1" style="display: none">
                <li><a href="#" style="color: #fff;">登录</a></li>
                <li><a href="#" style="color: #fff;">注册</a></li>
            </ul>
        </div>
    </nav>

    <div class="container">
        <div class="menu">
            <h3><i class="q-menu-img positionIicon"></i>云南</h3>
            <ul class="ulmenu1">
                <li><a href="#tab1">大理之行</a></li>
                <li><a href="#">艳遇丽江</a></li>
                <li><a name="DL" href="#">香格里拉</a></li>

            </ul>

            <h3><i class="q-menu-doit positionIicon"></i>广西</h3>
            <ul class="ulmenu2">
                <li><a href="#">猫儿山</a></li>
                <li><a href="#">阳朔之行</a></li>
                <li><a href="#">“甲天下”桂林</a></li>
                <li><a href="#">北海之旅</a></li>

            </ul>

            <h3><i class="q-menu-three positionIicon"></i>西藏</h3>
            <ul class="ulmenu3">
                <li><a href="#tab1">玛旁雍错</a></li>
                <li><a href="#">“日光城”拉萨</a></li>
                <li><a href="#">珠穆朗玛峰</a></li>

            </ul>

            <h3><i class="q-menu-three positionIicon"></i>国外游</h3>
            <ul class="ulmenu3">
                <li><a href="#tab1">英国伦敦</a></li>
                <li><a href="#">法国巴黎</a></li>
                <li><a href="#">美国洛杉矶</a></li>

            </ul>
        </div>

        <div class="content">
            <div class="get-menu">
                <a href="#">旅游攻略</a>
                <span>></span>
                <a class="A1" href="#">旅游景点</a>
            </div>

            <div class="menu1 menu_tab">
                <div id="tab1" class="tab active">
                    <p class="tt">大理游玩攻略</p>
                    <p>
                        云南，一个适合带上相机去慢游，在胶片时光里感受旅行意义的治愈地方，有古城、高山、湖泊、湿地，
                        更有纳西烤肉、过桥米线、蒸汽石锅鱼、白族酸辣鱼等数不清的特色美食，还可以感受纳西族、摩梭族、
                        白族、傣族这些不同民族的文化习俗。
                    </p>
                    <img src="../static/img/personal_bg.jpg" />
                    <h4>推荐游玩路线：</h4>
                    <p class="dd">第一天：大理—蝴蝶泉公园—洱海—洱海大游船—南诏风情岛(特色四星酒店）</p>
                    <p class="dd">第二天：崇圣寺三塔—大理古城—洋人街—丽江</p>
                    <p>
                        第一天的行程:蝴蝶泉公园—洱海大游船—南诏风情岛。蝴蝶泉公园，“白族的恋爱圣地”，在洱海乘坐豪华大游船观苍山洱海风光，
                        登南诏风情岛，游览岛上风光。返程结束行程。如果大家自己玩想坐船的话，建议提前关注游船信息，提前预订，
                        防止去到后人多难排队又没有票的尴尬
                    </p>
                    <p>
                        第二天的行程：崇圣寺三塔—大理古城—洋人街—丽江.大理古城在唐、宋500多年间是云南的政治、经济、文化中心。
                        古城内文物古迹众多，建于南诏丰佑年间（公元824～859年）的崇圣寺三塔就是其中著名的景点，很多人对大理的
                        印象或是从《天龙八部》开始，到了这里之后被她的美所折服。古城是不需要门票的
                    </p>
                    <img src="../static/img/main_bg6.jpg" />
                    <h4>各路美食汇聚，行动食动</h4>
                    <p>
                        当然到云南除了欣赏山水美景外，各种云南特色美食也是不能错过的。汽锅鸡是云南的名菜之一，早在2000多年前就在滇南民间流传
                        。汽锅鸡的做法是将鸡肉洗净后再砍成小块，和姜、盐、葱、草果一道放入汽锅内盖好，汽锅置于一放满水的汤锅之上，用纱布将
                        隙缝堵上，以免漏汽，再放到火上煮。汤锅的水开后，蒸汽就通过汽锅中间的汽嘴将鸡逐渐蒸熟（一般需3 ～4小时）。
                        由于汤汁是蒸汽凝成，鸡肉的鲜味在蒸的过程中丧失较少，所以基本上保持了鸡肉的原汁原味。当然，
                        云南地道美味小吃过桥米线，大救驾、野生菌锅都是不可多得的美味，不过有些野生菌会有毒素，需煮透才能除掉它的毒性，
                        美食虽好，切不可心急。
                    </p>



                </div>
                <div id="tab2" class="tab">
                    <p class="tt">丽江游玩攻略</p>
                    <p>
                        丽江，云南省地级市，位于云南省西北部，滇川藏三省区交界处，是古代“南方丝绸之路”和“茶马古道”的重要通道，
                        丽江是一个多民族聚居的地方，除汉族外，共有12个世居少数民族，22种少数民族；丽江也是我国自然文化遗产之一，
                        旅游资源丰富，其中代表性的有玉龙雪山、丽江古城、泸沽湖风景名胜区、丽江束湖古镇、丽江虎跳峡等
                    </p>
                    <img src="../static/img/personal_bg.jpg" />
                    <h4>印象丽江。玩转丽江</h4>
                    <p class="dd">景点一：蓝月谷</p>
                    <p>
                        说起蓝月谷，有多少人想起蓝月亮？不过这儿也真的有月亮那种冰清玉洁的感觉，当地的人把这儿称为白水河。
                        这儿也是很多人在搜索丽江景点时最心动的地方，其实到了那儿才会发现照片并不能完全显示真正的美。这儿绝对是一步一景，
                        美得让人流连忘返。因为水质问题，天晴的的时候是通透的蓝色，天阴的时候会变成浑白色，确实是别有风味，怪不得会有小九寨沟的名号。
                    </p>
                    <p class="dd">景点二：格姆女神山</p>
                    <p>
                        这是是泸沽湖最高的山峰，被当地人信奉为神灵，十分的珍重。这儿风景很好，但是去过的朋友会觉得这儿的景点比较贵，
                        所以钱包不鼓的朋友们要慎重考虑一下了，但是如果资金还行，强烈安利，绝对不要错过。坐索道上山，实在是太幸福了，
                        小编有幸见识到一次绝美的风光。去的那天山脚下雨后初晴，入眼之处仿佛被水洗了一样，但是到半山腰上确是白雪飘飘，
                        这样的奇观真是难得一遇。
                    </p>
                    <p>
                        第二天的行程：崇圣寺三塔—大理古城—洋人街—丽江.大理古城在唐、宋500多年间是云南的政治、经济、文化中心。
                        古城内文物古迹众多，建于南诏丰佑年间（公元824～859年）的崇圣寺三塔就是其中著名的景点，很多人对大理的
                        印象或是从《天龙八部》开始，到了这里之后被她的美所折服。古城是不需要门票的
                    </p>
                    <p class="dd">景点三：丽江木府</p>
                    <p>
                        很多人可能早就听闻北有故宫，南有木府，可见其声势之浩大，所以如果你去丽江，这儿绝不能错过，毕竟这可是招牌。
                        作为丽江古城的大观园，这儿的建筑风景都是顶好的，著名的剧《木府风云》就在这里取景。正所谓不到木府不能称之为到了丽江，
                        所以这儿的景色绝对带给你别样的惊喜。
                    </p>
                    <img src="../static/img/main_bg6.jpg" />

                    <p>
                        我们一生会面对很多欣喜的时刻，或者是一朵花开或者是一次日落，或者就像我此刻，安静的端坐，
                        面前就是沉默的雪山，我们都被时光不慌不忙地爱着，只要保持一颗努力向上的心，坚韧从容，我们都会成长成自己想要的模样。
                    </p>
                </div>

                <div id="tab4" class="tab">
                    <p class="tt">香格里拉游玩攻略</p>
                    <p>
                        香格里拉和亚丁，一个是英国作家笔下人类美好理想的归宿，一个是《中国国家地理》评选出的风光最美的地方之一，
                        前者位于云南最西北部，后者则处于四川和云南交界处，因为从云南丽江出发，经香格里拉再到亚丁，
                        来回都要翻越二座海拨超过四千多米的大山，但路途上的风景不言而喻，坐飞机的话一是无法欣赏沿途美景可惜，
                        二是从平原地区到高海拔地区最好有一个适应过程，否则很容易高反
                    </p>
                    <img src="../static/img/personal_bg.jpg" />
                    <h4>下面是游玩攻略：</h4>
                    <p class="dd">景点一：蓝月谷</p>
                    <p>
                        说起蓝月谷，有多少人想起蓝月亮？不过这儿也真的有月亮那种冰清玉洁的感觉，当地的人把这儿称为白水河。
                        这儿也是很多人在搜索丽江景点时最心动的地方，其实到了那儿才会发现照片并不能完全显示真正的美。这儿绝对是一步一景，
                        美得让人流连忘返。因为水质问题，天晴的的时候是通透的蓝色，天阴的时候会变成浑白色，确实是别有风味，怪不得会有小九寨沟的名号。
                    </p>
                    <p class="dd">景点二：格姆女神山</p>
                    <p>
                        这是是泸沽湖最高的山峰，被当地人信奉为神灵，十分的珍重。这儿风景很好，但是去过的朋友会觉得这儿的景点比较贵，
                        所以钱包不鼓的朋友们要慎重考虑一下了，但是如果资金还行，强烈安利，绝对不要错过。坐索道上山，实在是太幸福了，
                        小编有幸见识到一次绝美的风光。去的那天山脚下雨后初晴，入眼之处仿佛被水洗了一样，但是到半山腰上确是白雪飘飘，
                        这样的奇观真是难得一遇。
                    </p>
                    <p>
                        第二天的行程：崇圣寺三塔—大理古城—洋人街—丽江.大理古城在唐、宋500多年间是云南的政治、经济、文化中心。
                        古城内文物古迹众多，建于南诏丰佑年间（公元824～859年）的崇圣寺三塔就是其中著名的景点，很多人对大理的
                        印象或是从《天龙八部》开始，到了这里之后被她的美所折服。古城是不需要门票的
                    </p>
                    <p class="dd">景点三：丽江木府</p>
                    <p>
                        很多人可能早就听闻北有故宫，南有木府，可见其声势之浩大，所以如果你去丽江，这儿绝不能错过，毕竟这可是招牌。
                        作为丽江古城的大观园，这儿的建筑风景都是顶好的，著名的剧《木府风云》就在这里取景。正所谓不到木府不能称之为到了丽江，
                        所以这儿的景色绝对带给你别样的惊喜。
                    </p>
                    <h4>注意事项：</h4>
                    <p>1.启程前半个月不要锻炼身体，因为锻炼会使肺活量变大，高原空气稀薄，肺活量大，需要的氧气就多。</p>

                    <p>2.启程前半个月开始服用红景天预防高反。</p>

                    <p>
                        3.在高原感冒不可怕，可怕的是把平原的感冒带到高原上，这样容易引发肺水肿，还是比较危险的，
                        所以如遇到感冒，发烧等症状，最好在低海拔地区(2500米以下)停留修整，待康复或好转后再继续旅途。
                    </p>

                    <p>4.高原紫外线特别强，不管什么天气都得注意做好防晒措施。 </p>


                </div>

                <div id="tab5" class="tab">
                    <p class="tt">桂林猫儿山游玩攻略</p>
                    <p>猫儿山位于桂林市兴安县，因峰顶形似俯卧着的巨猫而得名。主峰海拔2141.5米，是华南的第一高峰，
                        常被人称作“五岭绝首、华南之巅”。这里也是是漓江、资江的发源地，可谓桂林山水的“命根子”。猫儿山林海茫茫，
                        树木盘根错节，一派原始森林风光，更有冰河时期遗留下来的珍贵树种——铁杉。龙潭瀑、漓江源等景色也清新迷人。
                        每年4-6月期间，这里还有着开遍山野的杜鹃花海。除了自然风光，猫儿山还有红军长征时翻越的老山界、
                        二战期间美国飞机失事地。作为华南第一高峰，这里也十分受徒步爱好者的欢迎。主要徒步路线为先从山门步行至大峡谷，
                        再往回走向杜鹃园前进，路过老界山，往铁杉公园经高山矮林登向山顶。单程约十小时，如果没有丰富的户外运动经验，
                        并不建议贸然徒步前往。
                    </p>
                    <img src="../static/img/personal_bg.jpg" />
                    <h4>下面是</h4>
                    <p class="dd">景点一：蓝月谷</p>
                    <p>
                        说起蓝月谷，有多少人想起蓝月亮？不过这儿也真的有月亮那种冰清玉洁的感觉，当地的人把这儿称为白水河。
                        这儿也是很多人在搜索丽江景点时最心动的地方，其实到了那儿才会发现照片并不能完全显示真正的美。这儿绝对是一步一景，
                        美得让人流连忘返。因为水质问题，天晴的的时候是通透的蓝色，天阴的时候会变成浑白色，确实是别有风味，怪不得会有小九寨沟的名号。
                    </p>
                    <p class="dd">景点二：格姆女神山</p>
                    <p>
                        这是是泸沽湖最高的山峰，被当地人信奉为神灵，十分的珍重。这儿风景很好，但是去过的朋友会觉得这儿的景点比较贵，
                        所以钱包不鼓的朋友们要慎重考虑一下了，但是如果资金还行，强烈安利，绝对不要错过。坐索道上山，实在是太幸福了，
                        小编有幸见识到一次绝美的风光。去的那天山脚下雨后初晴，入眼之处仿佛被水洗了一样，但是到半山腰上确是白雪飘飘，
                        这样的奇观真是难得一遇。
                    </p>
                    <p>
                        第二天的行程：崇圣寺三塔—大理古城—洋人街—丽江.大理古城在唐、宋500多年间是云南的政治、经济、文化中心。
                        古城内文物古迹众多，建于南诏丰佑年间（公元824～859年）的崇圣寺三塔就是其中著名的景点，很多人对大理的
                        印象或是从《天龙八部》开始，到了这里之后被她的美所折服。古城是不需要门票的
                    </p>
                    <p class="dd">景点三：丽江木府</p>
                    <p>
                        很多人可能早就听闻北有故宫，南有木府，可见其声势之浩大，所以如果你去丽江，这儿绝不能错过，毕竟这可是招牌。
                        作为丽江古城的大观园，这儿的建筑风景都是顶好的，著名的剧《木府风云》就在这里取景。正所谓不到木府不能称之为到了丽江，
                        所以这儿的景色绝对带给你别样的惊喜。
                    </p>

                </div>


                <div id="tab6" class="tab">
                    <p class="tt">26.如何录入科目期初余额？</p>
                    <p>This is Answer！</p>

                    <p class="tt">27.初始化的时候期初余额录入错误怎么修改?</p>
                    <p>初始化的时候期初余额录入错误怎么修改?</p>

                    <p class="tt">28.初始化的时候科目余额为什么录入不进去？</p>
                    <p>初始化的时候科目余额为什么录入不进去？28、初始化的时候科目余额为什么录入不进去？28、初始化的时候科目余额为什么录入不进去？</p>

                    <p class="tt">29.科目匹配是什么意思？</p>
                    <p>科目匹配是什么意思？科目匹配是什么意思？科目匹配是什么意思？</p>

                    <p class="tt">30.为什么有些科目删除不了？</p>
                    <p>This is Answer！</p>

                    <p class="tt">31.如何增加一级科目？会计科目到几级？</p>
                    <p>如何增加一级科目？会计科目到几级？如何增加一级科目？会计科目到几级？如何增加一级科目？会计科目到几级？如何增加一级科目？会计科目到几级？</p>

                    <p class="tt">32.如何增加、修改、删除科目？</p>
                    <p>如何增加、修改、删除科目？如何增加、修改、删除科目？如何增加、修改、删除科目？如何增加、修改、删除科目？如何增加、修改、删除科目？如何增加、修改、删除科目？</p>

                    <p class="tt">33. 科目是按照哪个企业会计准则来的？</p>
                    <p>科目是按照哪个企业会计准则来的？科目是按照哪个企业会计准则来的？科目是按照哪个企业会计准则来的？科目是按照哪个企业会计准则来的？</p>

                    <p class="tt">34.是否支持辅助核算？如何核算每个客户或者供应商的往来款项？</p>
                    <p>This is Answer！</p>

                    <p class="tt">35.若员工离职了，如何把该员工从系统中删除？</p>
                    <p>若员工离职了，如何把该员工从系统中删除若员工离职了，如何把该员工从系统中删除若员工离职了，如何把该员工从系统中删除？</p>

                    <p class="tt">36.如何修改报销审批人？</p>
                    <p>如何修改报销审批人？36、如何修改报销审批人？36、如何修改报销审批人？</p>

                    <p class="tt">37.员工个人信息如何修改？</p>
                    <p>员工个人信息如何修改员工个人信息如何修改员工个人信息如何修改员工个人信息如何修改</p>
                </div>

            </div>

            <div class="menu2 menu_tab">
                <div id="tab-1" class="tab">
                    <p class="tt">1. Question</p>
                    <p>This is Answer！</p>

                    <p class="tt">2. Question</p>
                    <p>This is Answer！</p>

                    <p class="tt">3. Question</p>
                    <p>This is Answer！</p>
                    <p>This is Answer！</p>
                </div>

                <div id="ta-2" class="tab">
                    <p class="tt">3. Question</p>
                    <p>This is Answer！</p>
                    <p>This is Answer！</p>
                </div>

                <div id="tab-3" class="tab">
                    <p class="tt">3.Question</p>
                    <p>This is Answer！</p>
                    <p>This is Answer！</p>
                </div>

                <div id="tab-4" class="tab">
                    <p class="tt">2.Question</p>
                    <p>This is Answer！</p>
                    <p>This is Answer！</p>
                </div>

                <div id="tab-5" class="tab">table5</div>
                <div id="tab-6" class="tab">table6</div>
                <div id="tab-7" class="tab">table7</div>
                <div id="tab-8" class="tab">table8</div>
                <div id="tab-9" class="tab">table9</div>
                <div id="tab-10" class="tab">table10</div>
                <div id="tab-11" class="tab">table11</div>
                <div id="tab-12" class="tab">table12</div>
            </div>

            <div class="menu3 menu_tab">
                <div id="tab-3-1" class="tab">
                    <p class="tt">1. 。。。如何收费？222</p>
                    <p>。。。的个人版用户，100套账免费记，只需注册即可直接使用。。。。的代账公司版，多人操作且有服务运营管理系统，总账套数300套收费980元/年，总账套数1000套收费1980元/年。</p>

                    <p class="tt">2. 。。。安全吗？</p>
                    <p>在安全保障方面，我们参照并实施了多项国际及国家在信息安全领域的标准，成立了公司级安全小组，制定了详细的规章制度与考核标准，由安全监理负责监察规章制度的执行，确保客户数据的收集、储存及使用均遵守内部监控以及适用的法律及法规规定；用户数据安全方面我们采用安全性最好的独立部署模式，对每一家企业分配私有的专用服务器资源独立使用，数据单独存放，核心数据每天进行本地，本地异机与异地异机三重备份机制，解决因为极端事件给数据带来的安全隐患；在数据传输安全方面，所有用户关键及核心数据，我们全部使用SSL加密转输，杜绝了用户数据在传输过程中可能出现的窃听、篡改、伪造等行为。</p>


                    <p class="tt">3. 有。。。的流程操作视频吗？</p>
                    <p>。。。操作视频：http://kuaiji.youku.com/hall/?ykvid=XODYwMTkwOTQw</p>
                    <p>帮助文档：http://www.uu.com.cn/help/index.html</p>

                    <p class="tt">1. 。。。如何收费？</p>
                    <p>。。。的数据是云端多重备份存储，是自动保存的。</p>
                    <p>使用者年底也可以把总账、明细账下载到本地归档，操作步骤：点击“账簿管理”，选择某一公司账套，点击“账簿归档”，即能将所选年度的总账、明细账、数量金额明细账下载到本地用于归档。</p>

                    <p class="tt">1. 。。。如何收费？</p>
                    <p>。。。的个人版用户，100套账免费记，只需注册即可直接使用。。。。的代账公司版，多人操作且有服务运营管理系统，总账套数300套收费980元/年，总账套数1000套收费1980元/年。</p>

                    <p class="tt">1. 。。。如何收费？</p>
                    <p>。。。的个人版用户，100套账免费记，只需注册即可直接使用。。。。的代账公司版，多人操作且有服务运营管理系统，总账套数300套收费980元/年，总账套数1000套收费1980元/年。</p>

                    <p class="tt">1. 。。。如何收费？</p>
                    <p>。。。</p>

                    <p class="tt">1. 。。。如何收费？</p>
                    <p>。。。</p>
                </div>
                <div id="tab-3-2" class="tab">table2</div>
                <div id="tab-3-3" class="tab">table3</div>
                <div id="tab-3-4" class="tab">
                    <p class="tt">1. 。。。</p>
                    <p>。。。的个人版用户，100套账免费记，只需注册即可直接使用。。。。的代账公司版，多人操作且有服务运营管理系统，总账套数300套收费980元/年，总账套数1000套收费1980元/年。</p>

                    <p class="tt">2. 。。。安全吗？</p>
                    <p>在安全保障方面，我们参照并实施了多项国际及国家在信息安全领域的标准，成立了公司级安全小组，制定了详细的规章制度与考核标准，由安全监理负责监察规章制度的执行，确保客户数据的收集、储存及使用均遵守内部监控以及适用的法律及法规规定；用户数据安全方面我们采用安全性最好的独立部署模式，对每一家企业分配私有的专用服务器资源独立使用，数据单独存放，核心数据每天进行本地，本地异机与异地异机三重备份机制，解决因为极端事件给数据带来的安全隐患；在数据传输安全方面，所有用户关键及核心数据，我们全部使用SSL加密转输，杜绝了用户数据在传输过程中可能出现的窃听、篡改、伪造等行为。</p>
                </div>
                <div id="tab-3-5" class="tab">table5</div>
                <div id="tab-3-6" class="tab">table6</div>
                <div id="tab-3-7" class="tab">table7</div>
                <div id="tab-3-8" class="tab">table8</div>
                <div id="tab-3-9" class="tab">table9</div>
                <div id="tab-3-10" class="tab">table10</div>
                <div id="tab-3-11" class="tab">table11</div>
                <div id="tab-3-12" class="tab">table12</div>
            </div>
        </div>
    </div>

</body>
</html>
