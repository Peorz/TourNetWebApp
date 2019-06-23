var param2;
var btn_origin_name2;
var btn2;

function fileup2(p) {
    param2 = p;
    btn2 = $(param2.btn);
    btn_origin_name2 = btn2.html();
    var file_input = $('<input type="file" style="display:none" accept="image/*" />');
    btn2.before(file_input);
    btn2.on("click", function () {
        file_input.click();
    });
    file_input.change(function () {
        if (this.files.lenght <= 0) {
            return;
        }
        gettoken2(this);
    });
}

function gettoken2(file) {
    $.ajax({
        type: "Get",
        url: param2.url,
        contentType: "application/x-www-form-urlencoded; charset=utf-8",
        dataType: "json",
        async: false,
        success: function (data) {
            if (data.code == 0) {
                up2(data.data, file);
            } else {
                param2.error(" token 获取失败！");
            }
        },
        error: function (err) {
            param2.error(" token 获取失败！");
        }
    });
}

function up2(token, file) {
    var config = {
        useCdnDomain: true,
        region: qiniu.region.z2
    };
    var putExtra = {
        fname: "",
        params: {},
        mimeType: [] || null
    };
    var observable = qiniu.upload(file.files[0], file.files[0].name, token, putExtra, config)
    var observer = {
        next(res) {
            btn2.html("正在上传...(" + res.total.percent + "%)");
            param2.progress(res);
        },
        error(err) {
            param2.error(this.error);
        },
        complete(res) {
            upmyserver2(res);
        }
    }
    var subscription = observable.subscribe(observer) // 上传开始
}

function upmyserver2(res) {
    $.ajax({
        type: "Post",
        url: param2.url,
        contentType: "application/x-www-form-urlencoded; charset=utf-8",
        dataType: "json",
        data: { hash: res.hash, key: res.key },
        success: function (data) {
            setTimeout(function () {
                btn2.html(btn_origin_name2);
            }, 1000);
            param2.success(data);
        },
        error: function (err) {
            param2.error(err);
        }
    });
}