<%@ page contentType="text/html; charset=gb2312"%>
<%
    //����password����ת�����ݣ���˽���session���Ƿ���password��Ϣ���ж��û��Ƿ��е�¼��

    if (session.getValue("password") == null)
        out.print("<script>alert('��ѧ���ȵ�¼��');window.location.href='Login.html'</script>");
%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <title>ѧ����¼</title>

</head>
<body>��ӭѧ����¼��
</body>
</html>