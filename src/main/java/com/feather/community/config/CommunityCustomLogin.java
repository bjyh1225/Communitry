package com.feather.community.config;

import java.io.IOException;
import java.util.Properties;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.shiro.authz.AuthorizationInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.feather.common.config.CustomLogin;
import com.feather.common.core.domain.AjaxResult;
import com.feather.common.utils.MessageUtils;
import com.feather.framework.util.ShiroUtils;
import com.google.code.kaptcha.Constants;
import com.google.code.kaptcha.Producer;
import com.google.code.kaptcha.impl.DefaultKaptcha;
import com.google.code.kaptcha.util.Config;

@Configuration
public class CommunityCustomLogin implements CustomLogin {

    @Autowired
    private Producer captchaProducer;

    @Bean
    public Producer getKaptchaBean() {
        DefaultKaptcha defaultKaptcha = new DefaultKaptcha();
        Properties properties = new Properties();
        properties.setProperty(Constants.KAPTCHA_SESSION_CONFIG_KEY, "kaptchaCode");
        properties.setProperty(Constants.KAPTCHA_IMAGE_WIDTH, "160");
        properties.setProperty(Constants.KAPTCHA_IMAGE_HEIGHT, "60");
        properties.setProperty(Constants.KAPTCHA_NOISE_IMPL, "com.google.code.kaptcha.impl.NoNoise");
        properties.setProperty(Constants.KAPTCHA_TEXTPRODUCER_CHAR_STRING, "345678ABDEFHMNRTY");
        properties.setProperty(Constants.KAPTCHA_TEXTPRODUCER_CHAR_LENGTH, "3");
        properties.setProperty(Constants.KAPTCHA_TEXTPRODUCER_FONT_COLOR, "15,135,134");
        properties.setProperty(Constants.KAPTCHA_TEXTPRODUCER_CHAR_SPACE, "6");
        Config config = new Config(properties);
        defaultKaptcha.setConfig(config);
        return defaultKaptcha;
    }

    @Override
    public String getLoginTemplate(HttpServletRequest request) {
        return "login";
    }

    @Override
    public AjaxResult preLogin(HttpServletRequest request) {
        Object ssnCode = ShiroUtils.getSession().getAttribute(Constants.KAPTCHA_SESSION_KEY);
        String code = request.getParameter("validateCode");
        if (ssnCode != null && !ssnCode.toString().equalsIgnoreCase(code)) {
            return AjaxResult.error(MessageUtils.message("user.jcaptcha.error"));
        }
        return null;
    }

    @Override
    public boolean getUser(Object object) {
        return false;
    }

    @Override
    public boolean getAuthorizationInfo(AuthorizationInfo authorizationInfo) {
        return false;
    }

    @Override
    public void afterLogin(HttpServletRequest request, AjaxResult result) {

    }

    @Override
    public boolean existsSessionId(ServletRequest request) {
        return false;
    }

    @Override
    public String getSessionId(ServletRequest request, ServletResponse response) {
        return null;
    }

    @Override
    public void getCaptcha(HttpServletRequest request, HttpServletResponse response) {
        ServletOutputStream out = null;
        try {
            HttpSession session = request.getSession();
            response.setDateHeader("Expires", 0);
            response.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");
            response.addHeader("Cache-Control", "post-check=0, pre-check=0");
            response.setHeader("Pragma", "no-cache");
            response.setContentType("image/jpeg");

            String capStr = null;
            String code = null;
            String capText = captchaProducer.createText();
            int at = capText.lastIndexOf('@');
            if (at == -1) {
                capStr = code = capText;
            } else {
                capStr = capText.substring(0, at);
                code = capText.substring(at + 1);
            }
            session.setAttribute(Constants.KAPTCHA_SESSION_KEY, code);
            out = response.getOutputStream();
            ImageIO.write(captchaProducer.createImage(capStr), "jpg", out);
            out.flush();

        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            try {
                if (out != null) {
                    out.close();
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}
