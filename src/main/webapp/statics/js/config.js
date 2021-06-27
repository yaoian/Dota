
function checkLogin() {
    var userName = $("#userName").val();
    var userPwd = $("#userPwd").val();
    if (isEmpty(userName)) {
        $("msg").html("用户名称不能为空！");
        return;
    }
    if (isEmpty(userPwd)) {
        $("msg").html("用户密码不能为空！");
        return;
    }
}
function cler1() {
    alert("dkowako");
}