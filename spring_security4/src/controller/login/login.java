package controller.login;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
public class login {
    @RequestMapping("login")
    public void jump(HttpServletRequest request, HttpServletResponse response) {
        try {
            String error = request.getParameter("error");
            if (error != null) {
                if (error.equals("1")) {
                    request.setAttribute("msg", "用户名或密码不对");
                } else {
                    request.setAttribute("msg", "权限不足");
                }
            }
            request.getRequestDispatcher("WEB-INF/login.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
