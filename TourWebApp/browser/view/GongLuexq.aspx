﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GongLuexq.aspx.cs" Inherits="TourWebApp.browser.view.GongLuexq" %>

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
    <title>攻略详情</title>
</head>
<body style="padding-top: 0">
    <%--    <nav class="navbar navbar-default navbar-fixed-top" style="margin-bottom: 10px;">
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
    </nav>--%>

    <div class="container">
        <div class="menu">
            <h3><i class="q-menu-img positionIicon"></i>云南</h3>
            <ul class="ulmenu1">
                <li><a name="DL" href="#tab1">大理之行</a></li>
                <li><a name="LJ" href="#">艳遇丽江</a></li>
                <li><a href="#">香格里拉</a></li>

            </ul>

            <h3><i class="q-menu-doit positionIicon"></i>广西</h3>
            <ul class="ulmenu2">
                <li><a href="#">猫儿山</a></li>
                <li><a href="#">阳朔之行</a></li>
                <li><a name="GL" href="#">“甲天下”桂林</a></li>
                <li><a href="#">北海之旅</a></li>

            </ul>

            <h3><i class="q-menu-three positionIicon"></i>西藏</h3>
            <ul class="ulmenu3">
                <li><a name="MPYC" href="#tab1">玛旁雍错</a></li>
                <li><a href="#">“日光城”拉萨</a></li>
                <li><a href="#">珠穆朗玛峰</a></li>

            </ul>

            <h3><i class="q-menu-three positionIicon"></i>国外游</h3>
            <ul class="ulmenu4">
                <li><a href="#tab1">英国伦敦</a></li>
                <li><a name="BL" href="#">法国巴黎</a></li>
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
                    <img src="../static/img/main_bg6.jpg" />
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
                    <p>
                        猫儿山位于桂林市兴安县，因峰顶形似俯卧着的巨猫而得名。主峰海拔2141.5米，是华南的第一高峰，
                        常被人称作“五岭绝首、华南之巅”。这里也是是漓江、资江的发源地，可谓桂林山水的“命根子”。猫儿山林海茫茫，
                        树木盘根错节，一派原始森林风光，更有冰河时期遗留下来的珍贵树种——铁杉。龙潭瀑、漓江源等景色也清新迷人。
                        每年4-6月期间，这里还有着开遍山野的杜鹃花海。除了自然风光，猫儿山还有红军长征时翻越的老山界、
                        二战期间美国飞机失事地。作为华南第一高峰，这里也十分受徒步爱好者的欢迎。主要徒步路线为先从山门步行至大峡谷，
                        再往回走向杜鹃园前进，路过老界山，往铁杉公园经高山矮林登向山顶。单程约十小时，如果没有丰富的户外运动经验，
                        并不建议贸然徒步前往。
                   
                    </p>
                    <img src="../static/img/personal_bg.jpg" />
                    <h4>下面是景点介绍</h4>
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
            </div>

            <div class="menu2 menu_tab">
                <div id="tab-1" class="tab">
                    <p class="tt">华南第一高峰“猫儿山”</p>
                    <p>
                        猫儿山自然保护区位于桂林北部，距市区110公里，地跨兴安、资源、龙胜三县，面积为17008公顷。猫儿山因山形酷似猫而得名，
                        它是南粤五岭之一越城岭的主峰，海拔2142米，为华南最高峰，号称“五岭绝首，华南之巅”。美丽迷人的漓江、资江、
                        浔江发源于此，为三江之源。
                   
                    </p>
                    <img src="../static/img/personal_bg.jpg" />

                    <p>
                        猫儿山年平均气温14℃，气候温和，四季分明，全年皆适合旅游。穿越线路：猫儿山的穿越路线有两条，
                        一条是沿33公里长的盘山公路到达山顶，沿途可经过大部分的景点，但景点之间是漫长的公路徒步，甚为枯燥。
                        第二条路线是沿十里大峡谷徒步穿越，一路披荆斩棘，攀岩溯溪，缘峡谷而上。若非经验丰富的驴友，请不要贸然尝试。
                   
                    </p>
                    <p class="dd">
                        公路线路：从山脚下的高寨村沿公路徒步至山顶，全程大约33公里。如果按照3公里/小时的速度行进，
                        至少需要11个小时，加上休息、欣赏风景、拍照和吃饭总共要花费12-15小时。当地向导沿公路登顶的时间是10-12小时。
                        如果计划沿公路徒步至山顶的话，需要根据自已的身体情况，量力而行，合理地分配体力，必要时考虑在野外露营。
                   
                    </p>
                    <p class="dd">
                        景点之间的距离：高寨——（1公里）山门——（8公里）竹海梯田——（3公里）珍惜植物园——（2.5公里）
                        杜鹃林——（2.5公里）老山界——（6公里）铁杉荟萃——（8公里）顶峰
                   
                    </p>
                    <p>
                        第二天的行程：崇圣寺三塔—大理古城—洋人街—丽江.大理古城在唐、宋500多年间是云南的政治、经济、文化中心。
                        古城内文物古迹众多，建于南诏丰佑年间（公元824～859年）的崇圣寺三塔就是其中著名的景点，很多人对大理的
                        印象或是从《天龙八部》开始，到了这里之后被她的美所折服。古城是不需要门票的
                   
                    </p>
                    <img src="../static/img/main_bg6.jpg" />
                    <h4>出游注意事项：</h4>
                    <p>
                        出行前尽可能全面地搜集猫儿山的地图等资料，可以向测绘局和当地林管站寻求帮助。携带指北针和海拔表，
                        最好佩戴有上述功能的手表。如果未进行充分准备，且对当地情况知之甚少，最好雇请当地向导
                   
                    </p>
                    <p>
                        <b>露营</b>—在河谷中露营，选择比较平整的营址比较困难。尽量不要在河畔扎营，特别注意在睡觉的时候有没有下雨，
                        如果下雨，立即向地势较高的地方撤离。在雨季，河谷中经常会爆发山洪。
                   
                    </p>
                    <p>
                        <b>保暖</b>——穿行于山区，随着海拔的升高，温度会降低。平均每升高1000米温度就会下降6℃。根据时节，选择需要的衣物。
                        另外，要携带备用衣物，棉质衣物打湿后很难干，穿着湿衣服，身体很快会失去热量，容易着凉。在攀登比较陡且高的岩石时，
                        要让有攀岩技术的人先爬上去，架好固定绳索，其他队员才能用上升器等器械安全地爬上来。在第二天的行程里，
                        特别是接近B24美轰炸机失事地点的一段，岩壁非常陡峭，攀爬时一定要注意安全
                   
                    </p>
                </div>

                <div id="ta-2" class="tab">
                    <p class="tt">阳朔攻略</p>
                    <p>桂林山水甲天下，阳朔山水甲桂林。身临其境者，非游山玩水，犹行走于诗画间。而阳朔，就是身临青山碧水，最好的地方。</p>
                    <p>
                        阳朔，是一座有2000多年历史的漓江边最美的城镇，媲美桂林，游人如云。不到一公里的阳朔西街，大理石路面，
                        呈弯曲的S形，房屋建筑古色古香，地方特色浓厚。荟萃各种旅游纪念品、小吃、酒吧、西餐厅、咖啡屋于街市。
                        其充满了异国情调的夜景更是风情万种，风俗浓郁。
                   
                    </p>
                    <img src="../static/img/personal_bg.jpg" />
                    <h4>去阳朔前的准备：</h4>
                    <p>
                        1 防晒霜肯定要记得带上，阳朔紫外线强，注意保护皮肤。
                   
                    </p>

                    <p>
                        2 阳朔一年四季的温度不同，穿戴的衣物都有不同，提前半个月查看一下天气预报。十月的阳朔热气散去进去秋高气爽日，
                        是个旅行的好季节！
                   
                    </p>
                    <img src="../static/img/main_bg6.jpg" />
                    <p>
                        3 阳朔西街口有N家银行或自动提取款机，取款极其方便，店铺大多数能微信、支付宝、刷卡付费用，不需要携带大量现金。
                   
                    </p>
                    <p>4 超市也遍布各个街头，十分便利。</p>
                    <p>5 出行，可以选租电瓶车、自行车，乘坐阳朔当地的观光大巴。</p>
                    <p></p>
                    <p>
                        旅途中最快乐的事情是什么？开拓视野？没错！放松身心？也没错！但还有一种更高层次的快乐——在路上认识更多的人，
                        接触全然不同的生活方式，并由此获得全新的生活感受，成为更好的自己！
                   
                    </p>
                </div>

                <div id="tab-3" class="tab">
                    <p class="tt">桂林甲天下</p>
                    <p>
                        桂林自古便是我国山水旅游名城，“桂山之奇，宜为天下第一”。攀世界梯田之冠龙脊梯田，
                        竹筏赏如诗如画的漓江，徒步览千年兴坪古镇，慢时光游十里画廊，夜幕浪漫西街偶遇...
                   
                    </p>
                    <img src="../static/img/main_bg6.jpg" />
                    <h4>下面是整理的景点</h4>
                    <p class="dd">
                        TOP1：第一次来桂林首选——漫游漓江，如果想从桂林到阳朔，推荐坐游船全景游，
                         如果想游漓江漂流兴坪-九马画山精华段，就推荐坐竹筏，都非常惬意。
                   
                    </p>
                    <p class="dd">
                        TOP2：家庭亲子游必备——龙脊梯田，有“世界梯田之冠”美称，比较经典的是平安壮寨梯田和金坑红瑶梯田。
                        有两个好时节，4、5月灌水时镜面梯田，金秋时黄金梯田。
                   
                    </p>
                    <p class="dd">TOP3：桂林独特地貌——银子岩，“游了银子岩，一世不缺钱”，独有喀斯特地貌。</p>
                    <p class="dd">TOP4：72%游客会去——象鼻山，桂林城徽和春晚举办地，山形酷似一头巨象临江汲水。</p>
                    <p class="dd">
                        TOP5：适合情侣好地方——遇龙河，独特之处在于它是悠悠地平静地竹筏漂流，可以一边赏桂林山水，
                        一边享浪漫时光。画重点：夏季要玩，超级舒服！！
                   
                    </p>
                    <p class="dd">TOP6：文艺青年聚集地——西街，古老繁华的街道，白天觅食逛街泡吧，晚上霓虹闪烁，风情万种。</p>
                    <p class="dd">TOP7：网红打卡圣地——渔翁唱晚，与20元人民币合影，观看特别的漓江渔火，看渔翁与鸬鹚表演。</p>
                </div>

                <div id="tab-4" class="tab">
                    <p class="tt">北海</p>
                    <p>
                        这是一座浪漫多情的城市，在这里，你赤脚踏着柔软的白沙，微咸的海风在你耳边轻吟；在这里，他骑车载你环岛而行，
                        尾随的风使你脸红心跳，一路欢声笑语；在这里，你可以在百年老街上漫步，在古老骑楼间穿行。在这里，有好多故事等你来听…
                   
                    </p>
                    <img src="../static/img/personal_bg.jpg" />
                    <h4>特色亮点</h4>
                    <p class="dd">绮丽沙滩</p>
                    <p>
                        北海银滩被称为“中国第一滩”，在阳光的照射下，这段绵长而绮丽的海岸线会发出柔和的银光，淡淡淡淡，经久不散。
                   
                    </p>
                    <p class="dd">风光海岛</p>
                    <p>
                        涠洲岛是植被茂密，风光秀美，尤以奇特的海蚀、海积地貌，火山熔岩及绚丽多姿的活珊瑚为最，素有南海“蓬莱岛”之称。
                   
                    </p>
                    <p class="dd">魅力湿地</p>
                    <p>
                        “落霞与孤鹜齐飞，秋水共长天一色。”的诗意画卷在素有“海上森林”之称的红树林完美呈现。红树林傍海而生，
                        潮涨而隐，潮退而现，是我国极富滨海湿地风情和渔家文化内涵的黄金结合点。
                   
                    </p>
                    <p class="dd">美嫩海鲜</p>
                    <p>
                        北海的海产资源丰富，种类齐全，生猛鲜活。其菜系口味清淡，鲜嫩美味。品美食，赏海景，吹海风，自有一番情趣。
                   
                    </p>
                    <img src="../static/img/main_bg6.jpg" />
                    <h4>推荐行程安排：</h4>
                    <p>第一天：出发到达北海，北海酒店自由活动</p>
                    <p>第二天：游览北部湾广场、然后前往百年老街、银滩</p>
                    <p>第三天：坐观光车游览火山口地址公园，天主教堂、滴水丹萍、五彩滩、石螺口</p>
                    <p>第四天： 涠洲岛上自由活动，抓螃蟹，挖海螺，吃自制海鲜大餐</p>
                    <p>第五天：早上看日出，下涠洲岛乘船返回北海.</p>

                </div>
            </div>
            <div class="menu3 menu_tab">
                <div id="tab-3-1" class="tab">
                    <p class="tt">玛旁雍措</p>
                    <p>
                        玛旁雍错，藏语意为“战无不胜的碧玉湖”，位于阿里地区普兰县，冈仁波齐神山东南30公里处，海拔4588米，
                            是世界上海拔最高的淡水湖之一，也是著名的西藏三大圣湖之一，传说是神山冈仁波齐的妻子，并称“神山圣湖”。
                            历来的朝圣者都以到此湖转经、沐浴净身为人生最大幸事。
                   
                    </p>
                    <p>
                        据说玛旁雍措是最圣洁的湖，是胜乐大尊赐与人间的甘露，圣水可以清洗人心灵中的烦恼和孽障。她是雍仲本教，
                            印度佛教，印度教所有圣地中最古老，最神圣的地方，她是心灵中尽善尽美的湖，她是这个宇宙中真正的天堂，
                            是众神的香格里拉，万物之极乐世界。
                   
                    </p>
                    <img src="../static/img/main_bg6.jpg" />

                    <p class="dd">用时参考:半天</p>
                    <p class="dd">交通:</p>
                    <p>去往玛旁雍错无班车，只能自行包车前往。或者乘坐去往普兰县的班车，在霍尔乡下车后，在乡里搭乘去往既乌寺的便车抵达。</p>
                    <p class="dd">门票:150.00元</p>
                    <p class="dd">开放时间:全天</p>
                    <p class="dd">开放时间:全天</p>
                    <p class="dd">适合游玩季节：6月至10月最佳</p>
                    <p class="dd">景点位置:阿里地区普兰县岗底斯山脚下</p>
                </div>
                <div id="tab-3-2" class="tab">

                    <p class="tt">拉萨</p>
                    <p>
                        有人说，一定要去一次西藏才算不虚此生，西藏的圣洁，大概只有真正的去到那里，才能感受的到。无论是善与恶，到了西藏，好像都能得到救赎。
                        藏区气候寒冷、气压低、空气稀薄，所以素有“世界屋脊”和“世界第三极”之称。它有着壮丽的河山，奇特的民族风情、星罗棋布的寺庙和仙境般的自然景观。
                        踏上那陌生而神奇的土地，沿着朝拜者的足迹走入那古老而遥远的神山的传说，感受圣湖广阔静谧的美，欣赏渊源流长的民间艺术，领略一处处风俗不同的雪域情调
                   
                    </p>
                    <img src="../static/img/main_bg6.jpg" />
                    <h4>推荐日程安排</h4>

                    <p class="dd">DAY 1，拉萨—布达拉宫—大昭寺—八角街</p>
                    <p class="dd">DAY 2，米拉山口—巴松措—林芝</p>
                    <p class="dd">DAY 3，鲁朗林海—雅鲁藏布大峡谷—苯日神山 </p>
                    <p class="dd">DAY 4，桃花沟—民俗村—可可西里</p>
                    <p class="dd">DAY 5，曲水—羊湖—卡若拉冰川-拉萨</p>
                    <p class="dd">DAY 6，拉萨—念青唐古拉山-纳木错—拉萨</p>

                </div>
                <div id="tab-3-3" class="tab">
                    <p class="tt">珠穆朗玛峰</p>
                    <p>
                        珠穆朗玛峰位于我国和尼泊尔交界的喜马拉雅山脉上，它以高达8844.43米的高度，被称作世界最高峰，藏语中的珠穆明玛就是“大地之母”的意思。
                        这里终年冰雪覆盖，一座座冰峰如倚天的宝剑，条条冰川像蜿蜒的银蛇。
                   
                    </p>
                    <p>
                        西方殖民者及其后代更多地称这座山峰为额菲尔士峰或艾佛勒斯峰，因为它是由当时的印度测量局局长乔治•额菲尔士负责测量的。
                        而尼泊尔称其为萨迦玛塔，意思是“天空之女神”。
                   
                    </p>
                    <img src="../static/img/main_bg6.jpg" />
                    <h4>珠穆朗玛峰旅游小贴士:</h4>

                    <p class="dd">
                        1，进入珠峰前，需要办理边防证，可在拉萨或拉孜县办理。但在西藏办证很麻烦，所以出行前最好在户口所在地办妥。
                        办证时填写前往地点，就写定日珠峰地区即可。
                   
                    </p>
                    <p class="dd">
                        2，进入珠峰地域的汽车需按车轮的数量缴公路建设费，每个轮子约100元。就是说越野车要400元，而卡车就要600元。另外，
                        每位旅游者要交65元作景区环保费，司机也要交。
                   
                    </p>
                    <p class="dd">
                        3，由于冰塔林的危险性以及出于环保的需要，珠峰脚下的冰塔林已经被永久关闭。去珠峰旅游，没有大家想象的那么“高难度”，
                        做一些必要准备，带着一份轻松愉快的心情，珠峰在那等着你。
                   
                    </p>

                </div>



            </div>

            <%--第四--%>
            <div class="menu4 menu_tab">
                <div id="tab-4-1" class="tab">
                    <p class="tt">英国伦敦</p>
                    <p>
                        英国的伦敦是一个很美丽的城市，他这个地方有很多变化的文化，有很丰富多彩，这地方有238处地点可免费参观，尤其是这地方的湖区，他是在英国的西北角，
                        这里的湖泊有14个那么多，水很清，很凉，每年有很多的游客都来到这里坐船，游泳。爱丁堡是一个城堡，他是一个很有艺术感觉的城市，每年爱丁堡都会举办
                        一个艺术节，很多的游客都会到这里来，一起讨论不同课题的艺术问题，常常感觉艺术在碰撞。
                   
                    </p>
                    <img src="../static/img/main_bg6.jpg" />
                    <p>
                        来到英国，肯定要去牛津大学啊，一进去你就会看见那个很长的河，泰晤士河，牛津在这个河周围建了很多的城市，牛津就是一部分，还有很多的好玩的，
                        好吃的都在这条河周围，每年很多游客都带着家人带着相机来英国拍照。与牛津对望的就是英国的剑桥了，他是在这台长长的河上面建了一座桥，所以叫这个名字，
                        剑桥建筑都是很古老的款式，石头都是灰色的，顶上面都是尖尖的，走过的人感觉都是很聪明的。
                   
                    </p>
                    <p>
                        英国的美食是很好吃的，仰望星空就是这地方的一个美食，他是披萨饼里面装着几条鱼，是烤鱼,再加上一些奶酪，蛋挞，那味道好极了。
                        威尔士兔子，可别吓到，这不是兔子肉，就是我们经常吃的奶酪吐司烤出来就是一道美食了，味道真是好极了。
                   
                    </p>
                    <img src="../static/img/main_bg6.jpg" />
                    <p>
                        英国的交通是很便利的，来到英国大部分的游客都会选择坐公交环游城市，因为这里的交通不都是双层的，第二层还没有盖子，可以很大的程度看到风景；
                        如果你还想去远一点的地方，那么我就会推荐游客们坐火车，英国的铁路是很长很长的，修建了几个世纪了，你说怎么可能不长，这里的买票都是自动的，
                        根本不用排队，很大的节约了我们的时间。
                   
                    </p>
                    <p>
                        如果你想慢慢的去目的地，我可以推荐坐大巴，远途的旅行大巴是最优惠的，组团还可以更优惠；短途的路程，而你又是一家人旅游，
                        你就可以租一辆英国的小汽车来游玩。英国的很多旅游景点都是有介绍的，你在旅行前一定要先看好行程。
                   
                    </p>

                </div>
                <div id="tab-4-2" class="tab">

                    <p class="tt">法国巴黎</p>
                    <p>
                        巴黎是法兰西共和国的首都，也是法国最大的城市。它是法国的政治，经济，文化和商业中心。它也被称为世界四大城市，分别是东京，
                        日本，纽约和伦敦。巴黎是欧洲最适合人类居住的城市之一，也是世界上最昂贵的城市之一。
                   
                    </p>
                    <img src="../static/img/main_bg6.jpg" />
                    <h4>下面介绍巴黎景点</h4>

                    <p class="dd">巴黎凯旋门（Arc de Triomphedel'étoile）</p>
                    <p>
                        没有看凯旋门就来巴黎是一件非常遗憾的事。它是巴黎世界著名的地标。它是由拿破仑于1806年2月建造的，以纪念他在奥斯特利茨战役中击败奥地利 - 俄罗斯联军。
                        这座象征着拿破仑成就的建筑仍然保存完好。
                   
                    </p>
                    <p>地址：巴黎市中心的戴高乐广场（又称星光广场）中心</p>
                    <p class="dd">埃菲尔铁塔La Tour Eiffel芝</p>
                    <p>
                        作为巴黎甚至法国的标志性建筑，它的存在绝对是让你看到它最伟大的一幕。钢铁的结构强大而有力，然而维多利亚的秘密广告又来自它。
                        这种组合不是法国精神吗？
                    </p>
                    <p>地址：法国巴黎战神广场</p>
                    <img src="../static/img/main_bg6.jpg" />
                    <p class="dd">塞纳河 </p>
                    <p>
                        塞纳河是法国历史悠久的河流，是巴黎的母亲河。登上游轮，游览塞纳河上美丽的巴黎，欣赏塞纳河沿岸美丽的风景以及景点和古迹。
                        一座座美丽的桥梁不时从头顶通过，每座桥上都刻有美丽的人物塑像
                    </p>
                    <p>地址：法国北部</p>

                </div>
                <div id="tab-4-3" class="tab">
                    <p class="tt">美国洛杉矶</p>
                    <p>
                        洛杉矶是一座极致的城市。大家熟悉的中国各大城市，大致都偏向于中庸的城市。中国大城市四季分明、城市综合发展，无论喜欢夏天还是冬天、
                        喜欢晴天还是雨天、喜欢开车还是公交，在一年里总能找到一些自己喜爱的元素。而洛杉矶则在一条道走到黑，可以是一部分人的天堂，
                        也能让另一部分人深感无奈。
                   
                    </p>
                    <img src="../static/img/main_bg6.jpg" />
                    <h4>包含景点：</h4>
                    <p>
                        优胜美地 、 优胜美地瀑布 、 格兰峡谷水坝 、 伯克利大学 、 大峡谷 、 太平洋水族馆 、 羚羊峡谷 、 洛杉矶 、
                         胡佛水坝 、 拉斯维加斯 、 金门大桥 、 圣地亚哥 、 莫哈维沙漠 、 17里湾风景线 、 棕榈泉名品直销购物中心 、 艺术宫 、 
                        巧克力工厂 、 环球影城 、 仙人掌庭院 、 蒙特利半岛 、 米德湖 、 名牌工厂直销中心 、 洛杉矶迪士尼乐园 、 旧金山 、 加州乐高乐园 、 
                        渔人码头 、 圣地亚哥海洋世界 、 迪士尼加州冒险乐园 、 玻璃桥
                   
                    </p>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
