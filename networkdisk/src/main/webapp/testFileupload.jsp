    <%@ page language="java" contentType="text/html; charset=UTF-8"  
        pageEncoding="UTF-8"%>  
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
    <html>  
    <head>  
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
    <title>文件上传</title>  
    <link rel="stylesheet" href="${pageContext.request.contextPath}/js/jquery-ui.css" />    
    <script src="${pageContext.request.contextPath}/js/jquery-3.1.1.js"></script>    
    <script src="${pageContext.request.contextPath}/js/jquery-ui.js"></script>    
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/ajaxfileupload.js"></script>  
    <script type="text/javascript">  
    var time = 0;  
    function ajaxFileUpload()  
    {  
        $("#progressbar").progressbar({        
             value: 0    
        });  
        time = window.setInterval(progress,100);  
        $.ajaxFileUpload  
        (  
            {  
                url:'${pageContext.request.contextPath}/fileupload',  
                secureuri:false,  
                fileElementId:'fileToUpload',//fileToUpload是input file 标签的id值  
                dataType: 'multipart/form-data',  
                success: function (data)  
                {  
                	alert(data);
                }  
                
            }  
        )  
        return false;  
    }  
      
    function progress(){  
        $.ajax({  
            url:"${pageContext.request.contextPath}/progress",  
            dataType: 'json',  
            success:function(data){  
            	/* alert(data.rate) */
                /* $("#loading").html(data.rate);   */
                $( "#progressbar" ).progressbar({        
                     value: data.rate     
                });  
                if(data.rate == 100){  
                    clearInterval(time);  
                }   
            },  
            error:function(){  
                alert("error");  
            }  
        });  
    }  
    </script>  
    </head>  
    <body>      
        <form name="form" action="" method="POST" enctype="multipart/form-data">  
          
            <input type="file" id="fileToUpload" name="file"/>  
            <input type="text" name="username"/>  
            <input type="button" value="上传" onclick="ajaxFileUpload()"/>  
        </form>  
        <div id="progressbar"></div>  
        
        <form action="${pageContext.request.contextPath}/findAllByUser"
		method="post">

		<input type="submit" value="查找" />

	</form>
    </body>  
    </html>  