<%@ page contentType="text/html; charset=gb2312"%>

<%
        //��ȡLogin.html�ύ������Ϣ
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        String type = request.getParameter("type");
        //����û���¼�Ƿ�ɹ�,��������û��������ΪΪadmin�ͱ�ʾ��¼�ɹ���

        if (name.equals("admin") && password.equals("admin")) {
            //��֤����֤
                ///��֤ͨ���󣬽��û���Ϣд��session����
                session.setAttribute("name", name);
                session.setAttribute("password", password);
                session.setAttribute("type", type);
                ///�����û�ѡ���Ȩ��������תҳ�棬

                if (type.equals("teacher"))
                    response.sendRedirect("teacher.jsp");
                else if (type.equals("student"))
                    response.sendRedirect("student.jsp");
                else {
                    out.print("<script language='JavaScript' type='text/JavaScript'>alert('�쳣�������µ�¼��');</script>");
                    response.sendRedirect("Login.jsp");
                }


    } else
        //��¼ʧ�ܣ��ص�Login.jspҳ�档
        {

            out.print("<script>alert('����ȷ��д��Ϣ��');window.location.href='Login.jsp'</script>");

        }
        %>