$(function() {
	 $("#loginpanel").slideVerify({
        type: 2, //类型
        vOffset: 5, //误差量，根据需求自行调整
        vSpace: 5, //间隔
        imgName: ['01.jpg', '02.jpg', 'login1.jpg', 'login2.jpg', 'login3.jpg', '29.jpg', '30.jpg', '31.jpg'],
        imgSize: {
          width: '400px',
          height: '200px',
        },
        blockSize: {
          width: '40px',
          height: '40px',
        },
        barSize: {
          width: '400px',
          height: '40px',
        },
        ready: function() {},
        success: function() {
          alert('验证成功，添加你自己的代码！');
          //......后续操作
          $("#loginpanelRadio").attr("checked", "true")
        },
        error: function() {
          //		        	alert('验证失败！');
        }

      });
	$("#myloginform").validate({
		errorPlacement: function(error, element) {
			// Append error within linked label
			$(element)
				.closest("form")
				.find("label[for='" + element.attr("id") + "']")
				.after(error);
		},
		errorElement: "span",
		rules: {
			loginpanelRadio: "required",
			username: "required",
			password: {
				required: true,
				minlength: 6,
				maxlength: 11
			}
		},
		messages: {
			loginpanelRadio: {
				required: "请完成验证"
			},
			username: {
				required: "请输入用户名"
			},

			password: {
				required: "请输入密码"
			}

		} 

	})
})
