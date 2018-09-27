var Validation = function () {

    /**
     * 私有方法
     */
    /**
     * 初始化校验规则
     */
    var handlerInit = function () {
        $.validator.addMethod("mobile", function (value, element) {
            var length = value.length;
            var mobile = /^(((13[0-9]{1})|(15[0-9]{1}))+\d{8})$/;
            return this.optional(element) || (length == 11 && mobile.test(value));
        }, "手机号码格式错误");
    };

    var handlerValidation = function () {
        $("#inputForm").validate({
            errorElement: 'span',
            errorClass: 'help-block',

            errorPlacement: function (error, element) {
                element.parent().attr("class", "form-group has-error");
                error.insertAfter(element);
            }
        });
    };

    /**
     * 公共方法
     */
    return {
        init:function () {
            handlerInit();
        },
        validateForm:function () {
            handlerValidation();
        }
    }

}();

$(function () {
    Validation.validateForm();
    Validation.init();
});