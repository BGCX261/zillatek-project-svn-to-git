// JavaScript Document

$(document).ready(function() {
	//alert('hello guess!');
	$(".deleteConfirm").click(function() {
            conf = confirm("Bạn có chắc là muốn xóa không?");
            if (conf) {
                return true;
            }
            return false;
        });

        $(".topicIterm").click(function(){
            var elements = $('.topicIterm');
            var id = $(this).attr('id');
            elements.each(function() {
                var eachDiv = $(this).attr('id');
                if (eachDiv != id) {
                    $('#edit_ul_' + eachDiv).slideUp('normal');
                }
            });

            $('#edit_ul_' + id).slideToggle('normal');
            return false;
	});

        $(".button_edit_tp_name").click(function(){
            var id = $(this).attr('id');
            var input_name = $("#input_" + id).val();
            //alert(input_name);
            if ($.trim(input_name) == "") {
                alert ("Gía trị không được rỗng");
            } else {
                var int_id = $("#id_" + id).val(); 
                $.post('/topic/edit/', {name: input_name, id: int_id}, function(data) {
                  $('#span_' + id).html(data);
                });
                $('#edit_ul_tp_' + int_id).slideToggle('normal');
            }
            return false;
        });

        $(".button_edit_group_tp").click(function(){
            var id = $(this).attr('id');
            var input_name = $("#input_" + id).val();
            //alert(input_name);
            if ($.trim(input_name) == "") {
                alert ("Gía trị không được rỗng");
            } else {
                var int_id = $("#id_" + id).val();
                $.post('/topic-group/edit/', {name: input_name, id: int_id}, function(data) {
                  $('#span_' + id).html(data);
                });
                $('#edit_ul_tp_' + int_id).slideToggle('normal');
            }
            return false;
        });
});

function ajaxFileUpload()
{
    $("#loading")
    .ajaxStart(function(){
            $(this).show();
    })
    .ajaxComplete(function(){
            $(this).hide();
    });

    $.ajaxFileUpload
    (
        {
            url:'/upload/index',
            secureuri:false,
            fileElementId:'fileToUpload',
            dataType: 'json',
            success: function (data, status)
            {
                if(data.file != "")
                {
                    var htmlCont = '<div class ="each_upload_file">';
                    htmlCont += '<a target ="_blank" href = "' + data.file + '">';
                    htmlCont += '<span><img width = "42" height = "34" border = "0" src = "' + data.icon + '" /></span>';
                    htmlCont += ' <span>' + data.name + '</span>';
                    htmlCont += '</a></div>';
                    $('#upload_content'). append(htmlCont);
                    
                } else if (data.error != "") {
                    alert(data.error);
                }
            },
            error: function (data, status, e)
            {
                alert(e);
            }
        }
    )

    return false;

}