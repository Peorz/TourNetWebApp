var param;
var btn_origin_name;
var btn;

function fileup(p) {
    param = p;
    btn = $(param.btn);
    btn_origin_name = btn.html();
    var file_input = $('<input type="file" style="display:none" accept="image/*" />');
    btn.before(file_input);
    btn.on("click", function () {
        file_input.click();
    });
    file_input.change(function () {
        if (this.files.lenght <= 0) {
            return;
        }
        gettoken(this);
    });
}

function gettoken(file) {
    $.ajax({
        type: "Get",
        url: param.url,
        contentType: "application/x-www-form-urlencoded; charset=utf-8",
        dataType: "json",
        async: false,
        success: function (data) {
            if (data.code == 0) {
                up(data.data, file);
            } else {
                param.error(" token 获取失败！");
            }
        },
        error: function (err) {
            param.error(" token 获取失败！");
        }
    });
}

function up(token, file) {
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
            btn.html("正在上传...(" + res.total.percent + "%)");
            param.progress(res);
        },
        error(err) {
            param.error(this.error);
        },
        complete(res) {
            upmyserver(res);
        }
    }
    var subscription = observable.subscribe(observer) // 上传开始
}

function upmyserver(res) {
    $.ajax({
        type: "Post",
        url: param.url,
        contentType: "application/x-www-form-urlencoded; charset=utf-8",
        dataType: "json",
        data: { hash: res.hash, key: res.key },
        success: function (data) {
            setTimeout(function () {
                btn.html(btn_origin_name);
            }, 1000);
            param.success(data);
        },
        error: function (err) {
            param.error(err);
        }
    });
}